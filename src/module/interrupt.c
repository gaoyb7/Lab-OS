#include "interrupt.h"
#include "process.h"
#include "stdlib.h"
#include "stdio.h"

#define get_stack(stack, num, p) \
for (p = 0; p < num; ++p) \
    asm volatile("popl %0;" : : "m"(stack[p])); \
for (p = num - 1; p >= 0; --p) \
    asm volatile("pushl %0;" : : "m"(stack[p]));

void _kb_demo() {
    static int8_t kb_stat;
    if (kb_stat < 2) set_pos_char(0xc0, 0x07, 0, 79);
    else if (kb_stat < 4) set_pos_char(0xda, 0x07, 0, 79);
    else if (kb_stat < 6) set_pos_char(0xbf, 0x07, 0, 79);
    else set_pos_char(0xd9, 0x07, 0, 79);
    kb_stat = (kb_stat + 1) % 8;
}

void _timer_demo() {
    static int8_t ptr = 0, spin_int = 5;
    static uint8_t col = 0x07;
    const char *symbols = "|/-\\";
    uint16_t current_pos;
    if (!--spin_int) {
        col = (col + 1) & 0xf;
        set_pos_char(symbols[ptr++], col, 24, 79);
        ptr %= 4;
        spin_int = 5;
    }
}

int _do_fork() {
    static int pcb_id, tmp;
    for (pcb_id = 0; pcb_id < MAX_PROC_NUM; ++pcb_id) {
        load_pcb(&pcb_tmp, pcb_id);
        if (pcb_tmp.stat == PROC_EXIT)
            break;
    }

    if (pcb_id >= MAX_PROC_NUM) {
        asm volatile("movl $-1, %eax;");
    } else {
        asm volatile(
                "movl %%esp, %0;"
                "movl %%edi, %1;"
                "movl %%esi, %2;"
                "movl %%ebp, %3;"
                "movl %%eax, %4;"
                "movl %%ebx, %5;"
                "movl %%ecx, %6;"
                "movl %%edx, %7;"
                : : "m"(pcb_tmp.sp), "m"(pcb_tmp.di), "m"(pcb_tmp.si), "m"(pcb_tmp.bp), \
                "m"(pcb_tmp.ax), "m"(pcb_tmp.bx), "m"(pcb_tmp.cx), "m"(pcb_tmp.dx) :
                );
        asm volatile(
                "movw %%ss, %0;"
                "movw %%es, %1;"
                "movw %%fs, %2;"
                "movw %%gs, %3;"
                "movw %%cs, %4;"
                "movw %%ds, %5;"
                : : "m"(pcb_tmp.ss), "m"(pcb_tmp.es), "m"(pcb_tmp.fs), \
                    "m"(pcb_tmp.gs), "m"(pcb_tmp.cs), "m"(pcb_tmp.ds) :
                );

        pcb_tmp.pid = get_pid();
        pcb_tmp.ppid = cur_proc;
        pcb_tmp.wait = 0;

        static uint16_t ret_addr;
        pcb_tmp.ip = 0x3fb;
        pcb_tmp.flags = cur_pcb.flags;
        pcb_tmp.stat = PROC_READY;
        pcb_tmp.name[0] = 0;
        pcb_tmp.ax = 0;
        pcb_tmp.ss = (PROC_ADDR >> 16) + pcb_id * (PROC_SIZE >> 16);
        pcb_tmp.sp += 2;
        stack_cpy(cur_pcb.ss << 16, pcb_tmp.ss << 16, PROC_ADDR & 0xffff); 
        save_pcb(&pcb_tmp, pcb_id);
        //_print_pcb(&pcb_tmp);
        asm volatile("movl %0, %%eax;" : : "m"(pcb_tmp.pid) :);
    }
    asm volatile("movl %eax, %eax;");
}

void _do_wait() {
    load_pcb(&cur_pcb, cur_proc);
    cur_pcb.wait = 1;
    save_pcb(&cur_pcb, cur_proc);
}

void _do_exit(char ch) {
    cur_pcb.stat = PROC_EXIT;
    save_pcb(&cur_pcb, cur_proc);
    if (cur_pcb.ppid >= 0 && cur_pcb.ppid < MAX_PROC_NUM) {
        load_pcb(&pcb_tmp, cur_pcb.ppid);
        pcb_tmp.wait = 0;
        pcb_tmp.ax = ch;
        save_pcb(&pcb_tmp, cur_pcb.ppid);
    }
}

static uint16_t stack[11];

void _switch_content() {
    asm volatile(
            "movl %%eax, %0;"
            "movl %%ebx, %1;"
            "movl %%ecx, %2;"
            "movl %%edx, %3;"
            : : "m"(cur_pcb.ax), "m"(cur_pcb.bx), "m"(cur_pcb.cx), "m"(cur_pcb.dx) :
            );

    static int counter = 0;
    static int i;

    if (counter < PROC_TIME) {
        ++counter;
        return;
    }

    counter = 0;

    //save current process
    for (i = 0; i < 10; ++i)
        asm volatile("popw %0" : : "m"(stack[i]));

    load_pcb(&cur_pcb, cur_proc);
    if (cur_pcb.stat == PROC_RUN) {
        asm volatile(
                "movl %%edi, %0;"
                "movl %%esi, %1;"
                "movl %%ebp, %2;"
                "movl %%esp, %3;"
                : : "m"(cur_pcb.di), "m"(cur_pcb.si), "m"(cur_pcb.bp), "m"(cur_pcb.sp) :
                );
        asm volatile(
                "movw %%ss, %0;"
                "movw %%es, %1;"
                "movw %%fs, %2;"
                "movw %%gs, %3;"
                : : "m"(cur_pcb.ss), "m"(cur_pcb.es), "m"(cur_pcb.fs), "m"(cur_pcb.gs) :
                );
        cur_pcb.stat = PROC_READY;

        cur_pcb.ds = stack[6];
        cur_pcb.ip = stack[7];
        cur_pcb.cs = stack[8];
        cur_pcb.flags = stack[9];

        int address = cur_pcb.cs << 16 | cur_pcb.ip;
        //printf("%x\n", address);

        save_pcb(&cur_pcb, cur_proc);
    } else
        asm volatile("add $2, %sp;");

    //load another process
    while (1) {
        cur_proc = (cur_proc + 1) % MAX_PROC_NUM;
        load_pcb(&cur_pcb, cur_proc);
        if (cur_pcb.stat == PROC_READY && cur_pcb.wait == 0) break;
        //if (cur_pcb.stat == PROC_READY) break;
    }

    cur_pcb.stat = PROC_RUN;
    save_pcb(&cur_pcb, cur_proc);

    asm volatile("pushl %0; popf;" : : "m"(cur_pcb.flags));
    asm volatile(
            "movl %0, %%edi;"
            "movl %1, %%esi;"
            "movl %2, %%ebp;"
            "movl %3, %%esp;"
            : : "m"(cur_pcb.di), "m"(cur_pcb.si), "m"(cur_pcb.bp), "m"(cur_pcb.sp) :
            );
    asm volatile(
            "movw %0, %%ss;"
            "movw %1, %%es;"
            "movw %2, %%fs;"
            "movw %3, %%gs;"
            : : "m"(cur_pcb.ss), "m"(cur_pcb.es), "m"(cur_pcb.fs), "m"(cur_pcb.gs) :
            );

    stack[6] = cur_pcb.ds;
    stack[7] = cur_pcb.ip;
    stack[8] = cur_pcb.cs;
    stack[9] = cur_pcb.flags;

    for (i = 9; i >= 4; --i)
        asm volatile("pushw %0" : : "m"(stack[i]));

    asm volatile(
            "movl %0, %%eax;"
            "movl %1, %%ebx;"
            "movl %2, %%ecx;"
            "movl %3, %%edx;"
            "ret;"
            : : "m"(cur_pcb.ax), "m"(cur_pcb.bx), "m"(cur_pcb.cx), "m"(cur_pcb.dx) :
            );
}


void _switch_content_2() {
    asm volatile(
            "movl %%eax, %0;"
            "movl %%ebx, %1;"
            "movl %%ecx, %2;"
            "movl %%edx, %3;"
            : : "m"(cur_pcb.ax), "m"(cur_pcb.bx), "m"(cur_pcb.cx), "m"(cur_pcb.dx) :
            );
    static int counter = 0;
    static int i;

    if (counter < PROC_TIME) {
        ++counter;
        //return;
    }

    counter = 0;

    //save current process
    for (i = 0; i < 10; ++i)
        asm volatile("popw %0" : : "m"(stack[i]));

    load_pcb(&cur_pcb, cur_proc);
    if (cur_pcb.stat == PROC_RUN) {
        asm volatile(
                "movl %%edi, %0;"
                "movl %%esi, %1;"
                "movl %%ebp, %2;"
                "movl %%esp, %3;"
                : : "m"(cur_pcb.di), "m"(cur_pcb.si), "m"(cur_pcb.bp), "m"(cur_pcb.sp) :
                );
        asm volatile(
                "movw %%ss, %0;"
                "movw %%es, %1;"
                "movw %%fs, %2;"
                "movw %%gs, %3;"
                : : "m"(cur_pcb.ss), "m"(cur_pcb.es), "m"(cur_pcb.fs), "m"(cur_pcb.gs) :
                );
        cur_pcb.stat = PROC_READY;

        cur_pcb.ds = stack[6];
        cur_pcb.ip = stack[7];
        cur_pcb.cs = stack[8];
        cur_pcb.flags = stack[9];

        int address = cur_pcb.cs << 16 | cur_pcb.ip;
        //printf("%x\n", address);

        save_pcb(&cur_pcb, cur_proc);
    } else
        asm volatile("add $2, %sp;");

    //load another process
    while (1) {
        cur_proc = (cur_proc + 1) % MAX_PROC_NUM;
        load_pcb(&cur_pcb, cur_proc);
        if (cur_pcb.stat == PROC_READY && cur_pcb.wait == 0) break;
        //if (cur_pcb.stat == PROC_READY) break;
    }

    cur_pcb.stat = PROC_RUN;
    save_pcb(&cur_pcb, cur_proc);

    asm volatile("pushl %0; popf;" : : "m"(cur_pcb.flags));
    asm volatile(
            "movl %0, %%edi;"
            "movl %1, %%esi;"
            "movl %2, %%ebp;"
            "movl %3, %%esp;"
            : : "m"(cur_pcb.di), "m"(cur_pcb.si), "m"(cur_pcb.bp), "m"(cur_pcb.sp) :
            );
    asm volatile(
            "movw %0, %%ss;"
            "movw %1, %%es;"
            "movw %2, %%fs;"
            "movw %3, %%gs;"
            : : "m"(cur_pcb.ss), "m"(cur_pcb.es), "m"(cur_pcb.fs), "m"(cur_pcb.gs) :
            );

    stack[6] = cur_pcb.ds;
    stack[7] = cur_pcb.ip;
    stack[8] = cur_pcb.cs;
    stack[9] = cur_pcb.flags;

    for (i = 9; i >= 4; --i)
        asm volatile("pushw %0" : : "m"(stack[i]));

    asm volatile(
            "movl %0, %%eax;"
            "movl %1, %%ebx;"
            "movl %2, %%ecx;"
            "movl %3, %%edx;"
            "ret;"
            : : "m"(cur_pcb.ax), "m"(cur_pcb.bx), "m"(cur_pcb.cx), "m"(cur_pcb.dx) :
            );
}

void _proc_exit_switch() {
    while (1) {
        cur_proc = (cur_proc + 1) % MAX_PROC_NUM;
        load_pcb(&cur_pcb, cur_proc);
        //if (cur_pcb.stat == PROC_READY) break;
        if (cur_pcb.stat == PROC_READY && cur_pcb.wait == 0) break;
    }

    cur_pcb.stat = PROC_RUN;
    save_pcb(&cur_pcb, cur_proc);

    asm volatile("pushl %0; popf;" : : "m"(cur_pcb.flags));
    asm volatile(
            "movl %0, %%edi;"
            "movl %1, %%esi;"
            "movl %2, %%ebp;"
            "movl %3, %%esp;"
            : : "m"(cur_pcb.di), "m"(cur_pcb.si), "m"(cur_pcb.bp), "m"(cur_pcb.sp) :
            );
    asm volatile(
            "movw %0, %%ss;"
            "movw %1, %%es;"
            "movw %2, %%fs;"
            "movw %3, %%gs;"
            : : "m"(cur_pcb.ss), "m"(cur_pcb.es), "m"(cur_pcb.fs), "m"(cur_pcb.gs) :
            );

    stack[9] = cur_pcb.flags;
    stack[8] = cur_pcb.cs;
    stack[7] = cur_pcb.ip;
    stack[6] = cur_pcb.ds;

    static int i;
    for (i = 9; i >= 4; --i)
        asm volatile("pushw %0" : : "m"(stack[i]));

    asm volatile(
            "movl %0, %%eax;"
            "movl %1, %%ebx;"
            "movl %2, %%ecx;"
            "movl %3, %%edx;"
            "ret;"
            : : "m"(cur_pcb.ax), "m"(cur_pcb.bx), "m"(cur_pcb.cx), "m"(cur_pcb.dx) :
            );
}
