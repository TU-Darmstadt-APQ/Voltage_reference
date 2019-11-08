EESchema Schematic File Version 4
LIBS:reference_board-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "LM399 negative voltage reference"
Date "2019-06-28"
Rev "v3.1.1"
Comp ""
Comment1 "Copyright (©) 2018, Patrick Baus <patrick.baus@physik.tu-darmstadt.de>"
Comment2 "Licensed under CERN OHL v.1.2"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Reference_Voltage:LM399 U2
U 1 1 591A5398
P 4100 3500
AR Path="/591A5398" Ref="U2"  Part="1" 
AR Path="/591A50E3/591A5398" Ref="U2"  Part="1" 
F 0 "U2" H 4300 3550 60  0000 L CNN
F 1 "LM399" H 4300 3450 60  0000 L CNN
F 2 "Custom_footprints:TO-46-4_ThermalShield" H 4100 3450 60  0001 C CNN
F 3 "" H 4100 3450 60  0001 C CNN
F 4 "Analog Devices" H 4100 3500 60  0001 C CNN "MFN"
F 5 "LM399AH" H 4100 3500 60  0001 C CNN "MFP"
F 6 "Use a TE 8060-1G12 socket to mount diodes for burn-in" H 4100 3500 50  0001 C CNN "Alternative"
	1    4100 3500
	1    0    0    -1  
$EndComp
Text HLabel 4000 2850 1    60   UnSpc ~ 0
V-heater+
Text HLabel 4000 3900 3    60   UnSpc ~ 0
V_heater-
Text HLabel 2350 2100 1    60   UnSpc ~ 0
V_zener+_force
$Comp
L Device:R R1
U 1 1 591A53BD
P 5900 2800
F 0 "R1" V 5693 2800 50  0000 C CNN
F 1 "7.5K" V 5784 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5830 2800 50  0001 C CNN
F 3 "" H 5900 2800 50  0001 C CNN
F 4 "Welwyn" H 5900 2800 60  0001 C CNN "MFN"
F 5 "PCF0805-13-7K5-B-T1" H 5900 2800 60  0001 C CNN "MFP"
F 6 "Panasonic ERA-6ARB752V" V 5900 2800 50  0001 C CNN "Alternative"
	1    5900 2800
	0    1    1    0   
$EndComp
Text Notes 5200 1950 0    60   ~ 0
This resistor will supply the zener current.\nIt does not need to be exactely 3k, but a\nzener current of 1 mA or slightly above is\nrecommended.\nThis resistor needs to be matched if the\namplification is changed. Currently\nI_Zener = (10 V - 6.95 V) / 3k
Text Notes 2600 2850 0    60   ~ 0
The LM399 has a\nTCR of 0.3 ppm/K
Text Notes 5200 2500 0    60   ~ 0
The output drift with the zener current\nis about 5 x 10^-3 ppm / ppm.\nIn order to meet the LM399 specs make sure the resistor\nhas a maximum TCR of 10 ppm / K (results in 0.06 ppm / K).
Text HLabel 5800 3100 1    60   UnSpc ~ 0
V+
Text HLabel 5800 5050 3    60   UnSpc ~ 0
V-
Text HLabel 7550 4050 2    60   Output ~ 0
V_zener-
$Comp
L Device:C C3
U 1 1 591A53CC
P 6550 5050
F 0 "C3" H 6665 5096 50  0000 L CNN
F 1 "100n" H 6665 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6588 4900 50  0001 C CNN
F 3 "" H 6550 5050 50  0001 C CNN
F 4 "Murata" H 6550 5050 60  0001 C CNN "MFN"
F 5 "GRM31C5C1H104JA01L" H 6550 5050 60  0001 C CNN "MFP"
	1    6550 5050
	1    0    0    -1  
$EndComp
Text Notes 1850 4000 0    60   ~ 0
TODO:\n- use 4 drill holes to mount styrofoam
Text Notes 7350 4900 0    60   ~ 0
Use a Film capacitor with a high insulation\nresistance (no polyester), which is stable\nover temperature. Nowadays C0G (BME) is\neven better than film.
$Comp
L Device:C C1
U 1 1 591A5401
P 6200 3450
F 0 "C1" H 6315 3496 50  0000 L CNN
F 1 "100n" H 6315 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6238 3300 50  0001 C CNN
F 3 "" H 6200 3450 50  0001 C CNN
F 4 "Murata" H 6200 3450 60  0001 C CNN "MFN"
F 5 "GRM31C5C1H104JA01L" H 6200 3450 60  0001 C CNN "MFP"
	1    6200 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 591A540B
P 6200 3700
F 0 "#PWR02" H 6200 3450 50  0001 C CNN
F 1 "GND" H 6205 3527 50  0000 C CNN
F 2 "" H 6200 3700 50  0001 C CNN
F 3 "" H 6200 3700 50  0001 C CNN
	1    6200 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 591A5416
P 6200 5000
F 0 "#PWR03" H 6200 4750 50  0001 C CNN
F 1 "GND" H 6205 4827 50  0000 C CNN
F 2 "" H 6200 5000 50  0001 C CNN
F 3 "" H 6200 5000 50  0001 C CNN
	1    6200 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 591A541E
P 6200 4750
F 0 "C2" H 6315 4796 50  0000 L CNN
F 1 "100n" H 6315 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6238 4600 50  0001 C CNN
F 3 "" H 6200 4750 50  0001 C CNN
F 4 "Murata" H 6200 4750 60  0001 C CNN "MFN"
F 5 "GRM31C5C1H104JA01L" H 6200 4750 60  0001 C CNN "MFP"
	1    6200 4750
	1    0    0    -1  
$EndComp
Text Notes 7350 5050 0    60   ~ 0
DON'T use AVX! They will melt at the spec'ed temperature
Text Notes 4300 6300 0    60   ~ 0
Kelvin connect this to the V_zener+ input pin
Text Notes 3150 1200 0    60   ~ 0
Use 1 oz./sqft of copper to\nminimize trace resistance and\ntherefore minimize succeptibility\nto temperature.
Text Notes 3200 1650 0    60   ~ 0
Trace resistance of 0.32 Ohm\n(100mm, 4000 ppm / K) causes\na 1.5 µV / K error.
NoConn ~ 6000 4350
NoConn ~ 5900 4350
Text HLabel 2650 2100 1    60   Output ~ 0
V_zener+_sense
$Comp
L Device:Net-Tie_2 NT1
U 1 1 5976DF85
P 2650 2250
F 0 "NT1" V 2604 2338 50  0000 L CNN
F 1 "NET-TIE" V 2695 2338 50  0000 L CNN
F 2 "Custom_footprints:NET-TIE-0.15mm" H 2650 2150 50  0001 C CNN
F 3 "" H 2650 2250 60  0000 C CNN
	1    2650 2250
	0    1    1    0   
$EndComp
$Comp
L Device:Net-Tie_2 NT3
U 1 1 5976E542
P 6900 5900
F 0 "NT3" V 6854 5988 50  0000 L CNN
F 1 "NET-TIE" V 6945 5988 50  0000 L CNN
F 2 "Custom_footprints:NET-TIE-0.25mm" H 6900 5800 50  0001 C CNN
F 3 "" H 6900 5900 60  0000 C CNN
	1    6900 5900
	0    1    1    0   
$EndComp
Text Label 2350 2550 3    60   ~ 0
V_zener+
Text Label 6900 6100 3    60   ~ 0
V_zener+
Text Label 4200 3200 1    60   ~ 0
V_zener+
$Comp
L Device:Net-Tie_2 NT2
U 1 1 5976EB13
P 5050 3500
F 0 "NT2" V 5004 3588 50  0000 L CNN
F 1 "NET-TIE" V 5095 3588 50  0000 L CNN
F 2 "Custom_footprints:NET-TIE-0.25mm" H 5050 3400 50  0001 C CNN
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
L Device:R R2
U 1 1 59E8CFD2
P 4850 2800
F 0 "R2" V 4643 2800 50  0000 C CNN
F 1 "200k" V 4734 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4780 2800 50  0001 C CNN
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
	4000 3300 4000 2850
Wire Wire Line
	4000 3900 4000 3700
Wire Wire Line
	2350 2100 2350 2550
Wire Wire Line
	6200 4050 6900 4050
Wire Wire Line
	5450 4150 5600 4150
Wire Wire Line
	4200 3950 5600 3950
Wire Wire Line
	5000 2800 5050 2800
Wire Wire Line
	6050 2800 6900 2800
Connection ~ 6900 4050
Wire Wire Line
	5800 4350 5800 4500
Wire Wire Line
	5800 3100 5800 3200
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
	4200 3700 4200 3800
Wire Wire Line
	2350 2550 2650 2350
Wire Wire Line
	2650 2150 2650 2100
Wire Wire Line
	6900 6000 6900 6100
Wire Wire Line
	4200 3200 4200 3300
Wire Wire Line
	5050 2800 5050 3400
Wire Wire Line
	5050 3600 5050 3800
Wire Wire Line
	5050 3800 4200 3800
Connection ~ 4200 3800
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
L Device:Voltage_Divider RN1
U 1 1 5A502407
P 6900 5350
F 0 "RN1" H 6821 5304 50  0000 R CNN
F 1 "17k/20k" H 6821 5395 50  0000 R CNN
F 2 "Custom_footprints:Vishay_300144" V 7375 5350 50  0001 C CNN
F 3 "" H 7100 5350 50  0001 C CNN
F 4 "Vishay" H 6900 5350 60  0001 C CNN "MFN"
F 5 "300144Z" H 6900 5350 60  0001 C CNN "MFP"
	1    6900 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 5350 6550 5350
Wire Wire Line
	6900 5800 6900 5600
Wire Wire Line
	5450 4150 5450 5350
Wire Wire Line
	5050 2800 5750 2800
Wire Wire Line
	6900 4050 7550 4050
Wire Wire Line
	6900 4800 6900 5100
Wire Wire Line
	5800 3200 5800 3750
Wire Wire Line
	5800 4500 5800 5050
Wire Wire Line
	4200 3800 4200 3950
Wire Wire Line
	6550 5350 6750 5350
$Comp
L Amplifier_Operational:LT1363 U3
U 1 1 5BB4F780
P 5900 4050
AR Path="/5BB4F780" Ref="U3"  Part="1" 
AR Path="/591A50E3/5BB4F780" Ref="U3"  Part="1" 
F 0 "U3" H 6250 4100 50  0000 L CNN
F 1 "LT1001" H 6250 4000 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5950 4100 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/1001fb.pdf" H 5950 4200 50  0001 C CNN
F 4 "Analog Devices" H 5900 4050 50  0001 C CNN "MFN"
F 5 "LT1001CS8" H 5900 4050 50  0001 C CNN "MFP"
F 6 "TI OPA277U" H 5900 4050 50  0001 C CNN "Alternative"
	1    5900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2800 6900 3450
Wire Wire Line
	6900 3650 6900 4050
Wire Wire Line
	6900 4050 6900 4250
Wire Wire Line
	6900 4450 6900 4800
Connection ~ 6900 4800
$Comp
L Device:Net-Tie_2 NT4
U 1 1 5BB5735D
P 6900 3550
F 0 "NT4" V 6854 3638 50  0000 L CNN
F 1 "NET-TIE" V 6945 3638 50  0000 L CNN
F 2 "Custom_footprints:NET-TIE-0.25mm" H 6900 3450 50  0001 C CNN
F 3 "" H 6900 3550 60  0000 C CNN
	1    6900 3550
	0    1    1    0   
$EndComp
$Comp
L Device:Net-Tie_2 NT5
U 1 1 5BB58169
P 6900 4350
F 0 "NT5" V 6854 4438 50  0000 L CNN
F 1 "NET-TIE" V 6945 4438 50  0000 L CNN
F 2 "Custom_footprints:NET-TIE-0.25mm" H 6900 4250 50  0001 C CNN
F 3 "" H 6900 4350 60  0000 C CNN
	1    6900 4350
	0    1    1    0   
$EndComp
Text Notes 7000 2950 0    60   ~ 0
e.g. ERA-6ARB752V (10 ppm)\nPCF0805-13-7K5-B-T1 (5 ppm),\nTE Connectivity RU73X2A7K5LTDF (2 ppm),\nVishay S102 (2 ppm)
Text Notes 7350 5500 0    60   ~ 0
17k: Pin 1 -> Pin 2\nPin 1 is correctly\nmarked on the package
Text Notes 2150 3600 0    60   ~ 0
Note: Use a TE 8060-1G12 socket\nto mount diodes for burn-in
$EndSCHEMATC
