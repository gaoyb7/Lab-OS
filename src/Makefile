LD=ld
LDFLAGS=-N -melf_i386
AS=nasm
ASFLAGS=-f elf
CC=i386-elf-gcc
#CC=gcc
CFLAGS=-m16 -mpreferred-stack-boundary=2 -ffreestanding -I./include
DISK=disk.img
PROG_LIST=reboot.com time.com date.com help.com clear.com io_test.com rep1.com rep2.com sh.com top.com fork.com

fs_ver: clean kernel.bin boot.bin user_program
	sudo -u gaoyb7 dd if=/dev/zero of=$(DISK) count=2880
	dd if=boot.bin of=$(DISK) conv=notrunc  
	printf '\x55\xaa' | dd of=$(DISK) bs=1 seek=510 count=2 conv=notrunc
	mount -o loop,fat=12 -t msdos $(DISK) ./img
	cp kernel.bin ./img
	mkdir ./img/prog
	mkdir -p ./img/d1/d2/d3/d4
	cp $(PROG_LIST) ./img/prog
	cp date.com ./img/date2.com
	cp date.com ./img/date3.com
	cp date.com ./img/date4.com
	cp date.com ./img/date5.com
	umount ./img

run:
	qemu-system-i386 -fda disk.img -m 32

user_program: $(PROG_LIST)

#kernel
boot.bin: boot.o
	$(LD) $(LDFLAGS) -Ttext 0x7c00 --oformat binary -o $@ boot.o

boot.o: boot.asm
	$(AS) $(ASFLAGS) -o $@ $^

kernel.bin: kernel.o interrupt.o isr_wrapper.o stdio.o stdlib.o utils.o process.o syscall.o fat12.o string.o
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
string.o: lib/string.c include/string.h

#user_program
%.o: program/%.c
	$(CC) $(CFLAGS) -c $< -o $@

%.com: %.o
	$(LD) $(LDFLAGS) -Ttext 0x0500 --oformat binary -o $@ $^

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
sh.com: sh.o stdio.o utils.o process.o fat12.o string.o
top.o: program/top.c include/stdio.h include/process.h
top.com: top.o stdio.o process.o utils.o fat12.o string.o
fork.o: program/fork.c include/stdio.h include/process.h
fork.com: fork.o stdio.o process.o utils.o fat12.o string.o
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
