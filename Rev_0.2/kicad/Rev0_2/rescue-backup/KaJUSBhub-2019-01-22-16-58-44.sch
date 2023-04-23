EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:MCU_Microchip_PIC18
LIBS:fe
LIBS:switches
LIBS:TMO_conn
LIBS:KaJUSBhub-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "KaJUSBhub"
Date "11.11.2018"
Rev "0.1"
Comp "TMO"
Comment1 "Keyboard and Joystick USB-Hub"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1400 3250 4900 1150
U 5BE857FB
F0 "KaJ" 60
F1 "KaJ.sch" 60
$EndSheet
$Sheet
S 1400 4750 4900 1100
U 5BE85822
F0 "USBhub" 60
F1 "USBhub.sch" 60
$EndSheet
$Comp
L Fuse F1
U 1 1 5BE88725
P 5650 1550
F 0 "F1" V 5730 1550 50  0000 C CNN
F 1 "0,5A flink" V 5575 1550 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_inline_Type-I" V 5580 1550 50  0001 C CNN
F 3 "" H 5650 1550 50  0001 C CNN
	1    5650 1550
	0    1    1    0   
$EndComp
$Comp
L Fuse F2
U 1 1 5BE88785
P 5650 1950
F 0 "F2" V 5730 1950 50  0000 C CNN
F 1 "2,5A träge" V 5575 1950 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_inline_Type-I" V 5580 1950 50  0001 C CNN
F 3 "" H 5650 1950 50  0001 C CNN
	1    5650 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 1550 4850 1950
Wire Wire Line
	4100 1550 5500 1550
Wire Wire Line
	4850 1950 5500 1950
Connection ~ 4850 1550
Wire Wire Line
	5800 1550 6150 1550
Wire Wire Line
	5800 1950 6150 1950
$Comp
L DIN-7 J1
U 1 1 5BEAE217
P 2900 1650
F 0 "J1" H 3025 1875 50  0000 C CNN
F 1 "DIN-7" H 2900 1390 50  0000 C CNN
F 2 "TMO:din-7" H 2900 1650 50  0001 C CNN
F 3 "" H 2900 1650 50  0001 C CNN
	1    2900 1650
	1    0    0    -1  
$EndComp
NoConn ~ 2600 1750
NoConn ~ 3200 1750
$Comp
L GND #PWR01
U 1 1 5BEAE472
P 4400 2000
F 0 "#PWR01" H 4400 1750 50  0001 C CNN
F 1 "GND" H 4400 1850 50  0000 C CNN
F 2 "" H 4400 2000 50  0001 C CNN
F 3 "" H 4400 2000 50  0001 C CNN
	1    4400 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1650 2250 1650
Wire Wire Line
	2250 1200 2250 2050
Wire Wire Line
	3200 1650 3350 1650
Wire Wire Line
	3350 1650 3350 2050
Wire Wire Line
	2900 1350 2900 1200
Wire Wire Line
	2900 1200 2250 1200
Connection ~ 2250 1650
Wire Wire Line
	2600 1550 2550 1550
Wire Wire Line
	2550 1550 2550 1300
Wire Wire Line
	2550 1300 3300 1300
Wire Wire Line
	3300 1300 3300 1550
Connection ~ 3300 1550
$Comp
L SW_DPST SW1
U 1 1 5BEAE71E
P 3900 1650
F 0 "SW1" H 3900 1850 50  0000 C CNN
F 1 "SW_DPST" H 3900 1450 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_NKK_G1xJP" H 3900 1650 50  0001 C CNN
F 3 "" H 3900 1650 50  0001 C CNN
	1    3900 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2050 2250 2050
Wire Wire Line
	3700 1750 3350 1750
Connection ~ 3350 1750
Wire Wire Line
	4100 1750 4400 1750
Wire Wire Line
	4400 1750 4400 2000
Wire Wire Line
	3200 1550 3700 1550
Text GLabel 6150 1550 2    39   Input ~ 0
+5VKaJ
Text GLabel 6150 1950 2    39   Input ~ 0
+5VUSBhub
$Comp
L Conn_01x01 MH1
U 1 1 5C03F937
P 8050 3300
F 0 "MH1" H 8050 3400 50  0000 C CNN
F 1 "Conn_01x01" H 8050 3200 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.7mm" H 8050 3300 50  0001 C CNN
F 3 "" H 8050 3300 50  0001 C CNN
	1    8050 3300
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 MH2
U 1 1 5C03F965
P 8050 3600
F 0 "MH2" H 8050 3700 50  0000 C CNN
F 1 "Conn_01x01" H 8050 3500 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.7mm" H 8050 3600 50  0001 C CNN
F 3 "" H 8050 3600 50  0001 C CNN
	1    8050 3600
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 MH3
U 1 1 5C03F997
P 8050 3900
F 0 "MH3" H 8050 4000 50  0000 C CNN
F 1 "Conn_01x01" H 8050 3800 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.7mm" H 8050 3900 50  0001 C CNN
F 3 "" H 8050 3900 50  0001 C CNN
	1    8050 3900
	1    0    0    -1  
$EndComp
NoConn ~ 7850 3300
NoConn ~ 7850 3600
NoConn ~ 7850 3900
$Comp
L Conn_01x01 MH4
U 1 1 5C0667BB
P 8050 4200
F 0 "MH4" H 8050 4300 50  0000 C CNN
F 1 "Conn_01x01" H 8050 4100 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.7mm" H 8050 4200 50  0001 C CNN
F 3 "" H 8050 4200 50  0001 C CNN
	1    8050 4200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 MH5
U 1 1 5C0667E6
P 8050 4500
F 0 "MH5" H 8050 4600 50  0000 C CNN
F 1 "Conn_01x01" H 8050 4400 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.7mm" H 8050 4500 50  0001 C CNN
F 3 "" H 8050 4500 50  0001 C CNN
	1    8050 4500
	1    0    0    -1  
$EndComp
NoConn ~ 7850 4200
NoConn ~ 7850 4500
$EndSCHEMATC
