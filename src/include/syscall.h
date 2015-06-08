#ifndef _SYSCALL_H_
#define _SYSCALL_H_

#include "stdint.h"

void syscall();
void _syscall();

void _sys_ouch();
void sys_ouch();

void _sys_write_ch(char ch);
void sys_write_ch(char ch);

void _sys_to_upper(char *prt, uint16_t len);
void sys_to_upper(char *ptr, uint16_t len);

void _sys_to_lower(char *ptr, uint16_t len);
void sys_to_lower(char *ptr, uint16_t len);

uint8_t sys_to_num(char ch);
uint8_t _sys_to_num(char ch);

char sys_to_char(uint8_t num);
char _sys_to_char(uint8_t num);

void sys_write_str(char *s);
void _sys_write_str(char *s);


void _syscall() {
    //asm volatile(
    //        ".intel_syntax noprefix;"
    //        "pushad;"
    //        "mov di, cs;"
    //        "mov ds, di;"
    //        ".att_syntax prefix;"
    //        : : : "di"
    //        );
    register int a asm("eax"), b asm("ebx"), c asm("ecx"), d asm("edx");
    switch((a >> 8) & 0xff) {
        case 0: _sys_write_ch(a & 0xff); break;
        case 1: _sys_ouch(); break;
        case 2: _sys_to_upper((char *)b, c); break;
        case 3: _sys_to_lower((char *)b, c); break;
        case 4: a = _sys_to_num((char)(a & 0xff)); break;
        case 5: a = _sys_to_char((char)(a & 0xff)); break;
        case 6: _sys_write_str((char *)b); break;
    }
    //asm volatile(
    //        ".intel_syntax noprefix;"
    //        "popad;"
    //        ".att_syntax prefix;"
    //        );
}



void sys_write_ch(char ch) {
    asm volatile (
            "int $0x68;"
            : :"a"(ch) :
            );
}


void sys_ouch() {
    asm volatile (
            "int $0x68;"
            : :"a"(1 << 8) :
            );
}

void sys_to_upper(char *ptr, uint16_t len) {
    asm volatile (
            "int $0x68;"
            : :"a"(2 << 8), "b"(ptr), "c"(len): 
            );
}

void sys_to_lower(char *ptr, uint16_t len) {
    asm volatile (
            "int $0x68;"
            : :"a"(3 << 8), "b"(ptr), "c"(len): 
            );
}

uint8_t sys_to_num(char ch) {
    uint8_t res;
    asm volatile(
            "int $0x68;"
            : "=a"(res) : "a"((4 << 8) + ch) :
            );
    return res;
}

char sys_to_char(uint8_t num) {
    char ch;
    asm volatile(
            "int $0x68;"
            : "=a"(ch) : "a"((5 << 8) + num) :
            );
    return ch;
}

void sys_write_str(char *s) {
    asm volatile(
            "int $0x68;"
            : : "a"(6 << 8), "b"(s) :
            );
}

#endif
