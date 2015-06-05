#include "stdlib.h"

void clear() {
    __asm__ volatile(
            "int $0x10;"
            : : "a"(3) :
            );
}

char get_cur_char() {
    char ch;
    __asm__ volatile(
            "int $0x10;"
            : "=a"(ch) : "a"(0x08 << 8), "b"(0x00) :
            );
    return ch;
}

void set_cur_char(unsigned char ch) {
    __asm__ volatile(
            "int $0x10;"
            : : "a"((0x09 << 8) + ch), "b"(0x07), "c"(0x01)
            );
}

uint16_t get_cur_pos() {
    uint16_t pos;
    __asm__ volatile(
            "int $0x10;"
            : "=d"(pos) : "a"(0x03 <<  8), "b"(0)
            );
    return pos;
}

void set_cur_pos(uint16_t pos) {
    __asm__ volatile(
            "int $0x10;"
            : : "a"(0x02 << 8), "b"(0x00), "d"(pos) :
            );
}

void sleep(uint16_t time) {
    __asm__ volatile(
            "int $0x15;"
            : : "a"(0x86 << 8), "c"(time), "d"(0) :
            );
}

void _putch(char ch) {
    __asm__ volatile(
            "int $0x10;"
            : : "a"((0x0e << 8) + ch), "b"(0x00) :
            );
}

void load_prog(uint16_t segment, uint16_t offset, uint8_t count, uint16_t LBA, uint8_t drive_id) {
    uint8_t SPT, HPC, cylinder, head, sector;
    uint16_t SPT_tmp, HPC_tmp;
    __asm__ volatile(
            "pushw %%es;"
            "int $0x13;"
            : "=c"(SPT_tmp), "=d"(HPC_tmp): "a"(0x08 << 8), "d"(drive_id): "si", "di"
            );

    SPT = SPT_tmp & 0xff;
    HPC = (HPC_tmp >> 8) + 1;

    cylinder = LBA / ((uint16_t)SPT * HPC);
    head = (LBA / SPT) % HPC;
    sector = LBA % SPT + 1;

    __asm__ volatile(
            ".intel_syntax noprefix;"
            "mov es, di;"
            "int 0x13;"
            "pop es;"
            ".att_syntax prefix;"
            : : "a"((0x02 << 8) + count), "b"(offset), \
                "c"(((uint16_t)cylinder << 8) + sector), \
                "d"(((uint16_t)head << 8) + drive_id), \
                "D"(segment)
                : "si"
            );
}

int strncmp(char *stra, char *strb, int len) {
    int i;
    for (i = 0; i < len; ++i) {
        if (*stra < *strb) return -1;
        if (*stra > *strb) return 1;
        stra++; strb++;
    }
    return 0;
}

int strcmp(char *stra, char *strb) {
    while (1) {
        if (*stra == 0 && *strb == 0) return 0;
        if (*stra < *strb) return -1;
        if (*stra > *strb) return 1;
        stra++; strb++;
    }
    return 0;
}

void memcpy(void *dest, void *source, int size) {
    while (size--) {
        *(char *)dest++ = *(char *)source++;
    }
}
