//
// USB Descriptors
//
#ifndef __USB_DESCRIPTORS_C
#define __USB_DESCRIPTORS_C

/** INCLUDES *******************************************************/
#include "usb.h"
#include "joystick1_hid.h"

/** CONSTANTS ******************************************************/

/* Device Descriptor */
ROM USB_DEVICE_DESCRIPTOR device_dsc=
{
    0x12,    // Size of this descriptor in bytes
    USB_DESCRIPTOR_DEVICE,  // DEVICE descriptor type
    0x0200,                 // USB Spec Release Number in BCD format
    0x00,                   // Class Code
    0x00,                   // Subclass code
    0x00,                   // Protocol code
    USB_EP0_BUFF_SIZE,      // Max packet size for EP0, see usb_config.h
    MY_VID,                 // Vendor ID, see usb_config.h
    MY_PID,                 // Product ID, see usb_config.h
    0x0001,                 // Device release number in BCD format
    0x01,                   // Manufacturer string index
    0x02,                   // Product string index
    0x00,                   // Device serial number string index
    0x01                    // Number of possible configurations
};

/* Configuration 1 Descriptor */
ROM BYTE configDescriptor1[]={
    /* Configuration Descriptor */
    0x09,//sizeof(USB_CFG_DSC),    // Size of this descriptor in bytes
    USB_DESCRIPTOR_CONFIGURATION,                // CONFIGURATION descriptor type
    DESC_CONFIG_WORD(0x0069),   // Total length of data for this cfg (0x20 per interface + 0x09)
    3,                      // Number of interfaces in this cfg
    1,                      // Index value of this configuration
    0,                      // Configuration string index
    _DEFAULT | _SELF,               // Attributes, see usb_device.h
    50,                     // Max power consumption (2X mA)

    /* Joystick 1 Interface Descriptor */
    0x09,  // Size of this descriptor in bytes
    USB_DESCRIPTOR_INTERFACE,               // INTERFACE descriptor type
    0,                      // Interface Number
    0,                      // Alternate Setting Number
    2,                      // Number of endpoints in this intf
    HID_INTF,               // Class code
    0,     // Subclass code
    0,     // Protocol code
    3,                      // Interface string index

    // J1 HID Class-Specific Descriptor
    0x09,     // Size of this descriptor in bytes
    DSC_HID,                // HID descriptor type
    DESC_CONFIG_WORD(0x0111),                 // HID Spec Release Number in BCD format (1.11)
    0x00,                   // Country Code (0x00 for Not supported)
    HID_NUM_OF_DSC_J1,         // Number of class descriptors, see usbcfg.h
    DSC_RPT,                // Report descriptor type
    DESC_CONFIG_WORD(HID_RPT01_SIZE_J1),   //sizeof(hid_rpt01),      // Size of the report descriptor
   
    /* J1 Endpoint Descriptor */
    0x07,
    USB_DESCRIPTOR_ENDPOINT,    //Endpoint Descriptor
    HID_EP_J1 | _EP_IN,            //EndpointAddress
    _INTERRUPT,                       //Attributes
    DESC_CONFIG_WORD(64),        //size
    0x01,                        //Interval

    /* J1 Endpoint Descriptor */
    0x07,
    USB_DESCRIPTOR_ENDPOINT,    //Endpoint Descriptor
    HID_EP_J1 | _EP_OUT,            //EndpointAddress
    _INTERRUPT,                       //Attributes
    DESC_CONFIG_WORD(64),        //size
    0x01,                       //Interval

    /* Joystick 2 Interface Descriptor */
    0x09,   // Size of this descriptor in bytes
    USB_DESCRIPTOR_INTERFACE,               // INTERFACE descriptor type
    1,                      // Interface Number
    0,                      // Alternate Setting Number
    2,                      // Number of endpoints in this intf
    HID_INTF,               // Class code
    0,     // Subclass code
    0,     // Protocol code
    4,                      // Interface string index

    // J2 HID Class-Specific Descriptor
    0x09,//sizeof(USB_HID_DSC)+3,    // Size of this descriptor in bytes RRoj hack
    DSC_HID,                // HID descriptor type
    DESC_CONFIG_WORD(0x0111),                 // HID Spec Release Number in BCD format (1.11)
    0x00,                   // Country Code (0x00 for Not supported)
    HID_NUM_OF_DSC_J2,         // Number of class descriptors, see usbcfg.h
    DSC_RPT,                // Report descriptor type
    DESC_CONFIG_WORD(HID_RPT01_SIZE_J2),   //sizeof(hid_rpt01),      // Size of the report descriptor
    
    /* J2 Endpoint Descriptor */
    0x07,/*sizeof(USB_EP_DSC)*/
    USB_DESCRIPTOR_ENDPOINT,    //Endpoint Descriptor
    HID_EP_J2 | _EP_IN,            //EndpointAddress
    _INTERRUPT,                       //Attributes
    DESC_CONFIG_WORD(64),        //size
    0x01,                        //Interval

    /* J2 Endpoint Descriptor */
    0x07,/*sizeof(USB_EP_DSC)*/
    USB_DESCRIPTOR_ENDPOINT,    //Endpoint Descriptor
    HID_EP_J2 | _EP_OUT,            //EndpointAddress
    _INTERRUPT,                       //Attributes
    DESC_CONFIG_WORD(64),        //size
    0x01,                  //Interval

    /* Keyboard 1 Interface Descriptor */
    0x09,   // Size of this descriptor in bytes
    USB_DESCRIPTOR_INTERFACE,               // INTERFACE descriptor type
    2,                      // Interface Number
    0,                      // Alternate Setting Number
    2,                      // Number of endpoints in this intf
    HID_INTF,               // Class code
    BOOT_INTF_SUBCLASS,     // Subclass code
    HID_PROTOCOL_KEYBOARD,  // Protocol code
    5,                      // Interface string index

    // K1 HID Class-Specific Descriptor
    0x09,//sizeof(USB_HID_DSC)+3,    // Size of this descriptor in bytes RRoj hack
    DSC_HID,                // HID descriptor type
    DESC_CONFIG_WORD(0x0111),                 // HID Spec Release Number in BCD format (1.11)
    0x00,                   // Country Code (0x00 for Not supported)
    HID_NUM_OF_DSC_K1,         // Number of class descriptors, see usbcfg.h
    DSC_RPT,                // Report descriptor type
    DESC_CONFIG_WORD(63),   //sizeof(hid_rpt01),      // Size of the report descriptor
    
    /* K1 Endpoint Descriptor */
    0x07,/*sizeof(USB_EP_DSC)*/
    USB_DESCRIPTOR_ENDPOINT,    //Endpoint Descriptor
    HID_EP_K1 | _EP_IN,            //EndpointAddress
    _INTERRUPT,                       //Attributes
    DESC_CONFIG_WORD(8),        //size
    0x01,                        //Interval

    /* J2 Endpoint Descriptor */
    0x07,/*sizeof(USB_EP_DSC)*/
    USB_DESCRIPTOR_ENDPOINT,    //Endpoint Descriptor
    HID_EP_K1 | _EP_OUT,            //EndpointAddress
    _INTERRUPT,                       //Attributes
    DESC_CONFIG_WORD(8),        //size
    0x01                  //Interval
};

//Language code string descriptor
ROM struct{BYTE bLength;BYTE bDscType;WORD string[1];}sd000={
sizeof(sd000),USB_DESCRIPTOR_STRING,{0x0409
}};

//Manufacturer string descriptor
ROM struct{BYTE bLength;BYTE bDscType;WORD string[10];}sd001={
sizeof(sd001),USB_DESCRIPTOR_STRING,
{'S','i','m','o','n',' ','I','n','n','s'
}};

//Product string descriptor
ROM struct{BYTE bLength;BYTE bDscType;WORD string[16];}sd002={
sizeof(sd002),USB_DESCRIPTOR_STRING,
{'C','o','m','m','o','d','o','r','e',' ','6','4',' ','U','S','B'
}};

// Joystick 1 HID string descriptor
ROM struct{BYTE bLength;BYTE bDscType;WORD string[17];}sd003={
sizeof(sd003),USB_DESCRIPTOR_STRING,
{'C','6','4',' ','J','o','y','s','t','i','c','k',' ','P','o','r','t'
}};

// Joystick 2 HID string descriptor
ROM struct{BYTE bLength;BYTE bDscType;WORD string[17];}sd004={
sizeof(sd004),USB_DESCRIPTOR_STRING,
{'C','6','4',' ','J','o','y','s','t','i','c','k',' ','P','o','r','t'
}};

// Keyboard 1 HID string descriptor
ROM struct{BYTE bLength;BYTE bDscType;WORD string[12];}sd005={
sizeof(sd005),USB_DESCRIPTOR_STRING,
{'C','6','4',' ','K','e','y','b','o','a','r','d'
}};

//Array of configuration descriptors
ROM BYTE *ROM USB_CD_Ptr[]=
{
    (ROM BYTE *ROM)&configDescriptor1
};

//Array of string descriptors
ROM BYTE *ROM USB_SD_Ptr[]=
{
    (ROM BYTE *ROM)&sd000,
    (ROM BYTE *ROM)&sd001,
    (ROM BYTE *ROM)&sd002,
    (ROM BYTE *ROM)&sd003,
    (ROM BYTE *ROM)&sd004,
    (ROM BYTE *ROM)&sd005
};

ROM struct{BYTE report[HID_RPT01_SIZE_J1];}hid_rpt01_j1={{
  0x05,0x01,        //USAGE_PAGE (Generic Desktop)
  0x09,0x05,        //USAGE (Game Pad)
  0xA1,0x01,        //COLLECTION (Application)
  0x15,0x00,        //  LOGICAL_MINIMUM(0)
  0x25,0x01,        //  LOGICAL_MAXIMUM(1)
  0x35,0x00,        //  PHYSICAL_MINIMUM(0)
  0x45,0x01,        //  PHYSICAL_MAXIMUM(1)
  0x75,0x01,        //  REPORT_SIZE(1)
  0x95,0x0D,        //  REPORT_COUNT(13)
  0x05,0x09,        //  USAGE_PAGE(Button)
  0x19,0x01,        //  USAGE_MINIMUM(Button 1)
  0x29,0x0D,        //  USAGE_MAXIMUM(Button 13)
  0x81,0x02,        //  INPUT(Data,Var,Abs)
  0x95,0x03,        //  REPORT_COUNT(3)
  0x81,0x01,        //  INPUT(Cnst,Ary,Abs)
  0x05,0x01,        //  USAGE_PAGE(Generic Desktop)
  0x25,0x07,        //  LOGICAL_MAXIMUM(7)
  0x46,0x3B,0x01,   //  PHYSICAL_MAXIMUM(315)
  0x75,0x04,        //  REPORT_SIZE(4)
  0x95,0x01,        //  REPORT_COUNT(1)
  0x65,0x14,        //  UNIT(Eng Rot:Angular Pos)
  0x09,0x39,        //  USAGE(Hat Switch)
  0x81,0x42,        //  INPUT(Data,Var,Abs,Null)
  0x65,0x00,        //  UNIT(None)
  0x95,0x01,        //  REPORT_COUNT(1)
  0x81,0x01,        //  INPUT(Cnst,Ary,Abs)
  0x26,0xFF,0x00,   //  LOGICAL_MAXIMUM(255)
  0x46,0xFF,0x00,   //  PHYSICAL_MAXIMUM(255)
  0x09,0x30,        //  USAGE(X)
  0x09,0x31,        //  USAGE(Y)
  0x09,0x32,        //  USAGE(Z)
  0x09,0x35,        //  USAGE(Rz)
  0x75,0x08,        //  REPORT_SIZE(8)
  0x95,0x04,        //  REPORT_COUNT(4)
  0x81,0x02,        //  INPUT(Data,Var,Abs)
  0xC0              //END_COLLECTION
}
};

ROM struct{BYTE report[HID_RPT01_SIZE_J2];}hid_rpt01_j2={{
  0x05,0x01,        //USAGE_PAGE (Generic Desktop)
  0x09,0x05,        //USAGE (Game Pad)
  0xA1,0x01,        //COLLECTION (Application)
  0x15,0x00,        //  LOGICAL_MINIMUM(0)
  0x25,0x01,        //  LOGICAL_MAXIMUM(1)
  0x35,0x00,        //  PHYSICAL_MINIMUM(0)
  0x45,0x01,        //  PHYSICAL_MAXIMUM(1)
  0x75,0x01,        //  REPORT_SIZE(1)
  0x95,0x0D,        //  REPORT_COUNT(13)
  0x05,0x09,        //  USAGE_PAGE(Button)
  0x19,0x01,        //  USAGE_MINIMUM(Button 1)
  0x29,0x0D,        //  USAGE_MAXIMUM(Button 13)
  0x81,0x02,        //  INPUT(Data,Var,Abs)
  0x95,0x03,        //  REPORT_COUNT(3)
  0x81,0x01,        //  INPUT(Cnst,Ary,Abs)
  0x05,0x01,        //  USAGE_PAGE(Generic Desktop)
  0x25,0x07,        //  LOGICAL_MAXIMUM(7)
  0x46,0x3B,0x01,   //  PHYSICAL_MAXIMUM(315)
  0x75,0x04,        //  REPORT_SIZE(4)
  0x95,0x01,        //  REPORT_COUNT(1)
  0x65,0x14,        //  UNIT(Eng Rot:Angular Pos)
  0x09,0x39,        //  USAGE(Hat Switch)
  0x81,0x42,        //  INPUT(Data,Var,Abs,Null)
  0x65,0x00,        //  UNIT(None)
  0x95,0x01,        //  REPORT_COUNT(1)
  0x81,0x01,        //  INPUT(Cnst,Ary,Abs)
  0x26,0xFF,0x00,   //  LOGICAL_MAXIMUM(255)
  0x46,0xFF,0x00,   //  PHYSICAL_MAXIMUM(255)
  0x09,0x30,        //  USAGE(X)
  0x09,0x31,        //  USAGE(Y)
  0x09,0x32,        //  USAGE(Z)
  0x09,0x35,        //  USAGE(Rz)
  0x75,0x08,        //  REPORT_SIZE(8)
  0x95,0x04,        //  REPORT_COUNT(4)
  0x81,0x02,        //  INPUT(Data,Var,Abs)
  0xC0              //END_COLLECTION
}
};

//Class specific descriptor - HID Keyboard
ROM struct{BYTE report[HID_RPT01_SIZE_K1];}hid_rpt01_k1={
{   0x05, 0x01,                    // USAGE_PAGE (Generic Desktop)
    0x09, 0x06,                    // USAGE (Keyboard)
    0xa1, 0x01,                    // COLLECTION (Application)
    0x05, 0x07,                    //   USAGE_PAGE (Keyboard)
    0x19, 0xe0,                    //   USAGE_MINIMUM (Keyboard LeftControl)
    0x29, 0xe7,                    //   USAGE_MAXIMUM (Keyboard Right GUI)
    0x15, 0x00,                    //   LOGICAL_MINIMUM (0)
    0x25, 0x01,                    //   LOGICAL_MAXIMUM (1)
    0x75, 0x01,                    //   REPORT_SIZE (1)
    0x95, 0x08,                    //   REPORT_COUNT (8)
    0x81, 0x02,                    //   INPUT (Data,Var,Abs)
    0x95, 0x01,                    //   REPORT_COUNT (1)
    0x75, 0x08,                    //   REPORT_SIZE (8)
    0x81, 0x03,                    //   INPUT (Cnst,Var,Abs)
    0x95, 0x05,                    //   REPORT_COUNT (5)
    0x75, 0x01,                    //   REPORT_SIZE (1)
    0x05, 0x08,                    //   USAGE_PAGE (LEDs)
    0x19, 0x01,                    //   USAGE_MINIMUM (Num Lock)
    0x29, 0x05,                    //   USAGE_MAXIMUM (Kana)
    0x91, 0x02,                    //   OUTPUT (Data,Var,Abs)
    0x95, 0x01,                    //   REPORT_COUNT (1)
    0x75, 0x03,                    //   REPORT_SIZE (3)
    0x91, 0x03,                    //   OUTPUT (Cnst,Var,Abs)
    0x95, 0x06,                    //   REPORT_COUNT (6)
    0x75, 0x08,                    //   REPORT_SIZE (8)
    0x15, 0x00,                    //   LOGICAL_MINIMUM (0)
    0x25, 0x65,                    //   LOGICAL_MAXIMUM (101)
    0x05, 0x07,                    //   USAGE_PAGE (Keyboard)
    0x19, 0x00,                    //   USAGE_MINIMUM (Reserved (no event indicated))
    0x29, 0x65,                    //   USAGE_MAXIMUM (Keyboard Application)
    0x81, 0x00,                    //   INPUT (Data,Ary,Abs)
    0xc0}                          // End Collection
};

#endif
