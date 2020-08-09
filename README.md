# Hummingbird 8-bit CPU build with 74xx ICs

Hummingbird is a 8 bit 74xx IC based CPU. It is initiated as a clone of
[Nibbler](https://www.bigmessowires.com/nibbler/) on breadboard.
However, the course diverted in the middle due to the difficulty of programming
with separate instruction and data space, see [Havard Architecture](http://www.differencebetween.net/technology/difference-between-von-neumann-and-harvard-architecture/). Also, it is somewhat cumbersome to program on 4 bit CPU.I made a number of significant changes over the original
design and also made it a 8 bit CPU, as a result, the new architecture is named Hummingbird since it is no longer a nibbler.

While some of original project's components are reused and certain components are still derived from Nibbler project.
There are some major extensions. The similarities with the original projects are,
1. Instruction set supports immediate number or memory content as an operand. There is only one register (accumulator).
2. The ALU is largely the same as nibbler, though it is expanded to 8 bit by using 2 cascading 74181 ALU chips.
3. Addressable space is 4096.
The key differences are,
1. While the size of the addressable space is still 4096, the width of the databus is extended to 8 bit.
2. Switching to Von Neumann architecture. There are a 4Kx8 program store and a 4Kx8 RAM.
   Instructions and data share the same space in RAM. After power-on reset, a built-in bootloader copies the entire
   program store RAM and control transfers to RAM afterwards while the program store is disabled.
3. Expands number of instructions from 16 to 31. The original Nibbler project decoder uses high nibble
   as opcode and restricts the maximum number of instructions to 16. Hummingbird expands to low nibbler when the high nibble
   is 1111.
4. Phase counter is expanded from 1 bit to 4 bits, allows for up to 15 cycles
   to run a single instruction. Supports variable instruction cycles.
5. Supports logic instructions and bit shift/rotate instructions.
6. Supports stack semantics. The first 256 of address space (also called page 0) is used as a stack and it grows from lower address to higher address.
   The memory byte 0 is interpreted as the stack pointer (so that the stack address starts from 1).
7. Instructions took 2 to 16 cycles to complete. There is a 4 bit counter that controls the execution phases.
8. Aside from original projects 16x2 LCD device, the hummingbird also adds a arduino nano based IO processor. It is mainly used for
   user interaction through terminal.

Below is a block diagram of hummingbird CPU: ![Architecture](/doc/Hummingbird.png)

Hummingbird instructions is 8 to 16 bit in length and their execution is
controlled by the phase signal. The phase signal counts from 0 to 15, and
phase 0 is always fetch phase. Thus an
instruction may takes from 1 to 16 cycles to complete. The last cycle of
an instruction execuation asserts /phrst to reset phase counter so that the next
instruction can start execute as early as possible.

Some instructions (ADDI, CMPI, NORI) accept immediate operand. The immediate
operand occupies low nibble of an instruction and is sign extended to 8 bit
before sending to the ALU's B input. One exception is the load high (LH) instruction, 
in which casr the
lower nibble is shifted left 4 bits and zeros are appended to the low order
bits to form a 8 bit immediate operand.

There are total of 31 instructions:

| NAME | OP   | FLAGS | Description                                        |
|------|------|-------|----------------------------------------------------|
| LD   | 0aaa |  -/-  | AREG  <= [aaa] (Load from memory)                  |
| ST   | 1aaa |  -/-  | [aaa] <= AREG  (Store to memory)                   |
| ADD  | 2aaa |  c/z  | AREG  <= AREG + [aaa]                              |
| ADDI | 3i   |  c/z  | AREG  <= AREG + signext(i)                         |
| ADDIC| 4i   |  c/z  | AREG  <= AREG + signext(i) + cflag                 |
| SUB  | 5aaa |  c/z  | AREG  <= AREG - [aaa]                              |
| JMP  | 6aaa |  -/-  | PC    <= [aaa]                                     |
| JC   | 7aaa |  -/-  | PC    <= [aaa] if cflag else PC + 1                |
| CMP  | 8aaa |  c/z  | AREG + (-[aaa]), Compare with memory               |
| CMPI | 9i   |  c/z  | AREG + (-signext(i)), Compare with immediate       |
| NOR  | Aaaa |  c/z  | AREG  <= ~(AREG | [aaa])                           |
| NORI | Bi   |  c/z  | AREG  <= ~(AREG | signext(i))                      |
| AND  | Caaa |  c/z  | AREG  <= AREG & [aaa]                              |
| XOR  | Daaa |  c/z  | AREG  <= AREG ^ [aaa]                              |
| LIH  | Ei   |  -/-  | AREG  <= i << 4 | 0 Load to high nibble            |
| GT   | F0   |  c/z  | cflag = !cflag and !zflag                          |
| NOP  | F1   |  n/a  | no operation                                       |
| LT   | F2   |  n/a  | cflag = cflag and !zflag                           |
| EQ   | F3   |  n/a  | cflag = zflag                                      |
| NE   | F4   |  n/a  | cflag = !zflag                                     |
| NC   | F5   |  n/a  | cflag = !cflag                                     |
| SIGN | F6   |  x/x  | cflag = A[7], test sign bit, does not change A.    |
| NEG  | F7   |  x/x  | A=-A                                               |
| SHL  | F8   |  x/x  | A=A<<1                                             |
| SHR  | F9   |  x/x  | A=A>>1, zero fill bit 7                            |
| SHL4 | FA   |  x/x  | A=A<<4                                             |
| HLT  | FB   |  x/x  | no operation                                       |
| ROL  | FC   |  x/x  | A=A<<1 | A[7]                                      |
| ROR  | FD   |  x/x  | A=A>>1 | (A[0]<<8)                                 |
| SWAP | FE   |  x/x  | swap nibbles ab => ba                              |
| ASR  | FF   |  x/x  | arithmatic shift right by 1 bit                    |

ALU is expanded to 8 bit wide and has 2 input ports. Port A is always
connected to the accumulator (A REG) and port B comes from the data bus.
Two cascading 74181 4bit ALU ICs form the ALU.
