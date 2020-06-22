# Hummingbird 8-bit CPU instruction set
Hummingbird is a 8 bit 74xx IC based CPU. It is inspired by Nibbler 4 bit CPU.
Databus is extended to 8 bit and instruction bus is 12 bit. It is a
Von Neumann architecture. There
are a 4Kx8 program store and a 4Kx8 RAM. The content of
the program store is copied to RAM at power-on and control
flow transferred to the first address of RAM to start. Program store is disabled
after control transfers to the RAM.


````                                   


         +-----------+-----------------------------------------+
         |           |             | |                         |
         o-------------------------+ |                         |
         |           |             | |                         |
    +----v-----+     |   +-------+ | |                         |
    | PC[11:0] |     |   |ADDRESS| | |          +-----+        |
    +----+-----+     |   |  REG  <-+ |          |     |        |
         |           |   +---+---+ |D|      +---v---+ |        |
         |           +-------o     |a<------+ A REG | |        |
---------v-------------------v---  |t|      +---+---+ |        |
     Address bus 12b               |a|          | OP/A|        |
---------+----------------+------  | | OP/B +---v---+ | +----+ |
         |                |        |b+------> ALU   +-+->FLAG| |fetch[3:0]
         |                |        |u|      +-------+   +-+--+ |
    +----v------+  +------v-----+  |s|          +---------+----o
    | Program   |  |     RAM    |  | | sign +---+---+     +--+ |
    | Store 4x8 |  |    4Kx8b   |  |8<------+ FETCH <--phase | |fetch[7:4]
    +----+------+  +------^-----+  |b|  ext +-------+   | +--v-v----+
         |                |        | |          ^       +->  UCODE  +->control
         |                |        | |          |         +---------+  signals
---------v----------------v--------+ +----------+------------------------------
                                 Data bus 8b
-------------------------------------------------------------------------------

````

Hummingbird instruction set is 8 to 16 bit wide and their execution is
controlled by the phase signal. The phase signal counts from 0 to 3, thus an
instruction takes from 2 to 4 cycles to execute.

There are 2 flag registers, carry and zero flag. They are set in arithmetic
and logical instructions.

There are total of 31 instructions:
| NAME | OP   | FLAGS | Description                                        |
|------|------|-------|----------------------------------------------------|
| LD   | 1aaa |  n/a  | AREG  <= [aaa] (Load from memory)                  |
| ST   | 2aaa |  n/a  | [aaa] <= AREG  (Store to memory)                   |
| ADD  | 3aaa |  c/1  | AREG  <= AREG + [aaa]                              |
| ADDI | 4i   |  c/1  | AREG  <= AREG + signext(i)                         |
| ADDIC| 5i   |  c/1  | AREG  <= AREG + signext(i) + cflag                 |
| SUB  | 6aaa |  c/1  | AREG  <= AREG + ~[aaa]                             |
| JMP  | 7aaa |  n/a  | PC    <= [aaa]                                     |
| JC   | 8aaa |  n/a  | PC    <= [aaa] if Carryin else PC + 1              |
| CMP  | 9aaa |  c/z  | AREG + (~[aaa] + 1), Compare with memory           |
| CMPI | ai   |  c/z  | AREG + (~signext(i) + 1), Compare with immediate   |
| NOR  | Baaa |  x/z  | AREG  <= ~(AREG | [aaa])                           |
| NORI | Ci   |  x/z  | AREG  <= ~(AREG | signext(i))                      |
| AND  | Daaa |  x/z  | AREG  <= AREG & [aaa]                              |
| XOR  | Eaaa |  x/z  | AREG  <= AREG ^ [aaa]                              |
| LIH  | Fi   |  n/a  | AREG  <= i << 4 Load to high nibble                |
| NOP  | 00   |  c/z  | Nop cflag = 1, zflag = 1                           |
| GT   | 01   |  n/a  | Carryin = (!zero and  cflag)                       |
| GE   | 02   |  n/a  | Carryin = (zero  or   cflag)                       |
| LT   | 03   |  n/a  | Carryin = (!zero and !cflag)                       |
| LE   | 04   |  n/a  | Carryin = (zero  or  !cflag)                       |
| EQ   | 05   |  n/a  | Carryin = zero                                     |
| NEG  | 08   |  x/x  | A=-A                                               |
| SHL  | 09   |  x/x  | A=A<<1                                             |
| ROL  | 0A   |  x/x  | A=A rotate left 1 (with carry bit)                 |
| SHL2 | 0B   |  x/x  | A=A<<2                                             |
| ROL2 | 0C   |  x/x  | A=A rotate left 2 (with carry bit)                 |
| SHL3 | 0D   |  x/x  | A=A<<3                                             |
| ROL3 | 0E   |  x/x  | A=A rotate left 3 (with carry bit)                 |
| LD1  | 0F   |  x/x  | A=1 load 1                                         |

RAM address are coming from the address bus. At phase 0, instruction is read
from RAM and locked into the fetch register. The low 4 bit is sign extended or
in the case of LIH instuction, padded with 4 bit zeros and copied to the data
bus. The opcode is also fed into the ucode module, together with phase
signal and flag registers. Microcode module outputs 16 control signals and
controls ALU operation mode as well as other components.

ALU is 8 bit wide and has 2 input ports. Port A is always connected to the
accumulator (A REG) and port B comes from the data bus. ALU is composed
of 2 cascading 74181 4bit ALU ICs.

Last, data bus is copied to address register, together with opcode[3:0],
composed 12 bit address input. This input, enabled by oeaddress signal is used
to set jump address target as well as load address from the RAM.
