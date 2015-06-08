#ifndef _STDLIB_H_
#define _STDLIB_H_

#include "stdint.h"

void outb(uint16_t port, uint8_t val);

uint8_t inb(uint16_t port);

uint16_t inw(uint16_t port);

void clear();

char get_cur_char();

void set_cur_char(unsigned char ch);

uint16_t get_cur_pos();

void set_cur_pos(uint16_t pos);

void sleep(uint16_t time);

#endif

