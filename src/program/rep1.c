#include "comm_head.h"
#include "stdint.h"

static int8_t row = 1, col = 70, step = 1;
static int tot = 30000000, tmp;

int main() {
    while (1) {
        asm("hlt;");
        set_pos_char(step == 1 ? '>' : '<', 0x09, row, col);
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
