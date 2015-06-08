#include "comm_head.h"
#include "process.h"
#include "stdio.h"
#include "string.h"
#define CMD_BUFFER_LEN 512

const char *cmd_flag="#";
char cmd_buff[CMD_BUFFER_LEN];
char cmd[CMD_BUFFER_LEN];
char cnt_dir[512];

uint16_t read_cmd();
void load_user_program(char *, uint16_t);
int is_builtin_func(char *cmd);
int is_spec_prog(char *cmd);

uint16_t cmd_len;

int main() {
    get_fat();
    while (1) {
        get_fat();
        printf("%s %s ", pwd(cnt_dir), cmd_flag);
        cmd_len = read_cmd();

        if (cmd_len == 0)
            continue;

        static uint16_t i, j, p;
        p = 0;

        while (p < cmd_len) {
            for (i = p; i < cmd_len && cmd_buff[i] != ';'; ++i);
            strncpy(cmd_buff + p, cmd, i - p);
            load_user_program(cmd, i - p);
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

void load_user_program(char *cmd, uint16_t len) {
    static uint16_t i;
    uint8_t has_run = 0, flag = 1, has_ext = 0;

    while (len && cmd[len - 1] == ' ') --len; 
    cmd[len] = 0;

    while (len && cmd[0] == ' ') {
        ++cmd;
        --len;
    }

    if (is_builtin_func(cmd) == 1) return;

    if (cmd[len - 1] == '&') {
        flag = 0;
        --len;
        while (len && cmd[len - 1] == ' ') --len; 
        cmd[len] = 0;
    }

    for (i = 0; i < len; ++i)
        if (cmd[i] == '.') {
            has_ext = 1;
            break;
        }

    if (has_ext == 0) {
        cmd[len++] = '.';
        cmd[len++] = 'c';
        cmd[len++] = 'o';
        cmd[len++] = 'm';
        cmd[len] = 0;
    }

    if (is_spec_prog(cmd) == 1) return;

    if (schedule_prog(cmd, flag) == 0) {
        puts("Command not found: ");
        puts(cmd);
        puts("\n");
    } else {
        if (flag == 1) {
            wait();
        }
    }
}

int is_spec_prog(char *cmd) {
    if (strcmp(cmd, "sh.com") == 0) {
        printf("Error: can not run two shell at the same time.\n");
        return 1;
    } else if (strcmp(cmd, "kernel.bin") == 0) {
        printf("Error: Permission denied.\n");
        return 1;
    }
    return 0;
}

int is_builtin_func(char *cmd) {
    int len;
    len = __builtin_strlen(cmd);
    if (cmd[0] == 'c' && cmd[1] == 'd' && cmd[2] == ' ') {
        if (!cd(cmd + 3))
            printf("cd: no such directory %s\n", cmd + 3);
        return 1;
    } else if (cmd[0] == 'c' && cmd[1] == 'a' && cmd[2] =='t' && cmd[3] == ' ') {
        if (!cat(cmd + 4))
            printf("cat: no such file %s\n", cmd + 4);
        return 1;
    } else if (strcmp(cmd, "ls") == 0) {
        ls();
        return 1;
    } else if (strcmp(cmd, "pwd") == 0) {
        printf("%s\n", pwd(cnt_dir));
        return 1;
    }
    return 0;
}
