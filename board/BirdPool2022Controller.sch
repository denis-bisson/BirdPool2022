EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L power:GND #PWR01
U 1 1 61C5CE7D
P 1400 4750
F 0 "#PWR01" H 1400 4500 50  0001 C CNN
F 1 "GND" H 1405 4577 50  0000 C CNN
F 2 "" H 1400 4750 50  0001 C CNN
F 3 "" H 1400 4750 50  0001 C CNN
	1    1400 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61C5EC19
P 1400 2850
F 0 "R1" H 1470 2896 50  0000 L CNN
F 1 "10K" H 1470 2805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1330 2850 50  0001 C CNN
F 3 "~" H 1400 2850 50  0001 C CNN
	1    1400 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 61C5F99D
P 1750 3200
F 0 "R2" V 1543 3200 50  0000 C CNN
F 1 "100R" V 1634 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1680 3200 50  0001 C CNN
F 3 "~" H 1750 3200 50  0001 C CNN
	1    1750 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 3200 1400 3200
Wire Wire Line
	1400 3000 1400 3200
Wire Wire Line
	1400 2700 1400 2600
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 61C72B1E
P 900 3500
F 0 "J1" H 900 3900 50  0000 C CNN
F 1 "ISP" H 900 4000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 900 3500 50  0001 C CNN
F 3 "~" H 900 3500 50  0001 C CNN
	1    900  3500
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 61C7F32B
P 1900 6850
F 0 "D1" V 1939 6732 50  0000 R CNN
F 1 "GREEN" V 1848 6732 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1900 6850 50  0001 C CNN
F 3 "~" H 1900 6850 50  0001 C CNN
	1    1900 6850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 61C825CA
P 1900 6450
F 0 "R3" H 1970 6496 50  0000 L CNN
F 1 "360R" H 1970 6405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1830 6450 50  0001 C CNN
F 3 "~" H 1900 6450 50  0001 C CNN
	1    1900 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6200 1900 6300
Wire Wire Line
	1900 6600 1900 6700
$Comp
L Device:LED D2
U 1 1 61C85F74
P 2400 6850
F 0 "D2" V 2439 6732 50  0000 R CNN
F 1 "BLUE" V 2348 6732 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 2400 6850 50  0001 C CNN
F 3 "~" H 2400 6850 50  0001 C CNN
	1    2400 6850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 61C85F80
P 2400 6450
F 0 "R4" H 2470 6496 50  0000 L CNN
F 1 "360R" H 2470 6405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2330 6450 50  0001 C CNN
F 3 "~" H 2400 6450 50  0001 C CNN
	1    2400 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6600 2400 6700
$Comp
L Device:LED D3
U 1 1 61C864B2
P 3350 1550
F 0 "D3" V 3389 1432 50  0000 R CNN
F 1 "RED" V 3298 1432 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 3350 1550 50  0001 C CNN
F 3 "~" H 3350 1550 50  0001 C CNN
	1    3350 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 61C864BE
P 3350 1250
F 0 "R8" H 3420 1296 50  0000 L CNN
F 1 "360R" H 3420 1205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3280 1250 50  0001 C CNN
F 3 "~" H 3350 1250 50  0001 C CNN
	1    3350 1250
	1    0    0    -1  
$EndComp
Text GLabel 1700 7200 0    50   Input ~ 0
*LED_STATUS
Text GLabel 1700 7350 0    50   Input ~ 0
*LED_VALVE_ON
Wire Wire Line
	1900 7000 1900 7200
Wire Wire Line
	1900 7200 1700 7200
Wire Wire Line
	2400 7000 2400 7350
Wire Wire Line
	2400 7350 1700 7350
$Comp
L Device:C C3
U 1 1 61C66B8F
P 2800 1400
F 0 "C3" H 2915 1446 50  0000 L CNN
F 1 "100nF" H 2915 1355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2838 1250 50  0001 C CNN
F 3 "~" H 2800 1400 50  0001 C CNN
	1    2800 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 61C6D8AF
P 2300 1400
F 0 "C2" H 2418 1446 50  0000 L CNN
F 1 "10uF" H 2418 1355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 2338 1250 50  0001 C CNN
F 3 "~" H 2300 1400 50  0001 C CNN
	1    2300 1400
	1    0    0    -1  
$EndComp
$Comp
L My_Library:PIC18F1330-I_P U2
U 1 1 61C687E9
P 3450 3200
F 0 "U2" H 6450 3687 60  0000 C CNN
F 1 "PIC18F1330" H 6450 3581 60  0000 C CNN
F 2 "My_Library:PDIP18_300MC_MCH" H 6450 3540 60  0001 C CNN
F 3 "" H 3450 3200 60  0000 C CNN
	1    3450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3200 3450 3200
$Comp
L My_Library:OSTVN02A150 J2
U 1 1 61C7EDB2
P 1700 1450
F 0 "J2" H 1942 1063 60  0000 C CNN
F 1 "OSTVN02A150" H 1942 1169 60  0000 C CNN
F 2 "My_Library:CONN_OSTVN02A150_OST" H 2100 1390 60  0001 C CNN
F 3 "" H 1700 1450 60  0000 C CNN
	1    1700 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 3200 1400 3200
Connection ~ 1400 3200
Wire Wire Line
	1100 3300 1200 3300
Wire Wire Line
	1200 2600 1400 2600
Wire Wire Line
	1200 2600 1200 3300
Wire Wire Line
	1100 3400 1200 3400
Wire Wire Line
	3450 3900 1600 3900
Wire Wire Line
	1600 3900 1600 3500
Wire Wire Line
	1600 3500 1100 3500
Wire Wire Line
	3450 3800 1500 3800
Wire Wire Line
	1500 3800 1500 3600
Wire Wire Line
	1500 3600 1100 3600
Wire Wire Line
	1400 3900 1400 3200
Wire Wire Line
	1400 4200 1400 4300
Wire Wire Line
	1400 4300 1200 4300
Wire Wire Line
	1200 4300 1200 3400
Connection ~ 1400 4300
Text Label 800  3200 2    50   ~ 0
*MCLR
Text Label 800  3500 2    50   ~ 0
PGD
Text Label 800  3600 2    50   ~ 0
PGC
$Comp
L power:GND #PWR06
U 1 1 61C909F2
P 3350 4750
F 0 "#PWR06" H 3350 4500 50  0001 C CNN
F 1 "GND" H 3355 4577 50  0000 C CNN
F 2 "" H 3350 4750 50  0001 C CNN
F 3 "" H 3350 4750 50  0001 C CNN
	1    3350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4600 3350 4600
Wire Wire Line
	3350 4600 3350 4750
$Comp
L power:+5V #PWR05
U 1 1 61C9213A
P 3350 2500
F 0 "#PWR05" H 3350 2350 50  0001 C CNN
F 1 "+5V" H 3365 2673 50  0000 C CNN
F 2 "" H 3350 2500 50  0001 C CNN
F 3 "" H 3350 2500 50  0001 C CNN
	1    3350 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4400 3350 4400
Wire Wire Line
	3350 4400 3350 2600
Wire Wire Line
	1400 4300 1400 4750
Text GLabel 10400 3300 2    50   Output ~ 0
*LED_STATUS
Text GLabel 10400 3200 2    50   Output ~ 0
*LED_VALVE_ON
Text GLabel 10400 3400 2    50   Output ~ 0
*VALVE_ON
$Comp
L My_Library:TPC817D_C9G U1
U 1 1 61C68FC5
P 3200 6850
F 0 "U1" H 3200 6600 50  0000 C CNN
F 1 "PC817" H 3200 6500 50  0000 C CNN
F 2 "My_Library:DIP810W50P254L470H446Q4" H 3200 6850 50  0001 L BNN
F 3 "" H 3200 6850 50  0001 L BNN
F 4 "4.46 mm" H 3200 6850 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Unavailable" H 3200 6850 50  0001 L BNN "AVAILABILITY"
F 6 "Taiwan Semiconductor" H 3200 6850 50  0001 L BNN "MANUFACTURER"
F 7 "Manufacturer Recommendations" H 3200 6850 50  0001 L BNN "STANDARD"
	1    3200 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 61C71CD3
P 2900 6450
F 0 "R6" H 2970 6496 50  0000 L CNN
F 1 "220R" H 2970 6405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2830 6450 50  0001 C CNN
F 3 "~" H 2900 6450 50  0001 C CNN
	1    2900 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 61C78CB0
P 3350 1000
F 0 "#PWR03" H 3350 850 50  0001 C CNN
F 1 "+5V" H 3365 1173 50  0000 C CNN
F 2 "" H 3350 1000 50  0001 C CNN
F 3 "" H 3350 1000 50  0001 C CNN
	1    3350 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 61C8884B
P 3350 1800
F 0 "#PWR04" H 3350 1550 50  0001 C CNN
F 1 "GND" H 3355 1627 50  0000 C CNN
F 2 "" H 3350 1800 50  0001 C CNN
F 3 "" H 3350 1800 50  0001 C CNN
	1    3350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1000 3350 1050
Wire Wire Line
	3350 1700 3350 1750
Connection ~ 3350 1050
Wire Wire Line
	3350 1050 3350 1100
Connection ~ 3350 1750
Wire Wire Line
	3350 1750 3350 1800
Wire Wire Line
	2800 1050 2800 1250
Connection ~ 2800 1050
Wire Wire Line
	2800 1050 3350 1050
Wire Wire Line
	2300 1050 2300 1250
Wire Wire Line
	2300 1050 2800 1050
Wire Wire Line
	2300 1550 2300 1750
Wire Wire Line
	2300 1750 2800 1750
Wire Wire Line
	2800 1550 2800 1750
Connection ~ 2800 1750
Wire Wire Line
	2800 1750 3350 1750
Wire Wire Line
	2300 1050 1800 1050
Wire Wire Line
	1800 1050 1800 1350
Connection ~ 2300 1050
Wire Wire Line
	2300 1750 1800 1750
Wire Wire Line
	1800 1750 1800 1450
Connection ~ 2300 1750
Wire Wire Line
	1800 1350 1700 1350
Wire Wire Line
	1700 1450 1800 1450
Wire Wire Line
	2900 6600 2900 6750
Text GLabel 1700 7500 0    50   Input ~ 0
*VALVE_ON
Wire Wire Line
	2900 6950 2900 7500
Wire Wire Line
	2900 7500 1700 7500
Wire Wire Line
	2400 6200 2400 6300
Wire Wire Line
	2900 6300 2900 6200
Wire Wire Line
	2900 6200 2400 6200
Wire Wire Line
	2400 6200 1900 6200
Connection ~ 2400 6200
$Comp
L power:+5V #PWR07
U 1 1 61CA836F
P 3350 5950
F 0 "#PWR07" H 3350 5800 50  0001 C CNN
F 1 "+5V" H 3365 6123 50  0000 C CNN
F 2 "" H 3350 5950 50  0001 C CNN
F 3 "" H 3350 5950 50  0001 C CNN
	1    3350 5950
	1    0    0    -1  
$EndComp
Connection ~ 2900 6200
$Comp
L My_Library:G5LE-14_DC5 K1
U 1 1 61CAB251
P 4200 7350
F 0 "K1" V 4753 6822 60  0000 R CNN
F 1 "G5LE-14_DC5" V 4647 6822 60  0000 R CNN
F 2 "My_Library:RELAY_G5LE-1_DC5_OMR" H 4700 7490 60  0001 C CNN
F 3 "" H 4200 7350 60  0000 C CNN
	1    4200 7350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 61CAC82E
P 3700 7450
F 0 "#PWR08" H 3700 7200 50  0001 C CNN
F 1 "GND" H 3705 7277 50  0000 C CNN
F 2 "" H 3700 7450 50  0001 C CNN
F 3 "" H 3700 7450 50  0001 C CNN
	1    3700 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6950 3700 6950
Wire Wire Line
	3700 6950 3700 7450
$Comp
L My_Library:OSTVN02A150 J4
U 1 1 61CBA596
P 5600 6000
F 0 "J4" H 5950 5650 60  0000 C CNN
F 1 "OSTVN02A150" H 5950 5750 60  0000 C CNN
F 2 "My_Library:CONN_OSTVN02A150_OST" H 6000 5940 60  0001 C CNN
F 3 "" H 5600 6000 60  0000 C CNN
	1    5600 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6000 4000 6000
Wire Wire Line
	4000 6000 4000 7350
Wire Wire Line
	4000 7350 4200 7350
$Comp
L My_Library:OSTVN04A150 J5
U 1 1 61C6997F
P 5600 6750
F 0 "J5" H 5950 6200 60  0000 C CNN
F 1 "OSTVN04A150" H 5950 6300 60  0000 C CNN
F 2 "My_Library:CONN_OSTVN04A150_OST" H 6000 6490 60  0001 C CNN
F 3 "" H 5600 6750 60  0000 C CNN
	1    5600 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6100 5600 6750
Wire Wire Line
	4600 6350 5450 6350
Wire Wire Line
	5450 6350 5450 6850
Wire Wire Line
	5450 6850 5600 6850
Wire Wire Line
	4600 7350 4600 7450
Wire Wire Line
	4600 7450 5450 7450
Wire Wire Line
	5450 7450 5450 6950
Wire Wire Line
	5450 6950 5600 6950
$Comp
L My_Library:OSTVN04A150 J3
U 1 1 61C7407C
P 2600 4600
F 0 "J3" H 2950 4050 60  0000 C CNN
F 1 "OSTVN04A150" H 2950 4150 60  0000 C CNN
F 2 "My_Library:CONN_OSTVN04A150_OST" H 3000 4340 60  0001 C CNN
F 3 "" H 2600 4600 60  0000 C CNN
	1    2600 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	9450 3200 10400 3200
Wire Wire Line
	9450 3300 10400 3300
Wire Wire Line
	9450 3400 10400 3400
Wire Wire Line
	3450 3400 2750 3400
Wire Wire Line
	2750 3400 2750 4300
Wire Wire Line
	2750 4300 2600 4300
Wire Wire Line
	3450 3500 3050 3500
Wire Wire Line
	3050 3500 3050 4500
Wire Wire Line
	3050 4500 2600 4500
$Comp
L power:GND #PWR02
U 1 1 61C8BF87
P 2750 4700
F 0 "#PWR02" H 2750 4450 50  0001 C CNN
F 1 "GND" H 2755 4527 50  0000 C CNN
F 2 "" H 2750 4700 50  0001 C CNN
F 3 "" H 2750 4700 50  0001 C CNN
	1    2750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4400 2750 4400
Wire Wire Line
	2750 4400 2750 4600
Wire Wire Line
	2600 4600 2750 4600
Connection ~ 2750 4600
Wire Wire Line
	2750 4600 2750 4700
$Comp
L Device:R R5
U 1 1 61C90FDD
P 2750 2850
F 0 "R5" H 2820 2896 50  0000 L CNN
F 1 "10K" H 2820 2805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2680 2850 50  0001 C CNN
F 3 "~" H 2750 2850 50  0001 C CNN
	1    2750 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 61C944CC
P 3050 2850
F 0 "R7" H 3120 2896 50  0000 L CNN
F 1 "10K" H 3120 2805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2980 2850 50  0001 C CNN
F 3 "~" H 3050 2850 50  0001 C CNN
	1    3050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3000 3050 3500
Connection ~ 3050 3500
Wire Wire Line
	2750 3000 2750 3400
Connection ~ 2750 3400
Wire Wire Line
	3050 2700 3050 2600
Wire Wire Line
	3050 2600 3350 2600
Connection ~ 3350 2600
Wire Wire Line
	3350 2600 3350 2500
Wire Wire Line
	3050 2600 2750 2600
Wire Wire Line
	2750 2600 2750 2700
Connection ~ 3050 2600
Wire Wire Line
	1400 2600 2750 2600
Connection ~ 1400 2600
Connection ~ 2750 2600
Wire Wire Line
	3350 5950 3350 6200
Wire Wire Line
	3350 6200 2900 6200
$Comp
L Device:C C1
U 1 1 61CB46C3
P 1400 4050
F 0 "C1" H 1515 4096 50  0000 L CNN
F 1 "100nF" H 1515 4005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1438 3900 50  0001 C CNN
F 3 "~" H 1400 4050 50  0001 C CNN
	1    1400 4050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 61CCC7CF
P 7550 5900
F 0 "H2" H 7650 5946 50  0000 L CNN
F 1 "MountingHole" H 7650 5855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 7550 5900 50  0001 C CNN
F 3 "~" H 7550 5900 50  0001 C CNN
	1    7550 5900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 61CCDB7C
P 8300 5900
F 0 "H3" H 8400 5946 50  0000 L CNN
F 1 "MountingHole" H 8400 5855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 8300 5900 50  0001 C CNN
F 3 "~" H 8300 5900 50  0001 C CNN
	1    8300 5900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 61CCE197
P 8300 6150
F 0 "H4" H 8400 6196 50  0000 L CNN
F 1 "MountingHole" H 8400 6105 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 8300 6150 50  0001 C CNN
F 3 "~" H 8300 6150 50  0001 C CNN
	1    8300 6150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 61CCE8DE
P 7550 6150
F 0 "H1" H 7650 6196 50  0000 L CNN
F 1 "MountingHole" H 7650 6105 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 7550 6150 50  0001 C CNN
F 3 "~" H 7550 6150 50  0001 C CNN
	1    7550 6150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J6
U 1 1 61CF9965
P 10250 3700
F 0 "J6" H 10330 3692 50  0000 L CNN
F 1 "Conn_01x06" H 10330 3601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 10250 3700 50  0001 C CNN
F 3 "~" H 10250 3700 50  0001 C CNN
	1    10250 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 3500 10050 3500
Wire Wire Line
	9450 3600 10050 3600
Wire Wire Line
	3450 4000 3250 4000
Wire Wire Line
	3250 4000 3250 5050
Wire Wire Line
	3250 5050 9600 5050
Wire Wire Line
	9600 5050 9600 3700
Wire Wire Line
	3450 4100 3150 4100
Wire Wire Line
	3150 4100 3150 5150
Wire Wire Line
	3150 5150 9700 5150
Wire Wire Line
	9600 3700 10050 3700
Wire Wire Line
	9700 3800 9700 5150
Wire Wire Line
	9700 3800 10050 3800
$Comp
L power:+5V #PWR0101
U 1 1 61D193B1
P 10600 4200
F 0 "#PWR0101" H 10600 4050 50  0001 C CNN
F 1 "+5V" H 10615 4373 50  0000 C CNN
F 2 "" H 10600 4200 50  0001 C CNN
F 3 "" H 10600 4200 50  0001 C CNN
	1    10600 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61D1A3F2
P 9900 4250
F 0 "#PWR0102" H 9900 4000 50  0001 C CNN
F 1 "GND" H 9905 4077 50  0000 C CNN
F 2 "" H 9900 4250 50  0001 C CNN
F 3 "" H 9900 4250 50  0001 C CNN
	1    9900 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 3900 9900 3900
Wire Wire Line
	9900 3900 9900 4250
Wire Wire Line
	10600 4200 10600 4300
Wire Wire Line
	10600 4300 10000 4300
Wire Wire Line
	10000 4300 10000 4000
Wire Wire Line
	10000 4000 10050 4000
Wire Wire Line
	4400 6350 3500 6350
Wire Wire Line
	3500 6350 3500 6750
Wire Wire Line
	3350 6200 3850 6200
Wire Wire Line
	3850 6200 3850 7500
Wire Wire Line
	3850 7500 4400 7500
Wire Wire Line
	4400 7500 4400 7350
Connection ~ 3350 6200
$EndSCHEMATC
