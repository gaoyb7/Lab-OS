[BITS 16]

kernel_segment equ 0x1000
kernel_offset equ 0x0000

start:
    xor ax, ax
    mov ds, ax

    call clear_screen
    call show_msg
    call read_disk
    ;call read_char
    call clear_screen
    jmp kernel_segment:kernel_offset

clear_screen:
    mov ax, 0x0003
    int 0x10
    ret

show_msg:
    mov ax, 0x1301
    mov bx, 0x000a
    mov cx, msg2-msg
    mov dh, 0x0b
    mov dl, (80-msg2+msg)/2
    mov bp, msg
    int 0x10

    mov ax, 0x1301
    mov bx, 0x0007
    mov cx, _end-msg2
    mov dh, 0x0d
    mov dl, (80-_end+msg2)/2
    mov bp, msg2
    int 0x10
    ret

read_char:
    mov ah, 0x00
    int 0x16
    ret

read_disk:
    mov ax, kernel_segment
    mov es, ax
    mov bx, kernel_offset
    mov ax, 0x0213
    mov cx, 0x0002
    mov dx, 0x0000
    int 0x13
    ret

msg:    db "Welcome to Steam OS!"
msg2:   db "Press any key to enter the OS"
_end:
