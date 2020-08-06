#include "hi.asm"

io0 = 0xff0
io1 = 0xff1
io2 = 0xff2
io3 = 0xff3

li(0x11)
st io0
li(0x22)
st io1
li(0x44)
st io2
li(0x88)
st io3
ld io0
ld io1
ld io2
ld io3
hlt
