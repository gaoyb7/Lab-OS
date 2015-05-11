#include "comm_head.h"

void clear() {
    __asm__ volatile(
            "int $0x10;"
            : : "a"(3) :
            );
}

int main() {
    clear();
}
