#include "hi.asm"

iodata = 0xff0
ioctrl = 0xff1
ioin   = 0xff1

jmp start

send_data:
st iodata
li(0x03)
st ioctrl
li(0x01)
st ioctrl
send_data_r = . + 1
send_data_r0:
jmp 0

send_ctrl:
st iodata
li(0x02)
st ioctrl
lh 0x00
st ioctrl
send_ctrl_r = . + 1
send_ctrl_r0:
jmp 0

start:

lh 0x00
st ioctrl

li(1f) st send_ctrl_r
li(0x38)
jmp send_ctrl
1:

li(1f) st send_ctrl_r
li(0x0c) jmp send_ctrl
1:

li(1f) st send_ctrl_r
li(0x01) jmp send_ctrl
1:

li(1f) st send_ctrl_r
li(0x06) jmp send_ctrl
1:

li(1f) st send_ctrl_r
li(0x40) jmp send_ctrl
1:

2:
li(1f) st send_data_r
p_text_1 = . + 1
ld frog cmpi (-1) eq
jc 4f
jmp send_data
1:
ld p_text_1 addi 1 st p_text_1
jmp 2b

4:
li(1f) st send_ctrl_r
li(0x80) jmp send_ctrl
1:

2:
li(1f) st send_data_r
p_text_2 = . + 1
ld text cmpi (-1) eq
jc draw_frog
jmp send_data
1:
ld p_text_2 addi 1 st p_text_2
jmp 2b

// draw frog
draw_frog:

ld loc
add frog_loc
st frog_loc
frog_loc = . + 1
ld text
cmp twenty ne jc 1f
li(0x01)
jmp draw_done
1:
cmpi 0x04 ne jc 1f
li(0x03)
jmp draw_done
1:
cmpi 0x05 ne jc 1f
li(0x01)
jmp draw_done
1:
li(0x03)

draw_done:
st tmp

li(1f) st send_ctrl_r
ld loc
cmp forty lt
jc 2f
add twenty_four
2:
add eighty jmp send_ctrl
1:

li(1f) st send_data_r
ld tmp jmp send_data
1:

loop:
li(0xff)
st count
wait:
ror ror ror ror ror ror ror ror
ld count
addi (-1) st count ne
jc wait

// preserve previous location
ld loc
st prev

lh 0x0 st up st down
// polling
ld ioin
nori 0xfe eq
jc 1f
li(0x1) st down
jmp polling_done
1:
ld ioin
nori 0xfd eq
jc polling_done
li(0x1) st up

polling_done:

// compute new location
ld up eq jc 1f
ld bot ne jc 2f
ld loc sub forty st loc
jmp 2f
1:
ld down eq jc 3f
ld bot cmpi 1 ne jc 2f
ld loc add forty st loc
2:
li(1) sub bot st bot
3:

ld loc addi 1 st loc
ld s addi 1 st s
cmp forty ne jc 1f
lh 0 st s
ld loc sub forty st loc
1:
ld loc
st save_context
save_context = . + 1
ld text
st t

ld loc cmp eighty_dec lt jc 1f
cmp onetwenty lt jc 2f
li(0x01) st result jmp finish
2:
jmp finish
1:

ld t cmp twenty ne jc 1f
ld bot eq jc 1f
li(0x01) st tmp jmp save_loc
1:
ld t cmp twenty ne jc 1f
ld bot ne jc 1f
lh 0x00 st tmp jmp save_loc
1:
ld t cmpi 0x04 ne jc 1f
ld bot eq jc 1f
li(0x03) st tmp jmp save_loc
1:
ld t cmpi 0x04 ne jc 1f
ld bot ne jc 1f
jmp finish
1:
ld t cmpi 0x05 ne jc 1f
ld bot eq jc 1f
jmp finish
1:
ld t cmpi 0x05 ne jc 1f
ld bot ne jc 1f
li(0x02) st tmp jmp save_loc
1: jmp finish

save_loc:

li(0x61) st send_ctrl_r0 st send_data_r0
1:
li(1f) st send_ctrl_r
ld prev
cmp forty lt
jc 2f
add twenty_four
2:
add eighty jmp send_ctrl
1:

li(1f) st send_data_r
ld prev
st loc_data_get
loc_data_get = . + 1
ld text
jmp send_data
1:

li(1f) st send_ctrl_r
ld loc
cmp forty lt
jc 2f
add twenty_four
2:
add eighty jmp send_ctrl
1:

li(1f) st send_data_r
ld tmp jmp send_data
1:

li(1f) st send_ctrl_r
li(0x18) jmp send_ctrl
1: jmp loop
hlt

count: 0xff

loc: 46
prev: 0
s: 6
twenty: 0x20
up: 0
down: 0
bot: 1
forty: 40
twenty_four: 24
tmp: 0
t: 0
eighty: 0x80
result: 0
eighty_dec: 80
onetwenty: 120

.=512
frog:
0x04 0x0e 0x04 0x0a 0x00 0x00 0x00 0x00
0x00 0x00 0x00 0x00 0x04 0x0e 0x04 0x0a
0x04 0x0e 0x04 0x0a 0x00 0x00 0x1f 0x00
0x00 0x00 0x1f 0x00 0x04 0x0e 0x04 0x0a
0x00 0x00 0x1f 0x00 0x00 0x00 0x00 0x00
0x00 0x00 0x00 0x00 0x00 0x00 0x1f 0x00
0x00 0x00 0x1f 0x00 0x00 0x00 0x1f 0x00
(-1)

.=768
text:
 0x04  0x04  0x06  0x20  0x20  0x06  0x04  0x06  0x20  0x20  0x05  0x06  0x04  0x04  0x06  0x04
 0x04  0x20  0x20  0x04  0x04  0x06  0x20  0x04  0x04  0x06  0x05  0x04  0x04  0x04  0x20  0x20
 0x04  0x06  0x04  0x04  0x20  0x05  0x20  0x06  0x05  0x05  0x05  0x20  0x20  0x04  0x04  0x04
 0x20  0x20  0x20  0x05  0x05  0x05  0x05  0x20  0x20  0x05  0x05  0x20  0x20  0x04  0x04  0x04
 0x04  0x04  0x20  0x20  0x06  0x06  0x20  0x20  0x05  0x20  0x04  0x04  0x20  0x20  0x20  0x05
(-1)

finish:
li(0x63) st send_ctrl_r0 st send_data_r0
li(1f) st send_ctrl_r
li(0x02) jmp send_ctrl
1:
li(1f) st send_ctrl_r
li(0x80) jmp send_ctrl
1:

ld result eq jc jloss
li(1f) st send_data_r
2:
p_text_3 = . + 1
ld win cmpi (-1) eq
jc die
jmp send_data
1:
ld p_text_3 addi 1 st p_text_3
jmp 2b

jloss:
li(1f) st send_data_r
2:
p_text_4 = . + 1
ld loss cmpi (-1) eq
jc die
jmp send_data
1:
ld p_text_4 addi 1 st p_text_4
jmp 2b

die: jmp die

.=1024
win: $W $I $N $! $  $  $  (-1)
loss: $L $O $S $S $  $  $  (-1)
