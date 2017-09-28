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
LIBS:Linear Technology
LIBS:ADI
LIBS:net-tie
LIBS:reference_board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "LM399 negative voltage reference"
Date "2017-09-28"
Rev "v2.0.1"
Comp ""
Comment1 "Copyright (©) 2017, Patrick Baus <patrick.baus@physik.tu-darmstadt.de>"
Comment2 "Licensed under CERN OHL v.1.2"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AD590 U3
U 1 1 58DBB9E8
P 2950 4750
F 0 "U3" H 3078 4846 50  0000 L CNN
F 1 "AD590" H 3078 4755 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2950 4900 50  0001 C CNN
F 3 "" H 2950 4750 60  0001 C CNN
F 4 "Analog Devices" H 2950 4750 60  0001 C CNN "MFN"
F 5 "AD590" H 2950 4750 60  0001 C CNN "MFP"
	1    2950 4750
	0    1    1    0   
$EndComp
Text Notes 2550 5450 0    60   ~ 0
Temperature Sensor:\n1 µA/K\n298.2 µA @ 25 °C
$Comp
L GND #PWR01
U 1 1 58DD20AE
P 1800 3300
F 0 "#PWR01" H 1800 3050 50  0001 C CNN
F 1 "GND" H 1805 3127 50  0000 C CNN
F 2 "" H 1800 3300 50  0001 C CNN
F 3 "" H 1800 3300 50  0001 C CNN
	1    1800 3300
	-1   0    0    -1  
$EndComp
Text Notes 1600 4850 0    60   ~ 0
Try alternative part:\nTC1047
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
	2750 3750 2600 3750
Wire Wire Line
	1800 3250 1800 3300
Wire Wire Line
	1800 3250 2500 3250
$Comp
L PWR_FLAG #FLG02
U 1 1 591A4DCA
P 4650 3550
F 0 "#FLG02" H 4650 3625 50  0001 C CNN
F 1 "PWR_FLAG" H 4650 3724 50  0000 C CNN
F 2 "" H 4650 3550 50  0001 C CNN
F 3 "" H 4650 3550 50  0001 C CNN
	1    4650 3550
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 591A4CD6
P 4200 3550
F 0 "#FLG03" H 4200 3625 50  0001 C CNN
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
	3700 3800 5750 3800
Wire Wire Line
	2350 3650 2350 3900
Wire Wire Line
	2350 3900 5750 3900
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
Wire Wire Line
	3400 3750 3400 4750
Wire Wire Line
	3400 4750 3250 4750
Wire Wire Line
	2600 3750 2600 4750
Wire Wire Line
	2600 4750 2750 4750
$Comp
L PWR_FLAG #FLG04
U 1 1 591A6FAC
P 2150 3150
F 0 "#FLG04" H 2150 3225 50  0001 C CNN
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
L Conn_02x04_Odd_Even J1
U 1 1 58D2271F
P 2950 3550
F 0 "J1" H 2950 3865 50  0000 C CNN
F 1 "CONN_02X04" H 2950 3774 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x04_Pitch2.54mm" H 2950 2350 50  0001 C CNN
F 3 "" H 2950 2350 50  0001 C CNN
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
$EndSCHEMATC
