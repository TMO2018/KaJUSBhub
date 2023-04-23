/************************************************************************
	keymap.c

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

#ifndef KEYMAP_H
#define KEYMAP_H

// Commodore 64 keyboard matrix to USB HID keyboard keymap

// HID to PS/2 Mapping from http://www.microsoft.com/whdc/archive/scancode.mspx

// Since VICE maps the PS/2 map back to the C64 we should follow the VICE mapping
// then the real keyboard will go to PS/2 mapping and then back again...
//
// VICE KB: http://vicekb.trikaliotis.net/03-001

// VICE Compatible keymap
const unsigned char keymap[65] = {
	// KA
	0x1E,				// 1			K0
	0x35,				// Left-arrow	K1
	0x2B,				// Ctrl			K2
	0x29,				// Stop			K3
	0x2C,				// Space		K4
	0xE0,				// Commodore	K5
	0x14,				// Q			K6
	0x1F,				// 2			K7

	// KB
	0x20,				// 3
	0x1A,				// W
	0x04,				// A
	0xE1,				// L-SHIFT
	0x1D,				// Z
	0x16,				// S
	0x08,				// E
	0x21,				// 4

	// KC
	0x22,				// 5
	0x15,				// R
	0x07,				// D
	0x1B,				// X
	0x06,				// C
	0x09,				// F
	0x17,				// T
	0x23,				// 6

	// KD
	0x24,				// 7
	0x1C,				// Y
	0x0A,				// G
	0x19,				// V
	0x05,				// B
	0x0B,				// H
	0x18,				// U
	0x25,				// 8

	// KE
	0x26,				// 9
	0x0C,				// I
	0x0D,				// J
	0x11,				// N
	0x10,				// M
	0x0E,				// K
	0x12,				// O
	0x27,				// 0

	// KF
	0x2D,				// +
	0x13,				// P
	0x0F,				// L
	0x36,				// ,
	0x37,				// .
	0x33,				// :
	0x2F,				// @
	0x2E,				// -

	// KG
	0x49,				// £
	0x30,				// *
	0x34,				// ;
	0x38,				// /
	0xE5,				// R-SHIFT
	0x31,				// =
	0x4C,				// UP ARROW
	0x4A,				// HOME

	// KH
	0x2A,				// DEL
	0x28,				// RETURN
	0x4F,				// CURSOR LEFT/RIGHT
	0x51,				// CURSOR UP/DOWN
	0x3A,				// F1
	0x3C,				// F3
	0x3E,				// F5
	0x40,				// F7

	// KI
	0x4B				// RESTORE
};

#endif