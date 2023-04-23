//
// Joystick 2 HID
//

#ifndef HID2_H
#define HID2_H

// DEFINITIONS

/* Class-Specific Requests */
#define GET_REPORT      0x01
#define GET_IDLE        0x02
#define GET_PROTOCOL    0x03
#define SET_REPORT      0x09
#define SET_IDLE        0x0A
#define SET_PROTOCOL    0x0B

/* Class Descriptor Types */
#define DSC_HID         0x21
#define DSC_RPT         0x22
#define DSC_PHY         0x23

/* Protocol Selection */
#define BOOT_PROTOCOL   0x00
#define RPT_PROTOCOL    0x01

/* HID Interface Class Code */
#define HID_INTF                    0x03

/* HID Interface Class SubClass Codes */
#define BOOT_INTF_SUBCLASS          0x01

/* HID Interface Class Protocol Codes */
#define HID_PROTOCOL_NONE           0x00
#define HID_PROTOCOL_KEYBOARD       0x01
#define HID_PROTOCOL_MOUSE          0x02

// Retreives the status of the buffer ownership
#define HIDTxHandleBusy_j2(handle) USBHandleBusy(handle)

// Retreives the status of the buffer ownership
#define HIDRxHandleBusy_j2(handle) USBHandleBusy(handle)

// Sends the specified data out the specified endpoint
#define HIDTxPacket_j2 USBTxOnePacket

// Receives the specified data out the specified endpoint
#define HIDRxPacket_j2 USBRxOnePacket

// Section: STRUCTURES

//USB HID Descriptor header as detailed in section 
//"6.2.1 HID Descriptor" of the HID class definition specification
typedef struct _USB_HID_DSC_HEADER_J2
{
    BYTE bDescriptorType;	//offset 9
    WORD wDscLength;		//offset 10
} USB_HID_DSC_HEADER;

//USB HID Descriptor header as detailed in section 
//"6.2.1 HID Descriptor" of the HID class definition specification
typedef struct _USB_HID_DSC_J2
{
    BYTE bLength;			//offset 0 
	BYTE bDescriptorType;	//offset 1
	WORD bcdHID;			//offset 2
    BYTE bCountryCode;		//offset 4
	BYTE bNumDsc;			//offset 5 
} USB_HID_DSC_J2;

// Section: EXTERNS
extern volatile unsigned char hid_report_in_j2[HID_INT_IN_EP_SIZE_J2];
extern volatile unsigned char hid_report_out_j2[HID_INT_OUT_EP_SIZE_J2];
extern volatile CTRL_TRF_SETUP SetupPkt;
extern ROM BYTE configDescriptor1[];
extern volatile BYTE CtrlTrfData[USB_EP0_BUFF_SIZE];

#if !defined(__USB_DESCRIPTORS_C)
extern ROM struct{BYTE report[HID_RPT01_SIZE_J2];}hid_rpt01_j2;
#endif

// PUBLIC PROTOTYPES
void USBCheckHIDRequest_j2(void);

#endif //HID_H
