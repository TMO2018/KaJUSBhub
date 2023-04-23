/************************************************************************
	keyboard.h

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

#ifndef _KEYBOARD_H_
#define _KEYBOARD_H_

#include "USB Stack\GenericTypeDefs.h"
#include "USB Stack\usb.h"

// Global variables
char buffer[8];
unsigned char OutBuffer[8];
USB_HANDLE lastINTransmission_k1;
USB_HANDLE lastOUTTransmission_k1;
BOOL Keyboard_out;

void initialiseKeyboard(void);
void readKeyboardState(void);
void processKeyboard(void);
void keyboardBlocking(void);
void debounceKeyboard(void);

#endif