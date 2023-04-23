/************************************************************************
	main.c

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

// Revision information
//
// 20100122 : 1_0 : First public release for board version R2_2

// Global includes
#include <htc.h>

// USB stack includes
#include "USB Stack/Compiler.h"
#include "USB Stack/usb.h"
#include "USB Stack/joystick1_hid.h"
#include "USB Stack/joystick2_hid.h"
// #include "USB Stack/keyboard1_hid.h"

// Local includes
#include "hardware.h"
#include "usbram.h"
#include "joystick.h"
// #include "keyboard.h"
#include "usb_callback.h"


// PIC 18F4550 fuse configuration:
// Config word 1 (Oscillator configuration)
// 20Mhz crystal input scaled to 48Mhz and configured for USB operation
__CONFIG(1, USBPLL & IESODIS & FCMDIS & HSPLL & CPUDIV1 & PLLDIV5);
// Config word 2
__CONFIG(2, VREGEN & PWRTDIS & BOREN & BORV20 & WDTDIS & WDTPS32K);
// Config word 3
__CONFIG(3, PBDIGITAL & LPT1DIS & MCLREN);
// Config word 4
__CONFIG(4, XINSTDIS & STVREN & LVPDIS & ICPORTDIS & DEBUGDIS);
// Config word 5, 6 and 7 (protection configuration)
__CONFIG(5, UNPROTECT);
__CONFIG(6, UNPROTECT);
__CONFIG(7, UNPROTECT);

void initialise()
{
	initialiseJoysticks();
	// initialiseKeyboard();
}

void main(void)
{

	// Configure on-board ADC
	// Vss and Vdd as voltage references
	ADCON1 = 0b00001110;

	// Configure the ADC acquisition time according to the datasheet
	ADCON2 = 0b10110110; // Note: output is right justified

	// Set port directions
	TRISA = 0b00111111;
	TRISB = 0b11111111;
	TRISC = 0b01000100;
	TRISD = 0b00000000;
	TRISE = 0b00000000;

	// Clear all ports
	PORTA = 0b00000000;
	PORTB = 0b00000000;
	PORTC = 0b00000000;
	PORTD = 0b00000000;
	PORTE = 0b00000000;

	// Turn on weak pull-ups on port B
	RBPU = 0;

	// Initialise the system
	initialise();		// Initialise the hardware
	USBDeviceInit();	// Initialise the USB stack

	while(1)
	{
		// Perform the USB stack tasks
		USBDeviceTasks();

		// Show the device status, red for on and not configured
		// and green for on and configured
	    if(USBDeviceState == CONFIGURED_STATE)
	    {
			// USB is configured and ready
			LED_RED = OFF;
			LED_GREEN = ON;
		}
		else
	    {
			// USB is not configured
			LED_RED = ON;
			LED_GREEN = OFF;
		}

	    // Only process the USB tasks if we are in a configured state
	    if((USBDeviceState < CONFIGURED_STATE)||(USBSuspendControl==1))
		{
			// We do nothing when unconfigured...
		}
		else
		{
			// Read and debounce the joystick switches
			readJoystickState();

			// Read the keyboard switches
			// readKeyboardState();

			// Perform blocking on the keyboard to prevent key ghosting
			//
			// Note: if you comment this out, more keypress combinations will
			// work at once, but you will get ghost keypresses all the time...
			// keyboardBlocking();

			// Perform key debouncing
			// debounceKeyboard();
		
			// Call the joystick USB communication functions
			processJoystick_j1();
			processJoystick_j2();

			// Call the keyboard USB communication function
			// processKeyboard();
		}
	}
}