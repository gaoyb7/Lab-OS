LD=ld
LDFLAGS=-N -melf_i386 -nostdlib
AS=nasm
ASFLAGS=-f elf
CC=gcc
CFLAGS=-m16 -nostdlib -mpreferred-stack-boundary=2 -ffreestanding -I./include
INC=include
PROG=program
DISK=disk.img

test: all
	qemu -fda disk.img -m 32

run:
	qemu -fda disk.img -m 32

all: clean kernel user_program
	dd if=reboot.com of=$(DISK) seek=20 conv=notrunc
	dd if=time.com of=$(DISK) seek=30 conv=notrunc
	dd if=date.com of=$(DISK) seek=40 conv=notrunc
	dd if=help.com of=$(DISK) seek=50 conv=notrunc
	dd if=clear.com of=$(DISK) seek=60 conv=notrunc
	dd if=syscall_demo.com of=$(DISK) seek=70 conv=notrunc
	dd if=stdio_demo.com of=$(DISK) seek=80 conv=notrunc
	dd if=sh.com of=$(DISK) seek=90 conv=notrunc
	dd if=rep1.com of=$(DISK) seek=110 conv=notrunc
	dd if=rep2.com of=$(DISK) seek=115 conv=notrunc
	dd if=rep3.com of=$(DISK) seek=120 conv=notrunc
	dd if=rep4.com of=$(DISK) seek=125 conv=notrunc
	dd if=top.com of=$(DISK) seek=130 conv=notrunc
	dd if=kill.com of=$(DISK) seek=140 conv=notrunc

kernel: kernel.bin boot.bin
	dd if=/dev/zero of=$(DISK) count=2880
	dd if=boot.bin of=$(DISK) conv=notrunc  
	dd if=kernel.bin of=$(DISK) seek=1 conv=notrunc
	printf '\x55\xaa' | dd of=$(DISK) bs=1 seek=510 count=2 conv=notrunc

user_program: reboot.com time.com date.com help.com clear.com stdio_demo.com rep1.com rep2.com rep3.com rep4.com sh.com top.com kill.com syscall_demo.com

#kernel
boot.bin: boot.o
	$(LD) $(LDFLAGS) -Ttext 0x7c00 --oformat binary -o $@ boot.o

boot.o: boot.asm
	$(AS) $(ASFLAGS) -o $@ $^

kernel.bin: kernel.o isr_wrapper.o stdio.o stdlib.o interrupt.o utils.o process.o syscall.o
	$(LD) $(LDFLAGS) -Ttext 0x0000 --oformat binary -o $@ $^

kernel.o: kernel.c $(INC)/prog_table.h $(INC)/interrupt.h $(INC)/syscall.h
	$(CC) $(CFLAGS) -c $^

#module
%.o: module/%.c
	$(CC) $(CFLAGS) -c $< -o $@

interrupt.o: module/interrupt.c $(INC)/interrupt.h $(INC)/stdlib.h
process.o: module/process.c $(INC)/process.h
syscall.o: module/syscall.c $(INC)/syscall.h
isr_wrapper.o: module/isr_wrapper.asm
	$(AS) $(ASFLAGS) -o $@ $^

#librarys
%.o: lib/%.c
	$(CC) $(CFLAGS) -c $< -o $@
	
stdio.o: lib/stdio.c $(INC)/stdio.h
stdlib.o: lib/stdlib.c $(INC)/stdlib.h

#user_program
%.o: $(PROG)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

%.com: %.o
	$(LD) $(LDFLAGS) -Ttext 0x0500 --oformat binary -o $@ $^

reboot.com: $(PROG)/reboot.asm
	$(AS) -o $@ $^

time.o: $(PROG)/time.c $(INC)/stdio.h
time.com: time.o stdio.o
date.o: $(PROG)/date.c $(INC)/stdio.h
date.com: date.o stdio.o
help.o: $(PROG)/help.c $(INC)/stdio.h
help.com: help.o stdio.o
clear.o: $(PROG)/clear.c $(INC)/stdio.h
clear.com: clear.o
syscall_demo.o: $(PROG)/syscall_demo.c $(INC)/syscall.h
syscall_demo.com: syscall_demo.o syscall.o
stdio_demo.o: $(PROG)/stdio_demo.c $(INC)/stdio.h
stdio_demo.com: stdio_demo.o stdio.o stdlib.o
sh.o: $(PROG)/sh.c $(INC)/stdio.h $(INC)/stdlib.h
sh.com: sh.o stdio.o stdlib.o utils.o process.o
top.o: $(PROG)/top.c $(INC)/stdio.h $(INC)/process.h
top.com: top.o stdio.o process.o utils.o stdlib.o
kill.o: $(PROG)/kill.c $(INC)/process.h
kill.com: kill.o stdio.o process.o utils.o stdlib.o
rep1.o: $(PROG)/rep1.c 
rep1.com: rep1.o utils.o
rep2.o: $(PROG)/rep1.c 
rep2.com: rep2.o utils.o
rep3.o: $(PROG)/rep1.c 
rep3.com: rep3.o utils.o
rep4.o: $(PROG)/rep1.c 
rep4.com: rep4.o utils.o

#others
utils.o: module/utils.asm
	$(AS) $(ASFLAGS) -o $@ $^

clean:
	rm -f *.o
	rm -f *.com
	rm -f *.bin
	rm -f $(INC)/*.gch
	rm -f *.s
	rm -f bochsout.txt
