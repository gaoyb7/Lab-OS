#ifndef _IO_H_
#define _IO_H_

#include "stdint.h"

inline void outb(uint16_t port, uint8_t val);

uint8_t inb(uint16_t port);

uint16_t inw(uint16_t port);

#endif
