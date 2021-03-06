#include "comm_head.h"
#include "process.h"
#include "stdio.h"
#include "string.h"
#define CMD_BUFFER_LEN 512

const char *help_msg =
"Builtin_Command    Description\n"
"=========================================\n"
"clear              clear the terminal screen\n"
"ls                 list directory contents\n" 
"cd <DIR>           change the working directory\n"
"cat <FILE>         concatenate files and print on the standard output\n"
"echo <STR>         display a line of text\n"
"rm <FILE>          remove files\n"
"cp <SRC> <DST>     copy files\n"
"exit               cause the shell to exit";

const char *cmd_flag="#";
char cmd_buff[CMD_BUFFER_LEN];
char cmd[CMD_BUFFER_LEN];
char cnt_dir[512];

uint16_t read_cmd();
int load_user_program(char *cmd, int len);
int is_builtin_func(char *cmd);
int is_spec_prog(char *cmd);
void clear();

uint16_t cmd_len;

int main() {
    get_fat();
    int exit_signal = 0;
    while (1) {
        printf("%s %s ", pwd(cnt_dir), cmd_flag);
        cmd_len = read_cmd();

        if (cmd_len == 0)
            continue;

        static uint16_t i, j, p;
        p = 0;

        while (p < cmd_len) {
            for (i = p; i < cmd_len && cmd_buff[i] != ';'; ++i);
            strncpy(cmd_buff + p, cmd, i - p);
            if (load_user_program(cmd, i - p) == -1) {
                exit_signal = 1;
                break;
            }
            p = i + 1;
            puts("\n");
        }
        
        if (exit_signal == 1)
            break;
    }
}

uint16_t read_cmd() {
    uint16_t len = 0;
    gets(cmd_buff);
    for (len = 0; cmd_buff[len]; ++len);
    return len;
}

int load_user_program(char *cmd, int len) {
    uint8_t flag = 1, tmp;

    len = del_blank(cmd);
    to_upper(cmd);

    tmp = is_builtin_func(cmd);
    if (tmp == 1) return 1;
    if (tmp == 2) return -1;

    if (cmd[len - 1] == '&') {
        flag = 0;
        --len;
        while (len && cmd[len - 1] == ' ') --len; 
        cmd[len] = 0;
    }

    if (strchr(cmd, '.') == -1)
        strcat(cmd, ".COM");

    if (is_spec_prog(cmd) == 1) 
        return 2;

    if (schedule_prog(cmd, flag) == 0) {
        puts("Command not found: ");
        puts(cmd);
        puts("\n");
        return 3;
    } else {
        if (flag == 1) {
            wait();
            return 4;
        }
    }
}

int is_spec_prog(char *cmd) {
    if (strcmp(cmd, "KERNEL.BIN") == 0) {
        printf("Error: Permission denied.\n");
        return 1;
    }
    return 0;
}

int is_builtin_func(char *cmd) {
    int len, tmp;
    len = __builtin_strlen(cmd);

    //printf("%s\n", cmd);
    if (strncmp(cmd, "CD ", 3) == 0) {
        if (!cd(cmd + 3))
            printf("cd: no such directory '%s'\n", cmd + 3);
        return 1;

    } else if (strncmp(cmd, "CAT ", 4) == 0) {
        if (!cat(cmd + 4))
            printf("cat: file not found '%s'\n", cmd + 4);
        return 1;

    } else if (strncmp(cmd, "RM ", 3) == 0) {
        rm(cmd + 3);
        return 1;

    } else if (strncmp(cmd, "CP ", 3) == 0) {
        tmp = strchr(cmd + 3, ' ');
        if (tmp == -1) {
            printf("cp: missing destination file operand after '%s'\n", cmd + 3);
            return 1;
        }

        cmd[tmp + 3] = 0;
        cp(cmd + 3, cmd + tmp + 4);
        return 1;

    } else if (strcmp(cmd, "HELP") == 0) {
        printf("%s\n", help_msg);
        return 1;

    } else if (strncmp(cmd, "ECHO ", 5) == 0) {
        printf("%s\n", cmd + 5);
        return 1;

    } else if (strcmp(cmd, "LS") == 0) {
        ls();
        return 1;

    } else if (strcmp(cmd, "PWD") == 0) {
        printf("%s\n", pwd(cnt_dir));
        return 1;

    } else if (strcmp(cmd, "CLEAR") == 0) {
        clear();
        return 1;
    } else if (strcmp(cmd, "EXIT") == 0) {
        return 2;
    }

    return 0;
}

void clear() {
    asm volatile(
            "int $0x10;"
            : : "a"(3) :
            );
}
