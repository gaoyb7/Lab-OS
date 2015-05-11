#ifndef _SYSCALL_H_
#define _SYSCALL_H_

#include "syscall.h"
#include "stdint.h"

void _sys_write_ch(char ch) {
    __asm__ volatile(
            "int $0x10;"
            : : "a"((0x0e << 8) + ch), "b"(0) :
            );
}

void _sys_ouch() {
    _sys_write_ch('O');
    _sys_write_ch('U');
    _sys_write_ch('C');
    _sys_write_ch('H');
    _sys_write_ch('!');
    _sys_write_ch('\r');
    _sys_write_ch('\n');
}

uint8_t _sys_to_num(char ch) {
    return ch - '0';
}

void _sys_to_upper(char *ptr, uint16_t len) {
    //_USER_SPACE_
    uint16_t i;
    for (i = 0; i < len; ++i) {
        if ('a' <= *ptr && *ptr <= 'z')
            *ptr = *ptr - 'a' + 'A';
        ++ptr;
    }
    //_SYS_SPACE_
}

void _sys_to_lower(char *ptr, uint16_t len) {
    //_USER_SPACE_
    uint16_t i;
    for (i = 0; i < len; ++i) {
        if ('A' <= *ptr && *ptr <= 'Z')
            *ptr = *ptr - 'A' + 'a';
        ++ptr;
    }
    //_SYS_SPACE_
}

char _sys_to_char(uint8_t num) {
    return num + '0';
}

void _sys_write_str(char *ptr) {
    //_USER_SPACE_
    while (*ptr) {
        _sys_write_ch(*ptr);
        ++ptr;
    }
    //_SYS_SPACE_
}

#endif
