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
LIBS:reference_board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X04 J1
U 1 1 58D2271F
P 3000 3600
F 0 "J1" H 3000 3915 50  0000 C CNN
F 1 "CONN_02X04" H 3000 3824 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x04_Pitch2.54mm" H 3000 2400 50  0001 C CNN
F 3 "" H 3000 2400 50  0001 C CNN
	1    3000 3600
	1    0    0    -1  
$EndComp
$Comp
L AD590 U3
U 1 1 58DBB9E8
P 2950 4350
F 0 "U3" H 3078 4446 50  0000 L CNN
F 1 "AD590" H 3078 4355 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2950 4500 50  0001 C CNN
F 3 "" H 2950 4350 60  0001 C CNN
F 4 "Analog Devices" H 2950 4350 60  0001 C CNN "MFN"
F 5 "AD590" H 2950 4350 60  0001 C CNN "MFP"
	1    2950 4350
	0    1    1    0   
$EndComp
Text Notes 2550 5050 0    60   ~ 0
Temperature Sensor:\n1 µA/K\n298.2 µA @ 25 °C
$Comp
L GND #PWR01
U 1 1 58DD20AE
P 3950 3500
F 0 "#PWR01" H 3950 3250 50  0001 C CNN
F 1 "GND" H 3955 3327 50  0000 C CNN
F 2 "" H 3950 3500 50  0001 C CNN
F 3 "" H 3950 3500 50  0001 C CNN
	1    3950 3500
	1    0    0    -1  
$EndComp
Text Notes 1600 4450 0    60   ~ 0
Try alternative part:\nTC1047
NoConn ~ 2750 3450
$Sheet
S 4850 3600 1400 700 
U 591A50E3
F0 "Voltage Reference" 60
F1 "LM399.sch" 60
F2 "V+" U L 4850 3800 60 
F3 "V-" U L 4850 3950 60 
F4 "V_zener+" U L 4850 3700 60 
F5 "V_zener-" O R 6250 3950 60 
$EndSheet
Wire Wire Line
	3250 3550 3800 3550
Wire Wire Line
	2750 3550 2600 3550
Wire Wire Line
	2350 3650 2750 3650
Wire Wire Line
	3250 3650 3700 3650
Wire Wire Line
	3400 3750 3250 3750
Wire Wire Line
	2750 3750 2600 3750
Wire Wire Line
	3950 3450 3950 3500
Wire Wire Line
	3950 3450 3250 3450
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
	3800 3700 4850 3700
Wire Wire Line
	3700 3650 3700 3800
Wire Wire Line
	3700 3800 4850 3800
Wire Wire Line
	2350 3650 2350 3950
Wire Wire Line
	2350 3950 4850 3950
Wire Wire Line
	2600 3550 2600 3050
Wire Wire Line
	2600 3050 6450 3050
Wire Wire Line
	6450 3050 6450 3950
Wire Wire Line
	6450 3950 6250 3950
Wire Wire Line
	4200 3550 4200 3800
Connection ~ 4200 3800
Wire Wire Line
	4650 3550 4650 3950
Connection ~ 4650 3950
Wire Wire Line
	3400 3750 3400 4350
Wire Wire Line
	3400 4350 3250 4350
Wire Wire Line
	2600 3750 2600 4350
Wire Wire Line
	2600 4350 2750 4350
$Comp
L PWR_FLAG #FLG04
U 1 1 591A6FAC
P 3600 3350
F 0 "#FLG04" H 3600 3425 50  0001 C CNN
F 1 "PWR_FLAG" H 3600 3524 50  0000 C CNN
F 2 "" H 3600 3350 50  0001 C CNN
F 3 "" H 3600 3350 50  0001 C CNN
	1    3600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3350 3600 3450
Connection ~ 3600 3450
$EndSCHEMATC
