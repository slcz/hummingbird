#!/usr/bin/env python3

# Hummingbird 8 bit CPU assembler

import sys
from enum import Enum

class TOKEN(Enum):
    ID          = 1
    NUM         = 2
    MINUS       = 3
    PLUS        = 4
    COLON       = 5
    EQ          = 6
    NE          = 7
    LT          = 8
    GT          = 9
    LP          = 10
    RP          = 11
    MULT        = 12
    DIV         = 13
    MOD         = 14
    BITAND      = 15
    BITOR       = 16
    BITXOR      = 17
    NOT         = 18
    SHL         = 19
    SHR         = 20
    LOGAND      = 21
    LOGOR       = 22
    ASSIGN      = 23
    LE          = 24
    GE          = 25
    NUM_LABEL_F = 26
    NUM_LABEL_B = 27
    LABEL       = 28
    CONST       = 29
    FREF        = 30
    BREF        = 31
    NEG         = 32
    GT_INST     = 50
    LT_INST     = 52
    EQ_INST     = 53
    NE_INST     = 54
    NC_INST     = 55
    SIGN_INST   = 56
    NEG_INST    = 57
    SHL_INST    = 58
    SHR_INST    = 59
    SHL4_INST   = 60
    ROL_INST    = 62
    ROR_INST    = 63
    SWAP_INST   = 64
    ASR_INST    = 65

    LD_INST     = 66
    ST_INST     = 67
    ADD_INST    = 68
    ADDI_INST   = 69
    ADDIC_INST  = 70
    SUB_INST    = 71
    JMP_INST    = 72
    JC_INST     = 73
    CMP_INST    = 74
    CMPI_INST   = 75
    NOR_INST    = 76
    NORI_INST   = 77
    AND_INST    = 78
    XOR_INST    = 79
    LIH_INST    = 80

    END         = 100

inst = {
    TOKEN.GT_INST:    [1, 8, 0xf0],
    TOKEN.LT_INST:    [1, 8, 0xf2],
    TOKEN.EQ_INST:    [1, 8, 0xf3],
    TOKEN.NE_INST:    [1, 8, 0xf4],
    TOKEN.NC_INST:    [1, 8, 0xf5],
    TOKEN.SIGN_INST:  [1, 8, 0xf6],
    TOKEN.NEG_INST:   [1, 8, 0xf7],

    TOKEN.SHL_INST:   [1, 8, 0xf8],
    TOKEN.SHR_INST:   [1, 8, 0xf9],
    TOKEN.SHL4_INST:  [1, 8, 0xfa],
    TOKEN.ROL_INST:   [1, 8, 0xfc],
    TOKEN.ROR_INST:   [1, 8, 0xfd],
    TOKEN.SWAP_INST:  [1, 8, 0xfe],
    TOKEN.ASR_INST:   [1, 8, 0xff],

    TOKEN.LD_INST:    [2, 4, 0x0],
    TOKEN.ST_INST:    [2, 4, 0x1],
    TOKEN.ADD_INST:   [2, 4, 0x2],
    TOKEN.ADDI_INST:  [1, 4, 0x3],
    TOKEN.ADDIC_INST: [1, 4, 0x4],
    TOKEN.SUB_INST:   [2, 4, 0x5],
    TOKEN.JMP_INST:   [2, 4, 0x6],
    TOKEN.JC_INST:    [2, 4, 0x7],
    TOKEN.CMP_INST:   [2, 4, 0x8],
    TOKEN.CMPI_INST:  [1, 4, 0x9],
    TOKEN.NOR_INST:   [2, 4, 0xa],
    TOKEN.NORI_INST:  [1, 4, 0xb],
    TOKEN.AND_INST:   [2, 4, 0xc],
    TOKEN.XOR_INST:   [2, 4, 0xd],
    TOKEN.LIH_INST:   [1, 4, 0xe]
}

keyword = {
    "gt":   TOKEN.GT_INST,
    "Cz":   TOKEN.GT_INST,
    "lt":   TOKEN.LT_INST,
    "cz":   TOKEN.LT_INST,
    "eq":   TOKEN.EQ_INST,
    "ne":   TOKEN.NE_INST,
    "nc":   TOKEN.NC_INST,

    "sign": TOKEN.SIGN_INST,
    "neg":  TOKEN.NEG_INST,
    "shl":  TOKEN.SHL_INST,
    "shr":  TOKEN.SHR_INST,
    "shl4": TOKEN.SHL4_INST,
    "rol":  TOKEN.ROL_INST,
    "ror":  TOKEN.ROR_INST,
    "swap": TOKEN.SWAP_INST,
    "asr":  TOKEN.ASR_INST,

    "ld":   TOKEN.LD_INST,
    "st":   TOKEN.ST_INST,
    "add":  TOKEN.ADD_INST,
    "addi": TOKEN.ADDI_INST,
    "addic":TOKEN.ADDIC_INST,
    "sub":  TOKEN.SUB_INST,
    "jmp":  TOKEN.JMP_INST,
    "jc":   TOKEN.JC_INST,
    "cmp":  TOKEN.CMP_INST,
    "cmpi": TOKEN.CMPI_INST,
    "nor":  TOKEN.NOR_INST,
    "nori": TOKEN.NORI_INST,
    "and":  TOKEN.AND_INST,
    "xor":  TOKEN.XOR_INST,
    "lh":   TOKEN.LIH_INST,
    "-":    TOKEN.MINUS,
    "+":    TOKEN.PLUS,
    ":":    TOKEN.COLON,
    "==":   TOKEN.EQ,
    "!=":   TOKEN.NE,
    "<":    TOKEN.LT,
    ">":    TOKEN.GT,
    "(":    TOKEN.LP,
    ")":    TOKEN.RP,
    "*":    TOKEN.MULT,
    "/":    TOKEN.DIV,
    "%":    TOKEN.MOD,
    "&":    TOKEN.BITAND,
    "|":    TOKEN.BITOR,
    "^":    TOKEN.BITXOR,
    "!":    TOKEN.NOT,
    "<<":   TOKEN.SHL,
    ">>":   TOKEN.SHR,
    "&&":   TOKEN.LOGAND,
    "||":   TOKEN.LOGOR,
    "=":    TOKEN.ASSIGN,
    "~":    TOKEN.NEG,
    "<=":   TOKEN.LE,
    ">=":   TOKEN.GE
}

class Env:
    def __init__(self, label = [], sym = {}):
        self.code = []
        self.label = []
        self.loc = 0
        self.sym = {'.': 0}
    def copy(self, env):
        env.code = []
        env.label = self.label
        env.sym = self.sym
        env.loc = 0
        self.sym['.'] = 0
    def advance(self):
        self.sym['.']  += 1
    def encode(self, enc):
        l = self.sym['.'] - len(self.code)
        if l > 0:
            self.code += [0] * l
        self.code.append(enc)
        self.advance()

    def add_num_label(self, label):
        if self.loc < len(self.label):
            self.label[self.loc] = (label, self.sym['.'])
        else:
            self.label.append((label, self.sym['.']))
        self.loc += 1
    def add_sym_label(self, label):
        self.sym[label] = self.sym['.']
    def add_symbol(self, label, value):
        self.sym[label] = value
    def search_forward(self, label):
        l = self.loc
        while l != len(self.label):
            k, v = self.label[l]
            if k == label:
                return v
            l += 1
        return 0
    def search_backward(self, label):
        l = self.loc - 1
        while l >= 0:
            k, v = self.label[l]
            if k == label:
                return v
            l -= 1
        return 0

def read_input(data):
    ln = 1
    fn = ""
    i = 0
    while i < len(data):
        c = data[i]
        if c.isspace():
            i += 1
            ln += 1 if c == "\n" else 0
        elif c == ';':
            # comment
            while i < len(data) and data[i] != '\n':
                i += 1
        elif c == '#':
            # c preprocessor
            comment = ""
            while i < len(data) and data[i] != '\n':
                comment += data[i]
                i += 1
            comment = comment.split()
            if len(comment) > 2 and all([x.isdigit() for x in comment[1]]):
                if comment[2][0] == "\"" and comment[2][-1] == "\"":
                    ln = int(comment[1]) - 1
                    fn = comment[2][1:-1]
        elif c.isalpha() or c == '.' or c == '_':
            name = ""
            while data[i].isalnum() or data[i] == '.' or data[i] == '_':
                name += data[i]
                i += 1
            name_lower = name.lower()
            if name_lower in keyword:
                yield(keyword[name_lower], name_lower, fn, ln)
            else:
                yield(TOKEN.ID, name, fn, ln)
        elif c.isdigit():
            if i + 1 < len(data):
                if data[i + 1] == 'f':
                    i += 2
                    yield(TOKEN.FREF, int(c), fn, ln)
                    continue
                elif data[i + 1] == 'b':
                    i += 2
                    yield(TOKEN.BREF, int(c), fn, ln)
                    continue
            num = ""
            if c == '0' and i + 1 < len(data) and data[i + 1] == 'x':
                i += 2
                assert i < len(data), "{} {}: not a hexdigit".format(
                    file_name, line_no)
                while data[i].isdigit() or \
                    data[i].lower() >= 'a' and \
                    data[i].lower() <= 'f':
                    num += data[i]
                    i += 1
                    if i >= len(data):
                        break
                yield(TOKEN.NUM, int(num, 16), fn, ln)
            else:
                while data[i].isdigit():
                    num += data[i]
                    i += 1
                yield(TOKEN.NUM, int(num), fn, ln)
        elif c == "$":
            assert i + 1 < len(data), "{} {}: not a valid char".format(
                file_name, line_no)
            i += 1
            c = data[i]
            i += 1
            assert c != '\n', "{} {}: not a valid char literal {}".format(
                fn, ln, c)
            yield(TOKEN.NUM, ord(c), fn, ln)
        else:
            c2 = c if i + 1 >= len(data) else c + data[i + 1]
            if c2 in keyword:
                i += 2
                yield(keyword[c2], c2, fn, ln)
            elif c in keyword:
                i += 1
                yield(keyword[c], c, fn, ln)
            else:
                assert False, "{} {}: unexpected token {}".format(fn, ln, c)
    return TOKEN.END

pushback_stack = []
def token(g):
    global pushback_stack
    try:
        if not pushback_stack:
            return next(g)
        else:
            tail, pushback_stack = pushback_stack[-1], pushback_stack[:-1]
            return tail
    except StopIteration:
        return TOKEN.END, "", 0, 0

def push_back(t, l, fn, ln):
    pushback_stack.append((t, l, fn, ln))

op_table = {
    TOKEN.MULT:     (lambda x, y: x * y, 0),
    TOKEN.DIV:      (lambda x, y: 0 if y == 0 else x // y, 0),
    TOKEN.MOD:      (lambda x, y: 0 if y == 0 else x % y, 0),
    TOKEN.PLUS:     (lambda x, y: x + y, 1),
    TOKEN.MINUS:    (lambda x, y: x - y, 1),
    TOKEN.SHL:      (lambda x, y: x << y, 2),
    TOKEN.SHR:      (lambda x, y: x >> y, 2),
    TOKEN.LT:       (lambda x, y: x < y, 3),
    TOKEN.GT:       (lambda x, y: x > y, 3),
    TOKEN.LE:       (lambda x, y: x <= y, 3),
    TOKEN.GE:       (lambda x, y: x <= y, 3),
    TOKEN.EQ:       (lambda x, y: x == y, 4),
    TOKEN.NE:       (lambda x, y: x != y, 4),
    TOKEN.BITAND:   (lambda x, y: x & y, 5),
    TOKEN.BITXOR:   (lambda x, y: x ^ y, 6),
    TOKEN.BITOR:    (lambda x, y: x | y, 7),
    TOKEN.LOGAND:   (lambda x, y: x and y, 8),
    TOKEN.LOGOR:    (lambda x, y: x or y, 9),
}

def binop(g, pred, env):
    global op_table
    value = None
    func = None
    while True:
        if pred == 0:
            t, l, fn, ln = term(g, env)
        else:
            t, l, fn, ln = binop(g, pred - 1, env)
        old = value
        if value == None:
            value = l
        else:
            value = func(value, l)
        t, l, fnop, lop = token(g)
        found = False
        if t in op_table:
            c_func, c_pred = op_table[t]
            if pred == c_pred:
                func = c_func
                found = True
        if not found:
            assert value != None, "{} {}: expression expected, got {}".format(
                fnop, lnop, t)
            push_back(t, l, fnop, lop)
            return TOKEN.NUM, value, fn, ln

def term(g, env):
    t, l, fn, ln = token(g)
    if t == TOKEN.ID:
        return TOKEN.NUM, env.sym.get(l, 0), fn, ln
    if t == TOKEN.NOT:
        t, l, fn, ln = token(g)
        return t, not l, fn, ln
    elif t == TOKEN.NEG:
        t, l, fn, ln = token(g)
        return t, ~l, fn, ln
    elif t == TOKEN.NUM:
        return t, l, fn, ln
    elif t == TOKEN.PLUS:
        return term(g, env)
    elif t == TOKEN.MINUS:
        t, l, fn, ln = term(g, env)
        return t, -l, fn, ln
    elif t == TOKEN.LP:
        t, l, fn, ln = binop(g, 9, env)
        rparen, _, fn, ln = token(g)
        assert rparen == TOKEN.RP, "{} {}: ) expected, got {}".format(
            fn, ln, rparen)
        return t, l, fn, ln
    elif t == TOKEN.FREF:
        address = env.search_forward(l)
        return TOKEN.NUM, address, fn, ln
    elif t == TOKEN.BREF:
        address = env.search_backward(l)
        return TOKEN.NUM, address, fn, ln
    else:
        assert False, "{} {}: unexpected token {}".format(
            fn, ln, t)

def program(g, env):
    t = None
    while True:
        expression = True
        t, l, fn, ln = token(g)
        if t == TOKEN.ID:
            t_nx, l_nx, fn_nx, ln_nx = token(g)
            if t_nx == TOKEN.COLON:
                env.add_sym_label(l)
                expression = False
            elif t_nx == TOKEN.ASSIGN:
                t_v, l_v, fn_v, ln_v = binop(g, 9, env)
                env.add_symbol(l, l_v)
                expression = False
            else:
                push_back(t_nx, l_nx, fn_nx, ln_nx)
                push_back(t, l, fn, ln)
        elif t == TOKEN.NUM:
            t_nx, l_nx, fn_nx, ln_nx = token(g)
            if t_nx == TOKEN.COLON:
                env.add_num_label(l)
                expression = False
            else:
                push_back(t_nx, l_nx, fn_nx, ln_nx)
                push_back(t, l, fn, ln)
        elif t in inst:
            inst_length, bits, enc = inst[t]
            if inst_length == 2:
                t, l, fn, ln = binop(g, 9, env)
                env.encode((enc << 4) | ((l >> 8) & 0xf))
                env.encode(l & 0xff)
            elif bits == 4:
                t, l, fn, ln = binop(g, 9, env)
                env.encode((enc << 4) | (l & 0xf))
            elif bits == 8:
                env.encode(enc)
            expression = False
        elif t == TOKEN.END:
            return

        if expression:
            t, l, fn, ln = binop(g, 9, env)
            env.encode(l & 0xff)

def main(argv):
    program_data = sys.stdin.read()
    t = None
    env = Env()
    while True:
        g = read_input(program_data)
        newenv = Env()
        env.copy(newenv)
        program(g, newenv)
        if newenv.code == env.code:
            break
        env = newenv
    with open("program.h", "w+") as f:
        print("const byte inc_data[] PROGMEM = {", file=f)
        for i, x in enumerate(newenv.code):
            if i > 0 and i % 8 == 0:
                print(file=f)
            if i == len(newenv.code) - 1:
                print(" {}".format(hex(x)), end='', file=f)
            else:
                print(" {},".format(hex(x)), end='', file=f)
        print(file=f)
        print("};", file=f)
    newenv.code += [0] * (8192 - len(newenv.code))
    with open("rom0.mem", "w+") as f:
        for x in newenv.code:
            print("{:x}".format(x), file=f)

if __name__ == "__main__":
    main(sys.argv)
