#ifndef _STDIO_H_
#define _STDIO_H_

#include "stdint.h"

char getch();

void putch(char ch);

void put_color_ch(char ch, uint16_t attr);

void put_color_str(char *str, uint16_t attr);

void puts(char *s);

void gets(char *s);

void printf(const char *fmt, ...);

void scanf(const char *fmt, ...);

#endif
