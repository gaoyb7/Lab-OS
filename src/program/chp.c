#include "comm_head.h"
#include "stdio.h"
#include "process.h"

char *str = "sdsadsd;";
int tot = 0;

void main() {
    static int fpid;
    fpid = fork();
    if (fpid == -1) {
        printf("Error in fork!\n");
    } else if (fpid) {
        wait();
        printf("I am the parent process!\n");
        printf("%d\n", tot);
    } else {
        printf("I am the child process!\n");
        while (str[tot] != 0) ++tot;
    }
}
