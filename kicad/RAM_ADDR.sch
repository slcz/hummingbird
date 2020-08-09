EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "RAM, Fetch Register and Operand generation"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5500 3800 5500 4950
Wire Wire Line
	5500 4950 7000 4950
Wire Wire Line
	5500 3700 5600 3700
Wire Wire Line
	5600 3700 5600 4850
Wire Wire Line
	5600 4850 7000 4850
Wire Wire Line
	5500 3600 5700 3600
Wire Wire Line
	5700 3600 5700 4750
Wire Wire Line
	5700 4750 7000 4750
Wire Wire Line
	5500 3500 5800 3500
Wire Wire Line
	5800 3500 5800 4650
Wire Wire Line
	5800 4650 7000 4650
Wire Wire Line
	5500 3400 5800 3400
Wire Wire Line
	5900 3400 5900 4550
Wire Wire Line
	5900 4550 7000 4550
Wire Wire Line
	5500 3300 5700 3300
Wire Wire Line
	6000 3300 6000 4450
Wire Wire Line
	6000 4450 7000 4450
Wire Wire Line
	6100 3200 6100 4350
Wire Wire Line
	6100 4350 7000 4350
Wire Wire Line
	6200 3100 6200 4250
Wire Wire Line
	6200 4250 7000 4250
Wire Wire Line
	3150 4200 4300 4200
Wire Wire Line
	3050 4100 4300 4100
Wire Wire Line
	2950 4000 4300 4000
Wire Wire Line
	2850 3900 4300 3900
Wire Wire Line
	2750 4600 2750 3800
Wire Wire Line
	2750 3800 4300 3800
Wire Wire Line
	2650 4300 2650 3700
Wire Wire Line
	2650 3700 4300 3700
Wire Wire Line
	2550 4000 2550 3600
Wire Wire Line
	2550 3600 4300 3600
Wire Wire Line
	2450 3700 2450 3500
Wire Wire Line
	2450 3500 4300 3500
Wire Wire Line
	2550 2100 2550 3300
Wire Wire Line
	2550 3300 4300 3300
Wire Wire Line
	2650 1800 2650 3200
Wire Wire Line
	2650 3200 4300 3200
Wire Wire Line
	2750 1500 2750 3100
Wire Wire Line
	2750 3100 4300 3100
Text Label 8000 2100 0    50   ~ 0
ADR0
Text Label 8000 2200 0    50   ~ 0
ADR1
Text Label 8000 2300 0    50   ~ 0
ADR2
Text Label 8000 2400 0    50   ~ 0
ADR3
Text Label 8000 2500 0    50   ~ 0
ADR4
Text Label 8000 2600 0    50   ~ 0
ADR5
Text Label 8000 2700 0    50   ~ 0
ADR6
Text Label 8000 2800 0    50   ~ 0
ADR7
$Comp
L power:GND #PWR019
U 1 1 5F033CA0
P 1450 3100
F 0 "#PWR019" H 1450 2850 50  0001 C CNN
F 1 "GND" H 1455 2927 50  0000 C CNN
F 2 "" H 1450 3100 50  0001 C CNN
F 3 "" H 1450 3100 50  0001 C CNN
	1    1450 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2800 1450 3100
Wire Wire Line
	1950 3100 1450 3100
Connection ~ 1450 3100
$Comp
L power:GND #PWR020
U 1 1 5F036B77
P 1450 5300
F 0 "#PWR020" H 1450 5050 50  0001 C CNN
F 1 "GND" H 1455 5127 50  0000 C CNN
F 2 "" H 1450 5300 50  0001 C CNN
F 3 "" H 1450 5300 50  0001 C CNN
	1    1450 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5000 1450 5300
Wire Wire Line
	1950 5300 1450 5300
Connection ~ 1450 5300
$Comp
L power:GND #PWR021
U 1 1 5F03A0C6
P 1450 7500
F 0 "#PWR021" H 1450 7250 50  0001 C CNN
F 1 "GND" H 1455 7327 50  0000 C CNN
F 2 "" H 1450 7500 50  0001 C CNN
F 3 "" H 1450 7500 50  0001 C CNN
	1    1450 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7200 1450 7500
Wire Wire Line
	1950 7500 1450 7500
Connection ~ 1450 7500
Wire Wire Line
	650  7100 1450 7100
Wire Wire Line
	650  4900 1450 4900
Wire Wire Line
	650  4900 650  2700
Wire Wire Line
	650  2700 1450 2700
Connection ~ 650  4900
Text Label 1450 1500 2    50   ~ 0
ADR0
Text Label 1450 1800 2    50   ~ 0
ADR1
Text Label 1450 2100 2    50   ~ 0
ADR2
Text Label 1450 2400 2    50   ~ 0
ADR3
Text Label 1450 3700 2    50   ~ 0
ADR4
Text Label 1450 4000 2    50   ~ 0
ADR5
Text Label 1450 4300 2    50   ~ 0
ADR6
Text Label 1450 4600 2    50   ~ 0
ADR7
Wire Wire Line
	5500 2100 5500 3100
Connection ~ 5500 3100
Wire Wire Line
	5500 3100 6200 3100
Wire Wire Line
	5500 3200 5600 3200
Wire Wire Line
	5600 3200 5600 2200
Wire Wire Line
	5600 2200 7000 2200
Connection ~ 5600 3200
Wire Wire Line
	5600 3200 6100 3200
Wire Wire Line
	5700 3300 5700 2300
Wire Wire Line
	5700 2300 7000 2300
Connection ~ 5700 3300
Wire Wire Line
	5700 3300 6000 3300
Wire Wire Line
	5800 3400 5800 2400
Wire Wire Line
	5800 2400 7000 2400
Connection ~ 5800 3400
Wire Wire Line
	5800 3400 5900 3400
Wire Wire Line
	5800 3500 6300 3500
Wire Wire Line
	6300 3500 6300 2500
Wire Wire Line
	6300 2500 7000 2500
Connection ~ 5800 3500
Wire Wire Line
	5700 3600 6400 3600
Wire Wire Line
	6400 3600 6400 2600
Wire Wire Line
	6400 2600 7000 2600
Connection ~ 5700 3600
Wire Wire Line
	5600 3700 6500 3700
Wire Wire Line
	6500 3700 6500 2700
Wire Wire Line
	6500 2700 7000 2700
Connection ~ 5600 3700
Wire Wire Line
	5500 3800 6600 3800
Wire Wire Line
	6600 3800 6600 2800
Wire Wire Line
	6600 2800 7000 2800
Connection ~ 5500 3800
Text GLabel 7000 3000 0    50   Input ~ 0
clk
Text HLabel 1450 1600 0    50   Input ~ 0
pcin0
Text HLabel 1450 1900 0    50   Input ~ 0
pcin1
Text HLabel 1450 2200 0    50   Input ~ 0
pcin2
Text HLabel 1450 2500 0    50   Input ~ 0
pcin3
Text HLabel 1450 3800 0    50   Input ~ 0
pcin4
Text HLabel 1450 4100 0    50   Input ~ 0
pcin5
Text HLabel 1450 4400 0    50   Input ~ 0
pcin6
Text HLabel 1450 4700 0    50   Input ~ 0
pcin7
Text HLabel 1450 6300 0    50   Input ~ 0
pcin9
Text HLabel 1450 6600 0    50   Input ~ 0
pcin10
Text HLabel 1450 6900 0    50   Input ~ 0
pcin11
$Comp
L power:GND #PWR028
U 1 1 5EF7991A
P 4300 5200
F 0 "#PWR028" H 4300 4950 50  0001 C CNN
F 1 "GND" H 4305 5027 50  0000 C CNN
F 2 "" H 4300 5200 50  0001 C CNN
F 3 "" H 4300 5200 50  0001 C CNN
	1    4300 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5200 4900 5200
Text GLabel 7000 5150 0    50   Input ~ 0
clk
$Comp
L power:GND #PWR030
U 1 1 5EF80534
P 7000 3400
F 0 "#PWR030" H 7000 3150 50  0001 C CNN
F 1 "GND" H 7005 3227 50  0000 C CNN
F 2 "" H 7000 3400 50  0001 C CNN
F 3 "" H 7000 3400 50  0001 C CNN
	1    7000 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3100 7000 3400
$Comp
L power:VCC #PWR033
U 1 1 5EF89486
P 7500 3950
F 0 "#PWR033" H 7500 3800 50  0001 C CNN
F 1 "VCC" H 7515 4123 50  0000 C CNN
F 2 "" H 7500 3950 50  0001 C CNN
F 3 "" H 7500 3950 50  0001 C CNN
	1    7500 3950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR032
U 1 1 5EF8A88E
P 7500 1800
F 0 "#PWR032" H 7500 1650 50  0001 C CNN
F 1 "VCC" H 7515 1973 50  0000 C CNN
F 2 "" H 7500 1800 50  0001 C CNN
F 3 "" H 7500 1800 50  0001 C CNN
	1    7500 1800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR029
U 1 1 5EF8AF10
P 4900 2800
F 0 "#PWR029" H 4900 2650 50  0001 C CNN
F 1 "VCC" H 4915 2973 50  0000 C CNN
F 2 "" H 4900 2800 50  0001 C CNN
F 3 "" H 4900 2800 50  0001 C CNN
	1    4900 2800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR023
U 1 1 5EF8B6E2
P 1950 3400
F 0 "#PWR023" H 1950 3250 50  0001 C CNN
F 1 "VCC" V 1965 3528 50  0000 L CNN
F 2 "" H 1950 3400 50  0001 C CNN
F 3 "" H 1950 3400 50  0001 C CNN
	1    1950 3400
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR024
U 1 1 5EF8F49C
P 1950 5600
F 0 "#PWR024" H 1950 5450 50  0001 C CNN
F 1 "VCC" V 1965 5728 50  0000 L CNN
F 2 "" H 1950 5600 50  0001 C CNN
F 3 "" H 1950 5600 50  0001 C CNN
	1    1950 5600
	0    1    1    0   
$EndComp
Text HLabel 5800 5500 0    50   Input ~ 0
phase0
Text HLabel 5800 5700 0    50   Input ~ 0
phase1
Text HLabel 5800 6050 0    50   Input ~ 0
phase2
Text HLabel 5800 6250 0    50   Input ~ 0
phase3
$Comp
L 74xx:74LS32 U2
U 1 1 5EFAA8E4
P 6100 5600
F 0 "U2" H 6100 5925 50  0000 C CNN
F 1 "74HC32" H 6100 5834 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6100 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6100 5600 50  0001 C CNN
	1    6100 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5600 6400 5750
Wire Wire Line
	6400 6150 6400 5950
Wire Wire Line
	7000 5850 7000 5250
$Comp
L 74xx:74LS32 U2
U 2 1 5EFCDF79
P 6100 6150
F 0 "U2" H 6100 6475 50  0000 C CNN
F 1 "74HC32" H 6100 6384 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6100 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6100 6150 50  0001 C CNN
	2    6100 6150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U2
U 3 1 5EFD6CE9
P 6700 5850
F 0 "U2" H 6700 6175 50  0000 C CNN
F 1 "74HC32" H 6700 6084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6700 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6700 5850 50  0001 C CNN
	3    6700 5850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U2
U 4 1 5EFD8F7D
P 4500 5900
F 0 "U2" H 4500 6225 50  0000 C CNN
F 1 "74HC32" H 4500 6134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4500 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4500 5900 50  0001 C CNN
	4    4500 5900
	1    0    0    -1  
$EndComp
Text GLabel 4200 5800 0    50   Input ~ 0
clk
Text GLabel 4200 6000 0    50   Input ~ 0
~csram~
$Comp
L power:GND #PWR025
U 1 1 5EFE0559
P 4150 4500
F 0 "#PWR025" H 4150 4250 50  0001 C CNN
F 1 "GND" H 4155 4327 50  0000 C CNN
F 2 "" H 4150 4500 50  0001 C CNN
F 3 "" H 4150 4500 50  0001 C CNN
	1    4150 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4550 4150 4500
Wire Wire Line
	4150 4500 4300 4500
Connection ~ 4150 4500
Wire Wire Line
	4150 4500 4150 4400
Wire Wire Line
	4150 4400 4300 4400
Wire Wire Line
	4150 4400 4150 4300
Wire Wire Line
	4150 4300 4300 4300
Connection ~ 4150 4400
Text GLabel 4300 4900 0    50   Input ~ 0
~weram~
Wire Wire Line
	4300 5200 3950 5200
Wire Wire Line
	3950 5200 3950 4800
Wire Wire Line
	3950 4800 4300 4800
Connection ~ 4300 5200
Text HLabel 5500 1750 1    50   BiDi ~ 0
d0
Text HLabel 5600 1750 1    50   BiDi ~ 0
d1
Text HLabel 5700 1750 1    50   BiDi ~ 0
d2
Text HLabel 5800 1750 1    50   BiDi ~ 0
d3
Text HLabel 6300 1750 1    50   BiDi ~ 0
d4
Text HLabel 6400 1750 1    50   BiDi ~ 0
d5
Text HLabel 6500 1750 1    50   BiDi ~ 0
d6
Text HLabel 6600 1750 1    50   BiDi ~ 0
d7
Wire Wire Line
	5500 1750 5500 2100
Connection ~ 5500 2100
Wire Wire Line
	5800 1750 5800 2400
Connection ~ 5800 2400
Wire Wire Line
	5700 1750 5700 2300
Connection ~ 5700 2300
Wire Wire Line
	5500 2100 7000 2100
Wire Wire Line
	5600 1750 5600 2200
Connection ~ 5600 2200
Wire Wire Line
	6300 1750 6300 2500
Connection ~ 6300 2500
Wire Wire Line
	6400 1750 6400 2600
Connection ~ 6400 2600
Wire Wire Line
	6500 1750 6500 2700
Connection ~ 6500 2700
Wire Wire Line
	6600 1750 6600 2800
Connection ~ 6600 2800
Text GLabel 9200 5950 2    50   Output ~ 0
lih
$Comp
L 74xx:74LS157 OPRND1
U 1 1 5F3A193C
P 10300 4950
F 0 "OPRND1" H 10300 6050 50  0000 C CNN
F 1 "74HC157" H 10300 5950 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 10300 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 10300 4950 50  0001 C CNN
	1    10300 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5F3AE3E5
P 9800 5950
F 0 "#PWR036" H 9800 5700 50  0001 C CNN
F 1 "GND" H 9805 5777 50  0000 C CNN
F 2 "" H 9800 5950 50  0001 C CNN
F 3 "" H 9800 5950 50  0001 C CNN
	1    9800 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5950 10300 5950
Connection ~ 9800 5950
$Comp
L power:VCC #PWR037
U 1 1 5F3BBEBA
P 10300 4050
F 0 "#PWR037" H 10300 3900 50  0001 C CNN
F 1 "VCC" V 10315 4178 50  0000 L CNN
F 2 "" H 10300 4050 50  0001 C CNN
F 3 "" H 10300 4050 50  0001 C CNN
	1    10300 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 5550 9800 5550
Wire Wire Line
	9050 3250 9800 3250
$Comp
L power:GND #PWR035
U 1 1 5F3D2B50
P 9800 3650
F 0 "#PWR035" H 9800 3400 50  0001 C CNN
F 1 "GND" H 9805 3477 50  0000 C CNN
F 2 "" H 9800 3650 50  0001 C CNN
F 3 "" H 9800 3650 50  0001 C CNN
	1    9800 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3650 10300 3650
Connection ~ 9800 3650
Wire Wire Line
	8000 4250 8350 4250
Wire Wire Line
	9800 4250 9800 4350
Wire Wire Line
	8000 4350 8450 4350
Wire Wire Line
	9700 4350 9700 4650
Wire Wire Line
	9700 4650 9800 4650
Wire Wire Line
	8000 4450 8550 4450
Wire Wire Line
	9600 4450 9600 4950
Wire Wire Line
	9600 4950 9800 4950
Wire Wire Line
	9500 5250 9800 5250
Wire Wire Line
	9500 4550 9500 5250
Wire Wire Line
	9300 2950 9300 2650
Wire Wire Line
	9300 2650 9800 2650
Wire Wire Line
	9300 2950 9800 2950
Wire Wire Line
	9300 2650 9300 2350
Wire Wire Line
	9300 2350 9800 2350
Connection ~ 9300 2650
Wire Wire Line
	9300 2350 9300 2050
Wire Wire Line
	9300 2050 9800 2050
Connection ~ 9300 2350
Wire Wire Line
	9800 3350 9800 3650
Wire Wire Line
	8350 4250 8350 2150
Wire Wire Line
	8350 2150 9800 2150
Connection ~ 8350 4250
Wire Wire Line
	8350 4250 9800 4250
Wire Wire Line
	8450 4350 8450 2450
Wire Wire Line
	8450 2450 9800 2450
Connection ~ 8450 4350
Wire Wire Line
	8450 4350 9700 4350
Wire Wire Line
	8550 4450 8550 2750
Wire Wire Line
	8550 2750 9800 2750
Connection ~ 8550 4450
Wire Wire Line
	8550 4450 9600 4450
Connection ~ 9800 4750
Connection ~ 9800 5050
Connection ~ 9800 5650
Wire Wire Line
	9800 5650 9800 5950
Wire Wire Line
	9800 4450 9800 4750
Wire Wire Line
	9800 4750 9800 5050
Connection ~ 9800 5350
Wire Wire Line
	9800 5050 9800 5350
$Comp
L power:VCC #PWR026
U 1 1 5F4A54B5
P 4300 950
F 0 "#PWR026" H 4300 800 50  0001 C CNN
F 1 "VCC" V 4315 1077 50  0000 L CNN
F 2 "" H 4300 950 50  0001 C CNN
F 3 "" H 4300 950 50  0001 C CNN
	1    4300 950 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5F4A5994
P 4300 2550
F 0 "#PWR027" H 4300 2300 50  0001 C CNN
F 1 "GND" H 4300 2400 50  0000 C CNN
F 2 "" H 4300 2550 50  0001 C CNN
F 3 "" H 4300 2550 50  0001 C CNN
	1    4300 2550
	0    1    1    0   
$EndComp
Text GLabel 4800 1250 2    50   Input ~ 0
~oeoprnd~
Text Label 4800 2250 0    50   ~ 0
oprndin0
Text Label 4800 2150 0    50   ~ 0
oprndin1
Text Label 4800 2050 0    50   ~ 0
oprndin2
Text Label 4800 1950 0    50   ~ 0
oprndin3
Text Label 4800 1850 0    50   ~ 0
oprndin4
Text Label 4800 1750 0    50   ~ 0
oprndin5
Text Label 4800 1650 0    50   ~ 0
oprndin6
Text Label 4800 1550 0    50   ~ 0
oprndin7
Text HLabel 3800 2250 0    50   Output ~ 0
oprnd0
Text HLabel 3800 2150 0    50   Output ~ 0
oprnd1
Text HLabel 3800 2050 0    50   Output ~ 0
oprnd2
Text HLabel 3800 1950 0    50   Output ~ 0
oprnd3
Text HLabel 3800 1850 0    50   Output ~ 0
oprnd4
Text HLabel 3800 1750 0    50   Output ~ 0
oprnd5
Text HLabel 3800 1650 0    50   Output ~ 0
oprnd6
Text HLabel 3800 1550 0    50   Output ~ 0
oprnd7
Wire Wire Line
	650  7100 650  4900
$Comp
L 74xx:74LS157 ADDRESS_MUX?
U 1 1 5EF5E138
P 1950 6500
AR Path="/5EF5E138" Ref="ADDRESS_MUX?"  Part="1" 
AR Path="/5EF57F2E/5EF5E138" Ref="ADDRESS_MUX3"  Part="1" 
F 0 "ADDRESS_MUX3" H 1950 7600 50  0000 C CNN
F 1 "74HC157" H 1950 7500 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 1950 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 1950 6500 50  0001 C CNN
	1    1950 6500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 ADDRESS_MUX?
U 1 1 5EF5E13E
P 1950 4300
AR Path="/5EF5E13E" Ref="ADDRESS_MUX?"  Part="1" 
AR Path="/5EF57F2E/5EF5E13E" Ref="ADDRESS_MUX2"  Part="1" 
F 0 "ADDRESS_MUX2" H 1950 5350 50  0000 C CNN
F 1 "74HC157" H 1950 5250 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 1950 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 1950 4300 50  0001 C CNN
	1    1950 4300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 ADDRESS_MUX?
U 1 1 5EF5E144
P 1950 2100
AR Path="/5EF5E144" Ref="ADDRESS_MUX?"  Part="1" 
AR Path="/5EF57F2E/5EF5E144" Ref="ADDRESS_MUX1"  Part="1" 
F 0 "ADDRESS_MUX1" H 1950 3350 50  0000 C CNN
F 1 "74HC157" H 1950 3250 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 1950 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 1950 2100 50  0001 C CNN
	1    1950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 4350 11050 4350
Wire Wire Line
	10800 4650 11050 4650
Wire Wire Line
	10800 4950 11050 4950
Wire Wire Line
	10800 5250 11050 5250
Wire Wire Line
	10800 2050 11050 2050
Wire Wire Line
	10800 2350 11050 2350
Wire Wire Line
	10800 2650 11050 2650
Wire Wire Line
	10800 2950 11050 2950
Entry Wire Line
	11050 2050 11150 1950
Entry Wire Line
	11050 2350 11150 2250
Entry Wire Line
	11050 2650 11150 2550
Entry Wire Line
	11050 2950 11150 2850
Entry Wire Line
	11050 4350 11150 4250
Entry Wire Line
	11050 4650 11150 4550
Entry Wire Line
	11050 4950 11150 4850
Entry Wire Line
	11050 5250 11150 5150
Entry Wire Line
	5150 1650 5250 1550
Entry Wire Line
	5150 1750 5250 1650
Entry Wire Line
	5150 1550 5250 1450
Entry Wire Line
	5150 1850 5250 1750
Entry Wire Line
	5150 1950 5250 1850
Entry Wire Line
	5150 2050 5250 1950
Entry Wire Line
	5150 2150 5250 2050
Entry Wire Line
	5150 2250 5250 2150
Wire Wire Line
	4800 1550 5150 1550
Wire Wire Line
	4800 1650 5150 1650
Wire Wire Line
	4800 1750 5150 1750
Wire Wire Line
	4800 1850 5150 1850
Wire Wire Line
	4800 1950 5150 1950
Wire Wire Line
	4800 2150 5150 2150
Wire Wire Line
	4800 2250 5150 2250
Wire Wire Line
	4800 2050 5150 2050
Wire Wire Line
	4800 1350 4800 1250
Text Label 10800 2950 0    50   ~ 0
oprndin7
Text Label 10800 2650 0    50   ~ 0
oprndin6
Text Label 10800 2350 0    50   ~ 0
oprndin5
Text Label 10850 2050 0    50   ~ 0
oprndin4
Text Label 7650 750  0    50   ~ 0
oprndin[0:7]
Wire Wire Line
	650  7200 650  7100
Connection ~ 650  7100
Text HLabel 8000 4250 2    50   Output ~ 0
INST_0
Text HLabel 8000 4350 2    50   Output ~ 0
INST_1
Text HLabel 8000 4450 2    50   Output ~ 0
INST_2
Text HLabel 8000 4550 2    50   Output ~ 0
INST_3
Text HLabel 8000 4650 2    50   Output ~ 0
INST_4
Text HLabel 8000 4750 2    50   Output ~ 0
INST_5
Text HLabel 8000 4850 2    50   Output ~ 0
INST_6
Text HLabel 8000 4950 2    50   Output ~ 0
INST_7
Text GLabel 650  7200 3    50   Input ~ 0
~loadaddr~
$Comp
L power:GND #PWR0116
U 1 1 6002B462
P 7500 5550
F 0 "#PWR0116" H 7500 5300 50  0001 C CNN
F 1 "GND" V 7505 5422 50  0000 R CNN
F 2 "" H 7500 5550 50  0001 C CNN
F 3 "" H 7500 5550 50  0001 C CNN
	1    7500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3400 7100 3400
Connection ~ 7000 3400
$Comp
L power:VCC #PWR0120
U 1 1 6003746E
P 1950 1200
F 0 "#PWR0120" H 1950 1050 50  0001 C CNN
F 1 "VCC" H 1965 1373 50  0000 C CNN
F 2 "" H 1950 1200 50  0001 C CNN
F 3 "" H 1950 1200 50  0001 C CNN
	1    1950 1200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 6006D061
P 10300 1750
F 0 "#PWR0101" H 10300 1600 50  0001 C CNN
F 1 "VCC" H 10315 1923 50  0000 C CNN
F 2 "" H 10300 1750 50  0001 C CNN
F 3 "" H 10300 1750 50  0001 C CNN
	1    10300 1750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 OPRND2
U 1 1 6006D7D6
P 10300 2650
F 0 "OPRND2" H 10300 3900 50  0000 C CNN
F 1 "74HC157" H 10300 3800 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 10300 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 10300 2650 50  0001 C CNN
	1    10300 2650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6007728D
P 7100 3400
F 0 "#FLG0101" H 7100 3475 50  0001 C CNN
F 1 "PWR_FLAG" H 7100 3750 50  0000 C CNN
F 2 "" H 7100 3400 50  0001 C CNN
F 3 "~" H 7100 3400 50  0001 C CNN
	1    7100 3400
	-1   0    0    1   
$EndComp
Connection ~ 7100 3400
Wire Wire Line
	7100 3400 7000 3400
Wire Wire Line
	2450 1500 2750 1500
Wire Wire Line
	2450 1800 2650 1800
Wire Wire Line
	2450 2100 2550 2100
Wire Wire Line
	2450 4000 2550 4000
Wire Wire Line
	2450 4300 2650 4300
Wire Wire Line
	2450 4600 2750 4600
Wire Wire Line
	2450 5900 2850 5900
Wire Wire Line
	2450 6200 2950 6200
Wire Wire Line
	2450 6500 3050 6500
Wire Wire Line
	2450 6800 3150 6800
Wire Wire Line
	2450 3400 2450 2400
Wire Wire Line
	2450 3400 4300 3400
Wire Wire Line
	4050 4700 4300 4700
$Comp
L power:GND #PWR070
U 1 1 5F38823A
P 5400 6850
F 0 "#PWR070" H 5400 6600 50  0001 C CNN
F 1 "GND" V 5405 6722 50  0000 R CNN
F 2 "" H 5400 6850 50  0001 C CNN
F 3 "" H 5400 6850 50  0001 C CNN
	1    5400 6850
	0    1    1    0   
$EndComp
Text Label 6000 6750 0    50   ~ 0
~ram_ce~
Text Label 4050 4700 2    50   ~ 0
~ram_ce~
Wire Wire Line
	2450 1400 2450 1500
Connection ~ 2450 1500
Wire Wire Line
	2650 1800 2650 1400
Connection ~ 2650 1800
Text HLabel 2650 1400 1    50   Output ~ 0
io_address1
Text HLabel 2450 1400 1    50   Output ~ 0
io_address0
$Comp
L 74xx:74LS08 U1
U 3 1 5EFC024A
P 8150 5850
F 0 "U1" H 8150 6175 50  0000 C CNN
F 1 "74HC08" H 8150 6084 50  0000 C CNN
F 2 "" H 8150 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 8150 5850 50  0001 C CNN
	3    8150 5850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U1
U 4 1 5EFC3FE1
P 8750 5950
F 0 "U1" H 8750 6275 50  0000 C CNN
F 1 "74HC08" H 8750 6184 50  0000 C CNN
F 2 "" H 8750 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 8750 5950 50  0001 C CNN
	4    8750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4850 8500 5400
Wire Wire Line
	8500 5400 7750 5400
Wire Wire Line
	7750 5400 7750 5950
Wire Wire Line
	7750 5950 7850 5950
Wire Wire Line
	8400 6050 8450 6050
Wire Wire Line
	7850 5300 7850 5750
Wire Wire Line
	8600 5500 8400 5500
Wire Wire Line
	8400 5500 8400 6050
Wire Wire Line
	9050 5950 9200 5950
Connection ~ 9050 5950
Wire Wire Line
	9050 3250 9050 5550
Connection ~ 9050 5550
Wire Wire Line
	9050 5550 9050 5950
Wire Wire Line
	9800 5350 9800 5650
$Comp
L 74xx:74LS21 U3
U 1 1 5F0DD2EF
P 3750 5700
F 0 "U3" H 3750 6075 50  0000 C CNN
F 1 "74HC21" H 3750 5984 50  0000 C CNN
F 2 "" H 3750 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS21" H 3750 5700 50  0001 C CNN
	1    3750 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3900 2850 5550
Wire Wire Line
	2950 4000 2950 5650
Wire Wire Line
	3050 4100 3050 5750
Wire Wire Line
	3150 4200 3150 5850
Wire Wire Line
	2850 5550 3450 5550
Connection ~ 2850 5550
Wire Wire Line
	2850 5550 2850 5900
Wire Wire Line
	2950 5650 3450 5650
Connection ~ 2950 5650
Wire Wire Line
	2950 5650 2950 6200
Wire Wire Line
	3050 5750 3450 5750
Connection ~ 3050 5750
Wire Wire Line
	3050 5750 3050 6500
Wire Wire Line
	3150 5850 3450 5850
Connection ~ 3150 5850
Wire Wire Line
	3150 5850 3150 6800
Wire Wire Line
	4050 5700 4750 5700
Wire Wire Line
	5400 5800 5400 6650
$Comp
L 74xx:74LS02 U5
U 1 1 5F1D32F4
P 5100 5800
F 0 "U5" H 5100 6125 50  0000 C CNN
F 1 "74HC02" H 5100 6034 50  0000 C CNN
F 2 "" H 5100 5800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 5100 5800 50  0001 C CNN
	1    5100 5800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U5
U 2 1 5F1D57BF
P 5700 6750
F 0 "U5" H 5700 7075 50  0000 C CNN
F 1 "74HC02" H 5700 6984 50  0000 C CNN
F 2 "" H 5700 6750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 5700 6750 50  0001 C CNN
	2    5700 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4950 8000 5300
Wire Wire Line
	8000 5300 7850 5300
Wire Wire Line
	8000 4850 8500 4850
Wire Wire Line
	8000 4750 8600 4750
Wire Wire Line
	8600 4750 8600 5500
$Comp
L 74xx:74LS377 FETCH?
U 1 1 5EF59B4A
P 7500 4750
AR Path="/5EF59B4A" Ref="FETCH?"  Part="1" 
AR Path="/5EF57F2E/5EF59B4A" Ref="FETCH1"  Part="1" 
F 0 "FETCH1" H 7500 5900 50  0000 C CNN
F 1 "74HC377" H 7500 5800 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7500 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 7500 4750 50  0001 C CNN
	1    7500 4750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS374 ADDRESS_LOCK1
U 1 1 5F380B53
P 7500 2600
F 0 "ADDRESS_LOCK1" H 7500 3750 50  0000 C CNN
F 1 "74HC374" H 7500 3650 50  0000 C CNN
F 2 "" H 7500 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS374" H 7500 2600 50  0001 C CNN
	1    7500 2600
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:CY7C199 SRAM?
U 1 1 5EF59301
P 4900 4000
AR Path="/5EF59301" Ref="SRAM?"  Part="1" 
AR Path="/5EF57F2E/5EF59301" Ref="SRAM1"  Part="1" 
F 0 "SRAM1" H 4900 5550 50  0000 C CNN
F 1 "CY7C199" H 4900 5450 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 4900 4000 50  0001 C CNN
F 3 "" H 4900 4000 50  0001 C CNN
	1    4900 4000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS244 OPERAND_BUF1
U 1 1 5F4960F7
P 4300 1750
F 0 "OPERAND_BUF1" H 4300 2800 50  0000 C CNN
F 1 "74HC244" H 4300 2700 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4300 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS244" H 4300 1750 50  0001 C CNN
	1    4300 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 5700 4750 6350
Connection ~ 4750 5700
Wire Wire Line
	4750 5700 4800 5700
Text GLabel 4750 6350 3    50   Output ~ 0
io_space
Wire Wire Line
	8650 4550 9500 4550
Wire Wire Line
	8000 4550 8650 4550
Connection ~ 8650 4550
Wire Wire Line
	9300 3050 9800 3050
Wire Wire Line
	8650 4550 8650 2950
Connection ~ 9300 2950
Wire Wire Line
	9300 2950 9300 3050
Wire Wire Line
	8650 2950 9300 2950
Text HLabel 1450 6000 0    50   Input ~ 0
pcin8
Wire Bus Line
	11150 6400 6850 6400
Wire Bus Line
	6850 6400 6850 7700
Wire Bus Line
	6850 7700 1000 7700
Entry Bus Bus
	1000 6000 1100 5900
Wire Wire Line
	1100 5900 1450 5900
Entry Bus Bus
	1100 6200 1000 6300
Entry Bus Bus
	1100 6500 1000 6600
Entry Bus Bus
	1100 6800 1000 6900
Wire Wire Line
	1100 6800 1450 6800
Wire Wire Line
	1100 6500 1450 6500
Wire Wire Line
	1100 6200 1450 6200
Text Label 1100 5900 0    50   ~ 0
oprnd0
Text Label 1100 6200 0    50   ~ 0
oprnd1
Text Label 1100 6500 0    50   ~ 0
oprnd2
Text Label 1100 6800 0    50   ~ 0
oprnd3
Text Label 10800 4350 0    50   ~ 0
oprndin0
Text Label 10800 4650 0    50   ~ 0
oprndin1
Text Label 10800 4950 0    50   ~ 0
oprndin2
Text Label 10800 5250 0    50   ~ 0
oprndin3
Entry Bus Bus
	8500 750  8600 850 
Entry Bus Bus
	8650 750  8750 850 
Entry Bus Bus
	8800 750  8900 850 
Entry Bus Bus
	8950 750  9050 850 
Wire Wire Line
	8600 850  8600 1300
Wire Wire Line
	8750 850  8750 1300
Wire Wire Line
	8900 850  8900 1300
Wire Wire Line
	9050 850  9050 1300
Text Label 8600 850  3    50   ~ 0
oprndin0
Text Label 8750 850  3    50   ~ 0
oprndin1
Text Label 8900 850  3    50   ~ 0
oprndin2
Text Label 9050 850  3    50   ~ 0
oprndin3
Text HLabel 8600 1300 3    50   Output ~ 0
o0
Text HLabel 8750 1300 3    50   Output ~ 0
o1
Text HLabel 8900 1300 3    50   Output ~ 0
o2
Text HLabel 9050 1300 3    50   Output ~ 0
o3
Wire Bus Line
	1000 5800 1000 7700
Wire Bus Line
	5250 750  11150 750 
Wire Bus Line
	5250 750  5250 2450
Wire Bus Line
	11150 750  11150 6400
$EndSCHEMATC
