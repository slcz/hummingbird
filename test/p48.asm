#include "hi.asm"
prolog

odata = 0xff0
ctrl  = 0xff1
idata = 0xff1

main:
ld state eq jc 2f
li(1 << 6)
jmp 3f
2: lh 0
3:
st ctrl

ld state
not
st state

li(0xff)
st wait
1:
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
asr
ld wait
addi (-1)
st wait
ne
jc 1b
jmp main

state: 0
wait: 0
