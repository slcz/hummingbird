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
F 1 "74LS138" H 9250 4400 50  0000 C CNN
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
P 4100 1800
F 0 "OUT1" H 4100 2781 50  0000 C CNN
F 1 "74LS377" H 4100 2690 50  0000 C CNN
F 2 "" H 4100 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 4100 1800 50  0001 C CNN
	1    4100 1800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS377 OUT2
U 1 1 5F467535
P 4100 3700
F 0 "OUT2" H 4100 4681 50  0000 C CNN
F 1 "74LS377" H 4100 4590 50  0000 C CNN
F 2 "" H 4100 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 4100 3700 50  0001 C CNN
	1    4100 3700
	1    0    0    -1  
$EndComp
Text HLabel 2700 2500 0    50   3State ~ 0
d0
Text HLabel 2700 2600 0    50   3State ~ 0
d1
Text HLabel 2700 2700 0    50   3State ~ 0
d2
Text HLabel 2700 2800 0    50   3State ~ 0
d3
Text HLabel 2700 2900 0    50   3State ~ 0
d4
Text HLabel 2700 3000 0    50   3State ~ 0
d5
Text HLabel 2700 3100 0    50   BiDi ~ 0
d6
Text HLabel 2700 3200 0    50   3State ~ 0
d7
Entry Wire Line
	2900 2500 3000 2600
Entry Wire Line
	2900 2600 3000 2700
Entry Wire Line
	2900 2700 3000 2800
Entry Wire Line
	2900 2800 3000 2900
Entry Wire Line
	2900 2900 3000 3000
Entry Wire Line
	2900 3000 3000 3100
Entry Wire Line
	2900 3100 3000 3200
Entry Wire Line
	2900 3200 3000 3300
Wire Wire Line
	2700 2500 2900 2500
Wire Wire Line
	2700 2600 2900 2600
Wire Wire Line
	2700 2700 2900 2700
Wire Wire Line
	2700 2800 2900 2800
Wire Wire Line
	2700 2900 2900 2900
Wire Wire Line
	2700 3000 2900 3000
Wire Wire Line
	2700 3100 2900 3100
Wire Wire Line
	2700 3200 2900 3200
Entry Wire Line
	3100 1300 3000 1400
Entry Wire Line
	3100 1400 3000 1500
Entry Wire Line
	3100 1500 3000 1600
Entry Wire Line
	3000 1700 3100 1600
Entry Wire Line
	3100 1700 3000 1800
Entry Wire Line
	3100 1800 3000 1900
Entry Wire Line
	3100 1900 3000 2000
Entry Wire Line
	3100 2000 3000 2100
Wire Wire Line
	3100 1300 3600 1300
Wire Wire Line
	3100 1400 3600 1400
Wire Wire Line
	3100 1500 3600 1500
Wire Wire Line
	3100 1600 3600 1600
Wire Wire Line
	3100 1700 3600 1700
Wire Wire Line
	3100 1800 3600 1800
Wire Wire Line
	3100 1900 3600 1900
Wire Wire Line
	3100 2000 3600 2000
Entry Wire Line
	3100 3200 3000 3300
Entry Wire Line
	3100 3300 3000 3400
Entry Wire Line
	3100 3400 3000 3500
Entry Wire Line
	3000 3600 3100 3500
Entry Wire Line
	3100 3600 3000 3700
Entry Wire Line
	3100 3700 3000 3800
Entry Wire Line
	3100 3800 3000 3900
Entry Wire Line
	3100 3900 3000 4000
Wire Wire Line
	3100 3200 3600 3200
Wire Wire Line
	3100 3300 3600 3300
Wire Wire Line
	3100 3400 3600 3400
Wire Wire Line
	3100 3500 3600 3500
Wire Wire Line
	3100 3600 3600 3600
Wire Wire Line
	3100 3700 3600 3700
Wire Wire Line
	3100 3800 3600 3800
Wire Wire Line
	3100 3900 3600 3900
Text Label 3600 1300 2    50   ~ 0
d0
Text Label 3600 1400 2    50   ~ 0
d1
Text Label 3600 1500 2    50   ~ 0
d2
Text Label 3600 1600 2    50   ~ 0
d3
Text Label 3600 1700 2    50   ~ 0
d4
Text Label 3600 1800 2    50   ~ 0
d5
Text Label 3600 1900 2    50   ~ 0
d6
Text Label 3600 2000 2    50   ~ 0
d7
Text Label 3600 3200 2    50   ~ 0
d0
Text Label 3600 3300 2    50   ~ 0
d1
Text Label 3600 3400 2    50   ~ 0
d2
Text Label 3600 3500 2    50   ~ 0
d3
Text Label 3600 3600 2    50   ~ 0
d4
Text Label 3600 3700 2    50   ~ 0
d5
Text Label 3600 3800 2    50   ~ 0
d6
Text Label 3600 3900 2    50   ~ 0
d7
Text Label 3000 2400 1    50   ~ 0
d[0:7]
Text GLabel 3600 2200 0    50   Input ~ 0
clk
Text GLabel 3600 4100 0    50   Input ~ 0
clk
$Comp
L power:GND #PWR041
U 1 1 5F482315
P 4100 4500
F 0 "#PWR041" H 4100 4250 50  0001 C CNN
F 1 "GND" V 4105 4372 50  0000 R CNN
F 2 "" H 4100 4500 50  0001 C CNN
F 3 "" H 4100 4500 50  0001 C CNN
	1    4100 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5F4846A8
P 4100 2600
F 0 "#PWR031" H 4100 2350 50  0001 C CNN
F 1 "GND" V 4105 2472 50  0000 R CNN
F 2 "" H 4100 2600 50  0001 C CNN
F 3 "" H 4100 2600 50  0001 C CNN
	1    4100 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR038
U 1 1 5F4859FD
P 4100 2900
F 0 "#PWR038" H 4100 2750 50  0001 C CNN
F 1 "VCC" V 4115 3027 50  0000 L CNN
F 2 "" H 4100 2900 50  0001 C CNN
F 3 "" H 4100 2900 50  0001 C CNN
	1    4100 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR022
U 1 1 5F485F09
P 4100 1000
F 0 "#PWR022" H 4100 850 50  0001 C CNN
F 1 "VCC" V 4115 1127 50  0000 L CNN
F 2 "" H 4100 1000 50  0001 C CNN
F 3 "" H 4100 1000 50  0001 C CNN
	1    4100 1000
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS374 IN1
U 1 1 5F486D63
P 9250 3000
F 0 "IN1" H 9250 3981 50  0000 C CNN
F 1 "74LS374" H 9250 3890 50  0000 C CNN
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
P 5500 1500
F 0 "LCD16x2" H 5500 2381 50  0000 C CNN
F 1 "RC1602A" H 5500 2290 50  0000 C CNN
F 2 "Display:RC1602A" H 5600 700 50  0001 C CNN
F 3 "http://www.raystar-optronics.com/down.php?ProID=18" H 5600 1400 50  0001 C CNN
	1    5500 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1300 5100 1300
Wire Wire Line
	4600 1400 5100 1400
Wire Wire Line
	4600 1500 5100 1500
Wire Wire Line
	4600 1600 5100 1600
Wire Wire Line
	4600 1700 5100 1700
Wire Wire Line
	4600 1800 5100 1800
Wire Wire Line
	4600 1900 5100 1900
Wire Wire Line
	4600 2000 5100 2000
$Comp
L power:VCC #PWR044
U 1 1 5F4C1D62
P 5500 800
F 0 "#PWR044" H 5500 650 50  0001 C CNN
F 1 "VCC" V 5515 927 50  0000 L CNN
F 2 "" H 5500 800 50  0001 C CNN
F 3 "" H 5500 800 50  0001 C CNN
	1    5500 800 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5F4C2736
P 5100 1100
F 0 "#PWR042" H 5100 850 50  0001 C CNN
F 1 "GND" V 5105 972 50  0000 R CNN
F 2 "" H 5100 1100 50  0001 C CNN
F 3 "" H 5100 1100 50  0001 C CNN
	1    5100 1100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR048
U 1 1 5F4C2C78
P 5900 1700
F 0 "#PWR048" H 5900 1450 50  0001 C CNN
F 1 "GND" V 5905 1572 50  0000 R CNN
F 2 "" H 5900 1700 50  0001 C CNN
F 3 "" H 5900 1700 50  0001 C CNN
	1    5900 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F4C32CF
P 6350 1800
F 0 "R2" V 6557 1800 50  0000 C CNN
F 1 "R" V 6466 1800 50  0000 C CNN
F 2 "" V 6280 1800 50  0001 C CNN
F 3 "~" H 6350 1800 50  0001 C CNN
	1    6350 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR050
U 1 1 5F4C6870
P 6900 1800
F 0 "#PWR050" H 6900 1650 50  0001 C CNN
F 1 "VCC" V 6915 1928 50  0000 L CNN
F 2 "" H 6900 1800 50  0001 C CNN
F 3 "" H 6900 1800 50  0001 C CNN
	1    6900 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 1300 6550 1300
$Comp
L Device:R_POT RV1
U 1 1 5F4CE031
P 6700 1300
F 0 "RV1" H 6630 1254 50  0000 R CNN
F 1 "R_POT" H 6630 1345 50  0000 R CNN
F 2 "" H 6700 1300 50  0001 C CNN
F 3 "~" H 6700 1300 50  0001 C CNN
	1    6700 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 1800 6700 1800
Wire Wire Line
	6700 1450 6700 1800
Connection ~ 6700 1800
Wire Wire Line
	6700 1800 6900 1800
$Comp
L power:GND #PWR049
U 1 1 5F4D3AB4
P 6700 1150
F 0 "#PWR049" H 6700 900 50  0001 C CNN
F 1 "GND" H 6705 977 50  0000 C CNN
F 2 "" H 6700 1150 50  0001 C CNN
F 3 "" H 6700 1150 50  0001 C CNN
	1    6700 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 1000 5100 1000
Wire Wire Line
	4600 3300 4750 3300
Wire Wire Line
	4750 3300 4750 1200
Wire Wire Line
	4750 1200 5100 1200
$Comp
L Device:Buzzer BZ1
U 1 1 5F4DBB13
P 5700 3500
F 0 "BZ1" H 5852 3529 50  0000 L CNN
F 1 "Buzzer" H 5852 3438 50  0000 L CNN
F 2 "" V 5675 3600 50  0001 C CNN
F 3 "~" V 5675 3600 50  0001 C CNN
	1    5700 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F4DEB5B
P 5600 3750
F 0 "R3" H 5670 3796 50  0000 L CNN
F 1 "R" H 5670 3705 50  0000 L CNN
F 2 "" V 5530 3750 50  0001 C CNN
F 3 "~" H 5600 3750 50  0001 C CNN
	1    5600 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR047
U 1 1 5F4DF5DC
P 5600 3900
F 0 "#PWR047" H 5600 3650 50  0001 C CNN
F 1 "GND" H 5605 3727 50  0000 C CNN
F 2 "" H 5600 3900 50  0001 C CNN
F 3 "" H 5600 3900 50  0001 C CNN
	1    5600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3400 5600 3400
$Comp
L Device:LED D1
U 1 1 5F4E3E37
P 5150 3700
F 0 "D1" H 5143 3917 50  0000 C CNN
F 1 "LED" H 5143 3826 50  0000 C CNN
F 2 "" H 5150 3700 50  0001 C CNN
F 3 "~" H 5150 3700 50  0001 C CNN
	1    5150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3500 5000 3500
Wire Wire Line
	5000 3500 5000 3700
$Comp
L Device:R R4
U 1 1 5F4E6982
P 5300 3850
F 0 "R4" H 5370 3896 50  0000 L CNN
F 1 "R" H 5370 3805 50  0000 L CNN
F 2 "" V 5230 3850 50  0001 C CNN
F 3 "~" H 5300 3850 50  0001 C CNN
	1    5300 3850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR043
U 1 1 5F4E6ECE
P 5300 4000
F 0 "#PWR043" H 5300 3850 50  0001 C CNN
F 1 "VCC" H 5315 4173 50  0000 C CNN
F 2 "" H 5300 4000 50  0001 C CNN
F 3 "" H 5300 4000 50  0001 C CNN
	1    5300 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5F501003
P 7450 5100
F 0 "R5" V 7243 5100 50  0000 C CNN
F 1 "R" V 7334 5100 50  0000 C CNN
F 2 "" V 7380 5100 50  0001 C CNN
F 3 "~" H 7450 5100 50  0001 C CNN
	1    7450 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5F501673
P 7450 5450
F 0 "R6" V 7243 5450 50  0000 C CNN
F 1 "R" V 7334 5450 50  0000 C CNN
F 2 "" V 7380 5450 50  0001 C CNN
F 3 "~" H 7450 5450 50  0001 C CNN
	1    7450 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F50234B
P 7450 5750
F 0 "R7" V 7243 5750 50  0000 C CNN
F 1 "R" V 7334 5750 50  0000 C CNN
F 2 "" V 7380 5750 50  0001 C CNN
F 3 "~" H 7450 5750 50  0001 C CNN
	1    7450 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5F50250A
P 7450 6050
F 0 "R8" V 7243 6050 50  0000 C CNN
F 1 "R" V 7334 6050 50  0000 C CNN
F 2 "" V 7380 6050 50  0001 C CNN
F 3 "~" H 7450 6050 50  0001 C CNN
	1    7450 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 5750 7300 5750
Wire Wire Line
	7050 6050 7300 6050
Wire Wire Line
	7600 5100 7600 5450
Connection ~ 7600 5450
Wire Wire Line
	7600 5450 7600 5750
Connection ~ 7600 5750
Wire Wire Line
	7600 5750 7600 6050
$Comp
L power:GND #PWR051
U 1 1 5F50D756
P 7600 6050
F 0 "#PWR051" H 7600 5800 50  0001 C CNN
F 1 "GND" H 7605 5877 50  0000 C CNN
F 2 "" H 7600 6050 50  0001 C CNN
F 3 "" H 7600 6050 50  0001 C CNN
	1    7600 6050
	1    0    0    -1  
$EndComp
Connection ~ 7600 6050
Wire Wire Line
	6600 5300 7000 5300
Wire Wire Line
	7250 5450 7300 5450
Wire Wire Line
	6900 4000 8250 4000
Wire Wire Line
	6950 4050 8300 4050
Wire Wire Line
	7000 4100 8350 4100
Wire Wire Line
	7050 4150 8400 4150
Wire Wire Line
	4600 1000 4600 3200
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
P 5900 1300
F 0 "#FLG0103" H 5900 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 5900 1473 50  0000 C CNN
F 2 "" H 5900 1300 50  0001 C CNN
F 3 "~" H 5900 1300 50  0001 C CNN
	1    5900 1300
	1    0    0    -1  
$EndComp
Connection ~ 5900 1300
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5F6470EF
P 5900 1800
F 0 "#FLG0104" H 5900 1875 50  0001 C CNN
F 1 "PWR_FLAG" H 5900 1973 50  0000 C CNN
F 2 "" H 5900 1800 50  0001 C CNN
F 3 "~" H 5900 1800 50  0001 C CNN
	1    5900 1800
	-1   0    0    1   
$EndComp
Connection ~ 5900 1800
Wire Wire Line
	5900 1800 6200 1800
Wire Wire Line
	8250 4000 8250 2500
Wire Wire Line
	8250 2500 8750 2500
Wire Wire Line
	8300 4050 8300 2600
Wire Wire Line
	8300 2600 8750 2600
Wire Wire Line
	8350 4100 8350 2700
Wire Wire Line
	8350 2700 8750 2700
Wire Wire Line
	8400 4150 8400 2800
Wire Wire Line
	8400 2800 8750 2800
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
$Comp
L power:GND #PWR0123
U 1 1 5F6D6D5D
P 8500 3200
F 0 "#PWR0123" H 8500 2950 50  0001 C CNN
F 1 "GND" H 8505 3027 50  0000 C CNN
F 2 "" H 8500 3200 50  0001 C CNN
F 3 "" H 8500 3200 50  0001 C CNN
	1    8500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3200 8750 3200
Wire Wire Line
	8750 3200 8750 3100
Connection ~ 8750 3200
Connection ~ 8750 3000
Wire Wire Line
	8750 3000 8750 2900
Connection ~ 8750 3100
Wire Wire Line
	8750 3100 8750 3000
Wire Bus Line
	3000 6400 10700 6400
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
Text Label 2700 2500 0    50   ~ 0
d0
Text Label 2700 2600 0    50   ~ 0
d1
Text Label 2700 2700 0    50   ~ 0
d2
Text Label 2700 2800 0    50   ~ 0
d3
Text Label 2700 2900 0    50   ~ 0
d4
Text Label 2700 3000 0    50   ~ 0
d5
Text Label 2700 3100 0    50   ~ 0
d6
Text Label 2700 3200 0    50   ~ 0
d7
Wire Wire Line
	4600 3900 4600 5400
Wire Wire Line
	4600 5400 5350 5400
Wire Wire Line
	4600 3800 4700 3800
Wire Wire Line
	4700 3800 4700 5300
Wire Wire Line
	4700 5300 5350 5300
Wire Wire Line
	4600 3700 4800 3700
Wire Wire Line
	4800 3700 4800 5200
Wire Wire Line
	4800 5200 5350 5200
Wire Wire Line
	4600 3600 4900 3600
Wire Wire Line
	4900 3600 4900 5100
Wire Wire Line
	4900 5100 5350 5100
NoConn ~ 8750 5300
Text Label 3400 2300 2    50   ~ 0
~odev1_en~
Wire Wire Line
	3400 2300 3600 2300
Text Label 3400 4200 2    50   ~ 0
~odev2_en~
Wire Wire Line
	3400 4200 3600 4200
$Comp
L Switch:4x4keypad K1
U 1 1 5F4F6F6B
P 6000 5150
F 0 "K1" H 6000 5565 50  0000 C CNN
F 1 "4x4keypad" H 6000 5474 50  0000 C CNN
F 2 "" H 6000 5150 50  0001 C CNN
F 3 "" H 6000 5150 50  0001 C CNN
	1    6000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5100 6900 5100
Wire Wire Line
	7150 5300 7150 5750
Wire Wire Line
	7250 5200 7250 5450
Wire Wire Line
	6600 5200 6950 5200
Wire Wire Line
	7050 5400 7050 6050
Wire Wire Line
	6900 4000 6900 5100
Connection ~ 6900 5100
Wire Wire Line
	6900 5100 7300 5100
Wire Wire Line
	6950 4050 6950 5200
Connection ~ 6950 5200
Wire Wire Line
	6950 5200 7250 5200
Wire Wire Line
	6600 5400 7050 5400
Wire Wire Line
	7000 4100 7000 5300
Connection ~ 7000 5300
Wire Wire Line
	7000 5300 7150 5300
Wire Wire Line
	7050 4150 7050 5400
Connection ~ 7050 5400
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
P 5500 2200
F 0 "#PWR045" H 5500 1950 50  0001 C CNN
F 1 "GND" H 5505 2027 50  0000 C CNN
F 2 "" H 5500 2200 50  0001 C CNN
F 3 "" H 5500 2200 50  0001 C CNN
	1    5500 2200
	1    0    0    -1  
$EndComp
NoConn ~ 8750 4900
Wire Bus Line
	10700 2400 10700 6400
Wire Bus Line
	3000 1000 3000 6400
$EndSCHEMATC
