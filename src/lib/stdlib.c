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

void strncpy(char *stra, char *strb, int len) {
    while (len--)
        *strb++ = *stra++;
    *strb = 0;
}

void strcat(char *stra, char *strb) {
    int len = __builtin_strlen(stra);
    stra += len;
    while (*strb)
        *stra++ = *strb++;
    *stra = 0;
}

void to_upper(char *str) {
    while (*str) {
        if ('a' <= *str && *str <= 'z')
            *str = *str - 'a' + 'A';
        ++str;
    }
}

void to_lower(char *str) {
    while (*str) {
        if ('a' <= *str && *str <= 'z')
            *str = *str - 'A' + 'a';
        ++str;
    }
}

void memcpy(void *dest, void *source, int size) {
    while (size--) {
        *(char *)dest++ = *(char *)source++;
    }
}
