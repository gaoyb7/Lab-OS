#include "comm_head.h"
#include "stdio.h"
#include "process.h"

int main() {
    static PCB cur_pcb;
    static int pid;
    for (pid = 0; pid < MAX_PROC_NUM; ++pid) {
        load_pcb(&cur_pcb, pid);
        if (cur_pcb.stat != PROC_EXIT) {
            printf("Pid %d | Command %s | Wait %d | CS:IP 0X%x:0X%x\n", cur_pcb.pid, cur_pcb.name, cur_pcb.wait, cur_pcb.cs, cur_pcb.ip);
        }
    }
}
