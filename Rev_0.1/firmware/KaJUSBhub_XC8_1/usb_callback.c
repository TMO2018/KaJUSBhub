/************************************************************************
	usb_callback.c

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

// USB Stack includes
#include "USB Stack/GenericTypeDefs.h"
#include "USB Stack/usb.h"
#include "USB Stack/Compiler.h"
#include "USB Stack/joystick1_hid.h"
#include "USB Stack/joystick2_hid.h"
#include "USB Stack/keyboard1_hid.h"
#include "keyboard.h"

// Local includes
#include "usb_callback.h"

// Call back that is invoked when a USB suspend is detected
void USBCBSuspend(void)
{
}

// This function is called when the USB interrupt bit is set
// In this example the interrupt is only used when the device
// goes to sleep when it receives a USB suspend command
void __attribute__ ((interrupt)) _USB1Interrupt(void)
{
}
	
// This call back is invoked when a wakeup from USB suspend is detected.
void USBCBWakeFromSuspend(void)
{
}

// The USB host sends out a SOF packet to full-speed devices every 1 ms.
void USBCB_SOF_Handler(void)
{
    // No need to clear UIRbits.SOFIF to 0 here.
    // Callback caller is already doing that.
}

// The purpose of this callback is mainly for
// debugging during development. Check UEIR to see
// which error causes the interrupt.
void USBCBErrorHandler(void)
{
    // No need to clear UEIR to 0 here.
    // Callback caller is already doing that.
}

// Check other (non-standard) requests
void USBCBCheckOtherReq(void)
{
    // Send request to the interface specified by wIndex
    switch ( SetupPkt.wIndex ) {
        case HID_INTF_ID_J1: USBCheckHIDRequest_j1();    break;
        case HID_INTF_ID_J2: USBCheckHIDRequest_j2();    break;
        case HID_INTF_ID_K1: USBCheckHIDRequest_k1();    break;
        default:                                         break;
    }
}

// SET_DESCRIPTOR request
void USBCBStdSetDscHandler(void)
{
    // Must claim session ownership if supporting this request
}

// Initialise end-points
void USBCBInitEP(void)
{
    // Enable the Joystick HID endpoints for J1 and J2 and the keyboard HID endpoint
    USBEnableEndpoint(HID_EP_J1,USB_OUT_ENABLED|USB_IN_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
    USBEnableEndpoint(HID_EP_J2,USB_OUT_ENABLED|USB_IN_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
    USBEnableEndpoint(HID_EP_K1,USB_OUT_ENABLED|USB_IN_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);

	lastOUTTransmission_k1 = HIDRxPacket(HID_EP_K1,(BYTE*)&hid_report_out_k1,1);
}

// Send resume
void USBCBSendResume(void)
{
    static WORD delay_count;
    
    USBResumeControl = 1;                // Start RESUME signaling
    
    delay_count = 1800U;                // Set RESUME line for 1-13 ms
    do
    {
        delay_count--;
    }while(delay_count);
    USBResumeControl = 0;
}

// USB Callback event handler
BOOL USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, WORD size)
{
    switch(event)
    {
        case EVENT_CONFIGURED: 
            USBCBInitEP();
            break;
        case EVENT_SET_DESCRIPTOR:
            USBCBStdSetDscHandler();
            break;
        case EVENT_EP0_REQUEST:
            USBCBCheckOtherReq();
            break;
        case EVENT_SOF:
            USBCB_SOF_Handler();
            break;
        case EVENT_SUSPEND:
            USBCBSuspend();
            break;
        case EVENT_RESUME:
            USBCBWakeFromSuspend();
            break;
        case EVENT_BUS_ERROR:
            USBCBErrorHandler();
            break;
        case EVENT_TRANSFER:
            Nop();
            break;
        default:
            break;
    }      
    return TRUE; 
}
