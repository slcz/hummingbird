EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "I/O"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS138 IODEV_SEL1
U 1 1 5F4654E2
P 9250 5200
F 0 "IODEV_SEL1" H 9250 4300 50  0000 C CNN
F 1 "74HC138" H 9250 4400 50  0000 C CNN
F 2 "" H 9250 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 9250 5200 50  0001 C CNN
	1    9250 5200
	-1   0    0    1   
$EndComp
Text GLabel 9750 5000 2    50   Input ~ 0
io_space
$Comp
L power:GND #PWR069
U 1 1 5F465B46
P 9750 4500
F 0 "#PWR069" H 9750 4250 50  0001 C CNN
F 1 "GND" H 9755 4327 50  0000 C CNN
F 2 "" H 9750 4500 50  0001 C CNN
F 3 "" H 9750 4500 50  0001 C CNN
	1    9750 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	9750 4500 9250 4500
Text GLabel 9750 5300 2    50   Input ~ 0
~weram~
Text HLabel 9750 5400 2    50   Input ~ 0
io_address1
Text HLabel 9750 5500 2    50   Input ~ 0
io_address0
$Comp
L 74xx:74LS377 OUT1
U 1 1 5F4665E0
P 2500 1800
F 0 "OUT1" H 2500 2781 50  0000 C CNN
F 1 "74HC377" H 2500 2690 50  0000 C CNN
F 2 "" H 2500 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 2500 1800 50  0001 C CNN
	1    2500 1800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS377 OUT2
U 1 1 5F467535
P 2500 3700
F 0 "OUT2" H 2500 4681 50  0000 C CNN
F 1 "74HC377" H 2500 4590 50  0000 C CNN
F 2 "" H 2500 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 2500 3700 50  0001 C CNN
	1    2500 3700
	1    0    0    -1  
$EndComp
Text HLabel 1100 2500 0    50   3State ~ 0
d0
Text HLabel 1100 2600 0    50   3State ~ 0
d1
Text HLabel 1100 2700 0    50   3State ~ 0
d2
Text HLabel 1100 2800 0    50   3State ~ 0
d3
Text HLabel 1100 2900 0    50   3State ~ 0
d4
Text HLabel 1100 3000 0    50   3State ~ 0
d5
Text HLabel 1100 3100 0    50   BiDi ~ 0
d6
Text HLabel 1100 3200 0    50   3State ~ 0
d7
Text Label 2000 1300 2    50   ~ 0
d0
Text Label 2000 1400 2    50   ~ 0
d1
Text Label 2000 1500 2    50   ~ 0
d2
Text Label 2000 1600 2    50   ~ 0
d3
Text Label 2000 1700 2    50   ~ 0
d4
Text Label 2000 1800 2    50   ~ 0
d5
Text Label 2000 1900 2    50   ~ 0
d6
Text Label 2000 2000 2    50   ~ 0
d7
Text Label 2000 3200 2    50   ~ 0
d0
Text Label 2000 3300 2    50   ~ 0
d1
Text Label 2000 3400 2    50   ~ 0
d2
Text Label 2000 3500 2    50   ~ 0
d3
Text Label 2000 3600 2    50   ~ 0
d4
Text Label 2000 3700 2    50   ~ 0
d5
Text Label 2000 3800 2    50   ~ 0
d6
Text Label 2000 3900 2    50   ~ 0
d7
Text GLabel 2000 2200 0    50   Input ~ 0
clk
Text GLabel 2000 4100 0    50   Input ~ 0
clk
$Comp
L power:GND #PWR041
U 1 1 5F482315
P 2500 4500
F 0 "#PWR041" H 2500 4250 50  0001 C CNN
F 1 "GND" V 2505 4372 50  0000 R CNN
F 2 "" H 2500 4500 50  0001 C CNN
F 3 "" H 2500 4500 50  0001 C CNN
	1    2500 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5F4846A8
P 2500 2600
F 0 "#PWR031" H 2500 2350 50  0001 C CNN
F 1 "GND" V 2505 2472 50  0000 R CNN
F 2 "" H 2500 2600 50  0001 C CNN
F 3 "" H 2500 2600 50  0001 C CNN
	1    2500 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR038
U 1 1 5F4859FD
P 2500 2900
F 0 "#PWR038" H 2500 2750 50  0001 C CNN
F 1 "VCC" V 2515 3027 50  0000 L CNN
F 2 "" H 2500 2900 50  0001 C CNN
F 3 "" H 2500 2900 50  0001 C CNN
	1    2500 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR022
U 1 1 5F485F09
P 2500 1000
F 0 "#PWR022" H 2500 850 50  0001 C CNN
F 1 "VCC" V 2515 1127 50  0000 L CNN
F 2 "" H 2500 1000 50  0001 C CNN
F 3 "" H 2500 1000 50  0001 C CNN
	1    2500 1000
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS374 IN1
U 1 1 5F486D63
P 9250 3000
F 0 "IN1" H 9250 3981 50  0000 C CNN
F 1 "74HC374" H 9250 3890 50  0000 C CNN
F 2 "" H 9250 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS374" H 9250 3000 50  0001 C CNN
	1    9250 3000
	1    0    0    -1  
$EndComp
Entry Wire Line
	10700 3300 10600 3200
Entry Wire Line
	10700 3200 10600 3100
Entry Wire Line
	10700 3100 10600 3000
Entry Wire Line
	10700 3000 10600 2900
Entry Wire Line
	10700 2900 10600 2800
Entry Wire Line
	10700 2800 10600 2700
Entry Wire Line
	10700 2700 10600 2600
Entry Wire Line
	10600 2500 10700 2600
$Comp
L power:GND #PWR067
U 1 1 5F4991DE
P 9250 3800
F 0 "#PWR067" H 9250 3550 50  0001 C CNN
F 1 "GND" H 9255 3627 50  0000 C CNN
F 2 "" H 9250 3800 50  0001 C CNN
F 3 "" H 9250 3800 50  0001 C CNN
	1    9250 3800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR061
U 1 1 5F49971A
P 9250 2200
F 0 "#PWR061" H 9250 2050 50  0001 C CNN
F 1 "VCC" V 9265 2327 50  0000 L CNN
F 2 "" H 9250 2200 50  0001 C CNN
F 3 "" H 9250 2200 50  0001 C CNN
	1    9250 2200
	0    -1   -1   0   
$EndComp
Text Label 8750 5500 2    50   ~ 0
~odev1_en~
Text Label 8750 5400 2    50   ~ 0
~odev2_en~
$Comp
L Display_Character:RC1602A LCD16x2
U 1 1 5F4ACD6B
P 5150 1500
F 0 "LCD16x2" H 5150 2381 50  0000 C CNN
F 1 "RC1602A" H 5150 2290 50  0000 C CNN
F 2 "Display:RC1602A" H 5250 700 50  0001 C CNN
F 3 "http://www.raystar-optronics.com/down.php?ProID=18" H 5250 1400 50  0001 C CNN
	1    5150 1500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR044
U 1 1 5F4C1D62
P 5150 800
F 0 "#PWR044" H 5150 650 50  0001 C CNN
F 1 "VCC" V 5165 927 50  0000 L CNN
F 2 "" H 5150 800 50  0001 C CNN
F 3 "" H 5150 800 50  0001 C CNN
	1    5150 800 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5F4C2736
P 4750 1100
F 0 "#PWR042" H 4750 850 50  0001 C CNN
F 1 "GND" V 4755 972 50  0000 R CNN
F 2 "" H 4750 1100 50  0001 C CNN
F 3 "" H 4750 1100 50  0001 C CNN
	1    4750 1100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR048
U 1 1 5F4C2C78
P 5550 1700
F 0 "#PWR048" H 5550 1450 50  0001 C CNN
F 1 "GND" V 5555 1572 50  0000 R CNN
F 2 "" H 5550 1700 50  0001 C CNN
F 3 "" H 5550 1700 50  0001 C CNN
	1    5550 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F4C32CF
P 6000 1800
F 0 "R2" V 6207 1800 50  0000 C CNN
F 1 "R220" V 6116 1800 50  0000 C CNN
F 2 "" V 5930 1800 50  0001 C CNN
F 3 "~" H 6000 1800 50  0001 C CNN
	1    6000 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR050
U 1 1 5F4C6870
P 6550 1800
F 0 "#PWR050" H 6550 1650 50  0001 C CNN
F 1 "VCC" V 6565 1928 50  0000 L CNN
F 2 "" H 6550 1800 50  0001 C CNN
F 3 "" H 6550 1800 50  0001 C CNN
	1    6550 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 1300 6200 1300
$Comp
L Device:R_POT RV1
U 1 1 5F4CE031
P 6350 1300
F 0 "RV1" H 6280 1254 50  0000 R CNN
F 1 "R_POT" H 6280 1345 50  0000 R CNN
F 2 "" H 6350 1300 50  0001 C CNN
F 3 "~" H 6350 1300 50  0001 C CNN
	1    6350 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 1800 6350 1800
Wire Wire Line
	6350 1450 6350 1800
Connection ~ 6350 1800
Wire Wire Line
	6350 1800 6550 1800
$Comp
L power:GND #PWR049
U 1 1 5F4D3AB4
P 6350 1150
F 0 "#PWR049" H 6350 900 50  0001 C CNN
F 1 "GND" H 6355 977 50  0000 C CNN
F 2 "" H 6350 1150 50  0001 C CNN
F 3 "" H 6350 1150 50  0001 C CNN
	1    6350 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5F4DBB13
P 3700 5350
F 0 "BZ1" H 3852 5379 50  0000 L CNN
F 1 "Buzzer" H 3852 5288 50  0000 L CNN
F 2 "" V 3675 5450 50  0001 C CNN
F 3 "~" V 3675 5450 50  0001 C CNN
	1    3700 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F4DEB5B
P 3600 5600
F 0 "R3" H 3670 5646 50  0000 L CNN
F 1 "R1K" H 3670 5555 50  0000 L CNN
F 2 "" V 3530 5600 50  0001 C CNN
F 3 "~" H 3600 5600 50  0001 C CNN
	1    3600 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR047
U 1 1 5F4DF5DC
P 3600 5750
F 0 "#PWR047" H 3600 5500 50  0001 C CNN
F 1 "GND" H 3605 5577 50  0000 C CNN
F 2 "" H 3600 5750 50  0001 C CNN
F 3 "" H 3600 5750 50  0001 C CNN
	1    3600 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5F4E3E37
P 3150 5450
F 0 "D1" H 3143 5667 50  0000 C CNN
F 1 "LED" H 3143 5576 50  0000 C CNN
F 2 "" H 3150 5450 50  0001 C CNN
F 3 "~" H 3150 5450 50  0001 C CNN
	1    3150 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F4E6982
P 3300 5600
F 0 "R4" H 3370 5646 50  0000 L CNN
F 1 "R330" H 3370 5555 50  0000 L CNN
F 2 "" V 3230 5600 50  0001 C CNN
F 3 "~" H 3300 5600 50  0001 C CNN
	1    3300 5600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR043
U 1 1 5F4E6ECE
P 3300 5750
F 0 "#PWR043" H 3300 5600 50  0001 C CNN
F 1 "VCC" H 3315 5923 50  0000 C CNN
F 2 "" H 3300 5750 50  0001 C CNN
F 3 "" H 3300 5750 50  0001 C CNN
	1    3300 5750
	-1   0    0    1   
$EndComp
Text Label 8750 5000 2    50   ~ 0
~idev1_en~
Text GLabel 8750 3400 0    50   Input ~ 0
clk
Text Label 8750 3500 2    50   ~ 0
~idev1_en~
NoConn ~ 8750 4800
NoConn ~ 8750 5100
NoConn ~ 8750 5200
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5F63211A
P 5550 1300
F 0 "#FLG0103" H 5550 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 5550 1473 50  0000 C CNN
F 2 "" H 5550 1300 50  0001 C CNN
F 3 "~" H 5550 1300 50  0001 C CNN
	1    5550 1300
	1    0    0    -1  
$EndComp
Connection ~ 5550 1300
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5F6470EF
P 5550 1800
F 0 "#FLG0104" H 5550 1875 50  0001 C CNN
F 1 "PWR_FLAG" H 5550 1973 50  0000 C CNN
F 2 "" H 5550 1800 50  0001 C CNN
F 3 "~" H 5550 1800 50  0001 C CNN
	1    5550 1800
	-1   0    0    1   
$EndComp
Connection ~ 5550 1800
Wire Wire Line
	5550 1800 5850 1800
Wire Wire Line
	9750 2500 10600 2500
Wire Wire Line
	9750 2600 10600 2600
Wire Wire Line
	9750 2700 10600 2700
Wire Wire Line
	9750 2800 10600 2800
Wire Wire Line
	9750 2900 10600 2900
Wire Wire Line
	9750 3000 10600 3000
Wire Wire Line
	9750 3100 10600 3100
Wire Wire Line
	9750 3200 10600 3200
Text Label 9750 2500 0    50   ~ 0
d0
Text Label 9750 2600 0    50   ~ 0
d1
Text Label 9750 2700 0    50   ~ 0
d2
Text Label 9750 2800 0    50   ~ 0
d3
Text Label 9750 2900 0    50   ~ 0
d4
Text Label 9750 3000 0    50   ~ 0
d5
Text Label 9750 3100 0    50   ~ 0
d6
Text Label 9750 3200 0    50   ~ 0
d7
Text Label 1100 2500 0    50   ~ 0
d0
Text Label 1100 2600 0    50   ~ 0
d1
Text Label 1100 2700 0    50   ~ 0
d2
Text Label 1100 2800 0    50   ~ 0
d3
Text Label 1100 2900 0    50   ~ 0
d4
Text Label 1100 3000 0    50   ~ 0
d5
Text Label 1100 3100 0    50   ~ 0
d6
Text Label 1100 3200 0    50   ~ 0
d7
NoConn ~ 8750 5300
Text Label 1800 2300 2    50   ~ 0
~odev1_en~
Wire Wire Line
	1800 2300 2000 2300
Text Label 1800 4200 2    50   ~ 0
~odev2_en~
Wire Wire Line
	1800 4200 2000 4200
Text GLabel 9750 4900 2    50   Input ~ 0
~csram~
Text GLabel 9750 4800 2    50   Input ~ 0
bl_activ
$Comp
L power:VCC #PWR0126
U 1 1 5F1FE7B1
P 9250 5800
F 0 "#PWR0126" H 9250 5650 50  0001 C CNN
F 1 "VCC" H 9265 5973 50  0000 C CNN
F 2 "" H 9250 5800 50  0001 C CNN
F 3 "" H 9250 5800 50  0001 C CNN
	1    9250 5800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR045
U 1 1 5F4C2265
P 5150 2200
F 0 "#PWR045" H 5150 1950 50  0001 C CNN
F 1 "GND" H 5155 2027 50  0000 C CNN
F 2 "" H 5150 2200 50  0001 C CNN
F 3 "" H 5150 2200 50  0001 C CNN
	1    5150 2200
	0    1    1    0   
$EndComp
NoConn ~ 8750 4900
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5F318BB6
P 6650 4850
F 0 "A1" H 6650 3761 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 6650 3670 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6650 4850 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 6650 4850 50  0001 C CNN
	1    6650 4850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC164 SER1
U 1 1 5F32DF59
P 7650 2800
F 0 "SER1" H 7650 3481 50  0000 C CNN
F 1 "74HC164" H 7650 3390 50  0000 C CNN
F 2 "" H 8550 2500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT164.pdf" H 8550 2500 50  0001 C CNN
	1    7650 2800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS165 SER2
U 1 1 5F32F184
P 5200 3450
F 0 "SER2" H 5200 4531 50  0000 C CNN
F 1 "74HC165" H 5200 4440 50  0000 C CNN
F 2 "" H 5200 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS165" H 5200 3450 50  0001 C CNN
	1    5200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3100 1300 3100
Wire Wire Line
	1100 3000 1300 3000
Wire Wire Line
	1100 2900 1300 2900
Wire Wire Line
	1100 2800 1300 2800
Wire Wire Line
	1100 2700 1300 2700
Wire Wire Line
	1100 2600 1300 2600
Wire Wire Line
	1100 2500 1300 2500
Wire Bus Line
	1400 6400 10700 6400
Text Label 1400 2400 1    50   ~ 0
d[0:7]
Entry Wire Line
	1500 3900 1400 4000
Entry Wire Line
	1500 3800 1400 3900
Entry Wire Line
	1500 3700 1400 3800
Entry Wire Line
	1500 3600 1400 3700
Entry Wire Line
	1400 3600 1500 3500
Entry Wire Line
	1500 3400 1400 3500
Entry Wire Line
	1500 3300 1400 3400
Entry Wire Line
	1500 3200 1400 3300
Entry Wire Line
	1500 2000 1400 2100
Entry Wire Line
	1500 1900 1400 2000
Entry Wire Line
	1500 1800 1400 1900
Entry Wire Line
	1500 1700 1400 1800
Entry Wire Line
	1400 1700 1500 1600
Entry Wire Line
	1500 1500 1400 1600
Entry Wire Line
	1500 1400 1400 1500
Entry Wire Line
	1500 1300 1400 1400
Entry Wire Line
	1300 3200 1400 3300
Entry Wire Line
	1300 3100 1400 3200
Entry Wire Line
	1300 3000 1400 3100
Entry Wire Line
	1300 2900 1400 3000
Entry Wire Line
	1300 2800 1400 2900
Entry Wire Line
	1300 2700 1400 2800
Entry Wire Line
	1300 2600 1400 2700
Entry Wire Line
	1300 2500 1400 2600
Wire Wire Line
	1100 3200 1300 3200
Wire Wire Line
	1500 1300 2000 1300
Wire Wire Line
	1500 1400 2000 1400
Wire Wire Line
	1500 1500 2000 1500
Wire Wire Line
	1500 1600 2000 1600
Wire Wire Line
	1500 1700 2000 1700
Wire Wire Line
	1500 1800 2000 1800
Wire Wire Line
	1500 1900 2000 1900
Wire Wire Line
	1500 2000 2000 2000
Wire Wire Line
	1500 3200 2000 3200
Wire Wire Line
	1500 3300 2000 3300
Wire Wire Line
	1500 3400 2000 3400
Wire Wire Line
	1500 3500 2000 3500
Wire Wire Line
	1500 3600 2000 3600
Wire Wire Line
	1500 3700 2000 3700
Wire Wire Line
	1500 3800 2000 3800
Wire Wire Line
	1500 3900 2000 3900
Wire Wire Line
	3000 1300 4600 1300
Wire Wire Line
	3000 1400 4500 1400
Wire Wire Line
	3000 1500 4400 1500
Wire Wire Line
	3000 1600 4300 1600
Wire Wire Line
	3000 1700 4200 1700
Wire Wire Line
	3000 1800 4100 1800
Wire Wire Line
	3000 1900 4000 1900
Wire Wire Line
	3000 2000 3900 2000
Wire Wire Line
	3000 3200 3250 3200
Wire Wire Line
	3250 3200 3250 1000
Wire Wire Line
	3250 1000 4750 1000
Wire Wire Line
	3000 3300 3350 3300
Wire Wire Line
	3350 3300 3350 1200
Wire Wire Line
	3350 1200 4750 1200
Wire Wire Line
	8050 2500 8750 2500
Wire Wire Line
	8050 2600 8750 2600
Wire Wire Line
	8050 2700 8750 2700
Wire Wire Line
	8050 2800 8750 2800
Wire Wire Line
	8050 2900 8750 2900
Wire Wire Line
	8050 3000 8750 3000
Wire Wire Line
	8050 3100 8750 3100
Wire Wire Line
	8050 3200 8750 3200
$Comp
L power:VCC #PWR0105
U 1 1 5F4822E7
P 7650 2300
F 0 "#PWR0105" H 7650 2150 50  0001 C CNN
F 1 "VCC" V 7665 2428 50  0000 L CNN
F 2 "" H 7650 2300 50  0001 C CNN
F 3 "" H 7650 2300 50  0001 C CNN
	1    7650 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5F484F2B
P 7650 3400
F 0 "#PWR0109" H 7650 3150 50  0001 C CNN
F 1 "GND" H 7655 3227 50  0000 C CNN
F 2 "" H 7650 3400 50  0001 C CNN
F 3 "" H 7650 3400 50  0001 C CNN
	1    7650 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0117
U 1 1 5F485BA6
P 7250 2600
F 0 "#PWR0117" H 7250 2450 50  0001 C CNN
F 1 "VCC" H 7265 2773 50  0000 C CNN
F 2 "" H 7250 2600 50  0001 C CNN
F 3 "" H 7250 2600 50  0001 C CNN
	1    7250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2800 7250 2900
$Comp
L power:VCC #PWR0118
U 1 1 5F488C89
P 5200 2550
F 0 "#PWR0118" H 5200 2400 50  0001 C CNN
F 1 "VCC" V 5215 2678 50  0000 L CNN
F 2 "" H 5200 2550 50  0001 C CNN
F 3 "" H 5200 2550 50  0001 C CNN
	1    5200 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5F489338
P 5200 4450
F 0 "#PWR0123" H 5200 4200 50  0001 C CNN
F 1 "GND" H 5205 4277 50  0000 C CNN
F 2 "" H 5200 4450 50  0001 C CNN
F 3 "" H 5200 4450 50  0001 C CNN
	1    5200 4450
	1    0    0    -1  
$EndComp
NoConn ~ 5700 2950
$Comp
L power:GND #PWR0127
U 1 1 5F49565E
P 4700 4150
F 0 "#PWR0127" H 4700 3900 50  0001 C CNN
F 1 "GND" H 4705 3977 50  0000 C CNN
F 2 "" H 4700 4150 50  0001 C CNN
F 3 "" H 4700 4150 50  0001 C CNN
	1    4700 4150
	1    0    0    -1  
$EndComp
NoConn ~ 6150 4250
NoConn ~ 6150 4350
Wire Wire Line
	7150 4250 7150 4350
$Comp
L power:VCC #PWR0128
U 1 1 5F49C066
P 7150 4350
F 0 "#PWR0128" H 7150 4200 50  0001 C CNN
F 1 "VCC" V 7165 4478 50  0000 L CNN
F 2 "" H 7150 4350 50  0001 C CNN
F 3 "" H 7150 4350 50  0001 C CNN
	1    7150 4350
	0    1    1    0   
$EndComp
Connection ~ 7150 4350
NoConn ~ 7150 4650
NoConn ~ 7150 4850
NoConn ~ 7150 4950
NoConn ~ 7150 5050
NoConn ~ 7150 5150
NoConn ~ 7150 5250
NoConn ~ 7150 5350
NoConn ~ 7150 5450
NoConn ~ 7150 5550
Wire Wire Line
	6650 5850 6750 5850
$Comp
L power:GND #PWR0129
U 1 1 5F4B2032
P 6750 5850
F 0 "#PWR0129" H 6750 5600 50  0001 C CNN
F 1 "GND" V 6755 5722 50  0000 R CNN
F 2 "" H 6750 5850 50  0001 C CNN
F 3 "" H 6750 5850 50  0001 C CNN
	1    6750 5850
	0    -1   -1   0   
$EndComp
Connection ~ 6750 5850
NoConn ~ 6750 3850
NoConn ~ 6550 3850
NoConn ~ 6150 5550
NoConn ~ 6150 5450
Wire Wire Line
	5700 2850 5850 2850
Wire Wire Line
	5850 2850 5850 4450
Wire Wire Line
	5850 4450 6150 4450
Wire Wire Line
	4700 2950 4600 2950
Wire Wire Line
	4600 2950 4600 1300
Connection ~ 4600 1300
Wire Wire Line
	4600 1300 4750 1300
Wire Wire Line
	4700 3050 4500 3050
Wire Wire Line
	4500 3050 4500 1400
Connection ~ 4500 1400
Wire Wire Line
	4500 1400 4750 1400
Wire Wire Line
	4700 3150 4400 3150
Wire Wire Line
	4400 3150 4400 1500
Connection ~ 4400 1500
Wire Wire Line
	4400 1500 4750 1500
Wire Wire Line
	4700 3250 4300 3250
Wire Wire Line
	4300 3250 4300 1600
Connection ~ 4300 1600
Wire Wire Line
	4300 1600 4750 1600
Wire Wire Line
	4700 3350 4200 3350
Wire Wire Line
	4200 3350 4200 1700
Connection ~ 4200 1700
Wire Wire Line
	4200 1700 4750 1700
Wire Wire Line
	4700 3450 4100 3450
Wire Wire Line
	4100 3450 4100 1800
Connection ~ 4100 1800
Wire Wire Line
	4100 1800 4750 1800
Wire Wire Line
	4700 3550 4000 3550
Wire Wire Line
	4000 3550 4000 1900
Connection ~ 4000 1900
Wire Wire Line
	4000 1900 4750 1900
Wire Wire Line
	4700 3650 3900 3650
Wire Wire Line
	3900 3650 3900 2000
Connection ~ 3900 2000
Wire Wire Line
	3900 2000 4750 2000
Wire Wire Line
	4700 3850 4400 3850
Wire Wire Line
	4400 3850 4400 4700
Wire Wire Line
	4400 4700 5850 4700
Wire Wire Line
	5850 4700 5850 4550
Wire Wire Line
	5850 4550 6150 4550
Wire Wire Line
	4700 4050 4500 4050
Wire Wire Line
	4500 4050 4500 4800
Wire Wire Line
	4500 4800 5950 4800
Wire Wire Line
	5950 4800 5950 4650
Wire Wire Line
	5950 4650 6150 4650
Wire Wire Line
	6150 4750 6050 4750
Wire Wire Line
	6050 4750 6050 2900
Wire Wire Line
	6050 2900 7250 2900
Connection ~ 7250 2900
Wire Wire Line
	6150 4850 6050 4850
Wire Wire Line
	6050 4850 6050 6150
Wire Wire Line
	6050 6150 7600 6150
Wire Wire Line
	7600 6150 7600 3650
Wire Wire Line
	7250 3650 7250 3100
Wire Wire Line
	7250 3650 7600 3650
Wire Wire Line
	3000 3400 3800 3400
Wire Wire Line
	3800 3400 3800 4950
Wire Wire Line
	3800 4950 6150 4950
Wire Wire Line
	3000 3500 3700 3500
Wire Wire Line
	3700 3500 3700 5050
Wire Wire Line
	3700 5050 6150 5050
Wire Wire Line
	3000 3600 3600 3600
Wire Wire Line
	3600 3600 3600 5150
Wire Wire Line
	3600 5150 6150 5150
Wire Wire Line
	3000 3700 3450 3700
Wire Wire Line
	3450 3700 3450 5250
Wire Wire Line
	3450 5250 3600 5250
Wire Wire Line
	3000 3800 3350 3800
Wire Wire Line
	3350 3800 3350 5150
Wire Wire Line
	3350 5150 3000 5150
Wire Wire Line
	3000 5150 3000 5450
NoConn ~ 3000 3900
$Comp
L Switch:SW_Push SWUP1
U 1 1 5F556358
P 5600 5950
F 0 "SWUP1" H 5600 6235 50  0000 C CNN
F 1 "SW_Push" H 5600 6144 50  0000 C CNN
F 2 "" H 5600 6150 50  0001 C CNN
F 3 "~" H 5600 6150 50  0001 C CNN
	1    5600 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5950 5950 5250
Wire Wire Line
	5950 5250 6150 5250
$Comp
L Switch:SW_Push SWDOWN1
U 1 1 5F55D88D
P 4800 5950
F 0 "SWDOWN1" H 4800 6235 50  0000 C CNN
F 1 "SW_Push" H 4800 6144 50  0000 C CNN
F 2 "" H 4800 6150 50  0001 C CNN
F 3 "~" H 4800 6150 50  0001 C CNN
	1    4800 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5950 5000 5350
$Comp
L Device:R R5
U 1 1 5F564A18
P 5000 6200
F 0 "R5" H 5070 6246 50  0000 L CNN
F 1 "R10K" H 5070 6155 50  0000 L CNN
F 2 "" V 4930 6200 50  0001 C CNN
F 3 "~" H 5000 6200 50  0001 C CNN
	1    5000 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5950 5000 6050
Connection ~ 5000 5950
$Comp
L power:VCC #PWR0131
U 1 1 5F5944D2
P 5000 6350
F 0 "#PWR0131" H 5000 6200 50  0001 C CNN
F 1 "VCC" V 5015 6477 50  0000 L CNN
F 2 "" H 5000 6350 50  0001 C CNN
F 3 "" H 5000 6350 50  0001 C CNN
	1    5000 6350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5000 5350 6150 5350
$Comp
L Device:R R6
U 1 1 5F5BB52D
P 5800 6200
F 0 "R6" H 5870 6246 50  0000 L CNN
F 1 "R10K" H 5870 6155 50  0000 L CNN
F 2 "" V 5730 6200 50  0001 C CNN
F 3 "~" H 5800 6200 50  0001 C CNN
	1    5800 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5950 5950 5950
Wire Wire Line
	5800 5950 5800 6050
Connection ~ 5800 5950
$Comp
L power:VCC #PWR0132
U 1 1 5F5DB9E6
P 5800 6350
F 0 "#PWR0132" H 5800 6200 50  0001 C CNN
F 1 "VCC" V 5815 6477 50  0000 L CNN
F 2 "" H 5800 6350 50  0001 C CNN
F 3 "" H 5800 6350 50  0001 C CNN
	1    5800 6350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5F5DC139
P 4600 5950
F 0 "#PWR0133" H 4600 5700 50  0001 C CNN
F 1 "GND" H 4605 5777 50  0000 C CNN
F 2 "" H 4600 5950 50  0001 C CNN
F 3 "" H 4600 5950 50  0001 C CNN
	1    4600 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5F5DC84A
P 5400 5950
F 0 "#PWR0134" H 5400 5700 50  0001 C CNN
F 1 "GND" H 5405 5777 50  0000 C CNN
F 2 "" H 5400 5950 50  0001 C CNN
F 3 "" H 5400 5950 50  0001 C CNN
	1    5400 5950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0130
U 1 1 5F5E059F
P 4700 2850
F 0 "#PWR0130" H 4700 2700 50  0001 C CNN
F 1 "VCC" H 4715 3023 50  0000 C CNN
F 2 "" H 4700 2850 50  0001 C CNN
F 3 "" H 4700 2850 50  0001 C CNN
	1    4700 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0135
U 1 1 5F5F36F5
P 6850 3850
F 0 "#PWR0135" H 6850 3700 50  0001 C CNN
F 1 "VCC" H 6865 4023 50  0000 C CNN
F 2 "" H 6850 3850 50  0001 C CNN
F 3 "" H 6850 3850 50  0001 C CNN
	1    6850 3850
	1    0    0    -1  
$EndComp
Wire Bus Line
	10700 2400 10700 6400
Wire Bus Line
	1400 1000 1400 6400
$EndSCHEMATC
