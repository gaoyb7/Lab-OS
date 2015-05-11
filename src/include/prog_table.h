#ifndef _PROG_TABLE_H_
#define _PROG_TABLE_H_

#define MAX_PROG_NAME_LEN 64
#define NUM_OF_PROG 14

#include "stdint.h"

struct prog_table {
    char prog_name[MAX_PROG_NAME_LEN];
    uint16_t pos;
    uint8_t size;
    uint8_t flags;
};

const struct prog_table program_table[NUM_OF_PROG] = {
    {"reboot", 20, 10, 0},
    {"time", 30, 10, 1},
    {"date", 40, 10, 1},
    {"help", 50, 10, 1},
    {"clear", 60, 10, 1},
    {"syscall_demo", 70, 10, 1},
    {"stdio_demo", 80, 10, 1},
    {"sh", 90, 20, 0},
    {"rep1", 110, 5, 0},
    {"rep2", 115, 5, 0},
    {"rep3", 120, 5, 0},
    {"rep4", 125, 5, 0},
    {"top", 130, 20, 1},
    {"chp", 150, 20, 1}
};

#endif
