EESchema Schematic File Version 4
LIBS:RC-Sequencer-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
P 2000 1850
F 0 "#PWR02" H 2000 1700 50  0001 C CNN
F 1 "+5V" H 2015 2023 50  0000 C CNN
F 2 "" H 2000 1850 50  0001 C CNN
F 3 "" H 2000 1850 50  0001 C CNN
	1    2000 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5CA7C026
P 4150 1750
F 0 "J1" H 4070 1425 50  0000 C CNN
F 1 "CH1" H 4070 1516 50  0000 C CNN
F 2 "obbo_footprints:PinHeader_1x03_P2.54mm_Horizontal_PAD_noPinSilk" H 4150 1750 50  0001 C CNN
F 3 "~" H 4150 1750 50  0001 C CNN
	1    4150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2050 3800 1850
Wire Wire Line
	3950 1850 3800 1850
$Comp
L power:+5V #PWR01
U 1 1 5CA7DC39
P 3800 1400
F 0 "#PWR01" H 3800 1250 50  0001 C CNN
F 1 "+5V" H 3815 1573 50  0000 C CNN
F 2 "" H 3800 1400 50  0001 C CNN
F 3 "" H 3800 1400 50  0001 C CNN
	1    3800 1400
	1    0    0    -1  
$EndComp
Text GLabel 2900 3000 2    50   Input ~ 0
OUT1
Text GLabel 2900 3100 2    50   Input ~ 0
OUT2
Text GLabel 2900 3200 2    50   Input ~ 0
OUT3
$Comp
L Device:C C1
U 1 1 5C9FC303
P 2250 2350
F 0 "C1" H 2365 2396 50  0000 L CNN
F 1 "100n" H 2365 2305 50  0000 L CNN
F 2 "obbo_footprints:C_0805K" H 2288 2200 50  0001 C CNN
F 3 "~" H 2250 2350 50  0001 C CNN
	1    2250 2350
	1    0    0    -1  
$EndComp
Text GLabel 2900 3300 2    50   Input ~ 0
OUT4
Wire Wire Line
	2600 3000 2900 3000
Wire Wire Line
	2600 3100 2900 3100
Wire Wire Line
	2600 3200 2900 3200
Wire Wire Line
	2600 3300 2900 3300
Wire Wire Line
	2250 2500 2250 2550
Wire Wire Line
	2250 2200 2250 2150
Wire Wire Line
	2250 2150 2000 2150
Connection ~ 2000 2150
Wire Wire Line
	2000 2150 2000 2700
Wire Wire Line
	2000 1850 2000 2150
Wire Wire Line
	2000 4500 2000 4600
Wire Wire Line
	3900 4700 3900 4600
Wire Wire Line
	3900 3750 3900 3800
$Comp
L power:+5V #PWR06
U 1 1 5C9FC360
P 3900 3750
F 0 "#PWR06" H 3900 3600 50  0001 C CNN
F 1 "+5V" H 3915 3923 50  0000 C CNN
F 2 "" H 3900 3750 50  0001 C CNN
F 3 "" H 3900 3750 50  0001 C CNN
	1    3900 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5C9FC2A7
P 3900 4450
F 0 "C2" H 4015 4496 50  0000 L CNN
F 1 "100n" H 4015 4405 50  0000 L CNN
F 2 "obbo_footprints:C_0805K" H 3938 4300 50  0001 C CNN
F 3 "~" H 3900 4450 50  0001 C CNN
	1    3900 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C9FC1C0
P 3900 3950
F 0 "R2" H 3970 3996 50  0000 L CNN
F 1 "10k" H 3970 3905 50  0000 L CNN
F 2 "obbo_footprints:R_0805K" V 3830 3950 50  0001 C CNN
F 3 "~" H 3900 3950 50  0001 C CNN
	1    3900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4100 3900 4200
Wire Wire Line
	4250 4200 3900 4200
Connection ~ 3900 4200
Wire Wire Line
	3900 4200 3900 4300
$Comp
L power:GNDD #PWR08
U 1 1 5D69717A
P 3900 4700
F 0 "#PWR08" H 3900 4450 50  0001 C CNN
F 1 "GNDD" H 3904 4545 50  0000 C CNN
F 2 "" H 3900 4700 50  0001 C CNN
F 3 "" H 3900 4700 50  0001 C CNN
	1    3900 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR017
U 1 1 5D69779D
P 3550 5850
F 0 "#PWR017" H 3550 5600 50  0001 C CNN
F 1 "GNDD" H 3554 5695 50  0000 C CNN
F 2 "" H 3550 5850 50  0001 C CNN
F 3 "" H 3550 5850 50  0001 C CNN
	1    3550 5850
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR07
U 1 1 5D697A71
P 2000 4600
F 0 "#PWR07" H 2000 4350 50  0001 C CNN
F 1 "GNDD" H 2004 4445 50  0000 C CNN
F 2 "" H 2000 4600 50  0001 C CNN
F 3 "" H 2000 4600 50  0001 C CNN
	1    2000 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR05
U 1 1 5D697DED
P 2250 2550
F 0 "#PWR05" H 2250 2300 50  0001 C CNN
F 1 "GNDD" H 2254 2395 50  0000 C CNN
F 2 "" H 2250 2550 50  0001 C CNN
F 3 "" H 2250 2550 50  0001 C CNN
	1    2250 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR03
U 1 1 5D6988B4
P 3800 2050
F 0 "#PWR03" H 3800 1800 50  0001 C CNN
F 1 "GNDD" H 3804 1895 50  0000 C CNN
F 2 "" H 3800 2050 50  0001 C CNN
F 3 "" H 3800 2050 50  0001 C CNN
	1    3800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5850 3550 5800
Wire Wire Line
	3350 5600 3350 5800
Wire Wire Line
	3350 5800 3450 5800
Connection ~ 3550 5800
Wire Wire Line
	3550 5800 3550 5600
Wire Wire Line
	3450 5600 3450 5800
Connection ~ 3450 5800
Wire Wire Line
	3450 5800 3550 5800
$Comp
L MCU_Microchip_ATtiny:ATtiny44-20SSU U1
U 1 1 5D714F98
P 2000 3600
F 0 "U1" H 1471 3646 50  0000 R CNN
F 1 "ATtiny44-20SSU" H 1471 3555 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2000 3600 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8006.pdf" H 2000 3600 50  0001 C CNN
	1    2000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3400 3350 3400
Wire Wire Line
	3250 3900 2600 3900
Wire Wire Line
	2600 3600 3550 3600
Wire Wire Line
	2600 3500 3450 3500
Wire Wire Line
	3450 3500 3450 5100
Wire Wire Line
	3550 3600 3550 5100
Wire Wire Line
	3350 3400 3350 5100
Text Label 2650 3400 0    50   ~ 0
SCK
Text Label 2650 3500 0    50   ~ 0
MISO
Text Label 2650 3600 0    50   ~ 0
MOSI
Wire Wire Line
	2600 4200 3900 4200
Text Label 2650 4200 0    50   ~ 0
RESET
Wire Wire Line
	3250 1650 3250 3900
Wire Wire Line
	3800 1750 3950 1750
Wire Wire Line
	3800 1400 3800 1750
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J3
U 1 1 5D920B94
P 3450 5300
F 0 "J3" V 3454 5480 50  0000 L CNN
F 1 "Conn_02x04_Odd_Even" V 3545 5480 50  0000 L CNN
F 2 "obbo-footprints-experimental:PinHead_2x04_P2.54mm_SMD_Horizontal_Edge" H 3450 5300 50  0001 C CNN
F 3 "~" H 3450 5300 50  0001 C CNN
	1    3450 5300
	0    -1   1    0   
$EndComp
Wire Wire Line
	4250 4200 4250 5050
Wire Wire Line
	4250 5050 3650 5050
Wire Wire Line
	3650 5050 3650 5100
Text Notes 3350 5100 1    50   ~ 0
JP1
Text Notes 3450 5100 1    50   ~ 0
JP2
Text Notes 3550 5100 1    50   ~ 0
JP3
Wire Wire Line
	4600 5700 5050 5700
$Comp
L obbo_Passive:WirePad TP1
U 1 1 5D95F5C9
P 10500 3550
F 0 "TP1" H 10450 3551 50  0000 R CNN
F 1 "+BAT" H 10450 3642 50  0000 R CNN
F 2 "obbo_footprints:SolderWirePad_single_SMD_3x8mm" H 10700 3750 60  0001 L CNN
F 3 "" H 10700 3850 60  0001 L CNN
	1    10500 3550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5CAE8A7C
P 10500 5850
F 0 "#PWR04" H 10500 5600 50  0001 C CNN
F 1 "GND" H 10505 5677 50  0000 C CNN
F 2 "" H 10500 5850 50  0001 C CNN
F 3 "" H 10500 5850 50  0001 C CNN
	1    10500 5850
	1    0    0    -1  
$EndComp
Text GLabel 10150 3850 0    50   Input ~ 0
V_BAT
Wire Wire Line
	10150 3850 10500 3850
Wire Wire Line
	10500 5350 10500 5850
Wire Wire Line
	10500 3650 10500 3850
$Comp
L obbo_Passive:WirePad TP2
U 1 1 5D96006C
P 10500 5250
F 0 "TP2" H 10450 5251 50  0000 R CNN
F 1 "-BAT" H 10450 5342 50  0000 R CNN
F 2 "obbo_footprints:SolderWirePad_single_SMD_3x8mm" H 10700 5450 60  0001 L CNN
F 3 "" H 10700 5550 60  0001 L CNN
	1    10500 5250
	-1   0    0    1   
$EndComp
Connection ~ 7950 3850
Wire Wire Line
	8250 3850 7950 3850
Text GLabel 8250 3850 2    50   Input ~ 0
V_BAT
$Comp
L obbo_Transistors:AO3400 Q1
U 1 1 5DE78035
P 6350 5300
F 0 "Q1" H 6456 5353 60  0000 L CNN
F 1 "AO3400" H 6456 5247 60  0000 L CNN
F 2 "obbo_footprints:SOT-23_HandSoldering" H 6450 5550 60  0001 L CIN
F 3 "http://aosmd.com/res/data_sheets/AO3400.pdf" H 6450 5600 60  0001 L CNN
	1    6350 5300
	1    0    0    -1  
$EndComp
$Comp
L obbo_Transistors:AO3400 Q2
U 1 1 5DE7742A
P 7400 5300
F 0 "Q2" H 7506 5353 60  0000 L CNN
F 1 "AO3400" H 7506 5247 60  0000 L CNN
F 2 "obbo_footprints:SOT-23_HandSoldering" H 7500 5550 60  0001 L CIN
F 3 "http://aosmd.com/res/data_sheets/AO3400.pdf" H 7500 5600 60  0001 L CNN
	1    7400 5300
	1    0    0    -1  
$EndComp
$Comp
L obbo_Transistors:AO3400 Q3
U 1 1 5DE76863
P 8450 5300
F 0 "Q3" H 8556 5353 60  0000 L CNN
F 1 "AO3400" H 8556 5247 60  0000 L CNN
F 2 "obbo_footprints:SOT-23_HandSoldering" H 8550 5550 60  0001 L CIN
F 3 "http://aosmd.com/res/data_sheets/AO3400.pdf" H 8550 5600 60  0001 L CNN
	1    8450 5300
	1    0    0    -1  
$EndComp
$Comp
L obbo_Transistors:AO3400 Q4
U 1 1 5DE71A2A
P 9500 5300
F 0 "Q4" H 9606 5353 60  0000 L CNN
F 1 "AO3400" H 9606 5247 60  0000 L CNN
F 2 "obbo_footprints:SOT-23_HandSoldering" H 9600 5550 60  0001 L CIN
F 3 "http://aosmd.com/res/data_sheets/AO3400.pdf" H 9600 5600 60  0001 L CNN
	1    9500 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3850 7750 3850
Connection ~ 7850 3850
Wire Wire Line
	7850 4100 7850 3850
Wire Wire Line
	7950 4850 9500 4850
Wire Wire Line
	7950 4850 7950 4600
Wire Wire Line
	7850 5000 8450 5000
Wire Wire Line
	7850 5000 7850 4600
Wire Wire Line
	7400 5000 7750 5000
Wire Wire Line
	7750 5000 7750 4600
Wire Wire Line
	6350 4850 7550 4850
Wire Wire Line
	7550 4850 7550 4600
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 5D8C766B
P 7750 4400
F 0 "J2" V 7846 4112 50  0000 R CNN
F 1 "Conn_02x05_Odd_Even" V 7755 4112 50  0000 R CNN
F 2 "obbo-footprints-experimental:PinHead_2x05_P2.54mm_SMD_Horizontal_Edge" H 7750 4400 50  0001 C CNN
F 3 "~" H 7750 4400 50  0001 C CNN
	1    7750 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9150 5300 9150 5500
Connection ~ 9150 5300
Wire Wire Line
	9200 5300 9150 5300
Wire Wire Line
	9150 5200 9150 5300
Wire Wire Line
	8100 5300 8100 5500
Connection ~ 8100 5300
Wire Wire Line
	8150 5300 8100 5300
Wire Wire Line
	8100 5200 8100 5300
Wire Wire Line
	7050 5300 7050 5500
Connection ~ 7050 5300
Wire Wire Line
	7100 5300 7050 5300
Wire Wire Line
	7050 5200 7050 5300
Wire Wire Line
	6000 5300 6000 5500
Connection ~ 6000 5300
Wire Wire Line
	6050 5300 6000 5300
Wire Wire Line
	6000 5200 6000 5300
Wire Wire Line
	7550 4100 7550 3850
Wire Wire Line
	7750 3850 7550 3850
Connection ~ 7750 3850
Wire Wire Line
	7950 3850 7850 3850
Wire Wire Line
	7750 4100 7750 3850
Wire Wire Line
	7950 4100 7950 3850
Wire Wire Line
	9500 4850 9500 5100
Wire Wire Line
	6350 4850 6350 5100
Text GLabel 9150 5200 0    50   Input ~ 0
OUT4
Wire Wire Line
	9500 5500 9500 5850
Wire Wire Line
	9150 5850 9150 5800
$Comp
L power:GND #PWR015
U 1 1 5CAB930A
P 9150 5850
F 0 "#PWR015" H 9150 5600 50  0001 C CNN
F 1 "GND" H 9155 5677 50  0000 C CNN
F 2 "" H 9150 5850 50  0001 C CNN
F 3 "" H 9150 5850 50  0001 C CNN
	1    9150 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5CAB9303
P 9150 5650
F 0 "R6" H 9220 5696 50  0000 L CNN
F 1 "10k" H 9220 5605 50  0000 L CNN
F 2 "obbo_footprints:R_0805K" V 9080 5650 50  0001 C CNN
F 3 "~" H 9150 5650 50  0001 C CNN
	1    9150 5650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5CAB92FD
P 9500 5850
F 0 "#PWR016" H 9500 5600 50  0001 C CNN
F 1 "GND" H 9505 5677 50  0000 C CNN
F 2 "" H 9500 5850 50  0001 C CNN
F 3 "" H 9500 5850 50  0001 C CNN
	1    9500 5850
	1    0    0    -1  
$EndComp
Text GLabel 8100 5200 0    50   Input ~ 0
OUT3
Wire Wire Line
	8450 5000 8450 5100
Wire Wire Line
	8450 5500 8450 5850
Wire Wire Line
	8100 5850 8100 5800
$Comp
L power:GND #PWR013
U 1 1 5CAB92E1
P 8100 5850
F 0 "#PWR013" H 8100 5600 50  0001 C CNN
F 1 "GND" H 8105 5677 50  0000 C CNN
F 2 "" H 8100 5850 50  0001 C CNN
F 3 "" H 8100 5850 50  0001 C CNN
	1    8100 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5CAB92DA
P 8100 5650
F 0 "R5" H 8170 5696 50  0000 L CNN
F 1 "10k" H 8170 5605 50  0000 L CNN
F 2 "obbo_footprints:R_0805K" V 8030 5650 50  0001 C CNN
F 3 "~" H 8100 5650 50  0001 C CNN
	1    8100 5650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5CAB92D4
P 8450 5850
F 0 "#PWR014" H 8450 5600 50  0001 C CNN
F 1 "GND" H 8455 5677 50  0000 C CNN
F 2 "" H 8450 5850 50  0001 C CNN
F 3 "" H 8450 5850 50  0001 C CNN
	1    8450 5850
	1    0    0    -1  
$EndComp
Text GLabel 7050 5200 0    50   Input ~ 0
OUT2
Wire Wire Line
	7400 5000 7400 5100
Wire Wire Line
	7400 5500 7400 5850
Wire Wire Line
	7050 5850 7050 5800
$Comp
L power:GND #PWR011
U 1 1 5CAB92B8
P 7050 5850
F 0 "#PWR011" H 7050 5600 50  0001 C CNN
F 1 "GND" H 7055 5677 50  0000 C CNN
F 2 "" H 7050 5850 50  0001 C CNN
F 3 "" H 7050 5850 50  0001 C CNN
	1    7050 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5CAB92B1
P 7050 5650
F 0 "R4" H 7120 5696 50  0000 L CNN
F 1 "10k" H 7120 5605 50  0000 L CNN
F 2 "obbo_footprints:R_0805K" V 6980 5650 50  0001 C CNN
F 3 "~" H 7050 5650 50  0001 C CNN
	1    7050 5650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5CAB92AB
P 7400 5850
F 0 "#PWR012" H 7400 5600 50  0001 C CNN
F 1 "GND" H 7405 5677 50  0000 C CNN
F 2 "" H 7400 5850 50  0001 C CNN
F 3 "" H 7400 5850 50  0001 C CNN
	1    7400 5850
	1    0    0    -1  
$EndComp
Text GLabel 6000 5200 0    50   Input ~ 0
OUT1
Wire Wire Line
	6350 5500 6350 5850
Wire Wire Line
	6000 5850 6000 5800
$Comp
L Device:R R3
U 1 1 5CAB3910
P 6000 5650
F 0 "R3" H 6070 5696 50  0000 L CNN
F 1 "10k" H 6070 5605 50  0000 L CNN
F 2 "obbo_footprints:R_0805K" V 5930 5650 50  0001 C CNN
F 3 "~" H 6000 5650 50  0001 C CNN
	1    6000 5650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5CAB390A
P 6350 5850
F 0 "#PWR010" H 6350 5600 50  0001 C CNN
F 1 "GND" H 6355 5677 50  0000 C CNN
F 2 "" H 6350 5850 50  0001 C CNN
F 3 "" H 6350 5850 50  0001 C CNN
	1    6350 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5CAB3917
P 6000 5850
F 0 "#PWR09" H 6000 5600 50  0001 C CNN
F 1 "GND" H 6005 5677 50  0000 C CNN
F 2 "" H 6000 5850 50  0001 C CNN
F 3 "" H 6000 5850 50  0001 C CNN
	1    6000 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0101
U 1 1 5E136664
P 4600 5850
F 0 "#PWR0101" H 4600 5600 50  0001 C CNN
F 1 "GNDD" H 4604 5695 50  0000 C CNN
F 2 "" H 4600 5850 50  0001 C CNN
F 3 "" H 4600 5850 50  0001 C CNN
	1    4600 5850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E136D25
P 5050 5850
F 0 "#PWR0102" H 5050 5600 50  0001 C CNN
F 1 "GND" H 5055 5677 50  0000 C CNN
F 2 "" H 5050 5850 50  0001 C CNN
F 3 "" H 5050 5850 50  0001 C CNN
	1    5050 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5850 4600 5700
Wire Wire Line
	5050 5700 5050 5850
Wire Wire Line
	3400 1650 3250 1650
Wire Wire Line
	3700 1650 3950 1650
$Comp
L Device:R R1
U 1 1 5CA7B317
P 3550 1650
F 0 "R1" H 3620 1696 50  0000 L CNN
F 1 "330" H 3620 1605 50  0000 L CNN
F 2 "obbo_footprints:R_0805K" V 3480 1650 50  0001 C CNN
F 3 "~" H 3550 1650 50  0001 C CNN
	1    3550 1650
	0    -1   1    0   
$EndComp
$EndSCHEMATC
