EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "LM399 negative voltage reference"
Date "2021-05-20"
Rev "v3.3.0"
Comp ""
Comment1 "Copyright (©) 2020, Patrick Baus <patrick.baus@physik.tu-darmstadt.de>"
Comment2 "Licensed under CERN OHL v.1.2"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR01
U 1 1 58DD20AE
P 1800 3300
F 0 "#PWR01" H 1800 3050 50  0001 C CNN
F 1 "GND" H 1805 3127 50  0000 C CNN
F 2 "" H 1800 3300 50  0001 C CNN
F 3 "" H 1800 3300 50  0001 C CNN
	1    1800 3300
	-1   0    0    -1  
$EndComp
$Sheet
S 5750 3600 1700 700 
U 591A50E3
F0 "Voltage Reference" 60
F1 "LM399.sch" 60
F2 "V+" U L 5750 3800 60 
F3 "V-" U L 5750 3900 60 
F4 "V_zener+_force" U L 5750 3700 60 
F5 "V_zener-" O R 7450 3950 60 
F6 "V_zener+_sense" U R 7450 3700 60 
F7 "V-heater+" U L 5750 4100 60 
F8 "V_heater-" U L 5750 4200 60 
$EndSheet
Wire Wire Line
	3250 3550 3800 3550
Wire Wire Line
	2750 3550 1600 3550
Wire Wire Line
	2350 3650 2750 3650
Wire Wire Line
	3250 3650 3700 3650
Wire Wire Line
	3400 3750 3250 3750
Wire Wire Line
	1800 3250 1800 3300
Wire Wire Line
	1800 3250 2150 3250
$Comp
L power:PWR_FLAG #FLG03
U 1 1 591A4DCA
P 4650 3550
F 0 "#FLG03" H 4650 3625 50  0001 C CNN
F 1 "PWR_FLAG" H 4650 3724 50  0000 C CNN
F 2 "" H 4650 3550 50  0001 C CNN
F 3 "" H 4650 3550 50  0001 C CNN
	1    4650 3550
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 591A4CD6
P 4200 3550
F 0 "#FLG02" H 4200 3625 50  0001 C CNN
F 1 "PWR_FLAG" H 4200 3724 50  0000 C CNN
F 2 "" H 4200 3550 50  0001 C CNN
F 3 "" H 4200 3550 50  0001 C CNN
	1    4200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3550 3800 3700
Wire Wire Line
	3800 3700 5750 3700
Wire Wire Line
	3700 3650 3700 3800
Wire Wire Line
	3700 3800 4200 3800
Wire Wire Line
	2350 3650 2350 3900
Wire Wire Line
	2350 3900 4650 3900
Wire Wire Line
	1600 3550 1600 2650
Wire Wire Line
	1600 2650 7750 2650
Wire Wire Line
	7750 2650 7750 3950
Wire Wire Line
	7750 3950 7450 3950
Wire Wire Line
	4200 3550 4200 3800
Connection ~ 4200 3800
Wire Wire Line
	4650 3550 4650 3900
Connection ~ 4650 3900
$Comp
L power:PWR_FLAG #FLG01
U 1 1 591A6FAC
P 2150 3150
F 0 "#FLG01" H 2150 3225 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 3324 50  0000 C CNN
F 2 "" H 2150 3150 50  0001 C CNN
F 3 "" H 2150 3150 50  0001 C CNN
	1    2150 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2150 3150 2150 3250
Connection ~ 2150 3250
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 58D2271F
P 2950 3550
F 0 "J1" H 2950 3865 50  0000 C CNN
F 1 "CONN_02X04" H 2950 3774 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical" H 2950 2350 50  0001 C CNN
F 3 "" H 2950 2350 50  0001 C CNN
F 4 "Amphenol" H 2950 3550 50  0001 C CNN "MFN"
F 5 "87606-804LF" H 2950 3550 50  0001 C CNN "PN"
	1    2950 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3450 2500 3450
Wire Wire Line
	2500 3450 2500 3250
Wire Wire Line
	7450 3700 7650 3700
Wire Wire Line
	7650 3700 7650 3100
Wire Wire Line
	7650 3100 3550 3100
Wire Wire Line
	3550 3100 3550 3450
Wire Wire Line
	3550 3450 3250 3450
Text Label 4900 3700 0    60   ~ 0
Zener+_force
Text Label 5350 3100 0    60   ~ 0
Zener+_sense
Text Label 5700 2650 0    60   ~ 0
Vout
Wire Wire Line
	5050 3800 5050 4100
Wire Wire Line
	5050 4100 5750 4100
Connection ~ 5050 3800
Wire Wire Line
	5250 3900 5250 4200
Wire Wire Line
	5250 4200 5750 4200
Connection ~ 5250 3900
Wire Wire Line
	4200 3800 5050 3800
Wire Wire Line
	4650 3900 5250 3900
Wire Wire Line
	2150 3250 2500 3250
Wire Wire Line
	5050 3800 5750 3800
Wire Wire Line
	5250 3900 5750 3900
$Comp
L Sensor_Temperature:TMP20AIDCK U1
U 1 1 5B76F0A6
P 2550 4650
F 0 "U1" H 2200 4700 50  0000 R CNN
F 1 "TMP236" H 2200 4600 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 2550 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tmp235.pdf" H 2550 4650 50  0001 C CNN
F 4 "Texas Instruments" H 2550 4650 50  0001 C CNN "MFN"
F 5 "TMP236A2DCKT" H 2550 4650 50  0001 C CNN "PN"
	1    2550 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5B76F171
P 2550 5050
F 0 "#PWR0101" H 2550 4800 50  0001 C CNN
F 1 "GND" H 2555 4877 50  0000 C CNN
F 2 "" H 2550 5050 50  0001 C CNN
F 3 "" H 2550 5050 50  0001 C CNN
	1    2550 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2550 5050 2550 4950
Wire Wire Line
	2550 4350 2550 4250
Wire Wire Line
	2550 3750 2650 3750
Wire Wire Line
	3400 3750 3400 4650
Wire Wire Line
	3400 4650 2950 4650
$Comp
L Graphic:Logo_Open_Hardware_Small LOGO1
U 1 1 5B772A92
P 10850 6850
F 0 "LOGO1" H 10850 7125 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10850 6625 50  0001 C CNN
F 2 "Symbol:OSHW-Logo2_7.3x6mm_SilkScreen" H 10850 6850 50  0001 C CNN
F 3 "~" H 10850 6850 50  0001 C CNN
	1    10850 6850
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5B7756A4
P 2650 3150
F 0 "#FLG0101" H 2650 3225 50  0001 C CNN
F 1 "PWR_FLAG" H 2650 3324 50  0000 C CNN
F 2 "" H 2650 3150 50  0001 C CNN
F 3 "" H 2650 3150 50  0001 C CNN
	1    2650 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2650 3150 2650 3750
Connection ~ 2650 3750
Wire Wire Line
	2650 3750 2750 3750
$Comp
L Mechanical:MountingHole H1
U 1 1 5C37ECDE
P 4150 5100
F 0 "H1" H 4250 5150 50  0000 L CNN
F 1 "MountingHole" H 4250 5050 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad" H 4150 5100 50  0001 C CNN
F 3 "~" H 4150 5100 50  0001 C CNN
	1    4150 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5C6BB176
P 1450 4650
F 0 "C4" H 1600 4700 50  0000 L CNN
F 1 "100n" H 1600 4600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1488 4500 50  0001 C CNN
F 3 "~" H 1450 4650 50  0001 C CNN
F 4 "Murata" H 1450 4650 50  0001 C CNN "MFN"
F 5 "GRM188R71H104KA93D" H 1450 4650 50  0001 C CNN "PN"
	1    1450 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4500 1450 4250
Wire Wire Line
	1450 4250 2550 4250
Connection ~ 2550 4250
Wire Wire Line
	2550 4250 2550 3750
$Comp
L power:GND #PWR0102
U 1 1 5C6BC39A
P 1450 5050
F 0 "#PWR0102" H 1450 4800 50  0001 C CNN
F 1 "GND" H 1455 4877 50  0000 C CNN
F 2 "" H 1450 5050 50  0001 C CNN
F 3 "" H 1450 5050 50  0001 C CNN
	1    1450 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 4800 1450 5050
Text Notes 4000 5500 0    60   ~ 0
Use an RAF M2106-2545-AL, 11 mm M2.5 standoff\nto mount the reference daughter board onto the\nmain pcb.
Text Label 2050 4250 0    60   ~ 0
V3.3
$EndSCHEMATC
