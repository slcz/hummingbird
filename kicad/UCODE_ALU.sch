EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title "Ucode, ALU, Accumulator and Flag register"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS181 ALU2
U 1 1 5EF61ADD
P 4600 2150
F 0 "ALU2" H 4600 950 50  0000 C CNN
F 1 "74HC181" H 4600 1050 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm" H 4600 2150 50  0001 C CNN
F 3 "74xx/74F181.pdf" H 4600 2150 50  0001 C CNN
	1    4600 2150
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS157 ADDRESS_DECODER1
U 1 1 5F08936C
P 9050 2200
F 0 "ADDRESS_DECODER1" H 9050 1019 50  0000 C CNN
F 1 "74LS157" H 9050 1110 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9050 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 9050 2200 50  0001 C CNN
	1    9050 2200
	-1   0    0    1   
$EndComp
Text HLabel 9550 2700 2    50   Input ~ 0
INST_0
Text HLabel 9550 2400 2    50   Input ~ 0
INST_1
Text HLabel 9550 2100 2    50   Input ~ 0
INST_2
Text HLabel 9550 1800 2    50   Input ~ 0
INST_3
Text HLabel 9550 2800 2    50   Input ~ 0
INST_4
Text HLabel 9550 2500 2    50   Input ~ 0
INST_5
Text HLabel 9550 2200 2    50   Input ~ 0
INST_6
Text HLabel 10700 1700 2    50   Input ~ 0
INST_7
$Comp
L power:GND #PWR066
U 1 1 5F08BC90
P 9550 1500
F 0 "#PWR066" H 9550 1250 50  0001 C CNN
F 1 "GND" V 9555 1372 50  0000 R CNN
F 2 "" H 9550 1500 50  0001 C CNN
F 3 "" H 9550 1500 50  0001 C CNN
	1    9550 1500
	0    -1   -1   0   
$EndComp
Text HLabel 7400 2250 2    50   Input ~ 0
phase0
Text HLabel 7400 2350 2    50   Input ~ 0
phase1
Text HLabel 7400 2450 2    50   Input ~ 0
phase2
Text HLabel 7400 2550 2    50   Input ~ 0
phase3
$Comp
L power:GND #PWR054
U 1 1 5F0A88CF
P 7400 2650
F 0 "#PWR054" H 7400 2400 50  0001 C CNN
F 1 "GND" V 7405 2522 50  0000 R CNN
F 2 "" H 7400 2650 50  0001 C CNN
F 3 "" H 7400 2650 50  0001 C CNN
	1    7400 2650
	0    -1   -1   0   
$EndComp
Text HLabel 7400 4700 2    50   Input ~ 0
phase0
Text HLabel 7400 4800 2    50   Input ~ 0
phase1
Text HLabel 7400 4900 2    50   Input ~ 0
phase2
Text HLabel 7400 5000 2    50   Input ~ 0
phase3
$Comp
L power:GND #PWR057
U 1 1 5F0A9A6F
P 7400 5100
F 0 "#PWR057" H 7400 4850 50  0001 C CNN
F 1 "GND" V 7405 4972 50  0000 R CNN
F 2 "" H 7400 5100 50  0001 C CNN
F 3 "" H 7400 5100 50  0001 C CNN
	1    7400 5100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR056
U 1 1 5F0B3289
P 7400 3200
F 0 "#PWR056" H 7400 2950 50  0001 C CNN
F 1 "GND" H 7405 3027 50  0000 C CNN
F 2 "" H 7400 3200 50  0001 C CNN
F 3 "" H 7400 3200 50  0001 C CNN
	1    7400 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR059
U 1 1 5F0B3763
P 7400 5650
F 0 "#PWR059" H 7400 5400 50  0001 C CNN
F 1 "GND" H 7405 5477 50  0000 C CNN
F 2 "" H 7400 5650 50  0001 C CNN
F 3 "" H 7400 5650 50  0001 C CNN
	1    7400 5650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR055
U 1 1 5F0B3CBC
P 7400 2850
F 0 "#PWR055" H 7400 2700 50  0001 C CNN
F 1 "VCC" V 7415 2978 50  0000 L CNN
F 2 "" H 7400 2850 50  0001 C CNN
F 3 "" H 7400 2850 50  0001 C CNN
	1    7400 2850
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR058
U 1 1 5F0B42DA
P 7400 5300
F 0 "#PWR058" H 7400 5150 50  0001 C CNN
F 1 "VCC" V 7415 5428 50  0000 L CNN
F 2 "" H 7400 5300 50  0001 C CNN
F 3 "" H 7400 5300 50  0001 C CNN
	1    7400 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 1600 9900 1600
Wire Wire Line
	8550 1900 8550 1750
Wire Wire Line
	8550 1750 7850 1750
Wire Wire Line
	8550 2200 8450 2200
Wire Wire Line
	8450 2200 8450 1650
Wire Wire Line
	8450 1650 7400 1650
Wire Wire Line
	8550 2500 8350 2500
Wire Wire Line
	8350 2500 8350 1550
Wire Wire Line
	8350 1550 7400 1550
Wire Wire Line
	8550 2800 8250 2800
Wire Wire Line
	8250 2800 8250 1450
Wire Wire Line
	8250 1450 7400 1450
Wire Wire Line
	9900 1600 9900 3300
Wire Wire Line
	9900 3300 8150 3300
Wire Wire Line
	8150 3300 8150 1850
Wire Wire Line
	8150 1850 7400 1850
Wire Wire Line
	8050 3950 8050 1950
Wire Wire Line
	8050 1950 7400 1950
Wire Wire Line
	7950 2050 7400 2050
Wire Wire Line
	7850 3100 7850 3900
Wire Wire Line
	7850 3900 7400 3900
Wire Wire Line
	8550 3200 7750 3200
Wire Wire Line
	7750 3200 7750 4000
Wire Wire Line
	7750 4000 7400 4000
Connection ~ 8550 2500
Wire Wire Line
	8450 2200 8450 3400
Wire Wire Line
	8450 3400 7650 3400
Wire Wire Line
	7650 3400 7650 4100
Wire Wire Line
	7650 4100 7400 4100
Connection ~ 8450 2200
Wire Wire Line
	7850 1750 7850 3000
Wire Wire Line
	7850 3000 7550 3000
Wire Wire Line
	7550 3000 7550 4200
Wire Wire Line
	7550 4200 7400 4200
Connection ~ 7850 1750
Wire Wire Line
	7850 1750 7400 1750
Wire Wire Line
	8150 3300 8150 4300
Wire Wire Line
	8150 4300 7400 4300
Connection ~ 8150 3300
Wire Wire Line
	8050 3950 8050 4400
Wire Wire Line
	8050 4400 7400 4400
Connection ~ 8050 3950
Wire Wire Line
	7950 4500 7400 4500
Wire Wire Line
	6900 5650 7400 5650
Connection ~ 7400 5650
Wire Wire Line
	6900 3200 7400 3200
Wire Wire Line
	7950 3850 7950 4500
Wire Wire Line
	7950 3850 7950 2050
Connection ~ 7950 3850
$Comp
L 74xx:74LS173 FLAG1
U 1 1 5EF6AC76
P 9100 4450
F 0 "FLAG1" H 9100 3350 50  0000 C CNN
F 1 "74HC173" H 9100 3450 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9100 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 9100 4450 50  0001 C CNN
	1    9100 4450
	-1   0    0    1   
$EndComp
Text Label 8600 5050 2    50   ~ 0
zout
Text Label 8600 4950 2    50   ~ 0
~cout~
Text Label 9600 5050 0    50   ~ 0
zin
Text Label 9600 4950 0    50   ~ 0
~cin~
$Comp
L power:GND #PWR063
U 1 1 5F0D02D1
P 9050 3100
F 0 "#PWR063" H 9050 2850 50  0001 C CNN
F 1 "GND" H 9055 2927 50  0000 C CNN
F 2 "" H 9050 3100 50  0001 C CNN
F 3 "" H 9050 3100 50  0001 C CNN
	1    9050 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR060
U 1 1 5F0D06FC
P 9600 4550
F 0 "#PWR060" H 9600 4300 50  0001 C CNN
F 1 "GND" V 9605 4422 50  0000 R CNN
F 2 "" H 9600 4550 50  0001 C CNN
F 3 "" H 9600 4550 50  0001 C CNN
	1    9600 4550
	0    -1   -1   0   
$EndComp
Text GLabel 9600 4050 2    50   Input ~ 0
clk
$Comp
L power:GND #PWR065
U 1 1 5F0D4A5C
P 9100 5350
F 0 "#PWR065" H 9100 5100 50  0001 C CNN
F 1 "GND" H 9105 5177 50  0000 C CNN
F 2 "" H 9100 5350 50  0001 C CNN
F 3 "" H 9100 5350 50  0001 C CNN
	1    9100 5350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR064
U 1 1 5F0D4DD7
P 9100 3550
F 0 "#PWR064" H 9100 3400 50  0001 C CNN
F 1 "VCC" V 9115 3677 50  0000 L CNN
F 2 "" H 9100 3550 50  0001 C CNN
F 3 "" H 9100 3550 50  0001 C CNN
	1    9100 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR062
U 1 1 5F0D5246
P 9050 1200
F 0 "#PWR062" H 9050 1050 50  0001 C CNN
F 1 "VCC" V 9065 1327 50  0000 L CNN
F 2 "" H 9050 1200 50  0001 C CNN
F 3 "" H 9050 1200 50  0001 C CNN
	1    9050 1200
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR052
U 1 1 5F0D55D6
P 6900 1150
F 0 "#PWR052" H 6900 1000 50  0001 C CNN
F 1 "VCC" V 6915 1277 50  0000 L CNN
F 2 "" H 6900 1150 50  0001 C CNN
F 3 "" H 6900 1150 50  0001 C CNN
	1    6900 1150
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR053
U 1 1 5F0D5AF4
P 6900 3600
F 0 "#PWR053" H 6900 3450 50  0001 C CNN
F 1 "VCC" V 6915 3727 50  0000 L CNN
F 2 "" H 6900 3600 50  0001 C CNN
F 3 "" H 6900 3600 50  0001 C CNN
	1    6900 3600
	0    -1   -1   0   
$EndComp
Text GLabel 6300 2350 0    50   Output ~ 0
incpc
Text GLabel 6300 2450 0    50   Output ~ 0
~loadpc~
Text Label 6300 2850 2    50   ~ 0
m
Text Label 6300 2950 2    50   ~ 0
s0
Text Label 6300 3050 2    50   ~ 0
s1
Text Label 6300 4800 2    50   ~ 0
s2
Text Label 6300 4900 2    50   ~ 0
s3
Text GLabel 5950 5000 0    50   Output ~ 0
~loadaddr~
Text GLabel 6300 5100 0    50   Output ~ 0
~csram~
Text GLabel 5950 5200 0    50   Output ~ 0
~weram~
Text GLabel 6300 5400 0    50   Output ~ 0
~oeoprnd~
Text GLabel 5950 5500 0    50   Output ~ 0
~phaserst~
NoConn ~ 4000 1550
NoConn ~ 4000 1650
NoConn ~ 4000 1850
NoConn ~ 4000 4200
NoConn ~ 4000 4400
NoConn ~ 4000 4100
$Comp
L 74xx:74LS181 ALU1
U 1 1 5EF629D6
P 4600 4700
F 0 "ALU1" H 4600 3500 50  0000 C CNN
F 1 "74HC181" H 4600 3600 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm" H 4600 4700 50  0001 C CNN
F 3 "74xx/74F181.pdf" H 4600 4700 50  0001 C CNN
	1    4600 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 4500 3850 4500
Wire Wire Line
	3850 4500 3850 3400
Wire Wire Line
	3850 3400 5950 3400
Wire Wire Line
	5950 3400 5950 1450
Wire Wire Line
	5950 1450 5200 1450
Text Label 4000 1950 2    50   ~ 0
~cin~
Text Label 5200 2550 0    50   ~ 0
a7
Text Label 5200 2650 0    50   ~ 0
a6
Text Label 5200 2750 0    50   ~ 0
a5
Text Label 5200 5100 0    50   ~ 0
a3
Text Label 5200 5200 0    50   ~ 0
a2
Text Label 5200 5300 0    50   ~ 0
a1
Text Label 5200 5400 0    50   ~ 0
a0
Text Label 5200 2850 0    50   ~ 0
a4
Text HLabel 5200 2150 2    50   Input ~ 0
d7
Text HLabel 5200 2250 2    50   Input ~ 0
d6
Text HLabel 5200 2350 2    50   Input ~ 0
d5
Text HLabel 5200 2450 2    50   Input ~ 0
d4
Text HLabel 5200 4700 2    50   Input ~ 0
d3
Text HLabel 5200 4800 2    50   Input ~ 0
d2
Text HLabel 5200 4900 2    50   Input ~ 0
d1
Text HLabel 5200 5000 2    50   Input ~ 0
d0
Wire Wire Line
	6300 2850 5850 2850
Wire Wire Line
	5850 2850 5850 1550
Wire Wire Line
	5850 1550 5200 1550
Wire Wire Line
	5850 2850 5850 4100
Wire Wire Line
	5850 4100 5200 4100
Connection ~ 5850 2850
Text Label 6300 2750 2    50   ~ 0
~cn~
Wire Wire Line
	6300 2750 5750 2750
Wire Wire Line
	5750 2750 5750 4000
Wire Wire Line
	5750 4000 5200 4000
Text Label 6300 2650 2    50   ~ 0
~loadf~
Text Label 9650 4250 0    50   ~ 0
~loadf~
Text Label 6300 2550 2    50   ~ 0
~loada~
Wire Wire Line
	6300 2950 6050 2950
Wire Wire Line
	5650 2950 5650 2050
Wire Wire Line
	5650 2050 5200 2050
Wire Wire Line
	6300 3050 6150 3050
Wire Wire Line
	5550 3050 5550 1950
Wire Wire Line
	5550 1950 5200 1950
Wire Wire Line
	6300 4800 6300 4400
Wire Wire Line
	6300 4400 5450 4400
Wire Wire Line
	6300 4900 6200 4900
Wire Wire Line
	6200 4900 6200 4300
Wire Wire Line
	6200 4300 5350 4300
Wire Wire Line
	5450 4400 5450 1850
Wire Wire Line
	5450 1850 5200 1850
Connection ~ 5450 4400
Wire Wire Line
	5350 1750 5200 1750
Wire Wire Line
	5200 4400 5450 4400
Wire Wire Line
	5350 1750 5350 4300
Connection ~ 5350 4300
Wire Wire Line
	5350 4300 5200 4300
Wire Wire Line
	6150 3050 6150 4200
Wire Wire Line
	6150 4200 5550 4200
Wire Wire Line
	5550 4200 5550 4500
Wire Wire Line
	5550 4500 5200 4500
Connection ~ 6150 3050
Wire Wire Line
	6150 3050 5550 3050
Wire Wire Line
	6050 2950 6050 4600
Wire Wire Line
	6050 4600 5200 4600
Connection ~ 6050 2950
Wire Wire Line
	6050 2950 5650 2950
$Comp
L power:GND #PWR046
U 1 1 5F263E47
P 2200 7350
F 0 "#PWR046" H 2200 7100 50  0001 C CNN
F 1 "GND" V 2205 7222 50  0000 R CNN
F 2 "" H 2200 7350 50  0001 C CNN
F 3 "" H 2200 7350 50  0001 C CNN
	1    2200 7350
	0    1    1    0   
$EndComp
Text Label 6300 5300 2    50   ~ 0
~oealu~
Text Label 1700 7050 2    50   ~ 0
~oealu~
Wire Wire Line
	1700 7050 1700 6950
Text HLabel 2700 6750 2    50   3State ~ 0
d0
Text HLabel 2700 6650 2    50   3State ~ 0
d1
Text HLabel 2700 6550 2    50   3State ~ 0
d2
Text HLabel 2700 6450 2    50   3State ~ 0
d3
Text HLabel 2700 6350 2    50   3State ~ 0
d4
Text HLabel 2700 6250 2    50   3State ~ 0
d5
Text HLabel 2700 6150 2    50   3State ~ 0
d6
Text HLabel 2700 6050 2    50   3State ~ 0
d7
Text Label 1700 6750 2    50   ~ 0
a0
Text Label 1700 6650 2    50   ~ 0
a1
Text Label 1700 6550 2    50   ~ 0
a2
Text Label 1700 6450 2    50   ~ 0
a3
Text Label 1700 6350 2    50   ~ 0
a4
Text Label 1700 6250 2    50   ~ 0
a5
Text Label 1700 6150 2    50   ~ 0
a6
Text Label 1700 6050 2    50   ~ 0
a7
$Comp
L 74xx:74LS08 U1
U 2 1 5F369D6D
P 10200 1600
F 0 "U1" H 10200 1283 50  0000 C CNN
F 1 "74LS08" H 10200 1374 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10200 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 10200 1600 50  0001 C CNN
	2    10200 1600
	-1   0    0    1   
$EndComp
Connection ~ 9900 1600
Text GLabel 10500 1500 2    50   Input ~ 0
lih
Wire Wire Line
	10600 1900 9550 1900
Wire Wire Line
	10500 1700 10600 1700
Wire Wire Line
	10600 1900 10600 1700
Wire Wire Line
	10600 1700 10700 1700
Connection ~ 10600 1700
Text GLabel 7400 2150 2    50   Input ~ 0
bl_done
Text GLabel 7400 4600 2    50   Input ~ 0
bl_done
$Comp
L 74xx:74HC02 U4
U 1 1 5F9388C4
P 5450 5650
F 0 "U4" H 5450 5975 50  0000 C CNN
F 1 "74HC02" H 5450 5884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5450 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 5450 5650 50  0001 C CNN
	1    5450 5650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U4
U 2 1 5F93D5B8
P 5450 6200
F 0 "U4" H 5450 6525 50  0000 C CNN
F 1 "74HC02" H 5450 6434 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5450 6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 5450 6200 50  0001 C CNN
	2    5450 6200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U4
U 4 1 5F944EB7
P 5450 7300
F 0 "U4" H 5450 7625 50  0000 C CNN
F 1 "74HC02" H 5450 7534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5450 7300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 5450 7300 50  0001 C CNN
	4    5450 7300
	1    0    0    -1  
$EndComp
Text Label 4000 2350 2    50   ~ 0
alu7
Text Label 4000 2450 2    50   ~ 0
alu6
Text Label 4000 2550 2    50   ~ 0
alu5
Text Label 4000 2650 2    50   ~ 0
alu4
Text Label 4000 4900 2    50   ~ 0
alu3
Text Label 4000 5000 2    50   ~ 0
alu2
Text Label 4000 5100 2    50   ~ 0
alu1
Text Label 4000 5200 2    50   ~ 0
alu0
Text Label 5150 5550 2    50   ~ 0
alu0
Text Label 5150 5750 2    50   ~ 0
alu1
Text Label 5150 6100 2    50   ~ 0
alu2
Text Label 5150 6300 2    50   ~ 0
alu3
Text Label 5150 6650 2    50   ~ 0
alu4
Text Label 5150 6850 2    50   ~ 0
alu5
Text Label 5150 7200 2    50   ~ 0
alu6
Text Label 5150 7400 2    50   ~ 0
alu7
$Comp
L 74xx:74LS21 U3
U 2 1 5F97E068
P 6100 6400
F 0 "U3" H 6100 6775 50  0000 C CNN
F 1 "74LS21" H 6100 6684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6100 6400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS21" H 6100 6400 50  0001 C CNN
	2    6100 6400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U4
U 3 1 5F93FD2C
P 5450 6750
F 0 "U4" H 5450 7075 50  0000 C CNN
F 1 "74HC02" H 5450 6984 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5450 6750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 5450 6750 50  0001 C CNN
	3    5450 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5650 5800 5650
Wire Wire Line
	5800 5650 5800 6250
Wire Wire Line
	5750 6200 5750 6350
Wire Wire Line
	5750 6350 5800 6350
Wire Wire Line
	5750 6750 5750 6450
Wire Wire Line
	5750 6450 5800 6450
Wire Wire Line
	5750 7300 5800 7300
Wire Wire Line
	5800 7300 5800 6550
Text Label 6400 6400 0    50   ~ 0
zin
Wire Wire Line
	6400 6400 9850 6400
Wire Wire Line
	8550 2500 8550 3200
Wire Wire Line
	7850 3100 8250 3100
Wire Wire Line
	8250 3100 8250 2800
Connection ~ 8250 2800
Wire Wire Line
	8050 3950 8550 3950
Wire Wire Line
	9600 4150 9600 4250
NoConn ~ 9600 4850
NoConn ~ 9600 4750
NoConn ~ 8600 4750
NoConn ~ 8600 4850
Wire Wire Line
	8600 5050 8450 5050
Wire Wire Line
	8450 5050 8450 3850
Wire Wire Line
	8450 3850 7950 3850
Wire Wire Line
	8600 4950 8550 4950
Wire Wire Line
	8550 4950 8550 3950
Wire Wire Line
	9650 4250 9600 4250
Connection ~ 9600 4250
Wire Wire Line
	9850 6400 9850 5050
Wire Wire Line
	9850 5050 9600 5050
Wire Wire Line
	9600 3850 9600 3550
Wire Wire Line
	9600 3550 9100 3550
Connection ~ 9100 3550
Wire Wire Line
	4000 2650 3300 2650
Text GLabel 3300 2150 2    50   Input ~ 0
clk
Text Label 3300 2050 0    50   ~ 0
~loada~
Text Label 2300 2750 2    50   ~ 0
a3
Text Label 2300 2850 2    50   ~ 0
a2
Text Label 2300 2950 2    50   ~ 0
a1
Text Label 2300 3050 2    50   ~ 0
a0
Wire Wire Line
	7400 2950 7400 3050
$Comp
L Memory_EEPROM2:28c64 UCODE_1
U 1 1 5FE0CA52
P 6900 2150
F 0 "UCODE_1" H 6850 3331 50  0000 C CNN
F 1 "28c64" H 6850 3240 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket" H 6900 2150 50  0001 C CNN
F 3 "" H 6900 2150 50  0001 C CNN
	1    6900 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 5400 7400 5500
$Comp
L Memory_EEPROM2:28c64 UCODE_2
U 1 1 5FE0F8B3
P 6900 4600
F 0 "UCODE_2" H 6850 5781 50  0000 C CNN
F 1 "28c64" H 6850 5690 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket" H 6900 4600 50  0001 C CNN
F 3 "" H 6900 4600 50  0001 C CNN
	1    6900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 5500 7400 5650
Connection ~ 7400 5500
Wire Wire Line
	7400 3050 7400 3200
Connection ~ 7400 3050
Connection ~ 7400 3200
Wire Wire Line
	6300 5000 5950 5000
Wire Wire Line
	6300 5200 5950 5200
Wire Wire Line
	6300 5500 5950 5500
Wire Wire Line
	9600 4450 9600 4550
Connection ~ 9600 4550
$Comp
L power:GND #PWR0106
U 1 1 5FF79C13
P 4600 1150
F 0 "#PWR0106" H 4600 900 50  0001 C CNN
F 1 "GND" V 4605 1022 50  0000 R CNN
F 2 "" H 4600 1150 50  0001 C CNN
F 3 "" H 4600 1150 50  0001 C CNN
	1    4600 1150
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5FF8079D
P 4600 3150
F 0 "#PWR0107" H 4600 3000 50  0001 C CNN
F 1 "VCC" V 4615 3278 50  0000 L CNN
F 2 "" H 4600 3150 50  0001 C CNN
F 3 "" H 4600 3150 50  0001 C CNN
	1    4600 3150
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0108
U 1 1 5FFA3199
P 4600 5700
F 0 "#PWR0108" H 4600 5550 50  0001 C CNN
F 1 "VCC" V 4615 5828 50  0000 L CNN
F 2 "" H 4600 5700 50  0001 C CNN
F 3 "" H 4600 5700 50  0001 C CNN
	1    4600 5700
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0121
U 1 1 600581EF
P 2200 5750
F 0 "#PWR0121" H 2200 5600 50  0001 C CNN
F 1 "VCC" H 2215 5923 50  0000 C CNN
F 2 "" H 2200 5750 50  0001 C CNN
F 3 "" H 2200 5750 50  0001 C CNN
	1    2200 5750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS244 BUFALU1
U 1 1 60058AEE
P 2200 6550
F 0 "BUFALU1" H 2200 7700 50  0000 C CNN
F 1 "74LS244" H 2200 7600 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 2200 6550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS244" H 2200 6550 50  0001 C CNN
	1    2200 6550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0122
U 1 1 603225CA
P 4600 3700
F 0 "#PWR0122" H 4600 3550 50  0001 C CNN
F 1 "VCC" V 4615 3827 50  0000 L CNN
F 2 "" H 4600 3700 50  0001 C CNN
F 3 "" H 4600 3700 50  0001 C CNN
	1    4600 3700
	0    -1   -1   0   
$EndComp
Entry Wire Line
	1400 6050 1300 5950
Entry Wire Line
	1400 6150 1300 6050
Entry Wire Line
	1400 6250 1300 6150
Entry Wire Line
	1400 6350 1300 6250
Entry Wire Line
	1400 6450 1300 6350
Entry Wire Line
	1400 6550 1300 6450
Entry Wire Line
	1400 6650 1300 6550
Entry Wire Line
	1400 6750 1300 6650
Wire Wire Line
	1400 6050 1700 6050
Wire Wire Line
	1400 6150 1700 6150
Wire Wire Line
	1400 6250 1700 6250
Wire Wire Line
	1400 6350 1700 6350
Wire Wire Line
	1400 6450 1700 6450
Wire Wire Line
	1400 6550 1700 6550
Wire Wire Line
	1400 6650 1700 6650
Wire Wire Line
	1400 6750 1700 6750
Entry Wire Line
	1400 2750 1300 2650
Entry Wire Line
	1400 2850 1300 2750
Entry Wire Line
	1400 2950 1300 2850
Entry Wire Line
	1400 3050 1300 2950
Entry Wire Line
	1400 2350 1300 2250
Entry Wire Line
	1400 2450 1300 2350
Entry Wire Line
	1400 2550 1300 2450
Entry Wire Line
	1400 2650 1300 2550
Wire Wire Line
	1400 2350 2300 2350
Wire Wire Line
	1400 2450 2300 2450
Wire Wire Line
	1400 2550 2300 2550
Wire Wire Line
	1400 2650 2300 2650
Text Label 1300 4400 3    50   ~ 0
a[0:7]
$Comp
L power:VCC #PWR0125
U 1 1 5F853C5D
P 2800 3350
F 0 "#PWR0125" H 2800 3200 50  0001 C CNN
F 1 "VCC" V 2815 3478 50  0000 L CNN
F 2 "" H 2800 3350 50  0001 C CNN
F 3 "" H 2800 3350 50  0001 C CNN
	1    2800 3350
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F204637
P 2200 5750
F 0 "#FLG0102" H 2200 5825 50  0001 C CNN
F 1 "PWR_FLAG" V 2200 5878 50  0000 L CNN
F 2 "" H 2200 5750 50  0001 C CNN
F 3 "~" H 2200 5750 50  0001 C CNN
	1    2200 5750
	0    1    1    0   
$EndComp
Connection ~ 2200 5750
Wire Wire Line
	3300 2350 4000 2350
Wire Wire Line
	3300 2450 4000 2450
Wire Wire Line
	3300 2550 4000 2550
Text Label 2300 2350 2    50   ~ 0
a7
Text Label 2300 2450 2    50   ~ 0
a6
Text Label 2300 2550 2    50   ~ 0
a5
Text Label 2300 2650 2    50   ~ 0
a4
$Comp
L 74xx:74LS377 AREG1
U 1 1 5F21CF72
P 2800 2550
F 0 "AREG1" H 2800 1569 50  0000 C CNN
F 1 "74LS377" H 2800 1660 50  0000 C CNN
F 2 "" H 2800 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 2800 2550 50  0001 C CNN
	1    2800 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 2750 2300 2750
Wire Wire Line
	1400 2850 2300 2850
Wire Wire Line
	1400 2950 2300 2950
Wire Wire Line
	1400 3050 2300 3050
$Comp
L power:GND #PWR0102
U 1 1 5F30EC14
P 2800 1750
F 0 "#PWR0102" H 2800 1500 50  0001 C CNN
F 1 "GND" V 2805 1622 50  0000 R CNN
F 2 "" H 2800 1750 50  0001 C CNN
F 3 "" H 2800 1750 50  0001 C CNN
	1    2800 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 4900 3750 4900
Wire Wire Line
	3750 4900 3750 2750
Wire Wire Line
	3750 2750 3300 2750
Wire Wire Line
	4000 5000 3650 5000
Wire Wire Line
	3650 5000 3650 2850
Wire Wire Line
	3650 2850 3300 2850
Wire Wire Line
	4000 5100 3550 5100
Wire Wire Line
	3550 5100 3550 2950
Wire Wire Line
	3550 2950 3300 2950
Wire Wire Line
	3450 5200 3450 3050
Wire Wire Line
	3450 3050 3300 3050
Wire Wire Line
	3450 5200 4000 5200
Wire Bus Line
	1300 2000 1300 6850
$EndSCHEMATC
