EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title "Program Counter, Program Store, Reset, Phase"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS163 PC?
U 1 1 5EF4BED1
P 7950 1550
AR Path="/5EF4BED1" Ref="PC?"  Part="1" 
AR Path="/5EF43B36/5EF4BED1" Ref="PC1"  Part="1" 
F 0 "PC1" H 7950 569 50  0000 C CNN
F 1 "74HC163" H 7950 660 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7950 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS163" H 7950 1550 50  0001 C CNN
	1    7950 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 4350 8900 4350
Wire Wire Line
	8900 4350 8900 3250
Wire Wire Line
	8900 3250 8450 3250
Wire Wire Line
	7450 2500 8900 2500
Wire Wire Line
	8900 2500 8900 1350
Wire Wire Line
	8900 1350 8450 1350
$Comp
L power:VCC #PWR?
U 1 1 5EF566C0
P 5850 2600
AR Path="/5EF566C0" Ref="#PWR?"  Part="1" 
AR Path="/5EF43B36/5EF566C0" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 5850 2450 50  0001 C CNN
F 1 "VCC" H 5865 2773 50  0000 C CNN
F 2 "" H 5850 2600 50  0001 C CNN
F 3 "" H 5850 2600 50  0001 C CNN
	1    5850 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS163 PHASE?
U 1 1 5EF5E91A
P 3350 4100
AR Path="/5EF5E91A" Ref="PHASE?"  Part="1" 
AR Path="/5EF43B36/5EF5E91A" Ref="PHASE1"  Part="1" 
F 0 "PHASE1" H 3350 5081 50  0000 C CNN
F 1 "74HC163" H 3350 4990 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3350 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS163" H 3350 4100 50  0001 C CNN
	1    3350 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EF5E920
P 2750 3900
AR Path="/5EF5E920" Ref="#PWR?"  Part="1" 
AR Path="/5EF43B36/5EF5E920" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 2750 3650 50  0001 C CNN
F 1 "GND" H 2755 3727 50  0000 C CNN
F 2 "" H 2750 3900 50  0001 C CNN
F 3 "" H 2750 3900 50  0001 C CNN
	1    2750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3600 2850 3600
Wire Wire Line
	2850 3700 2750 3700
Wire Wire Line
	2850 3800 2750 3800
Wire Wire Line
	2850 3900 2750 3900
Wire Wire Line
	2750 3600 2750 3700
Connection ~ 2750 3900
Connection ~ 2750 3700
Wire Wire Line
	2750 3700 2750 3800
Connection ~ 2750 3800
Wire Wire Line
	2750 3800 2750 3900
$Comp
L power:VCC #PWR?
U 1 1 5EF5E930
P 2600 4050
AR Path="/5EF5E930" Ref="#PWR?"  Part="1" 
AR Path="/5EF43B36/5EF5E930" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 2600 3900 50  0001 C CNN
F 1 "VCC" H 2615 4223 50  0000 C CNN
F 2 "" H 2600 4050 50  0001 C CNN
F 3 "" H 2600 4050 50  0001 C CNN
	1    2600 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4200 2850 4200
Wire Wire Line
	2600 4200 2600 4300
Wire Wire Line
	2600 4300 2850 4300
Wire Wire Line
	2600 4050 2600 4100
Connection ~ 2600 4200
Wire Wire Line
	2850 4100 2600 4100
Connection ~ 2600 4100
Wire Wire Line
	2600 4100 2600 4200
$Comp
L 74xx:74LS08 U?
U 1 1 5EF5E941
P 2200 4600
AR Path="/5EF5E941" Ref="U?"  Part="1" 
AR Path="/5EF43B36/5EF5E941" Ref="U1"  Part="1" 
F 0 "U1" H 2200 4925 50  0000 C CNN
F 1 "74HC08" H 2200 4834 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2200 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2200 4600 50  0001 C CNN
	1    2200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4600 2850 4600
$Comp
L power:GND #PWR09
U 1 1 5EF9183F
P 6250 5550
F 0 "#PWR09" H 6250 5300 50  0001 C CNN
F 1 "GND" H 6255 5377 50  0000 C CNN
F 2 "" H 6250 5550 50  0001 C CNN
F 3 "" H 6250 5550 50  0001 C CNN
	1    6250 5550
	0    -1   -1   0   
$EndComp
Text Label 7000 1550 0    50   ~ 0
pc_overflow
Text HLabel 8450 1850 2    50   Input ~ 0
pcld10
Text HLabel 8450 1950 2    50   Input ~ 0
pcld9
Text HLabel 8450 2050 2    50   Input ~ 0
pcld8
Text HLabel 8450 3650 2    50   Input ~ 0
pcld7
Text HLabel 8450 3750 2    50   Input ~ 0
pcld6
Text HLabel 8450 3850 2    50   Input ~ 0
pcld5
Text HLabel 8450 3950 2    50   Input ~ 0
pcld4
Text HLabel 8450 5650 2    50   Input ~ 0
pcld3
Text HLabel 8450 5750 2    50   Input ~ 0
pcld2
Text HLabel 8450 5850 2    50   Input ~ 0
pcld1
Text HLabel 8450 5950 2    50   Input ~ 0
pcld0
$Comp
L power:VCC #PWR?
U 1 1 5EFB9B8E
P 8650 1450
AR Path="/5EFB9B8E" Ref="#PWR?"  Part="1" 
AR Path="/5EF43B36/5EFB9B8E" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 8650 1300 50  0001 C CNN
F 1 "VCC" H 8665 1623 50  0000 C CNN
F 2 "" H 8650 1450 50  0001 C CNN
F 3 "" H 8650 1450 50  0001 C CNN
	1    8650 1450
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5EFBEF9D
P 8700 3350
AR Path="/5EFBEF9D" Ref="#PWR?"  Part="1" 
AR Path="/5EF43B36/5EFBEF9D" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 8700 3200 50  0001 C CNN
F 1 "VCC" H 8700 3500 50  0000 C CNN
F 2 "" H 8700 3350 50  0001 C CNN
F 3 "" H 8700 3350 50  0001 C CNN
	1    8700 3350
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5EFC07C3
P 8800 5350
AR Path="/5EFC07C3" Ref="#PWR?"  Part="1" 
AR Path="/5EF43B36/5EFC07C3" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 8800 5200 50  0001 C CNN
F 1 "VCC" H 8800 5550 50  0000 C CNN
F 2 "" H 8800 5350 50  0001 C CNN
F 3 "" H 8800 5350 50  0001 C CNN
	1    8800 5350
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5EFC7BBF
P 5750 4050
F 0 "#PWR07" H 5750 3900 50  0001 C CNN
F 1 "VCC" H 5765 4223 50  0000 C CNN
F 2 "" H 5750 4050 50  0001 C CNN
F 3 "" H 5750 4050 50  0001 C CNN
	1    5750 4050
	0    1    1    0   
$EndComp
Text GLabel 8450 1050 2    50   Input ~ 0
~rst~
Text GLabel 8450 1250 2    50   Input ~ 0
clk
Text GLabel 8450 2950 2    50   Input ~ 0
~rst~
Text GLabel 8450 3150 2    50   Input ~ 0
clk
Text GLabel 8450 4950 2    50   Input ~ 0
~rst~
Text GLabel 8450 5150 2    50   Input ~ 0
clk
Text GLabel 5850 3200 3    50   Input ~ 0
~rst~
Text GLabel 6150 2900 2    50   Input ~ 0
clk
Text GLabel 4350 2800 0    50   Output ~ 0
bl_done
Text GLabel 8450 3450 2    50   Input ~ 0
~loadpc~
Text GLabel 8450 5250 2    50   Input ~ 0
incpc
Text GLabel 8450 5450 2    50   Input ~ 0
~loadpc~
Wire Wire Line
	8450 5350 8800 5350
Wire Wire Line
	8450 3350 8700 3350
Wire Wire Line
	8450 1450 8650 1450
NoConn ~ 3850 4100
Text HLabel 3850 3700 2    50   Output ~ 0
phase1
Text HLabel 3850 3800 2    50   Output ~ 0
phase2
Text HLabel 3850 3900 2    50   Output ~ 0
phase3
Text GLabel 8450 1550 2    50   Input ~ 0
~loadpc~
$Comp
L power:VCC #PWR?
U 1 1 5F6DA42B
P 7950 4250
AR Path="/5F6DA42B" Ref="#PWR?"  Part="1" 
AR Path="/5EF43B36/5F6DA42B" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 7950 4100 50  0001 C CNN
F 1 "VCC" H 7965 4423 50  0000 C CNN
F 2 "" H 7950 4250 50  0001 C CNN
F 3 "" H 7950 4250 50  0001 C CNN
	1    7950 4250
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5F6DA8E7
P 7950 6250
AR Path="/5F6DA8E7" Ref="#PWR?"  Part="1" 
AR Path="/5EF43B36/5F6DA8E7" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 7950 6100 50  0001 C CNN
F 1 "VCC" H 7965 6423 50  0000 C CNN
F 2 "" H 7950 6250 50  0001 C CNN
F 3 "" H 7950 6250 50  0001 C CNN
	1    7950 6250
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5F6DB3E7
P 3350 3300
AR Path="/5F6DB3E7" Ref="#PWR?"  Part="1" 
AR Path="/5EF43B36/5F6DB3E7" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 3350 3150 50  0001 C CNN
F 1 "VCC" H 3365 3473 50  0000 C CNN
F 2 "" H 3350 3300 50  0001 C CNN
F 3 "" H 3350 3300 50  0001 C CNN
	1    3350 3300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F6DBA9D
P 3350 4900
F 0 "#PWR04" H 3350 4650 50  0001 C CNN
F 1 "GND" H 3355 4727 50  0000 C CNN
F 2 "" H 3350 4900 50  0001 C CNN
F 3 "" H 3350 4900 50  0001 C CNN
	1    3350 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5F6DC237
P 7950 750
F 0 "#PWR010" H 7950 500 50  0001 C CNN
F 1 "GND" V 7955 622 50  0000 R CNN
F 2 "" H 7950 750 50  0001 C CNN
F 3 "" H 7950 750 50  0001 C CNN
	1    7950 750 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5F6DEA0D
P 7950 4650
F 0 "#PWR014" H 7950 4400 50  0001 C CNN
F 1 "GND" V 7955 4522 50  0000 R CNN
F 2 "" H 7950 4650 50  0001 C CNN
F 3 "" H 7950 4650 50  0001 C CNN
	1    7950 4650
	0    -1   -1   0   
$EndComp
Text HLabel 3850 3600 2    50   Output ~ 0
phase0
Text HLabel 6700 2850 0    50   Output ~ 0
pc0
Text HLabel 6700 2750 0    50   Output ~ 0
pc1
Text HLabel 6700 2650 0    50   Output ~ 0
pc2
Text HLabel 6700 2550 0    50   Output ~ 0
pc3
Text HLabel 6700 2450 0    50   Output ~ 0
pc4
Text HLabel 6700 2350 0    50   Output ~ 0
pc5
Text HLabel 6700 2250 0    50   Output ~ 0
pc6
Text HLabel 6700 2150 0    50   Output ~ 0
pc7
Text HLabel 6700 2050 0    50   Output ~ 0
pc8
Text HLabel 6700 1950 0    50   Output ~ 0
pc9
Text HLabel 6700 1850 0    50   Output ~ 0
pc10
Text HLabel 6700 1750 0    50   Output ~ 0
pc11
Text GLabel 1950 2150 3    50   Output ~ 0
clk
Wire Wire Line
	1850 2000 1950 2000
Wire Wire Line
	1950 2000 1950 2150
Connection ~ 1950 2000
Wire Wire Line
	1950 2000 2800 2000
$Comp
L Switch:SW_Push SW1
U 1 1 5FFD9B3A
P 2200 1400
F 0 "SW1" H 2200 1685 50  0000 C CNN
F 1 "SW_Push" H 2200 1594 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Piano_10.8x4.1mm_W7.62mm_P2.54mm" H 2200 1600 50  0001 C CNN
F 3 "~" H 2200 1600 50  0001 C CNN
	1    2200 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5FFE111F
P 2000 1400
F 0 "#PWR0112" H 2000 1150 50  0001 C CNN
F 1 "GND" H 2005 1227 50  0000 C CNN
F 2 "" H 2000 1400 50  0001 C CNN
F 3 "" H 2000 1400 50  0001 C CNN
	1    2000 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1400 2800 1400
Wire Wire Line
	2800 1400 2800 1900
Wire Wire Line
	3100 2300 3650 2300
Wire Wire Line
	3650 2300 3650 1700
Wire Wire Line
	3650 1700 3100 1700
$Comp
L power:VCC #PWR0113
U 1 1 5FFED109
P 3100 2300
F 0 "#PWR0113" H 3100 2150 50  0001 C CNN
F 1 "VCC" H 3115 2473 50  0000 C CNN
F 2 "" H 3100 2300 50  0001 C CNN
F 3 "" H 3100 2300 50  0001 C CNN
	1    3100 2300
	-1   0    0    1   
$EndComp
Text GLabel 3400 1900 2    50   Output ~ 0
~rst~
NoConn ~ 3400 2100
$Comp
L Device:R R1
U 1 1 5FFF58DD
P 2800 1000
F 0 "R1" H 2870 1046 50  0000 L CNN
F 1 "R10K" H 2870 955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 2730 1000 50  0001 C CNN
F 3 "~" H 2800 1000 50  0001 C CNN
	1    2800 1000
	1    0    0    -1  
$EndComp
Connection ~ 2800 1400
$Comp
L power:VCC #PWR0114
U 1 1 5FFF6272
P 2800 850
F 0 "#PWR0114" H 2800 700 50  0001 C CNN
F 1 "VCC" H 2815 1023 50  0000 C CNN
F 2 "" H 2800 850 50  0001 C CNN
F 3 "" H 2800 850 50  0001 C CNN
	1    2800 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C1
U 1 1 5FFF6E1B
P 3200 1400
F 0 "C1" V 3452 1400 50  0000 C CNN
F 1 "10uf" V 3361 1400 50  0000 C CNN
F 2 "Capacitor_THT:CP_Axial_L10.0mm_D4.5mm_P15.00mm_Horizontal" H 3200 1400 50  0001 C CNN
F 3 "~" H 3200 1400 50  0001 C CNN
	1    3200 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 1400 3050 1400
$Comp
L power:GND #PWR0115
U 1 1 5FFFB9EE
P 3350 1400
F 0 "#PWR0115" H 3350 1150 50  0001 C CNN
F 1 "GND" V 3355 1272 50  0000 R CNN
F 2 "" H 3350 1400 50  0001 C CNN
F 3 "" H 3350 1400 50  0001 C CNN
	1    3350 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 4500 1900 4500
Wire Wire Line
	1650 4700 1900 4700
Wire Wire Line
	2800 1150 2800 1400
Text GLabel 1650 4500 0    50   Input ~ 0
~phaserst~
Text GLabel 1650 4700 0    50   Input ~ 0
~rst~
Text GLabel 2850 4400 0    50   Input ~ 0
clk
$Comp
L power:VCC #PWR0119
U 1 1 6002E03A
P 7950 2350
F 0 "#PWR0119" H 7950 2200 50  0001 C CNN
F 1 "VCC" V 7965 2478 50  0000 L CNN
F 2 "" H 7950 2350 50  0001 C CNN
F 3 "" H 7950 2350 50  0001 C CNN
	1    7950 2350
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS163 PC2
U 1 1 60064FF1
P 7950 3450
F 0 "PC2" H 7950 2469 50  0000 C CNN
F 1 "74HC163" H 7950 2560 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7950 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS163" H 7950 3450 50  0001 C CNN
	1    7950 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 2500 7450 3450
$Comp
L 74xx:74HC74 RST_BL_DONE1
U 2 1 5EFCA493
P 5850 2900
F 0 "RST_BL_DONE1" H 5850 2250 50  0000 C CNN
F 1 "74HC74" H 5850 2350 50  0000 C CNN
F 2 "" H 5850 2900 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 5850 2900 50  0001 C CNN
	2    5850 2900
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC74 RST_BL_DONE1
U 1 1 5EFCC9E8
P 3100 2000
F 0 "RST_BL_DONE1" H 3100 2481 50  0000 C CNN
F 1 "74HC74" H 3100 2390 50  0000 C CNN
F 2 "" H 3100 2000 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 3100 2000 50  0001 C CNN
	1    3100 2000
	1    0    0    -1  
$EndComp
Connection ~ 3100 2300
Wire Wire Line
	7000 1000 7000 1350
Wire Wire Line
	6400 1450 6400 3000
Wire Wire Line
	6400 3000 6150 3000
Wire Wire Line
	7000 1550 7450 1550
$Comp
L Memory_EEPROM2:28c64 PROGRAM_STORE1
U 1 1 5F03AE4A
P 5750 5050
F 0 "PROGRAM_STORE1" H 5750 6250 50  0000 C CNN
F 1 "28c64" H 5750 6150 50  0000 C CNN
F 2 "" H 5750 5050 50  0001 C CNN
F 3 "" H 5750 5050 50  0001 C CNN
	1    5750 5050
	1    0    0    -1  
$EndComp
Text HLabel 5150 5250 0    50   3State ~ 0
pgm_d0
Text HLabel 5150 5350 0    50   3State ~ 0
pgm_d1
Text HLabel 5150 5450 0    50   3State ~ 0
pgm_d2
Text HLabel 5150 5550 0    50   3State ~ 0
pgm_d3
Text HLabel 5150 5650 0    50   3State ~ 0
pgm_d4
Text HLabel 5150 5750 0    50   3State ~ 0
pgm_d5
Text HLabel 5150 5850 0    50   3State ~ 0
pgm_d6
Text HLabel 5150 5950 0    50   3State ~ 0
pgm_d7
Wire Wire Line
	7450 5450 7450 4350
$Comp
L 74xx:74LS163 PC?
U 1 1 5EF4BEDD
P 7950 5450
AR Path="/5EF4BEDD" Ref="PC?"  Part="1" 
AR Path="/5EF43B36/5EF4BEDD" Ref="PC3"  Part="1" 
F 0 "PC3" H 7950 4469 50  0000 C CNN
F 1 "74HC163" H 7950 4560 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7950 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS163" H 7950 5450 50  0001 C CNN
	1    7950 5450
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5F0ADCD6
P 6250 5750
AR Path="/5F0ADCD6" Ref="#PWR?"  Part="1" 
AR Path="/5EF43B36/5F0ADCD6" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 6250 5600 50  0001 C CNN
F 1 "VCC" H 6265 5923 50  0000 C CNN
F 2 "" H 6250 5750 50  0001 C CNN
F 3 "" H 6250 5750 50  0001 C CNN
	1    6250 5750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5F0AF08A
P 6250 5850
F 0 "#PWR011" H 6250 5600 50  0001 C CNN
F 1 "GND" H 6255 5677 50  0000 C CNN
F 2 "" H 6250 5850 50  0001 C CNN
F 3 "" H 6250 5850 50  0001 C CNN
	1    6250 5850
	0    -1   -1   0   
$EndComp
Entry Wire Line
	7150 1750 7050 1850
Entry Wire Line
	7150 1850 7050 1950
Entry Wire Line
	7150 1950 7050 2050
Entry Wire Line
	7150 2050 7050 2150
Entry Wire Line
	7150 3650 7050 3750
Entry Wire Line
	7150 3750 7050 3850
Entry Wire Line
	7150 3850 7050 3950
Entry Wire Line
	7150 3950 7050 4050
Entry Wire Line
	7150 5650 7050 5750
Entry Wire Line
	7150 5750 7050 5850
Entry Wire Line
	7150 5850 7050 5950
Entry Wire Line
	7150 5950 7050 6050
Wire Wire Line
	7150 1750 7450 1750
Wire Wire Line
	7150 1850 7450 1850
Wire Wire Line
	7150 1950 7450 1950
Wire Wire Line
	7150 2050 7450 2050
Wire Wire Line
	7150 3650 7450 3650
Wire Wire Line
	7150 3750 7450 3750
Wire Wire Line
	7150 3850 7450 3850
Wire Wire Line
	7150 3950 7450 3950
Wire Wire Line
	7150 5650 7450 5650
Wire Wire Line
	7150 5750 7450 5750
Wire Wire Line
	7150 5850 7450 5850
Wire Wire Line
	7150 5950 7450 5950
Entry Wire Line
	6950 4350 7050 4250
Entry Wire Line
	6950 4450 7050 4350
Entry Wire Line
	6950 4550 7050 4450
Entry Wire Line
	6950 4650 7050 4550
Entry Wire Line
	6950 4750 7050 4650
Entry Wire Line
	6950 4850 7050 4750
Entry Wire Line
	6950 4950 7050 4850
Entry Wire Line
	6950 5050 7050 4950
Entry Wire Line
	6950 5150 7050 5050
Entry Wire Line
	6950 5250 7050 5150
Entry Wire Line
	6950 5350 7050 5250
Entry Wire Line
	6950 5450 7050 5350
Wire Wire Line
	6250 4350 6950 4350
Wire Wire Line
	6250 4450 6950 4450
Wire Wire Line
	6250 4550 6950 4550
Wire Wire Line
	6250 4650 6950 4650
Wire Wire Line
	6250 4750 6950 4750
Wire Wire Line
	6250 4850 6950 4850
Wire Wire Line
	6250 4950 6950 4950
Wire Wire Line
	6250 5050 6950 5050
Wire Wire Line
	6250 5150 6950 5150
Wire Wire Line
	6250 5250 6950 5250
Wire Wire Line
	6250 5350 6950 5350
Wire Wire Line
	6250 5450 6950 5450
Text Label 6250 4350 0    50   ~ 0
addr0
Text Label 6250 4450 0    50   ~ 0
addr1
Text Label 6250 4550 0    50   ~ 0
addr2
Text Label 6250 4650 0    50   ~ 0
addr3
Text Label 6250 4750 0    50   ~ 0
addr4
Text Label 6250 4850 0    50   ~ 0
addr5
Text Label 6250 4950 0    50   ~ 0
addr6
Text Label 6250 5050 0    50   ~ 0
addr7
Text Label 6250 5150 0    50   ~ 0
addr8
Text Label 6250 5250 0    50   ~ 0
addr9
Text Label 6250 5350 0    50   ~ 0
addr10
Text Label 6250 5450 0    50   ~ 0
addr11
Text Label 7450 5950 2    50   ~ 0
addr0
Text Label 7450 5850 2    50   ~ 0
addr1
Text Label 7450 5750 2    50   ~ 0
addr2
Text Label 7450 5650 2    50   ~ 0
addr3
Text Label 7450 3950 2    50   ~ 0
addr4
Text Label 7450 3850 2    50   ~ 0
addr5
Text Label 7450 3750 2    50   ~ 0
addr6
Text Label 7450 3650 2    50   ~ 0
addr7
Text Label 7450 2050 2    50   ~ 0
addr8
Text Label 7450 1950 2    50   ~ 0
addr9
Text Label 7450 1850 2    50   ~ 0
addr10
Text Label 7450 1750 2    50   ~ 0
addr11
Text Label 7050 3350 1    50   ~ 0
addr[0:11]
Wire Wire Line
	4500 1000 7000 1000
Wire Wire Line
	4500 6250 6250 6250
Wire Wire Line
	6250 6250 6250 5950
Text GLabel 5550 3000 0    50   Output ~ 0
bl_activ
Entry Wire Line
	6950 1750 7050 1850
Entry Wire Line
	6950 1850 7050 1950
Entry Wire Line
	6950 1950 7050 2050
Entry Wire Line
	6950 2050 7050 2150
Entry Wire Line
	6950 2150 7050 2250
Entry Wire Line
	6950 2250 7050 2350
Entry Wire Line
	6950 2350 7050 2450
Entry Wire Line
	6950 2450 7050 2550
Entry Wire Line
	6950 2550 7050 2650
Entry Wire Line
	6950 2650 7050 2750
Entry Wire Line
	6950 2750 7050 2850
Entry Wire Line
	6950 2850 7050 2950
Wire Wire Line
	6700 1750 6950 1750
Wire Wire Line
	6700 1850 6950 1850
Wire Wire Line
	6700 1950 6950 1950
Wire Wire Line
	6700 2050 6950 2050
Wire Wire Line
	6700 2150 6950 2150
Wire Wire Line
	6700 2250 6950 2250
Wire Wire Line
	6700 2350 6950 2350
Wire Wire Line
	6700 2450 6950 2450
Wire Wire Line
	6700 2550 6950 2550
Wire Wire Line
	6700 2650 6950 2650
Wire Wire Line
	6700 2750 6950 2750
Wire Wire Line
	6700 2850 6950 2850
$Comp
L power:GND #PWR0104
U 1 1 5F7EFB96
P 5750 6100
F 0 "#PWR0104" H 5750 5850 50  0001 C CNN
F 1 "GND" H 5755 5927 50  0000 C CNN
F 2 "" H 5750 6100 50  0001 C CNN
F 3 "" H 5750 6100 50  0001 C CNN
	1    5750 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5F84EE46
P 7950 2650
F 0 "#PWR0124" H 7950 2400 50  0001 C CNN
F 1 "GND" V 7955 2522 50  0000 R CNN
F 2 "" H 7950 2650 50  0001 C CNN
F 3 "" H 7950 2650 50  0001 C CNN
	1    7950 2650
	0    -1   -1   0   
$EndComp
Text Label 6700 2850 0    50   ~ 0
addr0
Text Label 6700 2750 0    50   ~ 0
addr1
Text Label 6700 2650 0    50   ~ 0
addr2
Text Label 6700 2550 0    50   ~ 0
addr3
Text Label 6700 2450 0    50   ~ 0
addr4
Text Label 6700 2350 0    50   ~ 0
addr5
Text Label 6700 2250 0    50   ~ 0
addr6
Text Label 6700 2150 0    50   ~ 0
addr7
Text Label 6700 2050 0    50   ~ 0
addr8
Text Label 6700 1950 0    50   ~ 0
addr9
Text Label 6700 1850 0    50   ~ 0
addr10
Text Label 6700 1750 0    50   ~ 0
addr11
$Comp
L 74xx:74LS02 U5
U 3 1 5F1B039B
P 6700 1450
F 0 "U5" H 6700 1133 50  0000 C CNN
F 1 "74HC02" H 6700 1224 50  0000 C CNN
F 2 "" H 6700 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 6700 1450 50  0001 C CNN
	3    6700 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 2800 4500 2800
Connection ~ 4500 2800
Wire Wire Line
	4500 2800 4500 1000
Wire Wire Line
	4500 2800 4350 2800
Wire Wire Line
	4500 2800 4500 6250
Text HLabel 8450 1750 2    50   Input ~ 0
pcld11
NoConn ~ 1250 2000
Wire Bus Line
	7050 1650 7050 6050
$Comp
L power:GND #PWR0110
U 1 1 5F641D18
P 1550 2300
F 0 "#PWR0110" H 1550 2050 50  0001 C CNN
F 1 "GND" H 1555 2127 50  0000 C CNN
F 2 "" H 1550 2300 50  0001 C CNN
F 3 "" H 1550 2300 50  0001 C CNN
	1    1550 2300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0111
U 1 1 5F6425D9
P 1550 1700
F 0 "#PWR0111" H 1550 1550 50  0001 C CNN
F 1 "VCC" H 1565 1873 50  0000 C CNN
F 2 "" H 1550 1700 50  0001 C CNN
F 3 "" H 1550 1700 50  0001 C CNN
	1    1550 1700
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP14 OSC1
U 1 1 5F658449
P 1550 2000
F 0 "OSC1" H 1050 2050 50  0000 L CNN
F 1 "2.000MHZ" H 850 1950 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-14" H 2000 1650 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 1450 2000 50  0001 C CNN
	1    1550 2000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
