#include "hi.asm"
prolog

odata = 0xff0
ctrl  = 0xff1
idata = 0xff1

main:
lh 0
st ctrl

// echo
again:
li(8)
st ctrl
li(0xf)
st delay
7:
ror
ld delay
addi (-1)
st delay
ne jc 7b
ld idata
eq jc 1f
st ch
lh 0
st ctrl

li(0xf)
st delay
7:
ror
ld delay
addi (-1)
st delay
ne jc 7b

ld ch
st odata
li(4)
st ctrl
ror ror ror ror ror ror ror ror // delay
lh 0
st ctrl
ror ror ror ror ror ror ror ror // delay
jmp again

1:
lh 0
st ctrl
ror ror ror ror ror ror ror ror // delay
jmp again
ch: 0
delay: 0
