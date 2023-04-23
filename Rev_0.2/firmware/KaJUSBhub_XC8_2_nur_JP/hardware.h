/************************************************************************
	hardware.h

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

#ifndef _HARDWARE_H_
#define _HARDWARE_H_

	// Note: The hardware is using the programming pins RB6 and RB7 so
	// the device will not function correctly with the programmer connected.
	// This is to allow all 8 keyboard rows to be connected with out
	// external pull-up resistors (which only PORTB has).

	// Fosc frequency (48 Mhz)
	#define _XTAL_FREQ 48000000
	
	// Common useful definitions
	#define ON		1
	#define OFF		0
	#define	WRITE	0
	#define READ	1

	// Physical hardware port mapping
	
	// LEDs
	#define LED_RED		RC0
	#define LED_GREEN	RC1

	// C64 Keyboard (See schematic diagram for details)
	#define K0	RB0
	#define K1	RB1
	#define K2	RB2
	#define K3	RB3
	#define K4	RB4
	#define K5	RB5
	#define K6	RB6
	#define K7	RB7

	#define KA	TRISD0
	#define KB	TRISD1
	#define KC	TRISD2
	#define KD	TRISD3
	#define KE	TRISD4
	#define KF	TRISD5
	#define KG	TRISD6
	#define KH	TRISD7

	// RESTORE key
	#define KI	RC2

	// Keyboard debounce amount (higher for more)
	#define KEYBOARD_DEBOUNCE	5

	// Joysticks
	#define	JOY1_SELECT	RA4
	#define JOY2_SELECT	RA5

	#define JOY1_SELECT_TRIS TRISA4
	#define JOY2_SELECT_TRIS TRISA5

	#define JOY1_POTX	RA0
	#define JOY1_POTY	RA1
	#define JOY2_POTX	RA2
	#define JOY2_POTY	RA4

	// Joystick ports
	#define	PORT1	0
	#define PORT2	1
	
	// Joystick debounce amount (higher for more)
	#define JOYSTICK_DEBOUNCE	5
	
	// Joystick switches
	#define	JOYSTICK_FORWARD	RB3
	#define JOYSTICK_BACKWARD	RB5
	#define JOYSTICK_LEFT		RB6
	#define JOYSTICK_RIGHT		RB7
	#define JOYSTICK_FIRE		RB4

	// Joystick directions
	#define	FORWARD		0
	#define BACKWARD	1
	#define LEFT		2
	#define RIGHT		3
	#define FIRE		4

	// Joystick ADC identifiers
	#define POTX1	0
	#define POTY1	1
	#define POTX2	3
	#define POTY2	4

	// USB bus sensing defines
	#define USB_BUS_SENSE	1
	//#define USB_BUS_SENSE	RA1
	//#define USE_USB_BUS_SENSE_IO
	#define self_power 0

	// Turn on the hi-tech c18 pro porting code
	#define PICC18PORT

#endif