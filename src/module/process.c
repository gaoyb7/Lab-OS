#include "stdlib.h"
#include "stdio.h"
#include "process.h"

#define _FIX_DS_ __asm__ volatile("pushw %ds; pushw %cs; popw %ds;")
#define _REC_DS_ __asm__ volatile("popw %ds;")

void load_pcb(PCB *cur_pcb, int id) {
    _FIX_DS_;
    _read_mem((void *)cur_pcb, PCB_ADDR + id * sizeof(PCB), sizeof(PCB));
    _REC_DS_;
}

void save_pcb(PCB *cur_pcb, int id) {
    _FIX_DS_;
    _write_mem(PCB_ADDR + id * sizeof(PCB), (void *)cur_pcb, sizeof(PCB));
    _REC_DS_;
}

void schedule_prog(char *proc_name, uint16_t proc_size, uint16_t LBA, uint16_t flags) {
    _FIX_DS_;
    static int pid;
    static PCB cur_pcb, pcb_tmp;
    
    if (flags == 1) {
        load_pcb(&pcb_tmp, 0);
        pcb_tmp.wait = 1;
        save_pcb(&pcb_tmp, 0);
        //printf("wait: %s, %d\n", pcb_tmp.name, pcb_tmp.wait);
    }

    for (pid = 0; pid < MAX_PROC_NUM; ++pid) {
        load_pcb(&cur_pcb, pid);
        if (cur_pcb.stat == PROC_EXIT) 
            break;
    }

    if (pid >= MAX_PROC_NUM) {
        printf("= =!\n");
        return;
    }

    static int address;
    address = PROC_ADDR + pid * PROC_SIZE;
    load_prog(address >> 16, address & 0xffff, proc_size, LBA, 0);

    cur_pcb.cs = cur_pcb.ds = cur_pcb.es = cur_pcb.ss = address >> 16;
    cur_pcb.ip = cur_pcb.sp = address & 0xffff;
    cur_pcb.pid = pid;
    cur_pcb.wait = 0;
    __asm__ volatile("pushf; popl %%eax;" : "=a"(cur_pcb.flags) : : );

    static char *ptr;
    ptr = cur_pcb.name;
    while (*proc_name) 
        *ptr++ = *proc_name++;
    *ptr = 0;

    cur_pcb.stat = PROC_READY;
    save_pcb(&cur_pcb, pid);
    _REC_DS_;
}

void _print_pcb(PCB *cnt) {
    printf("==================================================\n");
    printf("pid: %d | name: %s | stat: %d \n", cnt->pid, cnt->name, cnt->stat);
    printf("ss: %x | gs: %x | fs: %x | es: %x | ds: %x\n", cnt->ss, cnt->gs, cnt->fs, cnt->es, cnt->ds);
    printf("di: %x | si: %x | bp: %x | sp: %x\n", cnt->di, cnt->si, cnt->bp, cnt->sp);
    printf("ax: %x | bx: %x | cx: %x | dx: %x\n", cnt->ax, cnt->bx, cnt->cx, cnt->dx);
    printf("cs: %x | ip: %x | flags: %x | wait: %d\n", cnt->cs, cnt->ip, cnt->flags, cnt->wait);
    printf("==================================================\n");
}
