/************************************************************************
	usbram.h

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

#ifndef _USBRAM_H_
#define _USBRAM_H_

// When porting the USB stack to Hi-Tech C18 pro you have to manually
// set the locations of the USB buffers and control structures which
// have to be located in the USB RAM of the PIC18F4550
//
// The follow defines collect all the necessary memory locations together
// to make it easier to ensure that the hardcoded memory locations don't 
// overlap.

#define USBRAM_BDT					0x400

// Requires 8 bytes each
#define USBRAM_CTRL_TRF_SETUP		0x500
#define USBRAM_CTRL_TRF_DATA		0x520

// Requires 64 bytes each
#define USBRAM_HID_REPORT_OUT_J1	0x530
#define USBRAM_HID_REPORT_IN_J1		0x570
#define USBRAM_HID_REPORT_OUT_J2	0x5B0
#define USBRAM_HID_REPORT_IN_J2		0x5F0

// Requires 35 bytes each
#define USBRAM_JOYSTICK_INPUT_J1	0x613
#define USBRAM_JOYSTICK_INPUT_J2	0x656

// Requires 1 byte
#define USBRAM_HID_REPORT_OUT_K1	0x67A
// Requires 8 bytes
#define USBRAM_HID_REPORT_IN_K1		0x67B

#endif