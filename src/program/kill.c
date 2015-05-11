#include "comm_head.h"
#include "stdio.h"
#include "process.h"
#include "stdint.h"

static int pid;
static PCB pcb;

int main() {
    puts("Pid: ");
    scanf("%d", &pid);
    load_pcb(&pcb, pid);
    pcb.stat = PROC_EXIT;
    save_pcb(&pcb, pid);
    printf("Success!\n");
}
