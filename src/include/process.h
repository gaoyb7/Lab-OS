#ifndef _PROCESS_H_
#define _PROCESS_H_

#define PROC_EXIT 0
#define PROC_READY 1
#define PROC_RUN 2

#define MAX_PROC_NUM 6
#define PCB_ADDR 0x00000500
#define PROC_ADDR 0x20000500
#define PROC_SIZE 0x04000000
#define PROC_TIME 1

#include "stdint.h"

//kernel:       0x1000:0x0000
//pcb:          0x0000:0x0500
//user_program: 0x2000:0x0500, size: 0x4000

typedef struct PCB{
    int ss, gs, fs, es, ds;
    int di, si, bp, sp;
    int bx, dx, cx, ax;
    int ip, cs, flags;
    char name[16];
    int pid, stat, ppid;
    int wait;
} PCB;

void load_pcb(PCB *pcb, int id);

void save_pcb(PCB *pcb, int id);

void _print_pcb(PCB *pcb);

void schedule_prog(char *proc_name, uint16_t proc_size, uint16_t LBA, uint16_t flags);

#endif
