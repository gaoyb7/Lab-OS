#ifndef _COMM_HEAD_H
#define _COMM_HEAD_H

asm(".code16gcc\n");
asm("pushw %ds;");
asm("pushw %es;");
asm("mov %cs, %ax\n");
asm("mov %ax, %ds\n");
asm("mov %ax, %es\n");
asm("call main\n");
asm("popw %es;");
asm("popw %ds;");
asm("int $0x73;");
asm("int $0x72;");

#endif
