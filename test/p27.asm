#include "hi.asm"

io0 = 0xff0
io1 = 0xff1

li(0x11)
st 1f
li(0x22)
st io0
li(0x33)
st io1
li 1f
hlt
1:
.=.+1
