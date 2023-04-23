/************************************************************************
	joystick.c

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
#include "joystick.h"

// USB stack includes
#include "USB Stack/usb.h"
#include "USB Stack/joystick1_hid.h"
#include "USB Stack/joystick2_hid.h"

// Variables for storing the last joystick transmission
USB_HANDLE lastTransmission_j1;
USB_HANDLE lastTransmission_j2;

void initialiseJoysticks(void)
{
	int loop;

	// Initialise the joystick states
	for (loop = 0; loop < 5; loop++)
	{
		joystick[PORT1].joystickSwitch[loop].state = OFF;
		joystick[PORT1].joystickSwitch[loop].debounceCount = 0;
		joystick[PORT1].paddleConnected = FALSE;
		joystick[PORT1].paddleX = 0;
		joystick[PORT1].paddleY = 0;

		joystick[PORT2].joystickSwitch[loop].state = OFF;
		joystick[PORT2].joystickSwitch[loop].debounceCount = 0;
		joystick[PORT2].paddleConnected = FALSE;
		joystick[PORT2].paddleX = 0;
		joystick[PORT2].paddleY = 0;
	}

    // Initialize the variables holding the handles for the last transmission
    lastTransmission_j1 = 0;
    lastTransmission_j2 = 0;
}

// Read the joystick switch states and perform debounce
void readJoystickState(void)
{
	unsigned char port;
	
	for (port = 0; port < 2; port++)
	{
		// Select the correct joystick for the next pass...

		// The physical joystick ports are multiplexed and are selected
		// by sinking the current either through RA4 (port 1) or RA5 (port 2)
		// You switch them by changing RA4 and RA5 to either inputs (which
		// are high-impedence and won't sink current) or outputs (which will).
		if (port == 0)
		{
			JOY1_SELECT_TRIS = 0;
			JOY2_SELECT_TRIS = 1;
			JOY1_SELECT = 0;
			JOY2_SELECT = 0;
			__delay_us(2);

		}
		else
		{
			JOY1_SELECT_TRIS = 1;
			JOY2_SELECT_TRIS = 0;
			JOY1_SELECT = 0;
			JOY2_SELECT = 0;
			__delay_us(2);
		}
	
		// Debounce FORWARD
		if (JOYSTICK_FORWARD == 0 && joystick[port].joystickSwitch[FORWARD].state == OFF)
			if (joystick[port].joystickSwitch[FORWARD].debounceCount > JOYSTICK_DEBOUNCE)
				joystick[port].joystickSwitch[FORWARD].state = ON;
		else joystick[port].joystickSwitch[FORWARD].debounceCount++;
		
		if (JOYSTICK_FORWARD == 1 && joystick[port].joystickSwitch[FORWARD].state == ON)
			if (joystick[port].joystickSwitch[FORWARD].debounceCount > JOYSTICK_DEBOUNCE)
				joystick[port].joystickSwitch[FORWARD].state = OFF;
		else joystick[port].joystickSwitch[FORWARD].debounceCount++;
		
		if (JOYSTICK_FORWARD != joystick[port].joystickSwitch[FORWARD].state)
			joystick[port].joystickSwitch[FORWARD].debounceCount = 0;
		
		// Debounce BACKWARD
		if (JOYSTICK_BACKWARD == 0 && joystick[port].joystickSwitch[BACKWARD].state == OFF)
			if (joystick[port].joystickSwitch[BACKWARD].debounceCount > JOYSTICK_DEBOUNCE)
				joystick[port].joystickSwitch[BACKWARD].state = ON;
		else joystick[port].joystickSwitch[BACKWARD].debounceCount++;
		
		if (JOYSTICK_BACKWARD == 1 && joystick[port].joystickSwitch[BACKWARD].state == ON)
			if (joystick[port].joystickSwitch[BACKWARD].debounceCount > JOYSTICK_DEBOUNCE)
				joystick[port].joystickSwitch[BACKWARD].state = OFF;
		else joystick[port].joystickSwitch[BACKWARD].debounceCount++;
		
		if (JOYSTICK_BACKWARD != joystick[port].joystickSwitch[BACKWARD].state)
			joystick[port].joystickSwitch[BACKWARD].debounceCount = 0;
		
		// Debounce LEFT
		if (JOYSTICK_LEFT == 0 && joystick[port].joystickSwitch[LEFT].state == OFF)
			if (joystick[port].joystickSwitch[LEFT].debounceCount > JOYSTICK_DEBOUNCE)
				joystick[port].joystickSwitch[LEFT].state = ON;
		else joystick[port].joystickSwitch[LEFT].debounceCount++;
		
		if (JOYSTICK_LEFT == 1 && joystick[port].joystickSwitch[LEFT].state == ON)
			if (joystick[port].joystickSwitch[LEFT].debounceCount > JOYSTICK_DEBOUNCE)
				joystick[port].joystickSwitch[LEFT].state = OFF;
		else joystick[port].joystickSwitch[LEFT].debounceCount++;
		
		if (JOYSTICK_LEFT != joystick[port].joystickSwitch[LEFT].state)
			joystick[port].joystickSwitch[LEFT].debounceCount = 0;
		
		// Debounce RIGHT
		if (JOYSTICK_RIGHT == 0 && joystick[port].joystickSwitch[RIGHT].state == OFF)
			if (joystick[port].joystickSwitch[RIGHT].debounceCount > JOYSTICK_DEBOUNCE)
				joystick[port].joystickSwitch[RIGHT].state = ON;
		else joystick[port].joystickSwitch[RIGHT].debounceCount++;
		
		if (JOYSTICK_RIGHT == 1 && joystick[port].joystickSwitch[RIGHT].state == ON)
			if (joystick[port].joystickSwitch[RIGHT].debounceCount > JOYSTICK_DEBOUNCE)
				joystick[port].joystickSwitch[RIGHT].state = OFF;
		else joystick[port].joystickSwitch[RIGHT].debounceCount++;
		
		if (JOYSTICK_RIGHT != joystick[port].joystickSwitch[RIGHT].state)
			joystick[port].joystickSwitch[RIGHT].debounceCount = 0;
		
		// Debounce FIRE
		if (JOYSTICK_FIRE == 0 && joystick[port].joystickSwitch[FIRE].state == OFF)
			if (joystick[port].joystickSwitch[FIRE].debounceCount > JOYSTICK_DEBOUNCE)
				joystick[port].joystickSwitch[FIRE].state = ON;
		else joystick[port].joystickSwitch[FIRE].debounceCount++;
		
		if (JOYSTICK_FIRE == 1 && joystick[port].joystickSwitch[FIRE].state == ON)
			if (joystick[port].joystickSwitch[FIRE].debounceCount > JOYSTICK_DEBOUNCE)
				joystick[port].joystickSwitch[FIRE].state = OFF;
		else joystick[port].joystickSwitch[FIRE].debounceCount++;
		
		if (JOYSTICK_FIRE != joystick[port].joystickSwitch[FIRE].state)
			joystick[port].joystickSwitch[FIRE].debounceCount = 0;
	}

	// Deselect both joysticks
	JOY1_SELECT_TRIS = 1;
	JOY2_SELECT_TRIS = 1;

	// Read the paddle positions
	joystick[PORT1].paddleX = readADC(POTX1);
	joystick[PORT1].paddleY = readADC(POTY1);
	if (joystick[PORT1].paddleX == -1) joystick[PORT1].paddleConnected = FALSE;
	else joystick[PORT1].paddleConnected = TRUE;

	joystick[PORT2].paddleX = readADC(POTX2);
	joystick[PORT2].paddleY = readADC(POTY2);
	if (joystick[PORT2].paddleX == -1) joystick[PORT2].paddleConnected = FALSE;
	else joystick[PORT2].paddleConnected = TRUE;
}

// Process joystick 1
void processJoystick_j1(void)
{
	int result;

    // If the last transmision is complete send the joystick status
    if(!HIDTxHandleBusy(lastTransmission_j1))
    {
		// Set everything to the defult
		joystick_input_j1.members.buttons.x = 0;
		joystick_input_j1.members.buttons.square = 0;
		joystick_input_j1.members.buttons.o = 0;
		joystick_input_j1.members.buttons.triangle = 0;
		joystick_input_j1.members.buttons.L1 = 0;
		joystick_input_j1.members.buttons.R1 = 0;
		joystick_input_j1.members.buttons.L2 = 0;
		joystick_input_j1.members.buttons.R2 = 0;
		joystick_input_j1.members.buttons.select = 0;
		joystick_input_j1.members.buttons.start = 0;
		joystick_input_j1.members.buttons.left_stick = 0;
		joystick_input_j1.members.buttons.right_stick = 0;
		joystick_input_j1.members.buttons.home = 0;
		joystick_input_j1.members.hat_switch.hat_switch = HAT_SWITCH_NULL;

		// 128 is 'middle'
		joystick_input_j1.members.analog_stick.X = 128;
		joystick_input_j1.members.analog_stick.Y = 128;

		// Now adjust according to the joystick switch states
		if (joystick[PORT1].joystickSwitch[FORWARD].state == ON)
			joystick_input_j1.members.analog_stick.Y = 0;

		if (joystick[PORT1].joystickSwitch[BACKWARD].state == ON)
			joystick_input_j1.members.analog_stick.Y = 255;

		if (joystick[PORT1].joystickSwitch[RIGHT].state == ON)
			joystick_input_j1.members.analog_stick.X = 255;

		if (joystick[PORT1].joystickSwitch[LEFT].state == ON)
			joystick_input_j1.members.analog_stick.X = 0;

		if (joystick[PORT1].joystickSwitch[FIRE].state == ON)
			joystick_input_j1.members.buttons.square = 1;

		// Overwrite with paddle information if present
		if (joystick[PORT1].paddleConnected == TRUE)
		{
			// Paddle positions...
			joystick_input_j1.members.analog_stick.X = joystick[PORT1].paddleX;
			joystick_input_j1.members.analog_stick.Y = joystick[PORT1].paddleY;

			// Paddle fire buttons...
			//
			// The paddles use the joystick left (X) and right (Y) switches as fire buttons,
			// so we map those over to HID joystick buttons 1 and 2
			if (joystick[PORT1].joystickSwitch[LEFT].state == ON)
				joystick_input_j1.members.buttons.square = 1;
			if (joystick[PORT1].joystickSwitch[RIGHT].state == ON)
				joystick_input_j1.members.buttons.x = 1;
		}

		// Send the packet over USB to the host.
		lastTransmission_j1 = HIDTxPacket(HID_EP_J1, (BYTE*)&joystick_input_j1, sizeof(joystick_input_j1));
    }	
}

// Process joystick 2
void processJoystick_j2(void)
{
    // If the last transmision is complete send the joystick status
    if(!HIDTxHandleBusy(lastTransmission_j2))
    {
		// Set everything to the defult
		joystick_input_j2.members.buttons.x = 0;
		joystick_input_j2.members.buttons.square = 0;
		joystick_input_j2.members.buttons.o = 0;
		joystick_input_j2.members.buttons.triangle = 0;
		joystick_input_j2.members.buttons.L1 = 0;
		joystick_input_j2.members.buttons.R1 = 0;
		joystick_input_j2.members.buttons.L2 = 0;
		joystick_input_j2.members.buttons.R2 = 0;
		joystick_input_j2.members.buttons.select = 0;
		joystick_input_j2.members.buttons.start = 0;
		joystick_input_j2.members.buttons.left_stick = 0;
		joystick_input_j2.members.buttons.right_stick = 0;
		joystick_input_j2.members.buttons.home = 0;
		joystick_input_j2.members.hat_switch.hat_switch = HAT_SWITCH_NULL;

		// 128 is 'middle'
		joystick_input_j2.members.analog_stick.X = 128;
		joystick_input_j2.members.analog_stick.Y = 128;

		// Now adjust according to the joystick switch states
		if (joystick[PORT2].joystickSwitch[FORWARD].state == ON)
			joystick_input_j2.members.analog_stick.Y = 0;

		if (joystick[PORT2].joystickSwitch[BACKWARD].state == ON)
			joystick_input_j2.members.analog_stick.Y = 255;

		if (joystick[PORT2].joystickSwitch[RIGHT].state == ON)
			joystick_input_j2.members.analog_stick.X = 255;

		if (joystick[PORT2].joystickSwitch[LEFT].state == ON)
			joystick_input_j2.members.analog_stick.X = 0;

		if (joystick[PORT2].joystickSwitch[FIRE].state == ON)
			joystick_input_j2.members.buttons.square = 1;

		// Overwrite with paddle information if present
		if (joystick[PORT2].paddleConnected == TRUE)
		{
			// Paddle positions...
			joystick_input_j2.members.analog_stick.X = joystick[PORT2].paddleX;
			joystick_input_j2.members.analog_stick.Y = joystick[PORT2].paddleY;

			// Paddle fire buttons...
			//
			// The paddles use the joystick left (X) and right (Y) switches as fire buttons,
			// so we map those over to HID joystick buttons 1 and 2
			if (joystick[PORT2].joystickSwitch[LEFT].state == ON)
				joystick_input_j2.members.buttons.square = 1;
			if (joystick[PORT2].joystickSwitch[RIGHT].state == ON)
				joystick_input_j2.members.buttons.x = 1;
		}

		// Send the packet over USB to the host.
		lastTransmission_j2 = HIDTxPacket(HID_EP_J2, (BYTE*)&joystick_input_j2, sizeof(joystick_input_j2));
    }	
}

// Reads an ADC convertor and returns 0-1023
int readADC(unsigned char ADCnumber)
{
	int adcResult;
	float calc;

	// Select the desired ADC and start the conversion
	switch(ADCnumber)
	{
		case POTY1 : 	ADCON0 = 0b00000011; 	// Start the ADC conversion on AN0
						break;
		case POTX1 : 	ADCON0 = 0b00000111; 	// Start the ADC conversion on AN1
						break;
		case POTX2 : 	ADCON0 = 0b00001011; 	// Start the ADC conversion on AN2
						break;
		case POTY2 : 	ADCON0 = 0b00001111; 	// Start the ADC conversion on AN3
						break;
	}

	// Wait for the ADC conversion to complete
	while(GODONE);

	// Get the ADC result (1023 = +5v (5000 milliVolts)
	adcResult = ADRESL;
	adcResult += (ADRESH << 8);

	if (adcResult != 0)
	{
		// Here we convert the ADC result to the variable resistor position (see the 
		// design notes for details about how this works and why it is required).
		// Commodore paddles use 470Kohm potentiometers, if you want to use Atari
		// (which use 1Mohm) you will need to understand and change the calculation.
	
		// z1 = ((vin / vout) * z2) - z2 - see the design notes
		// in the calculation we divide everything by 1000 to keep the numbers smaller
	
		// Since the variable resistor is 470,000 (divided by 1000) the result should be
		// in the range of 0-470, so we then scale it to 0-255 (255/470 = 0.542)
		//calc = (((1.023 / ((float)adcResult/1000.0)) * 100.0) - 100.0) * 0.575;
	
		// Since the pot. is not perfect and will always let some current flow, we have
		// to add a little 'deadzone' into the calculation and then cut it with an if
		// statement... (we're using a scale of 0 - 270 in the calculation)
		calc = (((1.023 / ((float)adcResult/1000.0)) * 100.0) - 100.0) * 0.60;
		if (calc > 255) calc = 255;
	
		// Note: the result from the calculation is inverted from what the HID expects
		// so we invert it again to normalise...
		calc = 255 - calc;
	
		return (int)calc;
	}
	else return -1; // No paddle connected
}