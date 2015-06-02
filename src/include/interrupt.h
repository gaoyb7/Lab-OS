#ifndef _INTERRUPT_H_
#define _INTERRUPT_H_

#include "process.h"

void timer_demo();
void _timer_demo();

void kb_demo();
void _kb_demo();

static PCB cur_pcb, pcb_tmp;
static int cur_proc = 0;
static int multiproc_on = 1;

void _switch_content();
void switch_content();

void _switch_content_2();
void switch_content_2();

void _proc_exit_switch();
void proc_exit_switch();

void _do_exit(char ch);
void do_exit(char ch);

void _do_wait();
void do_wait();

int _do_fork();
int do_fork();

void _fortest(int x);
void fortest(int x);

#endif
