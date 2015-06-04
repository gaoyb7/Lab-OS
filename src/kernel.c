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
#include "fat12.h"

const char *welcome_msg=
"Steam OS v5.0\n"
"Copyright (c) 2015 Gaoyb7.\n"
"Type 'help' for more information.\n\n";

void show_msg();
void load_ISR();
void load_and_run_shell();
Sector_dir_t Sdata;
void fat12_test();
void read_sector(void *ptr, uint16_t LBA, uint16_t count);

int main() {
    show_msg();
    load_ISR();
    fat12_test();
    schedule_prog("sh", 20, 90, 0);
    getch();
}

void show_msg() {
    clear();
    puts(welcome_msg);
}

void load_ISR() {
    build_ISR(0x08, timer_demo);
    build_ISR(0x09, kb_demo);
    build_ISR(0x1c, switch_content);
    build_ISR(0x71, switch_content_2);
    build_ISR(0x72, proc_exit_switch);
    build_ISR(0x73, do_exit);
    build_ISR(0x74, do_wait);
    build_ISR(0x75, do_fork);
    //build_ISR(0x68, syscall);
}

void fat12_test() {
    printf("Size of Boot_sector_t: %d\n", sizeof(Boot_sector_t));
    printf("Size of File_entry_t: %d\n", sizeof(File_entry_t));
    printf("Size of Sector_t: %d\n", sizeof(Sector_t));
    printf("Size of Sector_dir_t: %d\n", sizeof(Sector_dir_t));
    printf("Size of FAT_t: %d\n", sizeof(FAT_t));
    printf("Size of Logic_FAT_t: %d\n", sizeof(Logic_FAT_t));
    printf("--------------------------------\n");
    printf("++++ File list ++++\n");
    static int i = 0;
    static char name[12], attr[10];
    static File_entry_t file;
    read_sector(&Sdata, FILE_ENTRY_ADDR, 1);
    while (1) {
        file = Sdata.data[i];
        if (file.name[0] == 0) break;
        printf("%s %s\n", show_file_name(&file, name), show_file_attrib(&file, attr));
        ++i;
    }
}
