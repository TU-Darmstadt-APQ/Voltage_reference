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
Sheet 2 2
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
L LM399 U1
U 1 1 591A5398
P 4000 3300
F 0 "U1" H 4408 3353 60  0000 L CNN
F 1 "LM399" H 4408 3247 60  0000 L CNN
F 2 "Custom_footprints:LM399" H 4000 3250 60  0001 C CNN
F 3 "" H 4000 3250 60  0001 C CNN
F 4 "Linear Technology" H 4000 3300 60  0001 C CNN "MFN"
F 5 "LM399A" H 4000 3300 60  0001 C CNN "MFP"
	1    4000 3300
	1    0    0    -1  
$EndComp
Text HLabel 3850 2650 1    60   UnSpc ~ 0
V+
Text HLabel 3850 3950 3    60   UnSpc ~ 0
V-
$Comp
L LTC2057(MSOP-10) U2
U 1 1 591A53A3
P 5700 4050
F 0 "U2" H 6041 4096 50  0000 L CNN
F 1 "LTC2057" H 6041 4005 50  0000 L CNN
F 2 "Housings_SSOP:MSOP-10_3x3mm_Pitch0.5mm" H 5650 4150 50  0001 C CNN
F 3 "" H 5750 4250 50  0000 C CNN
F 4 "Linear Technology" H 5700 4050 60  0001 C CNN "MFN"
F 5 "LTC2057IMS" H 5700 4050 60  0001 C CNN "MFP"
	1    5700 4050
	1    0    0    -1  
$EndComp
Text HLabel 4150 2650 1    60   UnSpc ~ 0
V_zener+
$Comp
L R R2
U 1 1 591A53AB
P 6450 5100
F 0 "R2" H 6520 5146 50  0000 L CNN
F 1 "9K" H 6520 5055 50  0000 L CNN
F 2 "Custom_footprints:Vishay_S102" V 6380 5100 50  0001 C CNN
F 3 "" H 6450 5100 50  0001 C CNN
F 4 "Vishay" H 6450 5100 60  0001 C CNN "MFN"
F 5 "Y00629K00000T9L" H 6450 5100 60  0001 C CNN "MFP"
	1    6450 5100
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 591A53B4
P 6450 5500
F 0 "R3" H 6520 5546 50  0000 L CNN
F 1 "20K" H 6520 5455 50  0000 L CNN
F 2 "Custom_footprints:Vishay_S102" V 6380 5500 50  0001 C CNN
F 3 "" H 6450 5500 50  0001 C CNN
F 4 "Vishay" H 6450 5500 60  0001 C CNN "MFN"
F 5 "Y006220K0000T9L" H 6450 5500 60  0001 C CNN "MFP"
	1    6450 5500
	1    0    0    -1  
$EndComp
Text HLabel 6450 5800 3    60   UnSpc ~ 0
V_zener+
Text Notes 6900 5750 0    60   ~ 0
Use precision resistors\nwith an extremly low TCR\nor a network with very good\nTracking TCR.
$Comp
L R R1
U 1 1 591A53BD
P 5700 2800
F 0 "R1" V 5493 2800 50  0000 C CNN
F 1 "3K" V 5584 2800 50  0000 C CNN
F 2 "Custom_footprints:Vishay_S102" V 5630 2800 50  0001 C CNN
F 3 "" H 5700 2800 50  0001 C CNN
F 4 "Vishay" H 5700 2800 60  0001 C CNN "MFN"
F 5 "Y006220K0000A0L" H 5700 2800 60  0001 C CNN "MFP"
F 6 "TCR <= 5ppm, absolute precision unimportant" V 5700 2800 60  0001 C CNN "Note"
	1    5700 2800
	0    1    1    0   
$EndComp
Text Notes 5000 1950 0    60   ~ 0
This resistor will supply the zener current.\nIt does not need to be exactely 3k, but a\nzener current of 1 mA or slightly above is\nrecommended.\nThis resistor needs to be matched if the\namplification is changed. Currently\nI_Zener = (10 V - 6.95 V) / 3k
Text Notes 2750 3250 0    60   ~ 0
The LM399 has a\nTCR of 0.3 ppm/K
Text Notes 5000 2500 0    60   ~ 0
The output drift with the zener current\nis about 5 x 10^-3 ppm / ppm.\nIn order to meet the LM399 specs make sure the resistor\nhas a maximum TCR of 5 ppm / K (results in 0.03 ppm / K).
Text HLabel 5600 3100 1    60   UnSpc ~ 0
V+
Text HLabel 5600 5050 3    60   UnSpc ~ 0
V-
Text HLabel 7150 4050 2    60   Output ~ 0
V_zener-
$Comp
L C C1
U 1 1 591A53CC
P 6800 5050
F 0 "C1" H 6915 5096 50  0000 L CNN
F 1 "10n" H 6915 5005 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6838 4900 50  0001 C CNN
F 3 "" H 6800 5050 50  0001 C CNN
F 4 "Cornell Dubilier" H 6800 5050 60  0001 C CNN "MFN"
F 5 "FCP1206H103J-H2" H 6800 5050 60  0001 C CNN "MFP"
	1    6800 5050
	1    0    0    -1  
$EndComp
Text Notes 1850 4000 0    60   ~ 0
TODO:\n- use 4 drill holes to mount styrofoam
Wire Wire Line
	3850 2850 3850 2650
Wire Wire Line
	3850 3950 3850 3750
Wire Wire Line
	4150 2650 4150 2850
Wire Wire Line
	6450 5800 6450 5650
Wire Wire Line
	6450 5250 6450 5350
Wire Wire Line
	6450 2800 6450 4950
Wire Wire Line
	6000 4050 7150 4050
Wire Wire Line
	5250 5300 6800 5300
Wire Wire Line
	5250 3650 5250 5300
Wire Wire Line
	5250 4150 5400 4150
Connection ~ 6450 5300
Wire Wire Line
	4150 3950 5400 3950
Wire Wire Line
	5550 2800 4850 2800
Wire Wire Line
	4850 2800 4850 3950
Connection ~ 4850 3950
Wire Wire Line
	5850 2800 6450 2800
Connection ~ 6450 4050
Wire Wire Line
	5600 4350 5600 5050
Wire Wire Line
	5600 3100 5600 3750
Wire Wire Line
	6450 4800 6800 4800
Wire Wire Line
	6800 4800 6800 4900
Connection ~ 6450 4800
Wire Wire Line
	6800 5300 6800 5200
Text Notes 7200 4950 0    60   ~ 0
Use a Film capacitor with a high insulation\nresistance (no polyester), which is stable\nover temperature (PP, PPS)
Wire Notes Line
	4100 3750 4200 3750
Wire Notes Line
	4200 3750 4200 3900
Wire Notes Line
	5400 3900 5400 4000
Wire Notes Line
	5400 4000 4100 4000
Wire Notes Line
	4100 4000 4100 3750
Wire Notes Line
	5400 3900 4900 3900
Wire Notes Line
	4900 3900 4900 2850
Wire Notes Line
	4900 2850 5550 2850
Wire Notes Line
	5550 2850 5550 2750
Wire Notes Line
	5550 2750 4800 2750
Wire Notes Line
	4800 2750 4800 3900
Wire Notes Line
	4800 3900 4200 3900
Wire Notes Line
	5050 4000 5050 4150
Wire Notes Line
	5050 4150 5250 4150
Text Notes 4500 4100 0    60   ~ 0
Guard ring
Wire Wire Line
	5800 3850 5800 3650
Wire Wire Line
	5800 3650 5250 3650
Connection ~ 5250 4150
$Comp
L C C2
U 1 1 591A5401
P 6000 3450
F 0 "C2" H 6115 3496 50  0000 L CNN
F 1 "100n" H 6115 3405 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6038 3300 50  0001 C CNN
F 3 "" H 6000 3450 50  0001 C CNN
F 4 "Cornell Dubilier" H 6000 3450 60  0001 C CNN "MFN"
F 5 "FCA0805C104M-J2" H 6000 3450 60  0001 C CNN "MFP"
	1    6000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3200 6000 3200
Wire Wire Line
	6000 3200 6000 3300
Connection ~ 5600 3200
$Comp
L GND #PWR05
U 1 1 591A540B
P 6000 3700
F 0 "#PWR05" H 6000 3450 50  0001 C CNN
F 1 "GND" H 6005 3527 50  0000 C CNN
F 2 "" H 6000 3700 50  0001 C CNN
F 3 "" H 6000 3700 50  0001 C CNN
	1    6000 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3600 6000 3700
Wire Wire Line
	6000 4500 6000 4600
Wire Wire Line
	6000 4900 6000 5000
Wire Wire Line
	6000 4500 5600 4500
Connection ~ 5600 4500
$Comp
L GND #PWR06
U 1 1 591A5416
P 6000 5000
F 0 "#PWR06" H 6000 4750 50  0001 C CNN
F 1 "GND" H 6005 4827 50  0000 C CNN
F 2 "" H 6000 5000 50  0001 C CNN
F 3 "" H 6000 5000 50  0001 C CNN
	1    6000 5000
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 591A541E
P 6000 4750
F 0 "C3" H 6115 4796 50  0000 L CNN
F 1 "100n" H 6115 4705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6038 4600 50  0001 C CNN
F 3 "" H 6000 4750 50  0001 C CNN
F 4 "Cornell Dubilier" H 6000 4750 60  0001 C CNN "MFN"
F 5 "FCA0805C104M-J2" H 6000 4750 60  0001 C CNN "MFP"
	1    6000 4750
	1    0    0    -1  
$EndComp
Text Notes 6800 3350 0    60   ~ 0
e.g. PCF0805-13-7K5-B-T1 (5 ppm),\nTE Connectivity RU73X2A7K5LTDF (2 ppm),\nVishay S102 (2 ppm),\nor Vishay VSMP (0.05 ppm)\n\nPCF0805-13-3K-B-T1. (5 ppm),\nVishay S102 (2 ppm),\nor Vishay VSMP (0.05 ppm)
Text Notes 7300 5150 0    60   ~ 0
DON'T use AVX! They will melt at the spec'ed temperature
Text Notes 4200 6050 0    60   ~ 0
Kelvin connect this to the V_zener+ input pin
Text Notes 3150 1400 0    60   ~ 0
Use 1 oz./sqft of copper to\nminimize trace resistance and\ntherefore minimize succeptibility\nto temperature.
Text Notes 3200 2000 0    60   ~ 0
Trace resistance of 0.32 Ohm\n(100mm, 4000 ppm / K) causes\na 1.5 µV / K error.
NoConn ~ 5700 3800
NoConn ~ 5800 4250
NoConn ~ 5700 4300
Wire Wire Line
	4150 3750 4150 3950
Text Notes 1600 5250 0    60   ~ 0
Output voltage Table:\nVoltage | R1    | R2  | R3\n------------------\n10 V    | 3k    | 9k  | 20k\n15 V    | 7.89k | 20k | 17k
$EndSCHEMATC
