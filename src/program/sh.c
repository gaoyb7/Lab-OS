#include "comm_head.h"
#include "prog_table.h"
#include "process.h"
#include "stdio.h"
#include "stdlib.h"
#define CMD_BUFFER_LEN 256

const char *cmd_flag=">> ";
char cmd_buff[CMD_BUFFER_LEN];

uint16_t read_cmd();
void load_user_program(const char *, uint16_t);
void run_prog(uint16_t segment, uint16_t offset);

char cc, ss[10];
uint16_t cmd_len;

int main() {
    while (1) {
        puts(cmd_flag);
        cmd_len = read_cmd();

        if (cmd_len == 0)
            continue;

        static uint16_t i, p;
        char flag = 1;
        p = 0;

        while (p < cmd_len) {
            //printf("%d\n", fork());
            for (i = p; i < cmd_len && cmd_buff[i] != ';'; ++i);
            load_user_program(cmd_buff + p, i - p);
            //asm("pushw %ds; int $0x68; int $0x71; popw %ds;");
            p = i + 1;
            puts("\n");
        }
    }
}

uint16_t read_cmd() {
    uint16_t len = 0;
    gets(cmd_buff);
    for (len = 0; cmd_buff[len]; ++len);
    return len;
}

void load_user_program(const char *cmd, uint16_t len) {
    while (len && cmd[len - 1] == ' ') --len;
    while (len && cmd[0] == ' ') {
        ++cmd;
        --len;
    }

    if (strncmp(cmd, "sh", 2) == 0) {
        printf("Error: Can not run two shell at the same time!\n");
        return;
    }

    uint16_t i;
    uint8_t has_run = 0;
    for (i = 0; i < NUM_OF_PROG; ++i)
        if (len == __builtin_strlen(program_table[i].prog_name) && strncmp(program_table[i].prog_name, cmd, len) == 0) {
            schedule_prog(program_table[i].prog_name, program_table[i].size, program_table[i].pos, program_table[i].flags);
            if (program_table[i].flags) wait();
            has_run = 1;
        }

    if (!has_run) {
        puts("Command not found: ");
        puts(cmd);
        puts("\n");
    }
}

void run_prog(uint16_t segment, uint16_t offset) {
    _run_prog((segment << 16) + offset);
}
