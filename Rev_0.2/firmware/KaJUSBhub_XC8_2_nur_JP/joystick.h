/************************************************************************
	joystick.h

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

#ifndef _JOYSTICK_H_
#define _JOYSTICK_H_

#include "USB Stack/GenericTypeDefs.h"

// Hatswitch definitions (from http://www.microsoft.com/whdc/archive/hidgame.mspx)
#define HAT_SWITCH_NORTH            0x0
#define HAT_SWITCH_NORTH_EAST       0x1
#define HAT_SWITCH_EAST             0x2
#define HAT_SWITCH_SOUTH_EAST       0x3
#define HAT_SWITCH_SOUTH            0x4
#define HAT_SWITCH_SOUTH_WEST       0x5
#define HAT_SWITCH_WEST             0x6
#define HAT_SWITCH_NORTH_WEST       0x7
#define HAT_SWITCH_NULL             0x8

// Structure for holding a joystick switch state
struct switchState {
	unsigned char state; // On or off
	unsigned char debounceCount;
};

// Structure for holding the joystick states
struct joystickState {
	struct switchState joystickSwitch[5];
	unsigned char paddleConnected;
	int paddleX;
	int paddleY;
} joystick[2];

// 35 bytes
typedef union _INTPUT_CONTROLS_TYPEDEF
{
    struct
    {
        struct
        {
            BYTE square:1;
            BYTE x:1;
            BYTE o:1;
            BYTE triangle:1;
            BYTE L1:1;
            BYTE R1:1;
            BYTE L2:1;
            BYTE R2:1;//
            BYTE select:1;
            BYTE start:1;
            BYTE left_stick:1;
            BYTE right_stick:1;
            BYTE home:1;
            BYTE :3;    //filler
        } buttons;
        struct
        {
            BYTE hat_switch:4;
            BYTE :4;//filler
        } hat_switch;
        struct
        {
            BYTE X;
            BYTE Y;
            BYTE Z;
            BYTE Rz;
        } analog_stick;
    } members;
    BYTE val[7];
} INPUT_CONTROLS;

INPUT_CONTROLS joystick_input_j1 @ USBRAM_JOYSTICK_INPUT_J1; // 35 bytes
INPUT_CONTROLS joystick_input_j2 @ USBRAM_JOYSTICK_INPUT_J2; // 35 bytes (0x636)

// Function prototypes
void initialiseJoysticks(void);
void readJoystickState(void);
void processJoystick_j1(void);
void processJoystick_j2(void);
int readADC(unsigned char ADCnumber);

#endif