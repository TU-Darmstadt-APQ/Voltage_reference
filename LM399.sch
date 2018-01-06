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
Sheet 2 2
Title "LM399 negative voltage reference"
Date "2018-01-06"
Rev "v2.1.0"
Comp ""
Comment1 "Copyright (©) 2018, Patrick Baus <patrick.baus@physik.tu-darmstadt.de>"
Comment2 "Licensed under CERN OHL v.1.2"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM399 U1
U 1 1 591A5398
P 4000 3300
F 0 "U1" H 4408 3353 60  0000 L CNN
F 1 "LM399" H 4408 3247 60  0000 L CNN
F 2 "Custom_footprints:LM399" H 4000 3250 60  0001 C CNN
F 3 "" H 4000 3250 60  0001 C CNN
F 4 "Linear Technology" H 4000 3300 60  0001 C CNN "MFN"
F 5 "LM399AH" H 4000 3300 60  0001 C CNN "MFP"
	1    4000 3300
	1    0    0    -1  
$EndComp
Text HLabel 3850 2400 1    60   UnSpc ~ 0
V-heater+
Text HLabel 3850 3950 3    60   UnSpc ~ 0
V_heater-
Text HLabel 2500 2500 1    60   UnSpc ~ 0
V_zener+_force
Text Notes 8000 5750 0    60   ~ 0
Use precision resistors\nwith an extremly low TCR\nor a network with very good\ntracking TCR.
$Comp
L R R1
U 1 1 591A53BD
P 5900 2800
F 0 "R1" V 5693 2800 50  0000 C CNN
F 1 "7.5K" V 5784 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5830 2800 50  0001 C CNN
F 3 "" H 5900 2800 50  0001 C CNN
F 4 "Welwyn" H 5900 2800 60  0001 C CNN "MFN"
F 5 "PCF0805-13-7K5-B-T1" H 5900 2800 60  0001 C CNN "MFP"
	1    5900 2800
	0    1    1    0   
$EndComp
Text Notes 5200 1950 0    60   ~ 0
This resistor will supply the zener current.\nIt does not need to be exactely 3k, but a\nzener current of 1 mA or slightly above is\nrecommended.\nThis resistor needs to be matched if the\namplification is changed. Currently\nI_Zener = (10 V - 6.95 V) / 3k
Text Notes 2750 3250 0    60   ~ 0
The LM399 has a\nTCR of 0.3 ppm/K
Text Notes 5200 2500 0    60   ~ 0
The output drift with the zener current\nis about 5 x 10^-3 ppm / ppm.\nIn order to meet the LM399 specs make sure the resistor\nhas a maximum TCR of 5 ppm / K (results in 0.03 ppm / K).
Text HLabel 5800 3100 1    60   UnSpc ~ 0
V+
Text HLabel 5800 5050 3    60   UnSpc ~ 0
V-
Text HLabel 7550 4050 2    60   Output ~ 0
V_zener-
$Comp
L C C1
U 1 1 591A53CC
P 6550 5050
F 0 "C1" H 6665 5096 50  0000 L CNN
F 1 "100n" H 6665 5005 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6588 4900 50  0001 C CNN
F 3 "" H 6550 5050 50  0001 C CNN
F 4 "Murata" H 6550 5050 60  0001 C CNN "MFN"
F 5 "GRM31C5C1H104JA01L" H 6550 5050 60  0001 C CNN "MFP"
	1    6550 5050
	1    0    0    -1  
$EndComp
Text Notes 1850 4000 0    60   ~ 0
TODO:\n- use 4 drill holes to mount styrofoam
Text Notes 7150 4700 0    60   ~ 0
Use a Film capacitor with a high insulation\nresistance (no polyester), which is stable\nover temperature. Nowadays C0G (BME) is\neven better than film.
$Comp
L C C2
U 1 1 591A5401
P 6200 3450
F 0 "C2" H 6315 3496 50  0000 L CNN
F 1 "100n" H 6315 3405 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6238 3300 50  0001 C CNN
F 3 "" H 6200 3450 50  0001 C CNN
F 4 "Murata" H 6200 3450 60  0001 C CNN "MFN"
F 5 "GRM31C5C1H104JA01L" H 6200 3450 60  0001 C CNN "MFP"
	1    6200 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 591A540B
P 6200 3700
F 0 "#PWR05" H 6200 3450 50  0001 C CNN
F 1 "GND" H 6205 3527 50  0000 C CNN
F 2 "" H 6200 3700 50  0001 C CNN
F 3 "" H 6200 3700 50  0001 C CNN
	1    6200 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 591A5416
P 6200 5000
F 0 "#PWR06" H 6200 4750 50  0001 C CNN
F 1 "GND" H 6205 4827 50  0000 C CNN
F 2 "" H 6200 5000 50  0001 C CNN
F 3 "" H 6200 5000 50  0001 C CNN
	1    6200 5000
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 591A541E
P 6200 4750
F 0 "C3" H 6315 4796 50  0000 L CNN
F 1 "100n" H 6315 4705 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6238 4600 50  0001 C CNN
F 3 "" H 6200 4750 50  0001 C CNN
F 4 "Murata" H 6200 4750 60  0001 C CNN "MFN"
F 5 "GRM31C5C1H104JA01L" H 6200 4750 60  0001 C CNN "MFP"
	1    6200 4750
	1    0    0    -1  
$EndComp
Text Notes 7100 3400 0    60   ~ 0
e.g. PCF0805-13-7K5-B-T1 (5 ppm),\nTE Connectivity RU73X2A7K5LTDF (2 ppm),\nVishay S102 (2 ppm)\n\nPCF0805-13-3K-B-T1. (5 ppm),\nVishay S102 (2 ppm)
Text Notes 7150 4850 0    60   ~ 0
DON'T use AVX! They will melt at the spec'ed temperature
Text Notes 4300 6300 0    60   ~ 0
Kelvin connect this to the V_zener+ input pin
Text Notes 3150 1200 0    60   ~ 0
Use 1 oz./sqft of copper to\nminimize trace resistance and\ntherefore minimize succeptibility\nto temperature.
Text Notes 3200 1650 0    60   ~ 0
Trace resistance of 0.32 Ohm\n(100mm, 4000 ppm / K) causes\na 1.5 µV / K error.
NoConn ~ 5900 3800
NoConn ~ 5900 4300
Text HLabel 2800 2500 1    60   Output ~ 0
V_zener+_sense
$Comp
L NET-TIE W1
U 1 1 5976DF85
P 2800 2650
F 0 "W1" V 2754 2738 50  0000 L CNN
F 1 "NET-TIE" V 2845 2738 50  0000 L CNN
F 2 "Custom_footprints:NET-TIE-0.15mm" H 2800 2550 50  0001 C CNN
F 3 "" H 2800 2650 60  0000 C CNN
	1    2800 2650
	0    1    1    0   
$EndComp
$Comp
L NET-TIE W3
U 1 1 5976E542
P 6900 5900
F 0 "W3" V 6854 5988 50  0000 L CNN
F 1 "NET-TIE" V 6945 5988 50  0000 L CNN
F 2 "Custom_footprints:NET-TIE-0.15mm" H 6900 5800 50  0001 C CNN
F 3 "" H 6900 5900 60  0000 C CNN
	1    6900 5900
	0    1    1    0   
$EndComp
Text Label 2500 2950 3    60   ~ 0
V_zener+
Text Label 6900 6100 3    60   ~ 0
V_zener+
Text Label 4150 2750 1    60   ~ 0
V_zener+
$Comp
L NET-TIE W2
U 1 1 5976EB13
P 5050 3500
F 0 "W2" V 5004 3588 50  0000 L CNN
F 1 "NET-TIE" V 5095 3588 50  0000 L CNN
F 2 "Custom_footprints:NET-TIE-0.20mm" H 5050 3400 50  0001 C CNN
F 3 "" H 5050 3500 60  0000 C CNN
	1    5050 3500
	0    1    1    0   
$EndComp
Text Notes 950  4800 0    60   ~ 0
Kelvin connect the Zener. Even the the small current\npassing through R1 (1 mA) will introduce an error of 0.2 ppm/K\ngiven a normal PCB copper trace.\n(10 mm trace 0=> 0.2 ohm, 1 mA, 0.7 % tcr, ~~7 V reference)
Text Notes 1950 5600 0    60   ~ 0
Output voltage Table:\nVoltage   | R1    | R2  | R3\n------------------\n-10 V    | 3k    | 9k  | 20k\n-15 V    | 7.89k | 20k | 17k
Text Notes 8350 3800 0    60   ~ 0
Information on insulation resistance can be found here:\nhttp://www.iequalscdvdt.com/Insulation_resis_.html\nhttps://www.vishay.com/docs/26033/gentechinfofilm.pdf
$Comp
L R R5
U 1 1 59E8CFD2
P 4850 2800
F 0 "R5" V 4643 2800 50  0000 C CNN
F 1 "200k" V 4734 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4780 2800 50  0001 C CNN
F 3 "" H 4850 2800 50  0001 C CNN
F 4 "Susumu" H 4850 2800 60  0001 C CNN "MFN"
F 5 "RR0816P-204-D" H 4850 2800 60  0001 C CNN "MFP"
	1    4850 2800
	0    1    1    0   
$EndComp
Text HLabel 4600 2850 3    60   UnSpc ~ 0
V-
Connection ~ 5050 2800
Wire Wire Line
	4600 2800 4600 2850
Wire Wire Line
	3850 2850 3850 2400
Wire Wire Line
	3850 3950 3850 3750
Wire Wire Line
	2500 2500 2500 2950
Wire Wire Line
	6900 2800 6900 5100
Wire Wire Line
	6200 4050 7550 4050
Wire Wire Line
	5450 4150 5600 4150
Wire Wire Line
	4150 3950 5600 3950
Wire Wire Line
	5000 2800 5750 2800
Wire Wire Line
	6050 2800 6900 2800
Connection ~ 6900 4050
Wire Wire Line
	5800 4350 5800 5050
Wire Wire Line
	5800 3100 5800 3750
Connection ~ 6900 4800
Wire Wire Line
	5800 3200 6200 3200
Wire Wire Line
	6200 3200 6200 3300
Connection ~ 5800 3200
Wire Wire Line
	6200 3600 6200 3700
Wire Wire Line
	6200 4500 6200 4600
Wire Wire Line
	6200 4900 6200 5000
Wire Wire Line
	6200 4500 5800 4500
Connection ~ 5800 4500
Wire Wire Line
	4150 3750 4150 3950
Wire Wire Line
	2500 2950 2800 2750
Wire Wire Line
	2800 2550 2800 2500
Wire Wire Line
	6900 6000 6900 6100
Wire Wire Line
	4150 2750 4150 2850
Wire Wire Line
	5050 2800 5050 3400
Wire Wire Line
	5050 3600 5050 3800
Wire Wire Line
	5050 3800 4150 3800
Connection ~ 4150 3800
Wire Wire Line
	6900 4800 6550 4800
Wire Wire Line
	6550 4800 6550 4900
Wire Wire Line
	6550 5350 6550 5200
Connection ~ 6550 5350
Wire Wire Line
	4700 2800 4600 2800
Text Notes 8400 1950 0    60   ~ 0
Mount the LM399 a *little* off the board,\nto keep stress away.\nSource: http://www.eevblog.com/forum/\nmetrology/ultra-precision-reference-ltz1000/\nmsg404500/#msg404500
$Comp
L Voltage_Divider RN1
U 1 1 5A502407
P 6900 5350
F 0 "RN1" H 6821 5304 50  0000 R CNN
F 1 "17k/20k" H 6821 5395 50  0000 R CNN
F 2 "Custom_footprints:Vishay_300144" V 7375 5350 50  0001 C CNN
F 3 "" H 7100 5350 50  0001 C CNN
F 4 "Vishay" H 6900 5350 60  0001 C CNN "MFN"
F 5 "300144ZT" H 6900 5350 60  0001 C CNN "MFP"
	1    6900 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 5350 6750 5350
Wire Wire Line
	6900 5800 6900 5600
$Comp
L LTC2057(DFN) U2
U 1 1 5A502B7D
P 5900 4050
F 0 "U2" H 6241 4096 50  0000 L CNN
F 1 "LTC2057" H 6241 4005 50  0000 L CNN
F 2 "Housings_DFN_QFN:DFN-8-1EP_3x3mm_Pitch0.5mm" H 6241 3959 50  0001 L CNN
F 3 "" H 5950 4250 50  0000 C CNN
F 4 "Linear Technology" H 6500 4350 60  0001 C CNN "MFN"
F 5 "LTC2057IDD" H 6300 4450 60  0001 C CNN "MFP"
	1    5900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4150 5450 5350
$EndSCHEMATC
