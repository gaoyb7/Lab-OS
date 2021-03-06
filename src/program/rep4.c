#include "comm_head.h"
#include "stdint.h"

static int8_t row = 4, col = 70, step = 1;

int main() {
    while (1) {
        asm("hlt;");
        set_pos_char(step == 1 ? '>' : '<', 0x06, row, col);
        col += step;
        if (col == 80) {
            step = -1;
            col = 79;
        } else if (col == 69) {
            step = 1;
            col = 70;
        }
    }
}

