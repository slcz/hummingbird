#define H(x) (((((x) & 0x8) >> 3) + ((x) >> 4)) & 0xf)
#define L(x) ((x) & 0xf)
#define li(x) lh H(x) addi L(x)
#define ge
#define not nori ~0
#define ori(x) nori x nori ~0
#define or(x)  nor x nori ~0
