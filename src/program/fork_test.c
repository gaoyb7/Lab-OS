#include "comm_head.h"
#include "stdio.h"
#include "process.h"

char *str = "129djwqhdsajd128dw9i39ie93i8494urjoiew98kdkd";
int tot = 0;

void main() {
    int pid;
    printf("#### Fork test ####\n");
    printf("Origin string: %s\n", str);
    printf("I'm going to fork now.\n");
    pid = fork();
    if (pid) {
        printf("\nFork success!\n");
        printf("I'm the parent process\n");
        printf("The PID of child process is %d\n", pid);
        printf("Now wait for child process to count the charactors of origin string\n", 0xe8);
        wait();
        printf("\nCount result: %d\n", tot);
    } else {
        printf("\nI'm the child process.\n");
        while (str[tot]) ++tot;
        printf("Count finished, I'm going to exiting now.\n");
    }
}
