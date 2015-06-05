#include "comm_head.h"
#include "stdint.h"
#include "stdio.h"

//int8_t row = 1, col = 70, step = 1;
//int tmp, time = 1000000, cycle = 10;

int main() {
    int8_t row = 1, col = 70, step = 1;
    int tmp, time = 1000000, cycle = 20;
    while (1) {
        //asm("hlt;");
        tmp = time;
        while (tmp-- > 0);
        printf("It's rep1.com\n");
        //set_pos_char(step == 1 ? '>' : '<', 0x09, row, col);
        //col += step;
        //if (col == 80) {
        //    step = -1;
        //    col = 79;
        //} else if (col == 69) {
        //    step = 1;
        //    col = 70;
        //}
    }
    //asm volatile("int $0x72; int $0x73;");
    printf("%d\n", cycle);
}
