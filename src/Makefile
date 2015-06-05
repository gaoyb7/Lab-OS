LD=ld
LDFLAGS=-N -melf_i386 -nostdlib
AS=nasm
ASFLAGS=-f elf
#CC=i386-elf-gcc
CC=gcc
CFLAGS=-m16 -nostdlib -mpreferred-stack-boundary=2 -ffreestanding -I./include
DISK=disk.img
PROG_LIST=reboot.com time.com date.com help.com clear.com io_test.com rep1.com rep2.com rep3.com rep4.com sh.com top.com fork.com

fs_ver: clean kernel.bin boot.bin user_program
	sudo -u gaoyb7 dd if=/dev/zero of=$(DISK) count=2880
	dd if=boot.bin of=$(DISK) conv=notrunc  
	printf '\x55\xaa' | dd of=$(DISK) bs=1 seek=510 count=2 conv=notrunc
	mount -o loop,fat=12 -t msdos $(DISK) ./img
	#cp kernel.bin $(PROG_LIST) ./img
	cp kernel.bin sh.com date.com ./img
	mkdir ./img/prog
	cp $(PROG_LIST) ./img/prog
	umount ./img

test: all
	qemu -fda disk.img -m 32

run:
	qemu-system-i386 -fda disk.img -m 32

all: clean kernel user_program
	dd if=reboot.com of=$(DISK) seek=20 conv=notrunc
	dd if=time.com of=$(DISK) seek=30 conv=notrunc
	dd if=date.com of=$(DISK) seek=40 conv=notrunc
	dd if=help.com of=$(DISK) seek=50 conv=notrunc
	dd if=clear.com of=$(DISK) seek=60 conv=notrunc
	dd if=syscall.com of=$(DISK) seek=70 conv=notrunc
	dd if=stdio.com of=$(DISK) seek=80 conv=notrunc
	dd if=sh.com of=$(DISK) seek=90 conv=notrunc
	dd if=rep1.com of=$(DISK) seek=110 conv=notrunc
	dd if=rep2.com of=$(DISK) seek=115 conv=notrunc
	dd if=rep3.com of=$(DISK) seek=120 conv=notrunc
	dd if=rep4.com of=$(DISK) seek=125 conv=notrunc
	dd if=top.com of=$(DISK) seek=130 conv=notrunc
	dd if=fork.com of=$(DISK) seek=150 conv=notrunc

kernel: kernel.bin boot.bin
	dd if=/dev/zero of=$(DISK) count=2880
	dd if=boot.bin of=$(DISK) conv=notrunc  
	dd if=kernel.bin of=$(DISK) seek=1 conv=notrunc
	printf '\x55\xaa' | dd of=$(DISK) bs=1 seek=510 count=2 conv=notrunc

user_program: $(PROG_LIST)

#kernel
boot.bin: boot.o
	$(LD) $(LDFLAGS) -Ttext 0x7c00 --oformat binary -o $@ boot.o

boot.o: boot.asm
	$(AS) $(ASFLAGS) -o $@ $^

kernel.bin: kernel.o interrupt.o isr_wrapper.o stdio.o stdlib.o utils.o process.o syscall.o fat12.o
	$(LD) $(LDFLAGS) -Ttext 0x0000 --oformat binary -o $@ $^

kernel.o: kernel.c include/interrupt.h include/syscall.h
	$(CC) $(CFLAGS) -c $^

#module
%.o: module/%.c
	$(CC) $(CFLAGS) -c $< -o $@

interrupt.o: module/interrupt.c include/interrupt.h include/stdlib.h
process.o: module/process.c include/process.h
syscall.o: module/syscall.c include/syscall.h
fat12.o: module/fat12.c include/fat12.h
isr_wrapper.o: module/isr_wrapper.asm
	$(AS) $(ASFLAGS) -o $@ $^

#librarys
%.o: lib/%.c
	$(CC) $(CFLAGS) -c $< -o $@
	
stdio.o: lib/stdio.c include/stdio.h
stdlib.o: lib/stdlib.c include/stdlib.h

#user_program
%.o: program/%.c
	$(CC) $(CFLAGS) -c $< -o $@

%.com: %.o
	$(LD) $(LDFLAGS) -Ttext 0x0f00 --oformat binary -o $@ $^

reboot.com: program/reboot.asm
	$(AS) -o $@ $^

time.o: program/time.c include/stdio.h
time.com: time.o stdio.o
date.o: program/date.c include/stdio.h
date.com: date.o stdio.o
help.o: program/help.c include/stdio.h
help.com: help.o stdio.o
clear.o: program/clear.c include/stdio.h
clear.com: clear.o
syscall.o: program/syscall.c include/syscall.h
syscall.com: syscall.o syscall.o
io_test.o: program/io_test.c include/stdio.h
io_test.com: stdio.o io_test.o
sh.o: program/sh.c include/stdio.h include/stdlib.h
sh.com: sh.o stdio.o stdlib.o utils.o process.o fat12.o
top.o: program/top.c include/stdio.h include/process.h
top.com: top.o stdio.o process.o utils.o stdlib.o fat12.o
fork.o: program/fork.c include/stdio.h include/process.h
fork.com: fork.o stdio.o process.o utils.o stdlib.o fat12.o
kill.o: program/kill.c include/process.h
kill.com: kill.o stdio.o process.o utils.o stdlib.o fat12.o
rep1.o: program/rep1.c 
rep1.com: rep1.o utils.o stdio.o
rep2.o: program/rep1.c 
rep2.com: rep2.o utils.o stdio.o
rep3.o: program/rep1.c 
rep3.com: rep3.o utils.o
rep4.o: program/rep1.c 
rep4.com: rep4.o utils.o

#others
utils.o: module/utils.asm
	$(AS) $(ASFLAGS) -o $@ $^

clean:
	rm -f *.o
	rm -f *.com
	rm -f *.bin
	rm -f include/*.gch
	rm -f *.s
	rm -f bochsout.txt
