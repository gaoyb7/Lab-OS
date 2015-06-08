#include "comm_head.h"
#include "stdio.h"
#include "stdint.h"

int main()
{
    uint16_t H_M, S_D;
    uint8_t H, M, S;

    asm volatile (
            ".intel_syntax noprefix;"
            "mov ah, 0x02;"
            "int 0x1a;"
            ".att_syntax;"
            : "=c"(H_M), "=d"(S_D) : :
            );

    H = H_M >> 8;
    M = H_M & 0x00ff;
    S = S_D >> 8;

    puts("Current time: ");
    putch(((H & 0x00f0) >> 4) + '0');
    putch(((H & 0x000f) >> 0) + '0');
    putch(':');
    putch(((M & 0xf0) >> 4) + '0');
    putch(((M & 0x0f) >> 0) + '0');
    putch(':');
    putch(((S & 0xf0) >> 4) + '0');
    putch(((S & 0x0f) >> 0) + '0');
    
    puts("\n");
}
