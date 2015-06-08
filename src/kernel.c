asm(".code16gcc\n");
asm("mov %cs, %ax\n");
asm("mov %ax, %ds\n");
asm("mov %ax, %es\n");
asm("jmp $0x1000, $main\n");

#include "interrupt.h"
#include "stdint.h"
#include "process.h"
#include "stdio.h"
#include "stdlib.h"
#include "fat12.h"

char *welcome_msg =
"Steam OS v5.1\n"
"Copyright (c) 2015 Gaoyb7.\n"
"Type 'help' for more information.\n";

void load_ISR();
void fat12_test();

int tmp;

int main() {
    printf("%s\n", welcome_msg);
    load_ISR();
    //fat12_info();
    get_fat();
    cd("prog");
    schedule_prog("sh.com", 0);
    getch();
}

void load_ISR() {
    //build_ISR(0x08, timer_demo);
    //build_ISR(0x09, kb_demo);
    //build_ISR(0x09, timer_demo);
    build_ISR(0x1c, switch_content);
    build_ISR(0x71, switch_content_2);
    build_ISR(0x72, proc_exit_switch);
    build_ISR(0x73, do_exit);
    build_ISR(0x74, do_wait);
    build_ISR(0x75, do_fork);
    //build_ISR(0x68, syscall);
}

void fat12_info() {
    printf("Size of Boot_sector_t: %d\n", sizeof(Boot_sector_t));
    printf("Size of File_entry_t: %d\n", sizeof(File_entry_t));
    printf("Size of Sector_t: %d\n", sizeof(Sector_t));
    printf("Size of Dir_entry_t: %d\n", sizeof(Dir_entry_t));
    printf("Size of FAT_t: %d\n", sizeof(FAT_t));
    printf("\n");
}
