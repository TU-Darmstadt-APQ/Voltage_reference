EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "LM399 negative voltage reference"
Date "2019-11-20"
Rev "v3.2.0"
Comp ""
Comment1 "Copyright (©) 2020, Patrick Baus <patrick.baus@physik.tu-darmstadt.de>"
Comment2 "Licensed under CERN OHL v.1.2"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Reference_Voltage:LM399 U2
U 1 1 591A5398
P 3550 3050
AR Path="/591A5398" Ref="U2"  Part="1" 
AR Path="/591A50E3/591A5398" Ref="U2"  Part="1" 
F 0 "U2" H 3750 3100 60  0000 L CNN
F 1 "LM399" H 3750 3000 60  0000 L CNN
F 2 "Custom_footprints:TO-46-4_ThermalShield" H 3550 3000 60  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/199399fc.pdf" H 3550 3000 60  0001 C CNN
F 4 "Analog Devices" H 3550 3050 60  0001 C CNN "MFN"
F 5 "LM399AH" H 3550 3050 50  0001 C CNN "PN"
F 6 "Use a TE 8060-1G12 socket to mount diodes for burn-in" H 3550 3050 50  0001 C CNN "Note"
F 7 "-PCBA" H 3550 3050 50  0001 C CNN "Config"
	1    3550 3050
	1    0    0    -1  
$EndComp
Text HLabel 3450 2400 1    60   UnSpc ~ 0
V-heater+
Text HLabel 3450 3450 3    60   UnSpc ~ 0
V_heater-
Text HLabel 4300 4550 1    60   UnSpc ~ 0
V_zener+_force
$Comp
L Device:R R1
U 1 1 591A53BD
P 5950 2350
F 0 "R1" V 5743 2350 50  0000 C CNN
F 1 "7.5K" V 5834 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5880 2350 50  0001 C CNN
F 3 "" H 5950 2350 50  0001 C CNN
F 4 "Welwyn" H 5950 2350 60  0001 C CNN "MFN"
F 5 "PCF0805-13-7K5-B-T1" H 5950 2350 50  0001 C CNN "PN"
F 6 "Panasonic ERA-6ARB752V" V 5950 2350 50  0001 C CNN "Alternative"
	1    5950 2350
	0    1    1    0   
$EndComp
Text HLabel 5850 2650 1    60   UnSpc ~ 0
V+
Text HLabel 5850 4600 3    60   UnSpc ~ 0
V-
Text HLabel 7600 3600 2    60   Output ~ 0
V_zener-
$Comp
L Device:C C3
U 1 1 591A53CC
P 6600 4600
F 0 "C3" H 6715 4646 50  0000 L CNN
F 1 "100n" H 6715 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6638 4450 50  0001 C CNN
F 3 "" H 6600 4600 50  0001 C CNN
F 4 "Murata" H 6600 4600 60  0001 C CNN "MFN"
F 5 "GRM31C5C1H104JA01L" H 6600 4600 50  0001 C CNN "PN"
	1    6600 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 591A5401
P 6250 3000
F 0 "C1" H 6365 3046 50  0000 L CNN
F 1 "100n" H 6365 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6288 2850 50  0001 C CNN
F 3 "" H 6250 3000 50  0001 C CNN
F 4 "Murata" H 6250 3000 60  0001 C CNN "MFN"
F 5 "GRM31C5C1H104JA01L" H 6250 3000 50  0001 C CNN "PN"
	1    6250 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 591A540B
P 6250 3250
F 0 "#PWR02" H 6250 3000 50  0001 C CNN
F 1 "GND" H 6255 3077 50  0000 C CNN
F 2 "" H 6250 3250 50  0001 C CNN
F 3 "" H 6250 3250 50  0001 C CNN
	1    6250 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 591A5416
P 6250 4550
F 0 "#PWR03" H 6250 4300 50  0001 C CNN
F 1 "GND" H 6255 4377 50  0000 C CNN
F 2 "" H 6250 4550 50  0001 C CNN
F 3 "" H 6250 4550 50  0001 C CNN
	1    6250 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 591A541E
P 6250 4300
F 0 "C2" H 6365 4346 50  0000 L CNN
F 1 "100n" H 6365 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6288 4150 50  0001 C CNN
F 3 "" H 6250 4300 50  0001 C CNN
F 4 "Murata" H 6250 4300 60  0001 C CNN "MFN"
F 5 "GRM31C5C1H104JA01L" H 6250 4300 50  0001 C CNN "PN"
	1    6250 4300
	1    0    0    -1  
$EndComp
NoConn ~ 6050 3900
NoConn ~ 5950 3900
Text HLabel 4600 4550 1    60   Output ~ 0
V_zener+_sense
$Comp
L Device:Net-Tie_2 NT1
U 1 1 5976DF85
P 4600 4700
F 0 "NT1" V 4554 4788 50  0000 L CNN
F 1 "NET-TIE" V 4645 4788 50  0000 L CNN
F 2 "Custom_footprints:NET-TIE-0.15mm" H 4600 4600 50  0001 C CNN
F 3 "" H 4600 4700 60  0000 C CNN
	1    4600 4700
	0    1    1    0   
$EndComp
$Comp
L Device:Net-Tie_2 NT3
U 1 1 5976E542
P 6950 5450
F 0 "NT3" V 6904 5538 50  0000 L CNN
F 1 "NET-TIE" V 6995 5538 50  0000 L CNN
F 2 "Custom_footprints:NET-TIE-0.25mm" H 6950 5350 50  0001 C CNN
F 3 "" H 6950 5450 60  0000 C CNN
	1    6950 5450
	0    1    1    0   
$EndComp
Text Label 4300 5000 3    60   ~ 0
V_zener+
Text Label 6950 5650 3    60   ~ 0
V_zener+
Text Label 3650 2750 1    60   ~ 0
V_zener+
$Comp
L Device:Net-Tie_2 NT2
U 1 1 5976EB13
P 5100 3050
F 0 "NT2" V 5054 3138 50  0000 L CNN
F 1 "NET-TIE" V 5145 3138 50  0000 L CNN
F 2 "Custom_footprints:NET-TIE-0.25mm" H 5100 2950 50  0001 C CNN
F 3 "" H 5100 3050 60  0000 C CNN
	1    5100 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 2850 3450 2400
Wire Wire Line
	3450 3450 3450 3250
Wire Wire Line
	4300 4550 4300 5000
Wire Wire Line
	6250 3600 6950 3600
Wire Wire Line
	5500 3700 5650 3700
Wire Wire Line
	3650 3500 5650 3500
Wire Wire Line
	6100 2350 6950 2350
Connection ~ 6950 3600
Wire Wire Line
	5850 3900 5850 4050
Wire Wire Line
	5850 2650 5850 2750
Wire Wire Line
	5850 2750 6250 2750
Wire Wire Line
	6250 2750 6250 2850
Connection ~ 5850 2750
Wire Wire Line
	6250 3150 6250 3250
Wire Wire Line
	6250 4050 6250 4150
Wire Wire Line
	6250 4450 6250 4550
Wire Wire Line
	6250 4050 5850 4050
Connection ~ 5850 4050
Wire Wire Line
	3650 3250 3650 3350
Wire Wire Line
	4300 5000 4600 4800
Wire Wire Line
	4600 4600 4600 4550
Wire Wire Line
	6950 5550 6950 5650
Wire Wire Line
	3650 2750 3650 2850
Wire Wire Line
	5100 2350 5100 2950
Wire Wire Line
	5100 3150 5100 3350
Wire Wire Line
	5100 3350 3650 3350
Connection ~ 3650 3350
Wire Wire Line
	6950 4350 6600 4350
Wire Wire Line
	6600 4350 6600 4450
Wire Wire Line
	6600 4900 6600 4750
Connection ~ 6600 4900
$Comp
L Device:Voltage_Divider RN1
U 1 1 5A502407
P 6950 4900
F 0 "RN1" H 6871 4854 50  0000 R CNN
F 1 "17k/20k" H 6871 4945 50  0000 R CNN
F 2 "Custom_footprints:Vishay_300144" V 7425 4900 50  0001 C CNN
F 3 "http://www.vishaypg.com/docs/63115/144Z145Z.pdf" H 7150 4900 50  0001 C CNN
F 4 "Vishay" H 6950 4900 60  0001 C CNN "MFN"
F 5 "Y1691V0689BB9L" H 6950 4900 50  0001 C CNN "PN"
F 6 "Vishay 300144Z, 0.1% abs. tol. 0.1% ratio tol." H 6950 4900 50  0001 C CNN "Note"
F 7 "-PCBA" H 6950 4900 50  0001 C CNN "Config"
	1    6950 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 4900 6600 4900
Wire Wire Line
	6950 5350 6950 5150
Wire Wire Line
	5500 3700 5500 4900
Wire Wire Line
	5100 2350 5800 2350
Wire Wire Line
	6950 3600 7600 3600
Wire Wire Line
	6950 4350 6950 4650
Wire Wire Line
	5850 2750 5850 3300
Wire Wire Line
	5850 4050 5850 4600
Wire Wire Line
	3650 3350 3650 3500
Wire Wire Line
	6600 4900 6800 4900
$Comp
L Amplifier_Operational:LT1363 U3
U 1 1 5BB4F780
P 5950 3600
AR Path="/5BB4F780" Ref="U3"  Part="1" 
AR Path="/591A50E3/5BB4F780" Ref="U3"  Part="1" 
F 0 "U3" H 6300 3650 50  0000 L CNN
F 1 "LT1001" H 6300 3550 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6000 3650 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/1001fb.pdf" H 6000 3750 50  0001 C CNN
F 4 "Analog Devices" H 5950 3600 50  0001 C CNN "MFN"
F 5 "LT1001CS8" H 5950 3600 50  0001 C CNN "PN"
F 6 "TI OPA277U" H 5950 3600 50  0001 C CNN "Alternative"
	1    5950 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2350 6950 3000
Wire Wire Line
	6950 3200 6950 3600
Wire Wire Line
	6950 3600 6950 3800
Wire Wire Line
	6950 4000 6950 4350
Connection ~ 6950 4350
$Comp
L Device:Net-Tie_2 NT4
U 1 1 5BB5735D
P 6950 3100
F 0 "NT4" V 6904 3188 50  0000 L CNN
F 1 "NET-TIE" V 6995 3188 50  0000 L CNN
F 2 "Custom_footprints:NET-TIE-0.25mm" H 6950 3000 50  0001 C CNN
F 3 "" H 6950 3100 60  0000 C CNN
	1    6950 3100
	0    1    1    0   
$EndComp
$Comp
L Device:Net-Tie_2 NT5
U 1 1 5BB58169
P 6950 3900
F 0 "NT5" V 6904 3988 50  0000 L CNN
F 1 "NET-TIE" V 6995 3988 50  0000 L CNN
F 2 "Custom_footprints:NET-TIE-0.25mm" H 6950 3800 50  0001 C CNN
F 3 "" H 6950 3900 60  0000 C CNN
	1    6950 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DD6028A
P 4350 2750
F 0 "#PWR0103" H 4350 2500 50  0001 C CNN
F 1 "GND" H 4355 2577 50  0000 C CNN
F 2 "" H 4350 2750 50  0001 C CNN
F 3 "" H 4350 2750 50  0001 C CNN
	1    4350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2750 4350 2700
$Comp
L Device:R R3
U 1 1 5DD610DD
P 4350 2150
F 0 "R3" H 4450 2200 50  0000 L CNN
F 1 "10k" H 4450 2100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4280 2150 50  0001 C CNN
F 3 "~" H 4350 2150 50  0001 C CNN
F 4 "Susumu" H 4350 2150 50  0001 C CNN "MFN"
F 5 "RR0816P-103-D" H 4350 2150 50  0001 C CNN "PN"
	1    4350 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DD614F5
P 4350 2550
F 0 "R2" H 4450 2600 50  0000 L CNN
F 1 "30k" H 4450 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4280 2550 50  0001 C CNN
F 3 "~" H 4350 2550 50  0001 C CNN
F 4 "Susumu" H 4350 2550 50  0001 C CNN "MFN"
F 5 "RR0816P-303-D" H 4350 2550 50  0001 C CNN "PN"
	1    4350 2550
	1    0    0    -1  
$EndComp
Text HLabel 4350 1900 1    60   UnSpc ~ 0
V_zener+_force
Wire Wire Line
	4350 1900 4350 2000
Wire Wire Line
	4350 2300 4350 2350
$Comp
L Device:D D1
U 1 1 5DD64006
P 4900 2350
F 0 "D1" H 4900 2600 50  0000 C CNN
F 1 "BAS116" H 4900 2500 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 4900 2350 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAS116GW.pdf" H 4900 2350 50  0001 C CNN
F 4 "Nexperia" H 4900 2350 50  0001 C CNN "MFN"
F 5 "Use a plastic package to eliminate light sensitivity" H 4900 2350 50  0001 C CNN "Note"
F 6 "BAS116GWJ" H 4900 2350 50  0001 C CNN "PN"
	1    4900 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2350 5050 2350
Connection ~ 5100 2350
Wire Wire Line
	4750 2350 4350 2350
Connection ~ 4350 2350
Wire Wire Line
	4350 2350 4350 2400
Wire Notes Line
	4050 1050 5000 1050
Wire Notes Line
	5000 1050 5000 3050
Wire Notes Line
	5000 3050 4050 3050
Wire Notes Line
	4050 3050 4050 1050
Text Notes 5100 1700 0    60   ~ 0
Startup circuit:\nDoes not cause zener shift\nwith different V_zener+
Wire Notes Line
	4650 2300 4650 1900
Wire Notes Line
	4650 1900 5200 1900
Wire Notes Line
	4650 2300 4700 2250
Wire Notes Line
	4650 2300 4600 2250
Text Notes 5250 1950 0    60   ~ 0
Voltage here should be a few Volts above (Vreg-7V)
$EndSCHEMATC
