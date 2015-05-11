#ifndef _COMM_HEAD_H
#define _COMM_HEAD_H

__asm__(".code16gcc\n");
__asm__("pushw %ds;");
__asm__("pushw %es;");
__asm__("mov %cs, %ax\n");
__asm__("mov %ax, %ds\n");
__asm__("mov %ax, %es\n");
__asm__("call main\n");
__asm__("popw %es;");
__asm__("popw %ds;");
__asm__("int $0x72;");
__asm__("int $0x73;");
//__asm__("lret\n");

#endif
