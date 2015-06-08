#include "comm_head.h"
#include "stdio.h"
#include "stdint.h"

int main() {
    uint16_t Y, M_D;
    uint8_t M, D;

    static int x = 10000;

    asm volatile("pushl %0; int $0x76; popl %0" : : "m"(x));

    asm volatile (
            ".intel_syntax noprefix;"
            "mov ah, 0x04;"
            "int 0x1a;"
            ".att_syntax;"
            : "=c"(Y), "=d"(M_D) : :
            );

    M = M_D >> 8;
    D = M_D & 0x00ff;

    puts("Current date: ");
    putch(((Y & 0xf000) >> 12) + '0');
    putch(((Y & 0x0f00) >>  8) + '0');
    putch(((Y & 0x00f0) >>  4) + '0');
    putch(((Y & 0x000f) >>  0) + '0');
    putch('-');
    putch(((M & 0xf0) >> 4) + '0');
    putch(((M & 0x0f) >> 0) + '0');
    putch('-');
    putch(((D & 0xf0) >> 4) + '0');
    putch(((D & 0x0f) >> 0) + '0');
    puts("\n");
}
