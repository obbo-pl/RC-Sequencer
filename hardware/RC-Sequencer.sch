EESchema Schematic File Version 4
LIBS:RC-Sequencer-cache
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "RC-Sequencer"
Date "2019-03-30"
Rev ""
Comp "obbo.pl"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR02
U 1 1 5CA79609
P 3600 3650
F 0 "#PWR02" H 3600 3500 50  0001 C CNN
F 1 "+5V" H 3615 3823 50  0000 C CNN
F 2 "" H 3600 3650 50  0001 C CNN
F 3 "" H 3600 3650 50  0001 C CNN
	1    3600 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5CA7B317
P 4600 3450
F 0 "R1" H 4670 3496 50  0000 L CNN
F 1 "330" H 4670 3405 50  0000 L CNN
F 2 "obbo_footprints:R_0805K" V 4530 3450 50  0001 C CNN
F 3 "~" H 4600 3450 50  0001 C CNN
	1    4600 3450
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5CA7C026
P 3950 3550
F 0 "J1" H 3870 3225 50  0000 C CNN
F 1 "CH3" H 3870 3316 50  0000 C CNN
F 2 "obbo_footprints:PinHeader_1x03_P2.54mm_Horizontal_PAD_noPinSilk" H 3950 3550 50  0001 C CNN
F 3 "~" H 3950 3550 50  0001 C CNN
	1    3950 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 3850 4400 3650
Wire Wire Line
	4150 3650 4400 3650
$Comp
L power:+5V #PWR01
U 1 1 5CA7DC39
P 4400 3200
F 0 "#PWR01" H 4400 3050 50  0001 C CNN
F 1 "+5V" H 4415 3373 50  0000 C CNN
F 2 "" H 4400 3200 50  0001 C CNN
F 3 "" H 4400 3200 50  0001 C CNN
	1    4400 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5CAB390A
P 8550 7650
F 0 "#PWR010" H 8550 7400 50  0001 C CNN
F 1 "GND" H 8555 7477 50  0000 C CNN
F 2 "" H 8550 7650 50  0001 C CNN
F 3 "" H 8550 7650 50  0001 C CNN
	1    8550 7650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5CAB3910
P 8200 7450
F 0 "R3" H 8270 7496 50  0000 L CNN
F 1 "10k" H 8270 7405 50  0000 L CNN
F 2 "obbo_footprints:R_0805K" V 8130 7450 50  0001 C CNN
F 3 "~" H 8200 7450 50  0001 C CNN
	1    8200 7450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5CAB3917
P 8200 7650
F 0 "#PWR09" H 8200 7400 50  0001 C CNN
F 1 "GND" H 8205 7477 50  0000 C CNN
F 2 "" H 8200 7650 50  0001 C CNN
F 3 "" H 8200 7650 50  0001 C CNN
	1    8200 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 7650 8200 7600
Wire Wire Line
	8550 7300 8550 7650
Text GLabel 8200 7000 0    50   Input ~ 0
OUT1
$Comp
L power:GND #PWR012
U 1 1 5CAB92AB
P 9600 7650
F 0 "#PWR012" H 9600 7400 50  0001 C CNN
F 1 "GND" H 9605 7477 50  0000 C CNN
F 2 "" H 9600 7650 50  0001 C CNN
F 3 "" H 9600 7650 50  0001 C CNN
	1    9600 7650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5CAB92B1
P 9250 7450
F 0 "R4" H 9320 7496 50  0000 L CNN
F 1 "10k" H 9320 7405 50  0000 L CNN
F 2 "obbo_footprints:R_0805K" V 9180 7450 50  0001 C CNN
F 3 "~" H 9250 7450 50  0001 C CNN
	1    9250 7450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5CAB92B8
P 9250 7650
F 0 "#PWR011" H 9250 7400 50  0001 C CNN
F 1 "GND" H 9255 7477 50  0000 C CNN
F 2 "" H 9250 7650 50  0001 C CNN
F 3 "" H 9250 7650 50  0001 C CNN
	1    9250 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 7650 9250 7600
Wire Wire Line
	9600 7300 9600 7650
Wire Wire Line
	9600 6800 9600 6900
Text GLabel 9250 7000 0    50   Input ~ 0
OUT2
$Comp
L power:GND #PWR014
U 1 1 5CAB92D4
P 10650 7650
F 0 "#PWR014" H 10650 7400 50  0001 C CNN
F 1 "GND" H 10655 7477 50  0000 C CNN
F 2 "" H 10650 7650 50  0001 C CNN
F 3 "" H 10650 7650 50  0001 C CNN
	1    10650 7650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5CAB92DA
P 10300 7450
F 0 "R5" H 10370 7496 50  0000 L CNN
F 1 "10k" H 10370 7405 50  0000 L CNN
F 2 "obbo_footprints:R_0805K" V 10230 7450 50  0001 C CNN
F 3 "~" H 10300 7450 50  0001 C CNN
	1    10300 7450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5CAB92E1
P 10300 7650
F 0 "#PWR013" H 10300 7400 50  0001 C CNN
F 1 "GND" H 10305 7477 50  0000 C CNN
F 2 "" H 10300 7650 50  0001 C CNN
F 3 "" H 10300 7650 50  0001 C CNN
	1    10300 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 7650 10300 7600
Wire Wire Line
	10650 7300 10650 7650
Wire Wire Line
	10650 6800 10650 6900
Text GLabel 10300 7000 0    50   Input ~ 0
OUT3
$Comp
L power:GND #PWR016
U 1 1 5CAB92FD
P 11700 7650
F 0 "#PWR016" H 11700 7400 50  0001 C CNN
F 1 "GND" H 11705 7477 50  0000 C CNN
F 2 "" H 11700 7650 50  0001 C CNN
F 3 "" H 11700 7650 50  0001 C CNN
	1    11700 7650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5CAB9303
P 11350 7450
F 0 "R6" H 11420 7496 50  0000 L CNN
F 1 "10k" H 11420 7405 50  0000 L CNN
F 2 "obbo_footprints:R_0805K" V 11280 7450 50  0001 C CNN
F 3 "~" H 11350 7450 50  0001 C CNN
	1    11350 7450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5CAB930A
P 11350 7650
F 0 "#PWR015" H 11350 7400 50  0001 C CNN
F 1 "GND" H 11355 7477 50  0000 C CNN
F 2 "" H 11350 7650 50  0001 C CNN
F 3 "" H 11350 7650 50  0001 C CNN
	1    11350 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 7650 11350 7600
Wire Wire Line
	11700 7300 11700 7650
Text GLabel 11350 7000 0    50   Input ~ 0
OUT4
Text GLabel 4500 4800 2    50   Input ~ 0
OUT1
Text GLabel 4500 4900 2    50   Input ~ 0
OUT2
Text GLabel 4500 5000 2    50   Input ~ 0
OUT3
$Comp
L Device:C C1
U 1 1 5C9FC303
P 3850 4150
F 0 "C1" H 3965 4196 50  0000 L CNN
F 1 "100n" H 3965 4105 50  0000 L CNN
F 2 "obbo_footprints:C_0805K" H 3888 4000 50  0001 C CNN
F 3 "~" H 3850 4150 50  0001 C CNN
	1    3850 4150
	1    0    0    -1  
$EndComp
Text GLabel 4500 5100 2    50   Input ~ 0
OUT4
Wire Wire Line
	4200 4800 4500 4800
Wire Wire Line
	4200 4900 4500 4900
Wire Wire Line
	4200 5000 4500 5000
Wire Wire Line
	4200 5100 4500 5100
Wire Wire Line
	3850 4300 3850 4350
Wire Wire Line
	3850 4000 3850 3950
Wire Wire Line
	3850 3950 3600 3950
Connection ~ 3600 3950
Wire Wire Line
	3600 3950 3600 4500
Wire Wire Line
	3600 3650 3600 3950
Wire Wire Line
	3600 6300 3600 6400
Wire Wire Line
	5500 6500 5500 6400
Wire Wire Line
	5500 5550 5500 5600
$Comp
L power:+5V #PWR06
U 1 1 5C9FC360
P 5500 5550
F 0 "#PWR06" H 5500 5400 50  0001 C CNN
F 1 "+5V" H 5515 5723 50  0000 C CNN
F 2 "" H 5500 5550 50  0001 C CNN
F 3 "" H 5500 5550 50  0001 C CNN
	1    5500 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5C9FC2A7
P 5500 6250
F 0 "C2" H 5615 6296 50  0000 L CNN
F 1 "100n" H 5615 6205 50  0000 L CNN
F 2 "obbo_footprints:C_0805K" H 5538 6100 50  0001 C CNN
F 3 "~" H 5500 6250 50  0001 C CNN
	1    5500 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C9FC1C0
P 5500 5750
F 0 "R2" H 5570 5796 50  0000 L CNN
F 1 "10k" H 5570 5705 50  0000 L CNN
F 2 "obbo_footprints:R_0805K" V 5430 5750 50  0001 C CNN
F 3 "~" H 5500 5750 50  0001 C CNN
	1    5500 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5900 5500 6000
Wire Wire Line
	5850 6000 5500 6000
Connection ~ 5500 6000
Wire Wire Line
	5500 6000 5500 6100
Wire Wire Line
	4750 3450 4850 3450
$Comp
L power:GNDD #PWR08
U 1 1 5D69717A
P 5500 6500
F 0 "#PWR08" H 5500 6250 50  0001 C CNN
F 1 "GNDD" H 5504 6345 50  0000 C CNN
F 2 "" H 5500 6500 50  0001 C CNN
F 3 "" H 5500 6500 50  0001 C CNN
	1    5500 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR017
U 1 1 5D69779D
P 5150 7650
F 0 "#PWR017" H 5150 7400 50  0001 C CNN
F 1 "GNDD" H 5154 7495 50  0000 C CNN
F 2 "" H 5150 7650 50  0001 C CNN
F 3 "" H 5150 7650 50  0001 C CNN
	1    5150 7650
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR07
U 1 1 5D697A71
P 3600 6400
F 0 "#PWR07" H 3600 6150 50  0001 C CNN
F 1 "GNDD" H 3604 6245 50  0000 C CNN
F 2 "" H 3600 6400 50  0001 C CNN
F 3 "" H 3600 6400 50  0001 C CNN
	1    3600 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR05
U 1 1 5D697DED
P 3850 4350
F 0 "#PWR05" H 3850 4100 50  0001 C CNN
F 1 "GNDD" H 3854 4195 50  0000 C CNN
F 2 "" H 3850 4350 50  0001 C CNN
F 3 "" H 3850 4350 50  0001 C CNN
	1    3850 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR03
U 1 1 5D6988B4
P 4400 3850
F 0 "#PWR03" H 4400 3600 50  0001 C CNN
F 1 "GNDD" H 4404 3695 50  0000 C CNN
F 2 "" H 4400 3850 50  0001 C CNN
F 3 "" H 4400 3850 50  0001 C CNN
	1    4400 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 6650 8550 6900
Wire Wire Line
	11700 6650 11700 6900
Wire Wire Line
	10150 5900 10150 5650
Wire Wire Line
	9950 5900 9950 5650
Wire Wire Line
	10150 5650 10050 5650
Connection ~ 9950 5650
Wire Wire Line
	9950 5650 9750 5650
Wire Wire Line
	9750 5900 9750 5650
Wire Wire Line
	5150 7650 5150 7600
Wire Wire Line
	4950 7400 4950 7600
Wire Wire Line
	4950 7600 5050 7600
Connection ~ 5150 7600
Wire Wire Line
	5150 7600 5150 7400
Wire Wire Line
	5050 7400 5050 7600
Connection ~ 5050 7600
Wire Wire Line
	5050 7600 5150 7600
$Comp
L MCU_Microchip_ATtiny:ATtiny44-20SSU U1
U 1 1 5D714F98
P 3600 5400
F 0 "U1" H 3071 5446 50  0000 R CNN
F 1 "ATtiny44-20SSU" H 3071 5355 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3600 5400 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8006.pdf" H 3600 5400 50  0001 C CNN
	1    3600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5200 4950 5200
Wire Wire Line
	4850 5700 4200 5700
Wire Wire Line
	4200 5400 5150 5400
Wire Wire Line
	4200 5300 5050 5300
Wire Wire Line
	5050 5300 5050 6900
Wire Wire Line
	5150 5400 5150 6900
Wire Wire Line
	4950 5200 4950 6900
Wire Wire Line
	8200 7000 8200 7100
Wire Wire Line
	8250 7100 8200 7100
Connection ~ 8200 7100
Wire Wire Line
	8200 7100 8200 7300
Wire Wire Line
	9250 7000 9250 7100
Wire Wire Line
	9300 7100 9250 7100
Connection ~ 9250 7100
Wire Wire Line
	9250 7100 9250 7300
Wire Wire Line
	10300 7000 10300 7100
Wire Wire Line
	10350 7100 10300 7100
Connection ~ 10300 7100
Wire Wire Line
	10300 7100 10300 7300
Wire Wire Line
	11350 7000 11350 7100
Wire Wire Line
	11400 7100 11350 7100
Connection ~ 11350 7100
Wire Wire Line
	11350 7100 11350 7300
Text Label 4250 5200 0    50   ~ 0
SCK
Text Label 4250 5300 0    50   ~ 0
MISO
Text Label 4250 5400 0    50   ~ 0
MOSI
Wire Wire Line
	4200 6000 5500 6000
Text Label 4250 6000 0    50   ~ 0
RESET
Wire Wire Line
	4850 3450 4850 5700
Wire Wire Line
	4400 3550 4150 3550
Wire Wire Line
	4400 3200 4400 3550
Wire Wire Line
	4450 3450 4150 3450
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 5D8C766B
P 9950 6200
F 0 "J2" V 10046 5912 50  0000 R CNN
F 1 "Conn_02x05_Odd_Even" V 9955 5912 50  0000 R CNN
F 2 "obbo-footprints-experimental:PinHead_2x05_P2.54mm_SMD_Horizontal_Edge" H 9950 6200 50  0001 C CNN
F 3 "~" H 9950 6200 50  0001 C CNN
	1    9950 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9750 6650 9750 6400
Wire Wire Line
	8550 6650 9750 6650
Wire Wire Line
	9950 6800 9950 6400
Wire Wire Line
	9600 6800 9950 6800
Wire Wire Line
	10050 6800 10050 6400
Wire Wire Line
	10050 6800 10650 6800
Wire Wire Line
	10150 6650 10150 6400
Wire Wire Line
	10150 6650 11700 6650
Wire Wire Line
	10050 5900 10050 5650
Connection ~ 10050 5650
Wire Wire Line
	10050 5650 9950 5650
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J3
U 1 1 5D920B94
P 5050 7100
F 0 "J3" V 5054 7280 50  0000 L CNN
F 1 "Conn_02x04_Odd_Even" V 5145 7280 50  0000 L CNN
F 2 "obbo-footprints-experimental:PinHead_2x04_P2.54mm_SMD_Horizontal_Edge" H 5050 7100 50  0001 C CNN
F 3 "~" H 5050 7100 50  0001 C CNN
	1    5050 7100
	0    -1   1    0   
$EndComp
Wire Wire Line
	5850 6000 5850 6850
Wire Wire Line
	5850 6850 5250 6850
Wire Wire Line
	5250 6850 5250 6900
$Comp
L obbo_Transistors:AO3400 Q4
U 1 1 5DE71A2A
P 11700 7100
F 0 "Q4" H 11806 7153 60  0000 L CNN
F 1 "AO3400" H 11806 7047 60  0000 L CNN
F 2 "obbo_footprints:SOT-23_HandSoldering" H 11800 7350 60  0001 L CIN
F 3 "http://aosmd.com/res/data_sheets/AO3400.pdf" H 11800 7400 60  0001 L CNN
	1    11700 7100
	1    0    0    -1  
$EndComp
$Comp
L obbo_Transistors:AO3400 Q3
U 1 1 5DE76863
P 10650 7100
F 0 "Q3" H 10756 7153 60  0000 L CNN
F 1 "AO3400" H 10756 7047 60  0000 L CNN
F 2 "obbo_footprints:SOT-23_HandSoldering" H 10750 7350 60  0001 L CIN
F 3 "http://aosmd.com/res/data_sheets/AO3400.pdf" H 10750 7400 60  0001 L CNN
	1    10650 7100
	1    0    0    -1  
$EndComp
$Comp
L obbo_Transistors:AO3400 Q2
U 1 1 5DE7742A
P 9600 7100
F 0 "Q2" H 9706 7153 60  0000 L CNN
F 1 "AO3400" H 9706 7047 60  0000 L CNN
F 2 "obbo_footprints:SOT-23_HandSoldering" H 9700 7350 60  0001 L CIN
F 3 "http://aosmd.com/res/data_sheets/AO3400.pdf" H 9700 7400 60  0001 L CNN
	1    9600 7100
	1    0    0    -1  
$EndComp
$Comp
L obbo_Transistors:AO3400 Q1
U 1 1 5DE78035
P 8550 7100
F 0 "Q1" H 8656 7153 60  0000 L CNN
F 1 "AO3400" H 8656 7047 60  0000 L CNN
F 2 "obbo_footprints:SOT-23_HandSoldering" H 8650 7350 60  0001 L CIN
F 3 "http://aosmd.com/res/data_sheets/AO3400.pdf" H 8650 7400 60  0001 L CNN
	1    8550 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0101
U 1 1 5E136664
P 6550 7650
F 0 "#PWR0101" H 6550 7400 50  0001 C CNN
F 1 "GNDD" H 6554 7495 50  0000 C CNN
F 2 "" H 6550 7650 50  0001 C CNN
F 3 "" H 6550 7650 50  0001 C CNN
	1    6550 7650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E136D25
P 7000 7650
F 0 "#PWR0102" H 7000 7400 50  0001 C CNN
F 1 "GND" H 7005 7477 50  0000 C CNN
F 2 "" H 7000 7650 50  0001 C CNN
F 3 "" H 7000 7650 50  0001 C CNN
	1    7000 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 7650 6550 7500
Wire Wire Line
	7000 7500 7000 7650
Text GLabel 10450 5650 2    50   Input ~ 0
V_BAT
Wire Wire Line
	10450 5650 10150 5650
Connection ~ 10150 5650
$Comp
L obbo_Passive:WirePad TP2
U 1 1 5D96006C
P 12850 7050
F 0 "TP2" H 12800 7051 50  0000 R CNN
F 1 "-BAT" H 12800 7142 50  0000 R CNN
F 2 "obbo_footprints:SolderWirePad_single_SMD_3x8mm" H 13050 7250 60  0001 L CNN
F 3 "" H 13050 7350 60  0001 L CNN
	1    12850 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	12850 5450 12850 5650
Wire Wire Line
	12850 7150 12850 7650
Wire Wire Line
	12500 5650 12850 5650
Text GLabel 12500 5650 0    50   Input ~ 0
V_BAT
$Comp
L power:GND #PWR04
U 1 1 5CAE8A7C
P 12850 7650
F 0 "#PWR04" H 12850 7400 50  0001 C CNN
F 1 "GND" H 12855 7477 50  0000 C CNN
F 2 "" H 12850 7650 50  0001 C CNN
F 3 "" H 12850 7650 50  0001 C CNN
	1    12850 7650
	1    0    0    -1  
$EndComp
$Comp
L obbo_Passive:WirePad TP1
U 1 1 5D95F5C9
P 12850 5350
F 0 "TP1" H 12800 5351 50  0000 R CNN
F 1 "+BAT" H 12800 5442 50  0000 R CNN
F 2 "obbo_footprints:SolderWirePad_single_SMD_3x8mm" H 13050 5550 60  0001 L CNN
F 3 "" H 13050 5650 60  0001 L CNN
	1    12850 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 7500 7000 7500
Text Notes 4950 6900 1    50   ~ 0
JP1
Text Notes 5050 6900 1    50   ~ 0
JP2
Text Notes 5150 6900 1    50   ~ 0
JP3
$EndSCHEMATC
