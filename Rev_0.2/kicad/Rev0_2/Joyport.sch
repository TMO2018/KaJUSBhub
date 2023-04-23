EESchema Schematic File Version 4
LIBS:KaJUSBhub-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "KaJUSBhub"
Date "2019-04-06"
Rev "0.2"
Comp "TMO"
Comment1 "keyboard and joystick adapter"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 9800 2000 0    39   ~ 0
Forward
Text Notes 9800 2100 0    39   ~ 0
Fire
Text Notes 9800 2200 0    39   ~ 0
Back
Text Notes 9800 2300 0    39   ~ 0
+5V
Text Notes 9800 2400 0    39   ~ 0
Left
Text Notes 9800 2500 0    39   ~ 0
Gnd
Text Notes 9800 2600 0    39   ~ 0
Right
Text Notes 9800 2700 0    39   ~ 0
PotX
Text Notes 9800 2800 0    39   ~ 0
PotY
Text Notes 9800 2000 0    39   ~ 0
Forward
Text Notes 9800 2100 0    39   ~ 0
Fire
Text Notes 9800 2200 0    39   ~ 0
Back
Text Notes 9800 2300 0    39   ~ 0
+5V
Text Notes 9800 2400 0    39   ~ 0
Left
Text Notes 9800 2500 0    39   ~ 0
Gnd
Text Notes 9800 2600 0    39   ~ 0
Right
Text Notes 9800 2700 0    39   ~ 0
PotX
Text Notes 9800 2800 0    39   ~ 0
PotY
Text Notes 9800 3750 0    39   ~ 0
Forward
Text Notes 9800 3850 0    39   ~ 0
Fire
Text Notes 9800 3950 0    39   ~ 0
Back
Text Notes 9800 4050 0    39   ~ 0
+5V
Text Notes 9800 4150 0    39   ~ 0
Left
Text Notes 9800 4250 0    39   ~ 0
Gnd
Text Notes 9800 4350 0    39   ~ 0
Right
Text Notes 9800 4450 0    39   ~ 0
PotX
Text Notes 9800 4550 0    39   ~ 0
PotY
Text Notes 9800 3750 0    39   ~ 0
Forward
Text Notes 9800 3850 0    39   ~ 0
Fire
Text Notes 9800 3950 0    39   ~ 0
Back
Text Notes 9800 4050 0    39   ~ 0
+5V
Text Notes 9800 4150 0    39   ~ 0
Left
Text Notes 9800 4250 0    39   ~ 0
Gnd
Text Notes 9800 4350 0    39   ~ 0
Right
Text Notes 9800 4450 0    39   ~ 0
PotX
Text Notes 9800 4550 0    39   ~ 0
PotY
$Comp
L KaJUSBhub-rescue:DB9_Male J4
U 1 1 5BE859AD
P 9600 2350
AR Path="/5BE857FB/5BE859AD" Ref="J4"  Part="1" 
AR Path="/5CA8D15E/5BE859AD" Ref="J4"  Part="1" 
F 0 "J4" H 9600 2900 50  0000 C CNN
F 1 "Joystick Port 1" H 9600 1775 50  0000 C CNN
F 2 "Connectors_DSub:DSUB-9_Male_Horizontal_Pitch2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 9600 2350 50  0001 C CNN
F 3 "" H 9600 2350 50  0001 C CNN
	1    9600 2350
	1    0    0    1   
$EndComp
$Comp
L KaJUSBhub-rescue:DB9_Male J6
U 1 1 5BE859AE
P 9600 4100
AR Path="/5BE857FB/5BE859AE" Ref="J6"  Part="1" 
AR Path="/5CA8D15E/5BE859AE" Ref="J6"  Part="1" 
F 0 "J6" H 9600 4650 50  0000 C CNN
F 1 "Joystick Port 2" H 9600 3525 50  0000 C CNN
F 2 "Connectors_DSub:DSUB-9_Male_Horizontal_Pitch2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 9600 4100 50  0001 C CNN
F 3 "" H 9600 4100 50  0001 C CNN
	1    9600 4100
	1    0    0    1   
$EndComp
$Comp
L KaJUSBhub-rescue:Conn_01x06 J3
U 1 1 5CBD7E94
P 1350 3500
AR Path="/5BE857FB/5CBD7E94" Ref="J3"  Part="1" 
AR Path="/5CA8D15E/5CBD7E94" Ref="J8"  Part="1" 
F 0 "J8" H 1350 3800 50  0000 C CNN
F 1 "ICSP" H 1350 3100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 1350 3500 50  0001 C CNN
F 3 "" H 1350 3500 50  0001 C CNN
	1    1350 3500
	-1   0    0    -1  
$EndComp
$Comp
L MCU_Microchip_PIC18:PIC18F4550-IPT U1
U 1 1 5CBD7E95
P 5300 3800
AR Path="/5BE857FB/5CBD7E95" Ref="U1"  Part="1" 
AR Path="/5CA8D15E/5CBD7E95" Ref="U4"  Part="1" 
F 0 "U4" H 4400 5100 50  0000 C CNN
F 1 "PIC18F4450-IP" H 5850 2500 50  0000 C CNN
F 2 "Housings_QFP:TQFP-44_10x10mm_Pitch0.8mm" H 5300 3800 50  0001 C CIN
F 3 "" H 5300 3550 50  0001 C CNN
	1    5300 3800
	1    0    0    -1  
$EndComp
Text GLabel 4100 4000 0    39   Input ~ 0
k3J
Text GLabel 4100 4100 0    39   Input ~ 0
k4J
Text GLabel 4100 4200 0    39   Input ~ 0
k5J
Text GLabel 1550 4300 0    39   Input ~ 0
k6J
Text GLabel 1550 4400 0    39   Input ~ 0
k7J
NoConn ~ 1550 3800
NoConn ~ 6500 3200
NoConn ~ 6500 3300
NoConn ~ 6500 4600
NoConn ~ 6500 4700
NoConn ~ 6500 4800
$Comp
L power:GND #PWR06
U 1 1 5CBD7E96
P 5200 5750
AR Path="/5BE857FB/5CBD7E96" Ref="#PWR06"  Part="1" 
AR Path="/5CA8D15E/5CBD7E96" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 5200 5500 50  0001 C CNN
F 1 "GND" H 5200 5600 50  0000 C CNN
F 2 "" H 5200 5750 50  0001 C CNN
F 3 "" H 5200 5750 50  0001 C CNN
	1    5200 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5CBD7E97
P 6900 3800
AR Path="/5BE857FB/5CBD7E97" Ref="#PWR09"  Part="1" 
AR Path="/5CA8D15E/5CBD7E97" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 6900 3550 50  0001 C CNN
F 1 "GND" H 6900 3650 50  0000 C CNN
F 2 "" H 6900 3800 50  0001 C CNN
F 3 "" H 6900 3800 50  0001 C CNN
	1    6900 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5CBD7E98
P 6900 3650
AR Path="/5BE857FB/5CBD7E98" Ref="C9"  Part="1" 
AR Path="/5CA8D15E/5CBD7E98" Ref="C26"  Part="1" 
F 0 "C26" H 7050 3650 50  0000 L CNN
F 1 "470nF" H 6950 3550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6938 3500 50  0001 C CNN
F 3 "" H 6900 3650 50  0001 C CNN
	1    6900 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5CBD7E99
P 5500 2000
AR Path="/5BE857FB/5CBD7E99" Ref="C7"  Part="1" 
AR Path="/5CA8D15E/5CBD7E99" Ref="C25"  Part="1" 
F 0 "C25" V 5650 1950 50  0000 L CNN
F 1 "100nF" V 5350 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5538 1850 50  0001 C CNN
F 3 "" H 5500 2000 50  0001 C CNN
	1    5500 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5CBD7E9A
P 5850 2150
AR Path="/5BE857FB/5CBD7E9A" Ref="#PWR07"  Part="1" 
AR Path="/5CA8D15E/5CBD7E9A" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 5850 1900 50  0001 C CNN
F 1 "GND" H 5850 2000 50  0000 C CNN
F 2 "" H 5850 2150 50  0001 C CNN
F 3 "" H 5850 2150 50  0001 C CNN
	1    5850 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5CBD7E9B
P 5650 5600
AR Path="/5BE857FB/5CBD7E9B" Ref="C8"  Part="1" 
AR Path="/5CA8D15E/5CBD7E9B" Ref="C24"  Part="1" 
F 0 "C24" V 5800 5550 50  0000 L CNN
F 1 "100nF" V 5500 5500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5688 5450 50  0001 C CNN
F 3 "" H 5650 5600 50  0001 C CNN
	1    5650 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5CBD7E9C
P 7100 1600
AR Path="/5BE857FB/5CBD7E9C" Ref="R6"  Part="1" 
AR Path="/5CA8D15E/5CBD7E9C" Ref="R21"  Part="1" 
F 0 "R21" V 7000 1600 50  0000 C CNN
F 1 "510" V 7100 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7030 1600 50  0001 C CNN
F 3 "" H 7100 1600 50  0001 C CNN
	1    7100 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5CBD7E9D
P 7100 2000
AR Path="/5BE857FB/5CBD7E9D" Ref="R7"  Part="1" 
AR Path="/5CA8D15E/5CBD7E9D" Ref="R22"  Part="1" 
F 0 "R22" V 7200 2000 50  0000 C CNN
F 1 "510" V 7100 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7030 2000 50  0001 C CNN
F 3 "" H 7100 2000 50  0001 C CNN
	1    7100 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5CBD7E9E
P 7700 2200
AR Path="/5BE857FB/5CBD7E9E" Ref="#PWR08"  Part="1" 
AR Path="/5CA8D15E/5CBD7E9E" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 7700 1950 50  0001 C CNN
F 1 "GND" H 7700 2050 50  0000 C CNN
F 2 "" H 7700 2200 50  0001 C CNN
F 3 "" H 7700 2200 50  0001 C CNN
	1    7700 2200
	1    0    0    -1  
$EndComp
Text GLabel 9300 1950 0    39   Input ~ 0
k3J
Text GLabel 9300 2050 0    39   Input ~ 0
k4J
Text GLabel 9300 2150 0    39   Input ~ 0
k5J
Text GLabel 9300 2350 0    39   Input ~ 0
k6J
Text GLabel 9300 2450 0    39   Input ~ 0
Joy1select
Text GLabel 9300 2550 0    39   Input ~ 0
k7J
Text GLabel 9300 2650 0    39   Input ~ 0
PX1
Text GLabel 9300 2750 0    39   Input ~ 0
PY1
Text GLabel 9300 3700 0    39   Input ~ 0
k3J
Text GLabel 9300 3800 0    39   Input ~ 0
k4J
Text GLabel 9300 3900 0    39   Input ~ 0
k5J
Text GLabel 9300 4100 0    39   Input ~ 0
k6J
Text GLabel 9300 4200 0    39   Input ~ 0
Joy2select
Text GLabel 9300 4300 0    39   Input ~ 0
k7J
Text GLabel 9300 4400 0    39   Input ~ 0
PX2
Text GLabel 9300 4500 0    39   Input ~ 0
PY2
Text GLabel 4100 3100 0    39   Input ~ 0
Joy1select
Text GLabel 4100 3200 0    39   Input ~ 0
Joy2select
$Comp
L Device:Crystal X1
U 1 1 5CBD7E9F
P 3550 3400
AR Path="/5BE857FB/5CBD7E9F" Ref="X1"  Part="1" 
AR Path="/5CA8D15E/5CBD7E9F" Ref="X3"  Part="1" 
F 0 "X3" V 3550 3600 50  0000 C CNN
F 1 "20MHz" H 3550 3250 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_5032-2pin_5.0x3.2mm_HandSoldering" H 3550 3400 50  0001 C CNN
F 3 "" H 3550 3400 50  0001 C CNN
	1    3550 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5CBD7EA0
P 1850 3500
AR Path="/5BE857FB/5CBD7EA0" Ref="#PWR03"  Part="1" 
AR Path="/5CA8D15E/5CBD7EA0" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 1850 3250 50  0001 C CNN
F 1 "GND" H 1850 3350 50  0000 C CNN
F 2 "" H 1850 3500 50  0001 C CNN
F 3 "" H 1850 3500 50  0001 C CNN
	1    1850 3500
	1    0    0    -1  
$EndComp
Text GLabel 1550 3300 2    39   Input ~ 0
ISCP_JP
Text GLabel 7050 4900 2    39   Input ~ 0
ISCP_JP
$Comp
L Device:R R5
U 1 1 5BE859CA
P 6900 4750
AR Path="/5BE857FB/5BE859CA" Ref="R5"  Part="1" 
AR Path="/5CA8D15E/5BE859CA" Ref="R20"  Part="1" 
F 0 "R20" H 7000 4750 50  0000 C CNN
F 1 "10k" V 6900 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6830 4750 50  0001 C CNN
F 3 "" H 6900 4750 50  0001 C CNN
	1    6900 4750
	1    0    0    -1  
$EndComp
Text GLabel 2000 2700 0    39   Input ~ 0
PY1
Text GLabel 2000 2800 0    39   Input ~ 0
PX1
Text GLabel 2000 2900 0    39   Input ~ 0
PX2
Text GLabel 2000 3000 0    39   Input ~ 0
PY2
$Comp
L Device:C C1
U 1 1 5BE859CB
P 2300 1150
AR Path="/5BE857FB/5BE859CB" Ref="C1"  Part="1" 
AR Path="/5CA8D15E/5BE859CB" Ref="C1"  Part="1" 
F 0 "C1" H 2100 1150 50  0000 L CNN
F 1 "220nF" H 2050 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2338 1000 50  0001 C CNN
F 3 "" H 2300 1150 50  0001 C CNN
	1    2300 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5BE859CC
P 2150 1400
AR Path="/5BE857FB/5BE859CC" Ref="R1"  Part="1" 
AR Path="/5CA8D15E/5BE859CC" Ref="R1"  Part="1" 
F 0 "R1" H 2050 1400 50  0000 C CNN
F 1 "100k" V 2150 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 1400 50  0001 C CNN
F 3 "" H 2150 1400 50  0001 C CNN
	1    2150 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5BE859CD
P 1950 1000
AR Path="/5BE857FB/5BE859CD" Ref="#PWR04"  Part="1" 
AR Path="/5CA8D15E/5BE859CD" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 1950 750 50  0001 C CNN
F 1 "GND" H 1950 850 50  0000 C CNN
F 2 "" H 1950 1000 50  0001 C CNN
F 3 "" H 1950 1000 50  0001 C CNN
	1    1950 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5BE859CE
P 2750 1350
AR Path="/5BE857FB/5BE859CE" Ref="C2"  Part="1" 
AR Path="/5CA8D15E/5BE859CE" Ref="C2"  Part="1" 
F 0 "C2" H 2550 1350 50  0000 L CNN
F 1 "220nF" H 2500 1450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2788 1200 50  0001 C CNN
F 3 "" H 2750 1350 50  0001 C CNN
	1    2750 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5BE859CF
P 2600 1600
AR Path="/5BE857FB/5BE859CF" Ref="R2"  Part="1" 
AR Path="/5CA8D15E/5BE859CF" Ref="R2"  Part="1" 
F 0 "R2" H 2500 1600 50  0000 C CNN
F 1 "100k" V 2600 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2530 1600 50  0001 C CNN
F 3 "" H 2600 1600 50  0001 C CNN
	1    2600 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5BE859D0
P 3200 1550
AR Path="/5BE857FB/5BE859D0" Ref="C5"  Part="1" 
AR Path="/5CA8D15E/5BE859D0" Ref="C5"  Part="1" 
F 0 "C5" H 2950 1550 50  0000 L CNN
F 1 "220nF" H 2950 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3238 1400 50  0001 C CNN
F 3 "" H 3200 1550 50  0001 C CNN
	1    3200 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5BE859D1
P 3050 1800
AR Path="/5BE857FB/5BE859D1" Ref="R3"  Part="1" 
AR Path="/5CA8D15E/5BE859D1" Ref="R3"  Part="1" 
F 0 "R3" H 2950 1800 50  0000 C CNN
F 1 "100k" V 3050 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2980 1800 50  0001 C CNN
F 3 "" H 3050 1800 50  0001 C CNN
	1    3050 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5BE859D2
P 3650 1750
AR Path="/5BE857FB/5BE859D2" Ref="C6"  Part="1" 
AR Path="/5CA8D15E/5BE859D2" Ref="C6"  Part="1" 
F 0 "C6" H 3400 1750 50  0000 L CNN
F 1 "220nF" H 3400 1850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3688 1600 50  0001 C CNN
F 3 "" H 3650 1750 50  0001 C CNN
	1    3650 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5BE859D3
P 3500 2000
AR Path="/5BE857FB/5BE859D3" Ref="R4"  Part="1" 
AR Path="/5CA8D15E/5BE859D3" Ref="R4"  Part="1" 
F 0 "R4" H 3400 2000 50  0000 C CNN
F 1 "100k" V 3500 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3430 2000 50  0001 C CNN
F 3 "" H 3500 2000 50  0001 C CNN
	1    3500 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2350 5300 2350
Wire Wire Line
	5300 2350 5300 2400
Connection ~ 5200 2350
Wire Wire Line
	6500 2800 6900 2800
Wire Wire Line
	6900 2000 6950 2000
Wire Wire Line
	6500 2700 6800 2700
Wire Wire Line
	6800 1600 6950 1600
Wire Wire Line
	3700 3250 3700 3300
Wire Wire Line
	3700 3550 3700 3500
Wire Wire Line
	1550 4300 1650 4300
Wire Wire Line
	1550 4400 1750 4400
Wire Wire Line
	1550 3700 1650 3700
Wire Wire Line
	1650 3700 1650 4300
Connection ~ 1650 4300
Wire Wire Line
	1550 3600 1750 3600
Wire Wire Line
	1750 3600 1750 4400
Connection ~ 1750 4400
Wire Wire Line
	1550 3500 1850 3500
Wire Wire Line
	6500 4900 6900 4900
Connection ~ 6900 4900
Wire Wire Line
	2000 2800 2600 2800
Wire Wire Line
	2000 2900 3050 2900
Wire Wire Line
	2000 3000 3500 3000
Wire Wire Line
	2000 2700 2150 2700
Wire Wire Line
	1950 1000 2150 1000
Wire Wire Line
	3650 1000 3650 1600
Connection ~ 2300 1000
Wire Wire Line
	2750 1000 2750 1200
Connection ~ 2750 1000
Wire Wire Line
	3200 1400 3200 1000
Connection ~ 3200 1000
Wire Wire Line
	3050 1650 3050 1000
Connection ~ 3050 1000
Wire Wire Line
	2600 1450 2600 1000
Connection ~ 2600 1000
Wire Wire Line
	2150 1250 2150 1000
Connection ~ 2150 1000
Wire Wire Line
	3500 1850 3500 1000
Connection ~ 3500 1000
Wire Wire Line
	2150 1550 2150 1650
Wire Wire Line
	2600 1750 2600 1900
Connection ~ 2600 2800
Wire Wire Line
	3050 1950 3050 2100
Connection ~ 3050 2900
Wire Wire Line
	3500 2150 3500 2250
Connection ~ 3500 3000
Wire Wire Line
	2300 1300 2300 1650
Wire Wire Line
	2300 1650 2150 1650
Connection ~ 2150 1650
Wire Wire Line
	2750 1500 2750 1900
Wire Wire Line
	2750 1900 2600 1900
Connection ~ 2600 1900
Wire Wire Line
	3200 1700 3200 2100
Wire Wire Line
	3200 2100 3050 2100
Connection ~ 3050 2100
Wire Wire Line
	3650 1900 3650 2250
Wire Wire Line
	3650 2250 3500 2250
Connection ~ 3500 2250
$Comp
L Device:C C3
U 1 1 5BE859D4
P 3000 3250
AR Path="/5BE857FB/5BE859D4" Ref="C3"  Part="1" 
AR Path="/5CA8D15E/5BE859D4" Ref="C20"  Part="1" 
F 0 "C20" V 2850 3200 50  0000 L CNN
F 1 "15pF" V 3050 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3038 3100 50  0001 C CNN
F 3 "" H 3000 3250 50  0001 C CNN
	1    3000 3250
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5BE859D5
P 3000 3550
AR Path="/5BE857FB/5BE859D5" Ref="C4"  Part="1" 
AR Path="/5CA8D15E/5BE859D5" Ref="C23"  Part="1" 
F 0 "C23" V 3150 3500 50  0000 L CNN
F 1 "15pF" V 3050 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3038 3400 50  0001 C CNN
F 3 "" H 3000 3550 50  0001 C CNN
	1    3000 3550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5BE859D6
P 2650 3700
AR Path="/5BE857FB/5BE859D6" Ref="#PWR05"  Part="1" 
AR Path="/5CA8D15E/5BE859D6" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 2650 3450 50  0001 C CNN
F 1 "GND" H 2650 3550 50  0000 C CNN
F 2 "" H 2650 3700 50  0001 C CNN
F 3 "" H 2650 3700 50  0001 C CNN
	1    2650 3700
	1    0    0    -1  
$EndComp
Text GLabel 6500 3000 2    39   Input ~ 0
DM5
Text GLabel 6500 3100 2    39   Input ~ 0
DP5
Text GLabel 1550 3400 2    39   Input ~ 0
+5VJP
Text GLabel 5200 1700 1    39   Input ~ 0
+5VJP
Text GLabel 6900 4600 1    39   Input ~ 0
+5VJP
Text GLabel 5800 5600 2    39   Input ~ 0
+5VJP
Text GLabel 9300 2250 0    39   Input ~ 0
+5VJP
Text GLabel 9300 4000 0    39   Input ~ 0
+5VJP
Wire Wire Line
	5200 2350 5200 2400
Wire Wire Line
	6900 4900 7050 4900
Wire Wire Line
	2300 1000 2600 1000
Wire Wire Line
	2750 1000 3050 1000
Wire Wire Line
	3200 1000 3500 1000
Wire Wire Line
	3050 1000 3200 1000
Wire Wire Line
	2600 1000 2750 1000
Wire Wire Line
	2150 1000 2300 1000
Wire Wire Line
	3500 1000 3650 1000
Wire Wire Line
	2150 1650 2150 2700
Wire Wire Line
	2600 1900 2600 2800
Wire Wire Line
	3050 2100 3050 2900
Wire Wire Line
	3500 2250 3500 3000
Wire Wire Line
	3550 3250 3700 3250
Wire Wire Line
	3550 3550 3700 3550
NoConn ~ 6500 3700
NoConn ~ 6500 3800
NoConn ~ 6500 3900
NoConn ~ 6500 4000
NoConn ~ 6500 4100
NoConn ~ 6500 4200
NoConn ~ 6500 4300
NoConn ~ 6500 4400
NoConn ~ 4100 3700
NoConn ~ 4100 3800
NoConn ~ 4100 3900
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5CADE09F
P 5200 900
F 0 "J9" H 5279 892 50  0000 L CNN
F 1 "JP" H 5279 801 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5200 900 50  0001 C CNN
F 3 "~" H 5200 900 50  0001 C CNN
	1    5200 900 
	1    0    0    -1  
$EndComp
Text GLabel 5000 900  0    39   Input ~ 0
+5VKaJ
Text GLabel 5000 1000 0    39   Input ~ 0
+5VJP
$Comp
L Device:LED D3
U 1 1 5CADF566
P 7400 1600
F 0 "D3" H 7392 1345 50  0000 C CNN
F 1 "red" H 7392 1436 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 7400 1600 50  0001 C CNN
F 3 "~" H 7400 1600 50  0001 C CNN
	1    7400 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 5CAE401D
P 7400 2000
F 0 "D4" H 7392 1745 50  0000 C CNN
F 1 "green" H 7392 1836 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 7400 2000 50  0001 C CNN
F 3 "~" H 7400 2000 50  0001 C CNN
	1    7400 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7550 1600 7700 1600
Wire Wire Line
	7700 1600 7700 2000
Wire Wire Line
	7550 2000 7700 2000
Connection ~ 7700 2000
Wire Wire Line
	7700 2000 7700 2200
Wire Wire Line
	6900 2000 6900 2800
Wire Wire Line
	6800 1600 6800 2700
NoConn ~ 6500 2900
Wire Wire Line
	6500 3500 6900 3500
Wire Wire Line
	3150 3250 3550 3250
Wire Wire Line
	2650 3250 2650 3550
Connection ~ 3550 3250
Wire Wire Line
	3150 3550 3550 3550
Connection ~ 3550 3550
Wire Wire Line
	2650 3250 2850 3250
Wire Wire Line
	2650 3550 2850 3550
Connection ~ 2650 3550
Wire Wire Line
	2650 3550 2650 3700
Wire Wire Line
	3700 3300 4100 3300
Wire Wire Line
	3700 3500 4100 3500
Wire Wire Line
	1650 4300 4100 4300
Wire Wire Line
	1750 4400 4100 4400
Wire Wire Line
	2600 2800 4100 2800
Wire Wire Line
	3050 2900 4100 2900
Wire Wire Line
	3500 3000 4100 3000
Wire Wire Line
	2150 2700 4100 2700
Connection ~ 2150 2700
Wire Wire Line
	5200 5200 5200 5300
Wire Wire Line
	5200 5300 5300 5300
Wire Wire Line
	5300 5300 5300 5200
Connection ~ 5200 5300
Wire Wire Line
	5200 5300 5200 5600
NoConn ~ 4100 4600
NoConn ~ 4100 4700
NoConn ~ 4100 4800
NoConn ~ 4100 4900
Wire Wire Line
	5650 2000 5850 2000
Wire Wire Line
	5850 2000 5850 2150
Wire Wire Line
	5500 5600 5200 5600
Wire Wire Line
	5200 5600 5200 5750
Connection ~ 5200 5600
Wire Wire Line
	5200 1700 5200 2000
Wire Wire Line
	5350 2000 5200 2000
Connection ~ 5200 2000
Wire Wire Line
	5200 2000 5200 2350
$EndSCHEMATC
