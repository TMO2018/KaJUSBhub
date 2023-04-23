/************************************************************************
	keyboard.c

    C64 Keyboard and Joystick Adaptor
    Copyright (C) 2010 Simon Inns

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

	Email: simon.inns@gmail.com

************************************************************************/

// Global includes
#include <htc.h>

// Local includes
#include "hardware.h"
#include "usbram.h"
#include "keyboard.h"
#include "keymap.h"

// USB stack includes
#include "USB Stack/usb.h"
#include "USB Stack/keyboard1_hid.h"

// Structure for holding the keyboard state
struct keyboardState {
	unsigned char state; // On or off
	unsigned char debounceCount;
} keyboard[65]; // Keyboard is an 8x8 matrix + the restore key (number 64)

// Structure for holding the raw keyboard state (before debounce)
unsigned char rawKeyboardState[65];

// Note: We have to hold both the debounced and raw keyboard states since
// ghost key blocking is not 100% effective if performed after debounce,
// so this routine reads the 'raw' keyboard matrix state, then performs
// ghost key blocking before performing debounce.
//
// It may seem a long way round, but I tried all the other possibilities
// first and none of them worked 100% ;)

void initialiseKeyboard(void)
{
	unsigned char key;

	// Initialise the keyboard state model
	for (key = 0; key < 65; key++)
	{
		keyboard[key].state = OFF;
		keyboard[key].debounceCount = 0;

		rawKeyboardState[key] = OFF;
	}

    // Initialize the variable holding the handle for the last transmission
	lastINTransmission_k1 = 0;
	lastOUTTransmission_k1 = 0;
}

// Read the keyboard switch states and perform debounce
void readKeyboardState(void)
{
	unsigned char row;
	unsigned char column;
	unsigned char input;
	unsigned char currentKeyNumber;

	// Note: we set the columns (PORTD) and read the rows (PORTB) since the pull-up
	// resistors are on port B (so it has to be an input port).

	// Scan the keyboard matrix
	for (column = 0; column < 8; column++)
	{
		// Select the correct column
		if (column == 0) KA = OFF; else KA = ON;
		if (column == 1) KB = OFF; else KB = ON;
		if (column == 2) KC = OFF; else KC = ON;
		if (column == 3) KD = OFF; else KD = ON;
		if (column == 4) KE = OFF; else KE = ON;
		if (column == 5) KF = OFF; else KF = ON;
		if (column == 6) KG = OFF; else KG = ON;
		if (column == 7) KH = OFF; else KH = ON;

		// Allow the pins to settle
		__delay_us(2);
		
		for (row = 0; row < 8; row++)
		{
			// Get the input for the current row
			if (row == 0) input = K0;
			if (row == 1) input = K1;
			if (row == 2) input = K2;
			if (row == 3) input = K3;
			if (row == 4) input = K4;
			if (row == 5) input = K5;
			if (row == 6) input = K6;
			if (row == 7) input = K7;

			// Calculate the current key number
			currentKeyNumber = (column * 8) + row;

			// Store the raw key state (invert to make it more logical to the poor humans)
			if (input == 0) rawKeyboardState[currentKeyNumber] = ON;
				else rawKeyboardState[currentKeyNumber] = OFF;
		}
	}

	// Now read the restore key
	if (KI == 0) rawKeyboardState[64] = ON; else rawKeyboardState[64] = OFF;
}

// Blocking to prevent key ghosting
void keyboardBlocking(void)
{
	// Ghosting can occur in the keyboard matrix when 3 or more keys are being pressed
	// Basically if 3 corners of a 'rectangle' in the matrix are pressed (for example
	// W, A and R) then the 4th corner will be 'shorted' by the other 3 so a ghost key
	// will be detected (W, A and R will ghost D for example).

	// To prevent this we have to block keypresses when 3 keys in the matrix are depressed
	// using a simple detection algorithm, basically we look for two keys being pressed next
	// to each other on a row.  If this is detected we look up and down the 2 rows for a 
	// third key.  If detected we block all 4 keys in the rectange formed by the keys.

	unsigned char row;
	unsigned char column;
	unsigned char currentKeyNumber;
	unsigned char adjacentRowCount;

	for (row = 0; row < 7; row++)
	{
		adjacentRowCount = 0;

		for (column = 0; column < 8; column++)
		{
			currentKeyNumber = (column * 8) + row;
			if (rawKeyboardState[currentKeyNumber] == ON && rawKeyboardState[currentKeyNumber + 1] == ON)
				adjacentRowCount++;
		}

		// If we have 2 or more adjacent rows, discard the rows affected
		if (adjacentRowCount > 1)
		{
			for (column = 0; column < 8; column++)
			{
				currentKeyNumber = (column * 8) + row;
				rawKeyboardState[currentKeyNumber] = OFF;
				rawKeyboardState[currentKeyNumber + 1] = OFF;
			}	
		}
	}
}

// Perform key debouncing
void debounceKeyboard(void)
{
	unsigned char currentKeyNumber;

	for (currentKeyNumber = 0; currentKeyNumber < 65; currentKeyNumber++)
	{
		// Debounce on
		if (rawKeyboardState[currentKeyNumber]== ON && keyboard[currentKeyNumber].state == OFF)
			if (keyboard[currentKeyNumber].debounceCount > KEYBOARD_DEBOUNCE)
				keyboard[currentKeyNumber].state = ON;
		else keyboard[currentKeyNumber].debounceCount++;
		
		// Debounce off
		if (rawKeyboardState[currentKeyNumber] == OFF && keyboard[currentKeyNumber].state == ON)
			if (keyboard[currentKeyNumber].debounceCount > KEYBOARD_DEBOUNCE)
				keyboard[currentKeyNumber].state = OFF;
		else keyboard[currentKeyNumber].debounceCount++;
		
		// Reset debounce if key is stable
		if (rawKeyboardState[currentKeyNumber] == keyboard[currentKeyNumber].state)
			keyboard[currentKeyNumber].debounceCount = 0;
	}
}

// Process keyboard
void processKeyboard(void)
{
	unsigned keyArray[6];	// We can send a maximum of 6 simultaneous key presses
	unsigned keysDetected = 0;
	unsigned key;

	unsigned modifier = 0;

	// Default the keyArray to 0
	for (key = 0; key < 6; key++) keyArray[key] = 0;

	// Check if the IN endpoint is not busy, and if it isn't send the
	// keystroke data to the host.
    if(!HIDTxHandleBusy(lastINTransmission_k1))
    {
		// Here we get the keypresses and translate them according to the keymap.
		// The exception is the modifier keys which have to be trapped and used 
		// to set the modifier byte in the report.

		// The modifier byte is a bit field and has the following meanings:
		// bit
		// 0 LEFT CTRL
		// 1 LEFT SHIFT
		// 2 LEFT ALT
		// 3 LEFT GUI
		// 4 RIGHT CTRL
		// 5 RIGHT SHIFT
		// 6 RIGHT ALT
		// 7 RIGHT GUI

		// Get the keypresses (if there are any)	
		for (key = 0; key < 65; key++)
		{
			if (keyboard[key].state == ON && keysDetected < 6)
			{
				if (key == 5)				// COMMODORE
					modifier |= 0b00000001; // Left-Control
				else if (key == 11)			// LEFT SHIFT
					modifier |= 0b00000010; // Left-Shift
				else if (key == 52)			// RIGHT SHIFT
					modifier |= 0b00100000; // Right-Shift
				else
				{
					// Assign the keycode for the pressed key via the keymap
					keyArray[keysDetected] = keymap[key];
					keysDetected++;
				}
			}
		}

		// Populate the HID keyboard report:
		hid_report_in_k1[0] = modifier;		// Byte0: Modifier
		hid_report_in_k1[1] = 0;			// Byte1: Reserved
		hid_report_in_k1[2] = keyArray[0];	// Byte2: Keycode 1
		hid_report_in_k1[3] = keyArray[1];	// Byte3: Keycode 2
		hid_report_in_k1[4] = keyArray[2];	// Byte4: Keycode 3
		hid_report_in_k1[5] = keyArray[3];	// Byte5: Keycode 4
		hid_report_in_k1[6] = keyArray[4];	// Byte6: Keycode 5
		hid_report_in_k1[7] = keyArray[5];	// Byte7: Keycode 6
		
		// Send the 8 byte packet over USB to the host.
		lastINTransmission_k1 = HIDTxPacket(HID_EP_K1, (BYTE*)hid_report_in_k1, 0x08);
    }
}
