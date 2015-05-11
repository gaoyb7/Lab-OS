__asm__(".code16gcc\n");
__asm__("mov %cs, %ax\n");
__asm__("mov %ax, %ds\n");
__asm__("mov %ax, %es\n");
__asm__("jmp $0x1000, $main\n");

#include "interrupt.h"
#include "stdint.h"
//#include "syscall.h"
#include "process.h"
#include "stdio.h"
#include "stdlib.h"

const char *welcome_msg=
"Steam OS v4.0\n"
"Copyright (c) 2015 Gaoyb7.\n"
"Type 'help' for more information.\n\n";

void show_msg();
void load_ISR();
void load_and_run_shell();
void test();

int main() {
    show_msg();
    load_ISR();
    schedule_prog("sh", 20, 90, 0);
    getch();
}

void show_msg() {
    clear();
    puts(welcome_msg);
}

void load_ISR() {
    build_ISR(0x1c, timer_demo);
    build_ISR(0x09, kb_demo);
    build_ISR(0x1c, switch_content);
    build_ISR(0x71, switch_content_2);
    build_ISR(0x72, proc_exit_switch);
    build_ISR(0x73, do_exit);
    build_ISR(0x74, do_wait);
    //build_ISR(0x68, syscall);
}
