#include "comm_head.h"
#include "stdio.h"
#include "process.h"

char *str = "129djwqhdsajd128dw9i39ie93i8494urjoiew98kdkd";
int tot = 0;

void main() {
    int fpid;
    printf("Origin String: %s\n\n", str);
    fpid = 121;
    fpid = fork();
    if (fpid == -1) {
        printf("Error in fork!\n");
    } else if (fpid) {
        wait();
        printf("My fpid is %d, and I am the parent process!\n", fpid);
        printf("Count result: %d characters.\n", tot);
        //printf("%d\n", tot);
    } else {
        printf("My fpid id %d, and I am the child process!\n", fpid);
        while (str[tot] != 0) ++tot;
        //printf("Count result: %d characters.\n\n", tot);
    }
}
