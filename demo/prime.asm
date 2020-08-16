#include "std.asm"

// finding prime numbers from 1 to 255
prolog

.=64
prime:
0x30 0x30 0x30 0x30 0xa 0xd 0
next: 0
count: 0
tmp: 0
loop: 0
one: 1
eight: 8
ten: 10
div: 0
new: 0
rem: 0
offset: 0
progress: 0
progress1: 0
seven: 7
mask: 0
total: 32

.=0x100
main:
// fill the pool with 1s,
2:
li(0xff)
1:
st pool
ld (1b + 1)
addi 1
st (1b + 1)
ld count
addi 1
st count
cmp total
ne jc 2b

// 0 and 1 are not prime numbers, so clear them
li(0xfc)
st pool

// find the next prime
again:
lh 0 st next
0:
ld next shr shr shr st offset
li(pool) add offset st (1f+1)
1: ld pool st tmp
lh 0 st loop
2:
ld tmp
and one
ne jc 1f
ld tmp shr st tmp
ld next addi 1 st next
// exhausted the list
jc finish
ld loop addi 1 st loop
cmp eight ne jc 2b
jmp 0b
1:
// print out the next prime number (stored in next)
li(prime) addi 3 st offset
ld next
st div
4:
lh 0 st new
ld div
eq jc 5f
st rem
2:
ld rem
cmp ten lt jc 1f
sub ten
st rem
ld new addi 1 st new
jmp 2b
1:
ld new st div
ld offset st (3f+1)
addi (-1) st offset
li(0x30)
add rem
3:
st prime
jmp 4b

5:
saveframe(1f)
li(prime)
jmp print_p0_string
1:

// cross all the multiples of the next prime number
ld next
st progress
4:
ld progress shr shr shr st offset
li(pool) add offset st (1f+1)
1: ld pool st tmp
ld progress and seven st count
li(1) st mask
1:
ld count eq jc 1f
ld mask shl st mask
ld count addi (-1) st count jmp 1b
1:
ld mask not st mask
ld tmp and mask st tmp
ld progress shr shr shr st (1f+1)
ld tmp
1: st pool

ld progress
add next
jc again
st progress
jmp 4b

finish: hlt

print_p0_string:
st (1f + 1)
3:
saveframe(2f)
1:
ld 0
eq jc 3f
jmp print
2:
ld (1b + 1)
addi 1
st (1b + 1)
jmp 3b
3:
pop 0 pop 0
ret

print:
st odata
li(4)
st ctrl
saveframe(1f)
jmp delay
1:
lh 0
st ctrl
saveframe(1f)
jmp delay
1:
ret

// delay around 300 cycles
delay:
li(0xf)
st 1f
2: ror
ld 1f
addi (-1)
st 1f
ne jc 2b
ret
1: 0

.=((.+255) & 0xF00)
pool:
