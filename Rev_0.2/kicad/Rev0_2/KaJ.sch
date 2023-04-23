EESchema Schematic File Version 4
LIBS:KaJUSBhub-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "KaJUSBhub"
Date "2018-11-11"
Rev "0.1"
Comp "TMO"
Comment1 "keyboard and joystick adapter"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 6750 1300 0    39   ~ 0
Forward
Text Notes 6750 1400 0    39   ~ 0
Fire
Text Notes 6750 1500 0    39   ~ 0
Back
Text Notes 6750 1600 0    39   ~ 0
+5V
Text Notes 6750 1700 0    39   ~ 0
Left
Text Notes 6750 1800 0    39   ~ 0
Gnd
Text Notes 6750 1900 0    39   ~ 0
Right
Text Notes 6750 2000 0    39   ~ 0
PotX
Text Notes 6750 2100 0    39   ~ 0
PotY
Text Notes 6750 1300 0    39   ~ 0
Forward
Text Notes 6750 1400 0    39   ~ 0
Fire
Text Notes 6750 1500 0    39   ~ 0
Back
Text Notes 6750 1600 0    39   ~ 0
+5V
Text Notes 6750 1700 0    39   ~ 0
Left
Text Notes 6750 1800 0    39   ~ 0
Gnd
Text Notes 6750 1900 0    39   ~ 0
Right
Text Notes 6750 2000 0    39   ~ 0
PotX
Text Notes 6750 2100 0    39   ~ 0
PotY
Text Notes 8750 1300 0    39   ~ 0
Forward
Text Notes 8750 1400 0    39   ~ 0
Fire
Text Notes 8750 1500 0    39   ~ 0
Back
Text Notes 8750 1600 0    39   ~ 0
+5V
Text Notes 8750 1700 0    39   ~ 0
Left
Text Notes 8750 1800 0    39   ~ 0
Gnd
Text Notes 8750 1900 0    39   ~ 0
Right
Text Notes 8750 2000 0    39   ~ 0
PotX
Text Notes 8750 2100 0    39   ~ 0
PotY
Text Notes 8750 1300 0    39   ~ 0
Forward
Text Notes 8750 1400 0    39   ~ 0
Fire
Text Notes 8750 1500 0    39   ~ 0
Back
Text Notes 8750 1600 0    39   ~ 0
+5V
Text Notes 8750 1700 0    39   ~ 0
Left
Text Notes 8750 1800 0    39   ~ 0
Gnd
Text Notes 8750 1900 0    39   ~ 0
Right
Text Notes 8750 2000 0    39   ~ 0
PotX
Text Notes 8750 2100 0    39   ~ 0
PotY
$Comp
L KaJUSBhub-rescue:DB9_Male J4
U 1 1 5BE859AD
P 6550 1650
F 0 "J4" H 6550 2200 50  0000 C CNN
F 1 "Joystick Port 1" H 6550 1075 50  0000 C CNN
F 2 "Connectors_DSub:DSUB-9_Male_Horizontal_Pitch2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 6550 1650 50  0001 C CNN
F 3 "" H 6550 1650 50  0001 C CNN
	1    6550 1650
	1    0    0    1   
$EndComp
$Comp
L KaJUSBhub-rescue:DB9_Male J6
U 1 1 5BE859AE
P 8550 1650
F 0 "J6" H 8550 2200 50  0000 C CNN
F 1 "Joystick Port 2" H 8550 1075 50  0000 C CNN
F 2 "Connectors_DSub:DSUB-9_Male_Horizontal_Pitch2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 8550 1650 50  0001 C CNN
F 3 "" H 8550 1650 50  0001 C CNN
	1    8550 1650
	1    0    0    1   
$EndComp
$Comp
L KaJUSBhub-rescue:Conn_01x20 J7
U 1 1 5BE859AF
P 9300 4300
F 0 "J7" H 9300 5300 50  0000 C CNN
F 1 "C64 Keyboard" H 9300 3200 50  0000 C CNN
F 2 "TMO:Pin_Header_Straight_1x20_Pitch2.54mm_long_pad" H 9300 4300 50  0001 C CNN
F 3 "" H 9300 4300 50  0001 C CNN
	1    9300 4300
	1    0    0    -1  
$EndComp
$Comp
L KaJUSBhub-rescue:Conn_01x06 J3
U 1 1 5BE859B0
P 850 4400
F 0 "J3" H 850 4700 50  0000 C CNN
F 1 "ICSP" H 850 4000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 850 4400 50  0001 C CNN
F 3 "" H 850 4400 50  0001 C CNN
	1    850  4400
	-1   0    0    -1  
$EndComp
$Comp
L MCU_Microchip_PIC181:PIC18F4450-IP U1
U 1 1 5BE859B1
P 4700 4700
F 0 "U1" H 3800 6000 50  0000 C CNN
F 1 "PIC18F4450-IP" H 5250 3400 50  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket_LongPads" H 4700 4700 50  0001 C CIN
F 3 "" H 4700 4450 50  0001 C CNN
	1    4700 4700
	1    0    0    -1  
$EndComp
$Comp
L KaJUSBhub-rescue:Conn_01x03 J5
U 1 1 5BE859B2
P 7050 2800
F 0 "J5" H 7050 3000 50  0000 C CNN
F 1 "Status-LED" H 7050 2600 50  0000 C CNN
F 2 "TMO:Pin_Header_Straight_1x03_Pitch2.54mm_long_pad" H 7050 2800 50  0001 C CNN
F 3 "" H 7050 2800 50  0001 C CNN
	1    7050 2800
	1    0    0    -1  
$EndComp
Text GLabel 9100 3600 0    39   Input ~ 0
k8
Text GLabel 9100 3800 0    39   Input ~ 0
k7
Text GLabel 9100 3900 0    39   Input ~ 0
k6
Text GLabel 9100 4000 0    39   Input ~ 0
k5
Text GLabel 9100 4100 0    39   Input ~ 0
k4
Text GLabel 9100 4200 0    39   Input ~ 0
k3
Text GLabel 9100 4300 0    39   Input ~ 0
k2
Text GLabel 9100 4400 0    39   Input ~ 0
k1
Text GLabel 9100 4500 0    39   Input ~ 0
k0
Text GLabel 9100 4600 0    39   Input ~ 0
kH
Text GLabel 9100 4700 0    39   Input ~ 0
kG
Text GLabel 9100 4800 0    39   Input ~ 0
kF
Text GLabel 9100 4900 0    39   Input ~ 0
kE
Text GLabel 9100 5000 0    39   Input ~ 0
kD
Text GLabel 9100 5100 0    39   Input ~ 0
kC
Text GLabel 9100 5200 0    39   Input ~ 0
kB
Text GLabel 9100 5300 0    39   Input ~ 0
kA
$Comp
L power:GND #PWR010
U 1 1 5BE859B4
P 8850 3400
F 0 "#PWR010" H 8850 3150 50  0001 C CNN
F 1 "GND" H 8850 3250 50  0000 C CNN
F 2 "" H 8850 3400 50  0001 C CNN
F 3 "" H 8850 3400 50  0001 C CNN
	1    8850 3400
	1    0    0    -1  
$EndComp
NoConn ~ 9100 3500
NoConn ~ 9100 3700
Text GLabel 5800 4600 2    39   Input ~ 0
kA
Text GLabel 5800 4700 2    39   Input ~ 0
kB
Text GLabel 5800 4800 2    39   Input ~ 0
kC
Text GLabel 5800 4900 2    39   Input ~ 0
kD
Text GLabel 5800 5000 2    39   Input ~ 0
kE
Text GLabel 5800 5100 2    39   Input ~ 0
kF
Text GLabel 5800 5200 2    39   Input ~ 0
kG
Text GLabel 5800 5300 2    39   Input ~ 0
kH
Text GLabel 3600 4600 0    39   Input ~ 0
k0
Text GLabel 3600 4700 0    39   Input ~ 0
k1
Text GLabel 3600 4800 0    39   Input ~ 0
k2
Text GLabel 3600 4900 0    39   Input ~ 0
k3
Text GLabel 3600 5000 0    39   Input ~ 0
k4
Text GLabel 3600 5100 0    39   Input ~ 0
k5
Text GLabel 1050 5200 0    39   Input ~ 0
k6
Text GLabel 1050 5300 0    39   Input ~ 0
k7
NoConn ~ 1050 4700
NoConn ~ 5800 4100
NoConn ~ 5800 4200
NoConn ~ 5800 5500
NoConn ~ 5800 5600
NoConn ~ 5800 5700
$Comp
L power:GND #PWR06
U 1 1 5BE859B5
P 4600 6200
F 0 "#PWR06" H 4600 5950 50  0001 C CNN
F 1 "GND" H 4600 6050 50  0000 C CNN
F 2 "" H 4600 6200 50  0001 C CNN
F 3 "" H 4600 6200 50  0001 C CNN
	1    4600 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5BE859B7
P 7300 4500
F 0 "#PWR09" H 7300 4250 50  0001 C CNN
F 1 "GND" H 7300 4350 50  0000 C CNN
F 2 "" H 7300 4500 50  0001 C CNN
F 3 "" H 7300 4500 50  0001 C CNN
	1    7300 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5BE859BA
P 6600 4400
F 0 "C9" V 6450 4350 50  0000 L CNN
F 1 "470nF" V 6750 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6638 4250 50  0001 C CNN
F 3 "" H 6600 4400 50  0001 C CNN
	1    6600 4400
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 5BE859BB
P 4900 3100
F 0 "C7" H 4700 3100 50  0000 L CNN
F 1 "100nF" H 4600 3200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4938 2950 50  0001 C CNN
F 3 "" H 4900 3100 50  0001 C CNN
	1    4900 3100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5BE859BC
P 5400 2950
F 0 "#PWR07" H 5400 2700 50  0001 C CNN
F 1 "GND" H 5400 2800 50  0000 C CNN
F 2 "" H 5400 2950 50  0001 C CNN
F 3 "" H 5400 2950 50  0001 C CNN
	1    5400 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5BE859BD
P 4900 6300
F 0 "C8" H 4700 6300 50  0000 L CNN
F 1 "100nF" H 4600 6400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4938 6150 50  0001 C CNN
F 3 "" H 4900 6300 50  0001 C CNN
	1    4900 6300
	-1   0    0    1   
$EndComp
Text GLabel 6600 3800 2    39   Input ~ 0
k8
$Comp
L Device:R R8
U 1 1 5BE859BF
P 6400 3650
F 0 "R8" H 6500 3650 50  0000 C CNN
F 1 "10k" V 6400 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6330 3650 50  0001 C CNN
F 3 "" H 6400 3650 50  0001 C CNN
	1    6400 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5BE859C1
P 6400 2700
F 0 "R6" V 6300 2700 50  0000 C CNN
F 1 "1k" V 6400 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6330 2700 50  0001 C CNN
F 3 "" H 6400 2700 50  0001 C CNN
	1    6400 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5BE859C2
P 6400 2900
F 0 "R7" V 6500 2900 50  0000 C CNN
F 1 "150" V 6400 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6330 2900 50  0001 C CNN
F 3 "" H 6400 2900 50  0001 C CNN
	1    6400 2900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5BE859C3
P 6700 3000
F 0 "#PWR08" H 6700 2750 50  0001 C CNN
F 1 "GND" H 6700 2850 50  0000 C CNN
F 2 "" H 6700 3000 50  0001 C CNN
F 3 "" H 6700 3000 50  0001 C CNN
	1    6700 3000
	1    0    0    -1  
$EndComp
Text GLabel 6250 1250 0    39   Input ~ 0
k3
Text GLabel 6250 1350 0    39   Input ~ 0
k4
Text GLabel 6250 1450 0    39   Input ~ 0
k5
Text GLabel 6250 1650 0    39   Input ~ 0
k6
Text GLabel 6250 1750 0    39   Input ~ 0
Joy1select
Text GLabel 6250 1850 0    39   Input ~ 0
k7
Text GLabel 6250 1950 0    39   Input ~ 0
PX1
Text GLabel 6250 2050 0    39   Input ~ 0
PY1
Text GLabel 8250 1250 0    39   Input ~ 0
k3
Text GLabel 8250 1350 0    39   Input ~ 0
k4
Text GLabel 8250 1450 0    39   Input ~ 0
k5
Text GLabel 8250 1650 0    39   Input ~ 0
k6
Text GLabel 8250 1750 0    39   Input ~ 0
Joy2select
Text GLabel 8250 1850 0    39   Input ~ 0
k7
Text GLabel 8250 1950 0    39   Input ~ 0
PX2
Text GLabel 8250 2050 0    39   Input ~ 0
PY2
Text GLabel 3600 4000 0    39   Input ~ 0
Joy1select
Text GLabel 3600 4100 0    39   Input ~ 0
Joy2select
$Comp
L Device:Crystal X1
U 1 1 5BE859C6
P 3050 4300
F 0 "X1" V 3050 4500 50  0000 C CNN
F 1 "20MHz" H 3050 4150 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_5032-2pin_5.0x3.2mm_HandSoldering" H 3050 4300 50  0001 C CNN
F 3 "" H 3050 4300 50  0001 C CNN
	1    3050 4300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5BE859C7
P 1350 4400
F 0 "#PWR03" H 1350 4150 50  0001 C CNN
F 1 "GND" H 1350 4250 50  0000 C CNN
F 2 "" H 1350 4400 50  0001 C CNN
F 3 "" H 1350 4400 50  0001 C CNN
	1    1350 4400
	1    0    0    -1  
$EndComp
Text GLabel 1150 4100 1    39   Input ~ 0
J6:1-U1:1
Text GLabel 6350 5800 2    39   Input ~ 0
J6:1-U1:1
$Comp
L Device:R R5
U 1 1 5BE859CA
P 6200 5650
F 0 "R5" H 6300 5650 50  0000 C CNN
F 1 "10k" V 6200 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6130 5650 50  0001 C CNN
F 3 "" H 6200 5650 50  0001 C CNN
	1    6200 5650
	1    0    0    -1  
$EndComp
Text GLabel 1500 3600 0    39   Input ~ 0
PY1
Text GLabel 1500 3700 0    39   Input ~ 0
PX1
Text GLabel 1500 3800 0    39   Input ~ 0
PX2
Text GLabel 1500 3900 0    39   Input ~ 0
PY2
$Comp
L Device:C C1
U 1 1 5BE859CB
P 1800 2050
F 0 "C1" H 1600 2050 50  0000 L CNN
F 1 "220nF" H 1550 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1838 1900 50  0001 C CNN
F 3 "" H 1800 2050 50  0001 C CNN
	1    1800 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5BE859CC
P 1650 2300
F 0 "R1" H 1550 2300 50  0000 C CNN
F 1 "100k" V 1650 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1580 2300 50  0001 C CNN
F 3 "" H 1650 2300 50  0001 C CNN
	1    1650 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5BE859CD
P 1450 1900
F 0 "#PWR04" H 1450 1650 50  0001 C CNN
F 1 "GND" H 1450 1750 50  0000 C CNN
F 2 "" H 1450 1900 50  0001 C CNN
F 3 "" H 1450 1900 50  0001 C CNN
	1    1450 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5BE859CE
P 2250 2250
F 0 "C2" H 2050 2250 50  0000 L CNN
F 1 "220nF" H 2000 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2288 2100 50  0001 C CNN
F 3 "" H 2250 2250 50  0001 C CNN
	1    2250 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5BE859CF
P 2100 2500
F 0 "R2" H 2000 2500 50  0000 C CNN
F 1 "100k" V 2100 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2030 2500 50  0001 C CNN
F 3 "" H 2100 2500 50  0001 C CNN
	1    2100 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5BE859D0
P 2700 2450
F 0 "C5" H 2450 2450 50  0000 L CNN
F 1 "220nF" H 2450 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2738 2300 50  0001 C CNN
F 3 "" H 2700 2450 50  0001 C CNN
	1    2700 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5BE859D1
P 2550 2700
F 0 "R3" H 2450 2700 50  0000 C CNN
F 1 "100k" V 2550 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2480 2700 50  0001 C CNN
F 3 "" H 2550 2700 50  0001 C CNN
	1    2550 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5BE859D2
P 3150 2650
F 0 "C6" H 2900 2650 50  0000 L CNN
F 1 "220nF" H 2900 2750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3188 2500 50  0001 C CNN
F 3 "" H 3150 2650 50  0001 C CNN
	1    3150 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5BE859D3
P 3000 2900
F 0 "R4" H 2900 2900 50  0000 C CNN
F 1 "100k" V 3000 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2930 2900 50  0001 C CNN
F 3 "" H 3000 2900 50  0001 C CNN
	1    3000 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3400 9100 3400
Wire Wire Line
	4600 6100 4600 6150
Wire Wire Line
	4600 6150 4700 6150
Wire Wire Line
	4700 6150 4700 6100
Connection ~ 4600 6150
Wire Wire Line
	4600 3200 4600 3250
Wire Wire Line
	4600 3250 4700 3250
Wire Wire Line
	4700 3250 4700 3300
Connection ~ 4600 3250
Wire Wire Line
	6750 4400 7300 4400
Wire Wire Line
	6450 4400 5800 4400
Connection ~ 4700 3250
Wire Wire Line
	4900 2950 5400 2950
Connection ~ 4700 6150
Wire Wire Line
	5800 3800 6400 3800
Connection ~ 6400 3800
Wire Wire Line
	5800 3700 6200 3700
Wire Wire Line
	6200 3700 6200 2900
Wire Wire Line
	6200 2900 6250 2900
Wire Wire Line
	5800 3600 6100 3600
Wire Wire Line
	6100 3600 6100 2700
Wire Wire Line
	6100 2700 6250 2700
Wire Wire Line
	6550 2700 6850 2700
Wire Wire Line
	6550 2900 6850 2900
Wire Wire Line
	6700 3000 6700 2800
Wire Wire Line
	6700 2800 6850 2800
Wire Wire Line
	2450 4150 3050 4150
Wire Wire Line
	3200 4150 3200 4200
Wire Wire Line
	3200 4200 3600 4200
Wire Wire Line
	2450 4450 3050 4450
Wire Wire Line
	3200 4450 3200 4400
Wire Wire Line
	3200 4400 3600 4400
Wire Wire Line
	1050 5200 1150 5200
Wire Wire Line
	1050 5300 1250 5300
Wire Wire Line
	1050 4600 1150 4600
Wire Wire Line
	1150 4600 1150 5200
Connection ~ 1150 5200
Wire Wire Line
	1050 4500 1250 4500
Wire Wire Line
	1250 4500 1250 5300
Connection ~ 1250 5300
Wire Wire Line
	1050 4400 1350 4400
Wire Wire Line
	1150 4100 1150 4200
Wire Wire Line
	1150 4200 1050 4200
Wire Wire Line
	5800 5800 6200 5800
Connection ~ 6200 5800
Wire Wire Line
	1500 3700 2100 3700
Wire Wire Line
	1500 3800 2550 3800
Wire Wire Line
	1500 3900 3000 3900
Wire Wire Line
	1500 3600 1650 3600
Wire Wire Line
	1450 1900 1650 1900
Wire Wire Line
	3150 1900 3150 2500
Connection ~ 1800 1900
Wire Wire Line
	2250 1900 2250 2100
Connection ~ 2250 1900
Wire Wire Line
	2700 2300 2700 1900
Connection ~ 2700 1900
Wire Wire Line
	2550 2550 2550 1900
Connection ~ 2550 1900
Wire Wire Line
	2100 2350 2100 1900
Connection ~ 2100 1900
Wire Wire Line
	1650 2150 1650 1900
Connection ~ 1650 1900
Wire Wire Line
	3000 2750 3000 1900
Connection ~ 3000 1900
Wire Wire Line
	1650 2450 1650 2550
Connection ~ 1650 3600
Wire Wire Line
	2100 2650 2100 2800
Connection ~ 2100 3700
Wire Wire Line
	2550 2850 2550 3000
Connection ~ 2550 3800
Wire Wire Line
	3000 3050 3000 3150
Connection ~ 3000 3900
Wire Wire Line
	1800 2200 1800 2550
Wire Wire Line
	1800 2550 1650 2550
Connection ~ 1650 2550
Wire Wire Line
	2250 2400 2250 2800
Wire Wire Line
	2250 2800 2100 2800
Connection ~ 2100 2800
Wire Wire Line
	2700 2600 2700 3000
Wire Wire Line
	2700 3000 2550 3000
Connection ~ 2550 3000
Wire Wire Line
	3150 2800 3150 3150
Wire Wire Line
	3150 3150 3000 3150
Connection ~ 3000 3150
$Comp
L Device:C C3
U 1 1 5BE859D4
P 2300 4150
F 0 "C3" V 2150 4100 50  0000 L CNN
F 1 "15pF" V 2350 4200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2338 4000 50  0001 C CNN
F 3 "" H 2300 4150 50  0001 C CNN
	1    2300 4150
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5BE859D5
P 2300 4450
F 0 "C4" V 2450 4400 50  0000 L CNN
F 1 "15pF" V 2350 4500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2338 4300 50  0001 C CNN
F 3 "" H 2300 4450 50  0001 C CNN
	1    2300 4450
	0    1    1    0   
$EndComp
Connection ~ 3050 4150
Connection ~ 3050 4450
$Comp
L power:GND #PWR05
U 1 1 5BE859D6
P 2150 4600
F 0 "#PWR05" H 2150 4350 50  0001 C CNN
F 1 "GND" H 2150 4450 50  0000 C CNN
F 2 "" H 2150 4600 50  0001 C CNN
F 3 "" H 2150 4600 50  0001 C CNN
	1    2150 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4150 2150 4450
Connection ~ 2150 4450
Text Notes 7150 2700 0    39   ~ 0
red
Text Notes 7150 2800 0    39   ~ 0
GND
Text Notes 7150 2900 0    39   ~ 0
green
Text GLabel 5800 3900 2    39   Input ~ 0
D-
Text GLabel 5800 4000 2    39   Input ~ 0
D+
Text GLabel 1050 4300 2    39   Input ~ 0
+5VKaJ
Text GLabel 4600 3200 1    39   Input ~ 0
+5VKaJ
Text GLabel 6200 5500 1    39   Input ~ 0
+5VKaJ
Text GLabel 6400 3500 1    39   Input ~ 0
+5VKaJ
Text GLabel 4900 6450 3    39   Input ~ 0
+5VKaJ
Text GLabel 6250 1550 0    39   Input ~ 0
+5VKaJ
Text GLabel 8250 1550 0    39   Input ~ 0
+5VKaJ
Wire Wire Line
	4600 6150 4600 6200
Wire Wire Line
	4600 3250 4600 3300
Wire Wire Line
	7300 4400 7300 4500
Wire Wire Line
	4700 3250 4900 3250
Wire Wire Line
	4700 6150 4900 6150
Wire Wire Line
	6400 3800 6600 3800
Wire Wire Line
	1150 5200 3600 5200
Wire Wire Line
	1250 5300 3600 5300
Wire Wire Line
	6200 5800 6350 5800
Wire Wire Line
	1800 1900 2100 1900
Wire Wire Line
	2250 1900 2550 1900
Wire Wire Line
	2700 1900 3000 1900
Wire Wire Line
	2550 1900 2700 1900
Wire Wire Line
	2100 1900 2250 1900
Wire Wire Line
	1650 1900 1800 1900
Wire Wire Line
	3000 1900 3150 1900
Wire Wire Line
	1650 3600 3600 3600
Wire Wire Line
	2100 3700 3600 3700
Wire Wire Line
	2550 3800 3600 3800
Wire Wire Line
	3000 3900 3600 3900
Wire Wire Line
	1650 2550 1650 3600
Wire Wire Line
	2100 2800 2100 3700
Wire Wire Line
	2550 3000 2550 3800
Wire Wire Line
	3000 3150 3000 3900
Wire Wire Line
	3050 4150 3200 4150
Wire Wire Line
	3050 4450 3200 4450
Wire Wire Line
	2150 4450 2150 4600
$EndSCHEMATC
