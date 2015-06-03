[BITS 16]
[global build_ISR]

;Build an Interrupt Service Routines;
;build_ISR(uint16 number, int offset)
build_ISR:
    enter 0, 0
    push es
    push ebx
    push esi

    mov ax, [bp+6]
    mov cx, 4
    mul cl
    mov bx, ax

    xor ax, ax
    mov es, ax
    mov esi, [bp+10]

    mov eax, dword[es:bx]
    mov dword[cs:si-4], eax

    mov word[es:bx], si
    mov ax, cs
    mov word[es:bx+2], ax

    pop esi
    pop ebx
    pop es
    leave

    pop ecx
    jmp cx


%macro ISR_WRAPPER 1
[global %1]
[extern _%1]
_origin_%1 resw 2
%1:
    push ds
    mov ax, cs
    mov ds, ax

    pushf
    cli
    call far [_origin_%1]
    call dword _%1

    push eax
    mov al, 0x20
    out 0x20,al
    pop eax

    pop ds
    iret
%endmacro

ISR_WRAPPER timer_demo
ISR_WRAPPER kb_demo
ISR_WRAPPER do_wait
ISR_WRAPPER do_exit
ISR_WRAPPER do_fork
ISR_WRAPPER switch_content
ISR_WRAPPER switch_content_2
ISR_WRAPPER proc_exit_switch
