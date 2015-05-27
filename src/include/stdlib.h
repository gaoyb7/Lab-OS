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

void memcpy(void *dest, void *source, int size);

void sleep(uint16_t time);

void load_prog(uint16_t segment, uint16_t offset, uint8_t sectors, uint16_t LBA, uint8_t drive_id);

int8_t strncmp(const char *stra, const char *strb, unsigned short len);

#endif

