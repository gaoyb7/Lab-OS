[BITS 16]
global _run_prog
global _read_mem, _write_mem, _write_char2mem
global set_pos_char

;run program by call an address
;_run_prog(int address)
_run_prog:
    enter 0, 0
    mov eax, cs
    push eax
    mov eax, __return
    push eax
    jmp far [bp+6]
    __return:
    leave

    pop ecx
    jmp cx

;_read_mem(void *dest, int source_addr, uint16 len)
_read_mem:
    enter 0, 0
    push ds
    push es
    push si
    push di

    push ds
    pop es
    mov ax, [bp+12]
    mov ds, ax

    mov si, [bp+10]
    mov di, [bp+6]
    mov cx, [bp+14]
    rep movsb

    pop di
    pop si
    pop es
    pop ds
    leave

    pop ecx
    jmp cx

;_write_mem(int dest_addr, void *source, uint16 len)
_write_mem:
    enter 0, 0
    push ds
    push es
    push si
    push di

    mov ax, [bp+8]
    mov es, ax

    mov si, [bp+10]
    mov di, [bp+6]
    mov cx, [bp+14]
    rep movsb

    pop di
    pop si
    pop es
    pop ds
    leave

    pop ecx
    jmp cx

set_pos_char:
    enter 0, 0
    push es
    push bx

    mov ax, [bp+14]
    mov bx, 80
    mul bx
    add ax, [bp+18]
    mov bx, 2
    mul bx

    mov bx, ax
    mov ax, 0xb800
    mov es, ax
    mov ah, [bp+10]
    mov al, [bp+6]
    mov [es:bx], ax 

    pop bx
    pop es
    leave

    pop ecx
    jmp cx
