//
// Keyboard 1 HID
//

#ifndef KEYBOARD_HID1_H
#define KEYBOARD_HID1_H

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
#define HIDTxHandleBusy(handle) USBHandleBusy(handle)

// Retreives the status of the buffer ownership
#define HIDRxHandleBusy(handle) USBHandleBusy(handle)

// Sends the specified data out the specified endpoint
#define HIDTxPacket USBTxOnePacket

// Receives the specified data out the specified endpoint
#define HIDRxPacket USBRxOnePacket

// Section: STRUCTURES

//USB HID Descriptor header as detailed in section 
//"6.2.1 HID Descriptor" of the HID class definition specification
typedef struct _USB_HID_DSC_HEADER_K1
{
    BYTE bDescriptorType;	//offset 9
    WORD wDscLength;		//offset 10
} USB_HID_DSC_HEADER;

//USB HID Descriptor header as detailed in section 
//"6.2.1 HID Descriptor" of the HID class definition specification
typedef struct _USB_HID_DSC_K1
{
    BYTE bLength;			//offset 0 
	BYTE bDescriptorType;	//offset 1
	WORD bcdHID;			//offset 2
    BYTE bCountryCode;		//offset 4
	BYTE bNumDsc;			//offset 5 
} USB_HID_DSC_K1;

// Section: EXTERNS
extern volatile unsigned char hid_report_in_k1[HID_INT_IN_EP_SIZE_K1];
extern volatile unsigned char hid_report_out_k1[HID_INT_OUT_EP_SIZE_K1];
extern volatile CTRL_TRF_SETUP SetupPkt;
extern ROM BYTE configDescriptor1[];
extern volatile BYTE CtrlTrfData[USB_EP0_BUFF_SIZE];

#if !defined(__USB_DESCRIPTORS_C)
extern ROM struct{BYTE report[HID_RPT01_SIZE_K1];}hid_rpt01_k1;
#endif

// PUBLIC PROTOTYPES
void USBCheckHIDRequest_k1(void);

#endif
