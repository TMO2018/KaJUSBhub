//
// Joystick 2 HID
//

#ifndef JOYSTICK2_HID_C
#define JOYSTICK2_HID_C

// INCLUDES
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb.h"
#include "joystick2_hid.h"

// VARIABLES
BYTE idle_rate_j2;
BYTE active_protocol_j2;   // [0] Boot Protocol [1] Report Protocol

// EXTERNAL PROTOTYPES
#if defined USER_GET_REPORT_HANDLER_J2
    void USER_GET_REPORT_HANDLER_J2(void);
#endif

#if defined USER_SET_REPORT_HANDLER_J2
    void USER_SET_REPORT_HANDLER_J2(void);
#endif     


// This routine handles HID specific request that happen on EP0.  
// This function should be called from the USBCBCheckOtherReq() call back 
// function whenever implementing a HID device.
void USBCheckHIDRequest_j2(void)
{
    if(SetupPkt.Recipient != USB_SETUP_RECIPIENT_INTERFACE_BITFIELD_J2) return;
    if(SetupPkt.bIntfID != HID_INTF_ID_J2) return;
    
    if(SetupPkt.bRequest == USB_REQUEST_GET_DESCRIPTOR)
    {
        switch(SetupPkt.bDescriptorType)
        {
            case DSC_HID:           
                if(USBActiveConfiguration == 1)
                {
                    USBEP0SendROMPtr(
                        (ROM BYTE*)&configDescriptor1 + 18,
                        sizeof(USB_HID_DSC_J2)+3,
                        USB_EP0_INCLUDE_ZERO);
                }
                break;
            case DSC_RPT:             
                if(USBActiveConfiguration == 1)
                {
                    USBEP0SendROMPtr(
                        (ROM BYTE*)&hid_rpt01_j2,
                        sizeof(hid_rpt01_j2),     //See usb_config.h
                        USB_EP0_INCLUDE_ZERO);
                }
                break;
            case DSC_PHY:
                USBEP0Transmit(USB_EP0_NO_DATA);
                break;
        }
    }
    
    if(SetupPkt.RequestType != USB_SETUP_TYPE_CLASS_BITFIELD)
    {
        return;
    }

    switch(SetupPkt.bRequest)
    {
        case GET_REPORT:
            #if defined USER_GET_REPORT_HANDLER_J2
                USER_GET_REPORT_HANDLER_J2();
            #endif
            break;
        case SET_REPORT:
            #if defined USER_SET_REPORT_HANDLER_J2
                USER_SET_REPORT_HANDLER_J2();
            #endif       
            break;
        case GET_IDLE:
            USBEP0SendRAMPtr(
                (BYTE*)&idle_rate_j2,
                1,
                USB_EP0_INCLUDE_ZERO);
            break;
        case SET_IDLE:
            USBEP0Transmit(USB_EP0_NO_DATA);
            idle_rate_j2 = SetupPkt.W_Value.byte.HB;
            break;
        case GET_PROTOCOL:
            USBEP0SendRAMPtr(
                (BYTE*)&active_protocol_j2,
                1,
                USB_EP0_NO_OPTIONS);
            break;
        case SET_PROTOCOL:
            USBEP0Transmit(USB_EP0_NO_DATA);
            active_protocol_j2 = SetupPkt.W_Value.byte.LB;
            break;
    }
}

#endif

