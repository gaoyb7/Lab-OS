
interrupt.o：     文件格式 elf32-i386


Disassembly of section .text:

00000000 <_kb_demo>:
   0:	66 55                	push   %bp
   2:	66 89 e5             	mov    %sp,%bp
   5:	66 0f b6 06          	movzbw (%esi),%ax
   9:	fa                   	cli    
   a:	00 3c 01             	add    %bh,(%ecx,%eax,1)
   d:	7f 1b                	jg     2a <_kb_demo+0x2a>
   f:	66 6a 4f             	pushw  $0x4f
  12:	66 6a 00             	pushw  $0x0
  15:	66 6a 07             	pushw  $0x7
  18:	66 68 c0 00          	pushw  $0xc0
  1c:	00 00                	add    %al,(%eax)
  1e:	66 e8 fc ff          	callw  1e <_kb_demo+0x1e>
  22:	ff                   	(bad)  
  23:	ff 66 83             	jmp    *-0x7d(%esi)
  26:	c4 10                	les    (%eax),%edx
  28:	eb 63                	jmp    8d <_kb_demo+0x8d>
  2a:	66 0f b6 06          	movzbw (%esi),%ax
  2e:	fa                   	cli    
  2f:	00 3c 03             	add    %bh,(%ebx,%eax,1)
  32:	7f 1b                	jg     4f <_kb_demo+0x4f>
  34:	66 6a 4f             	pushw  $0x4f
  37:	66 6a 00             	pushw  $0x0
  3a:	66 6a 07             	pushw  $0x7
  3d:	66 68 da 00          	pushw  $0xda
  41:	00 00                	add    %al,(%eax)
  43:	66 e8 fc ff          	callw  43 <_kb_demo+0x43>
  47:	ff                   	(bad)  
  48:	ff 66 83             	jmp    *-0x7d(%esi)
  4b:	c4 10                	les    (%eax),%edx
  4d:	eb 3e                	jmp    8d <_kb_demo+0x8d>
  4f:	66 0f b6 06          	movzbw (%esi),%ax
  53:	fa                   	cli    
  54:	00 3c 05 7f 1b 66 6a 	add    %bh,0x6a661b7f(,%eax,1)
  5b:	4f                   	dec    %edi
  5c:	66 6a 00             	pushw  $0x0
  5f:	66 6a 07             	pushw  $0x7
  62:	66 68 bf 00          	pushw  $0xbf
  66:	00 00                	add    %al,(%eax)
  68:	66 e8 fc ff          	callw  68 <_kb_demo+0x68>
  6c:	ff                   	(bad)  
  6d:	ff 66 83             	jmp    *-0x7d(%esi)
  70:	c4 10                	les    (%eax),%edx
  72:	eb 19                	jmp    8d <_kb_demo+0x8d>
  74:	66 6a 4f             	pushw  $0x4f
  77:	66 6a 00             	pushw  $0x0
  7a:	66 6a 07             	pushw  $0x7
  7d:	66 68 d9 00          	pushw  $0xd9
  81:	00 00                	add    %al,(%eax)
  83:	66 e8 fc ff          	callw  83 <_kb_demo+0x83>
  87:	ff                   	(bad)  
  88:	ff 66 83             	jmp    *-0x7d(%esi)
  8b:	c4 10                	les    (%eax),%edx
  8d:	66 0f b6 06          	movzbw (%esi),%ax
  91:	fa                   	cli    
  92:	00 66 0f             	add    %ah,0xf(%esi)
  95:	be c0 67 66 8d       	mov    $0x8d6667c0,%esi
  9a:	50                   	push   %eax
  9b:	01 66 89             	add    %esp,-0x77(%esi)
  9e:	d0 66 c1             	shlb   -0x3f(%esi)
  a1:	f8                   	clc    
  a2:	1f                   	pop    %ds
  a3:	66 c1 e8 1d          	shr    $0x1d,%ax
  a7:	66 01 c2             	add    %ax,%dx
  aa:	66 83 e2 07          	and    $0x7,%dx
  ae:	66 29 c2             	sub    %ax,%dx
  b1:	66 89 d0             	mov    %dx,%ax
  b4:	a2 fa 00 66 c9       	mov    %al,0xc96600fa
  b9:	66 c3                	retw   

000000bb <_timer_demo>:
  bb:	66 55                	push   %bp
  bd:	66 89 e5             	mov    %sp,%bp
  c0:	66 83 ec 04          	sub    $0x4,%sp
  c4:	67 66 c7 45 fc 00 00 	movw   $0x0,-0x4(%di)
  cb:	00 00                	add    %al,(%eax)
  cd:	66 0f b6 06          	movzbw (%esi),%ax
  d1:	04 00                	add    $0x0,%al
  d3:	66 83 e8 01          	sub    $0x1,%ax
  d7:	a2 04 00 66 0f       	mov    %al,0xf660004
  dc:	b6 06                	mov    $0x6,%dh
  de:	04 00                	add    $0x0,%al
  e0:	84 c0                	test   %al,%al
  e2:	75 76                	jne    15a <_timer_demo+0x9f>
  e4:	66 0f b6 06          	movzbw (%esi),%ax
  e8:	05 00 66 83 c0       	add    $0xc0836600,%eax
  ed:	01 66 83             	add    %esp,-0x7d(%esi)
  f0:	e0 0f                	loopne 101 <_timer_demo+0x46>
  f2:	a2 05 00 66 0f       	mov    %al,0xf660005
  f7:	b6 06                	mov    $0x6,%dh
  f9:	05 00 66 0f b6       	add    $0xb60f6600,%eax
  fe:	d0 66 0f             	shlb   0xf(%esi)
 101:	b6 06                	mov    $0x6,%dh
 103:	fb                   	sti    
 104:	00 66 89             	add    %ah,-0x77(%esi)
 107:	c1 66 83 c1          	shll   $0xc1,-0x7d(%esi)
 10b:	01 88 0e fb 00 66    	add    %ecx,0x6600fb0e(%eax)
 111:	0f be c8             	movsbl %al,%ecx
 114:	67 66 8b 45 fc       	mov    -0x4(%di),%ax
 119:	66 01 c8             	add    %cx,%ax
 11c:	67 66 0f b6 00       	movzbw (%bx,%si),%ax
 121:	66 0f be c0          	movsbw %al,%ax
 125:	66 6a 4f             	pushw  $0x4f
 128:	66 6a 18             	pushw  $0x18
 12b:	66 52                	push   %dx
 12d:	66 50                	push   %ax
 12f:	66 e8 fc ff          	callw  12f <_timer_demo+0x74>
 133:	ff                   	(bad)  
 134:	ff 66 83             	jmp    *-0x7d(%esi)
 137:	c4 10                	les    (%eax),%edx
 139:	66 0f b6 06          	movzbw (%esi),%ax
 13d:	fb                   	sti    
 13e:	00 66 89             	add    %ah,-0x77(%esi)
 141:	c2 c0 fa             	ret    $0xfac0
 144:	07                   	pop    %es
 145:	c0 ea 06             	shr    $0x6,%dl
 148:	66 01 d0             	add    %dx,%ax
 14b:	66 83 e0 03          	and    $0x3,%ax
 14f:	66 29 d0             	sub    %dx,%ax
 152:	a2 fb 00 c6 06       	mov    %al,0x6c600fb
 157:	04 00                	add    $0x0,%al
 159:	05 66 c9 66 c3       	add    $0xc366c966,%eax

0000015e <_do_fork>:
 15e:	66 55                	push   %bp
 160:	66 89 e5             	mov    %sp,%bp
 163:	fa                   	cli    
 164:	66 c7 06 fc 00       	movw   $0xfc,(%esi)
 169:	00 00                	add    %al,(%eax)
 16b:	00 00                	add    %al,(%eax)
 16d:	eb 2d                	jmp    19c <_do_fork+0x3e>
 16f:	66 a1 fc 00 66 50    	mov    0x506600fc,%ax
 175:	66 68 80 00          	pushw  $0x80
 179:	00 00                	add    %al,(%eax)
 17b:	66 e8 fc ff          	callw  17b <_do_fork+0x1d>
 17f:	ff                   	(bad)  
 180:	ff 66 83             	jmp    *-0x7d(%esi)
 183:	c4 08                	les    (%eax),%ecx
 185:	66 a1 d4 00 66 85    	mov    0x856600d4,%ax
 18b:	c0                   	(bad)  
 18c:	75 02                	jne    190 <_do_fork+0x32>
 18e:	eb 16                	jmp    1a6 <_do_fork+0x48>
 190:	66 a1 fc 00 66 83    	mov    0x836600fc,%ax
 196:	c0 01 66             	rolb   $0x66,(%ecx)
 199:	a3 fc 00 66 a1       	mov    %eax,0xa16600fc
 19e:	fc                   	cld    
 19f:	00 66 83             	add    %ah,-0x7d(%esi)
 1a2:	f8                   	clc    
 1a3:	07                   	pop    %es
 1a4:	7e c9                	jle    16f <_do_fork+0x11>
 1a6:	66 a1 fc 00 66 83    	mov    0x836600fc,%ax
 1ac:	f8                   	clc    
 1ad:	07                   	pop    %es
 1ae:	7e 09                	jle    1b9 <_do_fork+0x5b>
 1b0:	66 b8 ff ff          	mov    $0xffff,%ax
 1b4:	ff                   	(bad)  
 1b5:	ff                   	(bad)  
 1b6:	e9 df 00 66 89       	jmp    8966029a <_proc_exit_switch+0x8965faf9>
 1bb:	26 a0 00 66 89 3e    	mov    %es:0x3e896600,%al
 1c1:	94                   	xchg   %eax,%esp
 1c2:	00 66 89             	add    %ah,-0x77(%esi)
 1c5:	36 98                	ss cwtl 
 1c7:	00 66 89             	add    %ah,-0x77(%esi)
 1ca:	2e 9c                	cs pushf 
 1cc:	00 66 a3             	add    %ah,-0x5d(%esi)
 1cf:	b0 00                	mov    $0x0,%al
 1d1:	66 89 1e             	mov    %bx,(%esi)
 1d4:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 1d5:	00 66 89             	add    %ah,-0x77(%esi)
 1d8:	0e                   	push   %cs
 1d9:	ac                   	lods   %ds:(%esi),%al
 1da:	00 66 89             	add    %ah,-0x77(%esi)
 1dd:	16                   	push   %ss
 1de:	a8 00                	test   $0x0,%al
 1e0:	8c 16                	mov    %ss,(%esi)
 1e2:	80 00 8c             	addb   $0x8c,(%eax)
 1e5:	06                   	push   %es
 1e6:	8c 00                	mov    %es,(%eax)
 1e8:	8c 26                	mov    %fs,(%esi)
 1ea:	88 00                	mov    %al,(%eax)
 1ec:	8c 2e                	mov    %gs,(%esi)
 1ee:	84 00                	test   %al,(%eax)
 1f0:	8c 0e                	mov    %cs,(%esi)
 1f2:	b8 00 8c 1e 90       	mov    $0x901e8c00,%eax
 1f7:	00 66 e8             	add    %ah,-0x18(%esi)
 1fa:	fc                   	cld    
 1fb:	ff                   	(bad)  
 1fc:	ff                   	(bad)  
 1fd:	ff 66 a3             	jmp    *-0x5d(%esi)
 200:	d0 00                	rolb   (%eax)
 202:	66 a1 e0 00 66 a3    	mov    0xa36600e0,%ax
 208:	d8 00                	fadds  (%eax)
 20a:	66 c7 06 dc 00       	movw   $0xdc,(%esi)
 20f:	00 00                	add    %al,(%eax)
 211:	00 00                	add    %al,(%eax)
 213:	66 c7 06 b4 00       	movw   $0xb4,(%esi)
 218:	00 05 00 00 66 a1    	add    %al,0xa1660000
 21e:	3c 00                	cmp    $0x0,%al
 220:	66 a3 bc 00 66 c7    	mov    %ax,0xc76600bc
 226:	06                   	push   %es
 227:	d4 00                	aam    $0x0
 229:	01 00                	add    %eax,(%eax)
 22b:	00 00                	add    %al,(%eax)
 22d:	c6 06 c0             	movb   $0xc0,(%esi)
 230:	00 00                	add    %al,(%eax)
 232:	66 c7 06 b0 00       	movw   $0xb0,(%esi)
 237:	00 00                	add    %al,(%eax)
 239:	00 00                	add    %al,(%eax)
 23b:	66 a1 fc 00 66 83    	mov    0x836600fc,%ax
 241:	c0 08 66             	rorb   $0x66,(%eax)
 244:	c1 e0 0a             	shl    $0xa,%eax
 247:	66 a3 80 00 66 a1    	mov    %ax,0xa1660080
 24d:	a0 00 66 83 c0       	mov    0xc0836600,%al
 252:	02 66 a3             	add    -0x5d(%esi),%ah
 255:	a0 00 66 a1 80       	mov    0x80a16600,%al
 25a:	00 66 c1             	add    %ah,-0x3f(%esi)
 25d:	e0 10                	loopne 26f <_do_fork+0x111>
 25f:	66 89 c2             	mov    %ax,%dx
 262:	66 a1 00 00 66 c1    	mov    0xc1660000,%ax
 268:	e0 10                	loopne 27a <_do_fork+0x11c>
 26a:	66 68 00 05          	pushw  $0x500
 26e:	00 00                	add    %al,(%eax)
 270:	66 52                	push   %dx
 272:	66 50                	push   %ax
 274:	66 e8 fc ff          	callw  274 <_do_fork+0x116>
 278:	ff                   	(bad)  
 279:	ff 66 83             	jmp    *-0x7d(%esi)
 27c:	c4 0c 66             	les    (%esi,%eiz,2),%ecx
 27f:	a1 fc 00 66 50       	mov    0x506600fc,%eax
 284:	66 68 80 00          	pushw  $0x80
 288:	00 00                	add    %al,(%eax)
 28a:	66 e8 fc ff          	callw  28a <_do_fork+0x12c>
 28e:	ff                   	(bad)  
 28f:	ff 66 83             	jmp    *-0x7d(%esi)
 292:	c4 08                	les    (%eax),%ecx
 294:	66 a1 d0 00 fb 66    	mov    0x66fb00d0,%ax
 29a:	c9                   	leave  
 29b:	66 c3                	retw   

0000029d <_do_wait>:
 29d:	66 55                	push   %bp
 29f:	66 89 e5             	mov    %sp,%bp
 2a2:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 2a8:	66 68 00 00          	pushw  $0x0
 2ac:	00 00                	add    %al,(%eax)
 2ae:	66 e8 fc ff          	callw  2ae <_do_wait+0x11>
 2b2:	ff                   	(bad)  
 2b3:	ff 66 83             	jmp    *-0x7d(%esi)
 2b6:	c4 08                	les    (%eax),%ecx
 2b8:	66 c7 06 5c 00       	movw   $0x5c,(%esi)
 2bd:	01 00                	add    %eax,(%eax)
 2bf:	00 00                	add    %al,(%eax)
 2c1:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 2c7:	66 68 00 00          	pushw  $0x0
 2cb:	00 00                	add    %al,(%eax)
 2cd:	66 e8 fc ff          	callw  2cd <_do_wait+0x30>
 2d1:	ff                   	(bad)  
 2d2:	ff 66 83             	jmp    *-0x7d(%esi)
 2d5:	c4 08                	les    (%eax),%ecx
 2d7:	66 c9                	leavew 
 2d9:	66 c3                	retw   

000002db <_do_exit>:
 2db:	66 55                	push   %bp
 2dd:	66 89 e5             	mov    %sp,%bp
 2e0:	66 83 ec 04          	sub    $0x4,%sp
 2e4:	67 66 8b 45 08       	mov    0x8(%di),%ax
 2e9:	67 88 45 fc          	mov    %al,-0x4(%di)
 2ed:	66 c7 06 54 00       	movw   $0x54,(%esi)
 2f2:	00 00                	add    %al,(%eax)
 2f4:	00 00                	add    %al,(%eax)
 2f6:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 2fc:	66 68 00 00          	pushw  $0x0
 300:	00 00                	add    %al,(%eax)
 302:	66 e8 fc ff          	callw  302 <_do_exit+0x27>
 306:	ff                   	(bad)  
 307:	ff 66 83             	jmp    *-0x7d(%esi)
 30a:	c4 08                	les    (%eax),%ecx
 30c:	66 a1 58 00 66 85    	mov    0x85660058,%ax
 312:	c0 78 49 66          	sarb   $0x66,0x49(%eax)
 316:	a1 58 00 66 83       	mov    0x83660058,%eax
 31b:	f8                   	clc    
 31c:	07                   	pop    %es
 31d:	7f 3f                	jg     35e <_do_exit+0x83>
 31f:	66 a1 58 00 66 50    	mov    0x50660058,%ax
 325:	66 68 80 00          	pushw  $0x80
 329:	00 00                	add    %al,(%eax)
 32b:	66 e8 fc ff          	callw  32b <_do_exit+0x50>
 32f:	ff                   	(bad)  
 330:	ff 66 83             	jmp    *-0x7d(%esi)
 333:	c4 08                	les    (%eax),%ecx
 335:	66 c7 06 dc 00       	movw   $0xdc,(%esi)
 33a:	00 00                	add    %al,(%eax)
 33c:	00 00                	add    %al,(%eax)
 33e:	67 66 0f be 45 fc    	movsbw -0x4(%di),%ax
 344:	66 a3 b0 00 66 a1    	mov    %ax,0xa16600b0
 34a:	58                   	pop    %eax
 34b:	00 66 50             	add    %ah,0x50(%esi)
 34e:	66 68 80 00          	pushw  $0x80
 352:	00 00                	add    %al,(%eax)
 354:	66 e8 fc ff          	callw  354 <_do_exit+0x79>
 358:	ff                   	(bad)  
 359:	ff 66 83             	jmp    *-0x7d(%esi)
 35c:	c4 08                	les    (%eax),%ecx
 35e:	66 c9                	leavew 
 360:	66 c3                	retw   

00000362 <_switch_content>:
 362:	66 55                	push   %bp
 364:	66 89 e5             	mov    %sp,%bp
 367:	66 83 ec 04          	sub    $0x4,%sp
 36b:	66 a3 30 00 66 89    	mov    %ax,0x89660030
 371:	1e                   	push   %ds
 372:	24 00                	and    $0x0,%al
 374:	66 89 0e             	mov    %cx,(%esi)
 377:	2c 00                	sub    $0x0,%al
 379:	66 89 16             	mov    %dx,(%esi)
 37c:	28 00                	sub    %al,(%eax)
 37e:	66 a1 08 01 66 85    	mov    0x85660108,%ax
 384:	c0 7f 0f 66          	sarb   $0x66,0xf(%edi)
 388:	a1 08 01 66 83       	mov    0x83660108,%eax
 38d:	c0 01 66             	rolb   $0x66,(%ecx)
 390:	a3 08 01 e9 e9       	mov    %eax,0xe9e90108
 395:	01 66 c7             	add    %esp,-0x39(%esi)
 398:	06                   	push   %es
 399:	08 01                	or     %al,(%ecx)
 39b:	00 00                	add    %al,(%eax)
 39d:	00 00                	add    %al,(%eax)
 39f:	66 c7 06 0c 01       	movw   $0x10c,(%esi)
 3a4:	00 00                	add    %al,(%eax)
 3a6:	00 00                	add    %al,(%eax)
 3a8:	eb 18                	jmp    3c2 <_switch_content+0x60>
 3aa:	66 a1 0c 01 67 8f    	mov    0x8f67010c,%ax
 3b0:	84 00                	test   %al,(%eax)
 3b2:	e4 00                	in     $0x0,%al
 3b4:	00 00                	add    %al,(%eax)
 3b6:	66 a1 0c 01 66 83    	mov    0x8366010c,%ax
 3bc:	c0 01 66             	rolb   $0x66,(%ecx)
 3bf:	a3 0c 01 66 a1       	mov    %eax,0xa166010c
 3c4:	0c 01                	or     $0x1,%al
 3c6:	66 83 f8 09          	cmp    $0x9,%ax
 3ca:	7e de                	jle    3aa <_switch_content+0x48>
 3cc:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 3d2:	66 68 00 00          	pushw  $0x0
 3d6:	00 00                	add    %al,(%eax)
 3d8:	66 e8 fc ff          	callw  3d8 <_switch_content+0x76>
 3dc:	ff                   	(bad)  
 3dd:	ff 66 83             	jmp    *-0x7d(%esi)
 3e0:	c4 08                	les    (%eax),%ecx
 3e2:	66 a1 54 00 66 83    	mov    0x83660054,%ax
 3e8:	f8                   	clc    
 3e9:	02 0f                	add    (%edi),%cl
 3eb:	85 94 00 66 89 3e 14 	test   %edx,0x143e8966(%eax,%eax,1)
 3f2:	00 66 89             	add    %ah,-0x77(%esi)
 3f5:	36 18 00             	sbb    %al,%ss:(%eax)
 3f8:	66 89 2e             	mov    %bp,(%esi)
 3fb:	1c 00                	sbb    $0x0,%al
 3fd:	66 89 26             	mov    %sp,(%esi)
 400:	20 00                	and    %al,(%eax)
 402:	8c 16                	mov    %ss,(%esi)
 404:	00 00                	add    %al,(%eax)
 406:	8c 06                	mov    %es,(%esi)
 408:	0c 00                	or     $0x0,%al
 40a:	8c 26                	mov    %fs,(%esi)
 40c:	08 00                	or     %al,(%eax)
 40e:	8c 2e                	mov    %gs,(%esi)
 410:	04 00                	add    $0x0,%al
 412:	66 c7 06 54 00       	movw   $0x54,(%esi)
 417:	01 00                	add    %eax,(%eax)
 419:	00 00                	add    %al,(%eax)
 41b:	66 0f b7 06          	movzww (%esi),%ax
 41f:	f0 00 66 0f          	lock add %ah,0xf(%esi)
 423:	b7 c0                	mov    $0xc0,%bh
 425:	66 a3 10 00 66 0f    	mov    %ax,0xf660010
 42b:	b7 06                	mov    $0x6,%bh
 42d:	f2 00 66 0f          	repnz add %ah,0xf(%esi)
 431:	b7 c0                	mov    $0xc0,%bh
 433:	66 a3 34 00 66 0f    	mov    %ax,0xf660034
 439:	b7 06                	mov    $0x6,%bh
 43b:	f4                   	hlt    
 43c:	00 66 0f             	add    %ah,0xf(%esi)
 43f:	b7 c0                	mov    $0xc0,%bh
 441:	66 a3 38 00 66 0f    	mov    %ax,0xf660038
 447:	b7 06                	mov    $0x6,%bh
 449:	f6 00 66             	testb  $0x66,(%eax)
 44c:	0f b7 c0             	movzwl %ax,%eax
 44f:	66 a3 3c 00 66 a1    	mov    %ax,0xa166003c
 455:	38 00                	cmp    %al,(%eax)
 457:	66 c1 e0 10          	shl    $0x10,%ax
 45b:	66 89 c2             	mov    %ax,%dx
 45e:	66 a1 34 00 66 09    	mov    0x9660034,%ax
 464:	d0 67 66             	shlb   0x66(%edi)
 467:	89 45 fc             	mov    %eax,-0x4(%ebp)
 46a:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 470:	66 68 00 00          	pushw  $0x0
 474:	00 00                	add    %al,(%eax)
 476:	66 e8 fc ff          	callw  476 <_switch_content+0x114>
 47a:	ff                   	(bad)  
 47b:	ff 66 83             	jmp    *-0x7d(%esi)
 47e:	c4 08                	les    (%eax),%ecx
 480:	eb 03                	jmp    485 <_switch_content+0x123>
 482:	83 c4 02             	add    $0x2,%esp
 485:	66 a1 e0 00 67 66    	mov    0x666700e0,%ax
 48b:	8d 50 01             	lea    0x1(%eax),%edx
 48e:	66 89 d0             	mov    %dx,%ax
 491:	66 c1 f8 1f          	sar    $0x1f,%ax
 495:	66 c1 e8 1d          	shr    $0x1d,%ax
 499:	66 01 c2             	add    %ax,%dx
 49c:	66 83 e2 07          	and    $0x7,%dx
 4a0:	66 29 c2             	sub    %ax,%dx
 4a3:	66 89 d0             	mov    %dx,%ax
 4a6:	66 a3 e0 00 66 a1    	mov    %ax,0xa16600e0
 4ac:	e0 00                	loopne 4ae <_switch_content+0x14c>
 4ae:	66 50                	push   %ax
 4b0:	66 68 00 00          	pushw  $0x0
 4b4:	00 00                	add    %al,(%eax)
 4b6:	66 e8 fc ff          	callw  4b6 <_switch_content+0x154>
 4ba:	ff                   	(bad)  
 4bb:	ff 66 83             	jmp    *-0x7d(%esi)
 4be:	c4 08                	les    (%eax),%ecx
 4c0:	66 a1 54 00 66 83    	mov    0x83660054,%ax
 4c6:	f8                   	clc    
 4c7:	01 75 7b             	add    %esi,0x7b(%ebp)
 4ca:	66 a1 5c 00 66 85    	mov    0x8566005c,%ax
 4d0:	c0                   	(bad)  
 4d1:	75 72                	jne    545 <_switch_content+0x1e3>
 4d3:	90                   	nop
 4d4:	66 c7 06 54 00       	movw   $0x54,(%esi)
 4d9:	02 00                	add    (%eax),%al
 4db:	00 00                	add    %al,(%eax)
 4dd:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 4e3:	66 68 00 00          	pushw  $0x0
 4e7:	00 00                	add    %al,(%eax)
 4e9:	66 e8 fc ff          	callw  4e9 <_switch_content+0x187>
 4ed:	ff                   	(bad)  
 4ee:	ff 66 83             	jmp    *-0x7d(%esi)
 4f1:	c4 08                	les    (%eax),%ecx
 4f3:	66 ff 36             	pushw  (%esi)
 4f6:	3c 00                	cmp    $0x0,%al
 4f8:	66 9d                	popfw  
 4fa:	66 8b 3e             	mov    (%esi),%di
 4fd:	14 00                	adc    $0x0,%al
 4ff:	66 8b 36             	mov    (%esi),%si
 502:	18 00                	sbb    %al,(%eax)
 504:	66 8b 2e             	mov    (%esi),%bp
 507:	1c 00                	sbb    $0x0,%al
 509:	66 8b 26             	mov    (%esi),%sp
 50c:	20 00                	and    %al,(%eax)
 50e:	8e 16                	mov    (%esi),%ss
 510:	00 00                	add    %al,(%eax)
 512:	8e 06                	mov    (%esi),%es
 514:	0c 00                	or     $0x0,%al
 516:	8e 26                	mov    (%esi),%fs
 518:	08 00                	or     %al,(%eax)
 51a:	8e 2e                	mov    (%esi),%gs
 51c:	04 00                	add    $0x0,%al
 51e:	66 a1 10 00 a3 f0    	mov    0xf0a30010,%ax
 524:	00 66 a1             	add    %ah,-0x5f(%esi)
 527:	34 00                	xor    $0x0,%al
 529:	a3 f2 00 66 a1       	mov    %eax,0xa16600f2
 52e:	38 00                	cmp    %al,(%eax)
 530:	a3 f4 00 66 a1       	mov    %eax,0xa16600f4
 535:	3c 00                	cmp    $0x0,%al
 537:	a3 f6 00 66 c7       	mov    %eax,0xc76600f6
 53c:	06                   	push   %es
 53d:	0c 01                	or     $0x1,%al
 53f:	09 00                	or     %eax,(%eax)
 541:	00 00                	add    %al,(%eax)
 543:	eb 1b                	jmp    560 <_switch_content+0x1fe>
 545:	e9 3d ff 66 a1       	jmp    a1670487 <_proc_exit_switch+0xa166fce6>
 54a:	0c 01                	or     $0x1,%al
 54c:	67 ff b4 00 e4       	pushl  -0x1c00(%si)
 551:	00 00                	add    %al,(%eax)
 553:	00 66 a1             	add    %ah,-0x5f(%esi)
 556:	0c 01                	or     $0x1,%al
 558:	66 83 e8 01          	sub    $0x1,%ax
 55c:	66 a3 0c 01 66 a1    	mov    %ax,0xa166010c
 562:	0c 01                	or     $0x1,%al
 564:	66 83 f8 03          	cmp    $0x3,%ax
 568:	7f de                	jg     548 <_switch_content+0x1e6>
 56a:	66 a1 30 00 66 8b    	mov    0x8b660030,%ax
 570:	1e                   	push   %ds
 571:	24 00                	and    $0x0,%al
 573:	66 8b 0e             	mov    (%esi),%cx
 576:	2c 00                	sub    $0x0,%al
 578:	66 8b 16             	mov    (%esi),%dx
 57b:	28 00                	sub    %al,(%eax)
 57d:	66 c3                	retw   
 57f:	66 c9                	leavew 
 581:	66 c3                	retw   

00000583 <_switch_content_2>:
 583:	66 55                	push   %bp
 585:	66 89 e5             	mov    %sp,%bp
 588:	66 83 ec 04          	sub    $0x4,%sp
 58c:	66 a3 30 00 66 89    	mov    %ax,0x89660030
 592:	1e                   	push   %ds
 593:	24 00                	and    $0x0,%al
 595:	66 89 0e             	mov    %cx,(%esi)
 598:	2c 00                	sub    $0x0,%al
 59a:	66 89 16             	mov    %dx,(%esi)
 59d:	28 00                	sub    %al,(%eax)
 59f:	66 a1 10 01 66 85    	mov    0x85660110,%ax
 5a5:	c0 7f 0c 66          	sarb   $0x66,0xc(%edi)
 5a9:	a1 10 01 66 83       	mov    0x83660110,%eax
 5ae:	c0 01 66             	rolb   $0x66,(%ecx)
 5b1:	a3 10 01 66 c7       	mov    %eax,0xc7660110
 5b6:	06                   	push   %es
 5b7:	10 01                	adc    %al,(%ecx)
 5b9:	00 00                	add    %al,(%eax)
 5bb:	00 00                	add    %al,(%eax)
 5bd:	66 c7 06 14 01       	movw   $0x114,(%esi)
 5c2:	00 00                	add    %al,(%eax)
 5c4:	00 00                	add    %al,(%eax)
 5c6:	eb 18                	jmp    5e0 <_switch_content_2+0x5d>
 5c8:	66 a1 14 01 67 8f    	mov    0x8f670114,%ax
 5ce:	84 00                	test   %al,(%eax)
 5d0:	e4 00                	in     $0x0,%al
 5d2:	00 00                	add    %al,(%eax)
 5d4:	66 a1 14 01 66 83    	mov    0x83660114,%ax
 5da:	c0 01 66             	rolb   $0x66,(%ecx)
 5dd:	a3 14 01 66 a1       	mov    %eax,0xa1660114
 5e2:	14 01                	adc    $0x1,%al
 5e4:	66 83 f8 09          	cmp    $0x9,%ax
 5e8:	7e de                	jle    5c8 <_switch_content_2+0x45>
 5ea:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 5f0:	66 68 00 00          	pushw  $0x0
 5f4:	00 00                	add    %al,(%eax)
 5f6:	66 e8 fc ff          	callw  5f6 <_switch_content_2+0x73>
 5fa:	ff                   	(bad)  
 5fb:	ff 66 83             	jmp    *-0x7d(%esi)
 5fe:	c4 08                	les    (%eax),%ecx
 600:	66 a1 54 00 66 83    	mov    0x83660054,%ax
 606:	f8                   	clc    
 607:	02 0f                	add    (%edi),%cl
 609:	85 94 00 66 89 3e 14 	test   %edx,0x143e8966(%eax,%eax,1)
 610:	00 66 89             	add    %ah,-0x77(%esi)
 613:	36 18 00             	sbb    %al,%ss:(%eax)
 616:	66 89 2e             	mov    %bp,(%esi)
 619:	1c 00                	sbb    $0x0,%al
 61b:	66 89 26             	mov    %sp,(%esi)
 61e:	20 00                	and    %al,(%eax)
 620:	8c 16                	mov    %ss,(%esi)
 622:	00 00                	add    %al,(%eax)
 624:	8c 06                	mov    %es,(%esi)
 626:	0c 00                	or     $0x0,%al
 628:	8c 26                	mov    %fs,(%esi)
 62a:	08 00                	or     %al,(%eax)
 62c:	8c 2e                	mov    %gs,(%esi)
 62e:	04 00                	add    $0x0,%al
 630:	66 c7 06 54 00       	movw   $0x54,(%esi)
 635:	01 00                	add    %eax,(%eax)
 637:	00 00                	add    %al,(%eax)
 639:	66 0f b7 06          	movzww (%esi),%ax
 63d:	f0 00 66 0f          	lock add %ah,0xf(%esi)
 641:	b7 c0                	mov    $0xc0,%bh
 643:	66 a3 10 00 66 0f    	mov    %ax,0xf660010
 649:	b7 06                	mov    $0x6,%bh
 64b:	f2 00 66 0f          	repnz add %ah,0xf(%esi)
 64f:	b7 c0                	mov    $0xc0,%bh
 651:	66 a3 34 00 66 0f    	mov    %ax,0xf660034
 657:	b7 06                	mov    $0x6,%bh
 659:	f4                   	hlt    
 65a:	00 66 0f             	add    %ah,0xf(%esi)
 65d:	b7 c0                	mov    $0xc0,%bh
 65f:	66 a3 38 00 66 0f    	mov    %ax,0xf660038
 665:	b7 06                	mov    $0x6,%bh
 667:	f6 00 66             	testb  $0x66,(%eax)
 66a:	0f b7 c0             	movzwl %ax,%eax
 66d:	66 a3 3c 00 66 a1    	mov    %ax,0xa166003c
 673:	38 00                	cmp    %al,(%eax)
 675:	66 c1 e0 10          	shl    $0x10,%ax
 679:	66 89 c2             	mov    %ax,%dx
 67c:	66 a1 34 00 66 09    	mov    0x9660034,%ax
 682:	d0 67 66             	shlb   0x66(%edi)
 685:	89 45 fc             	mov    %eax,-0x4(%ebp)
 688:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 68e:	66 68 00 00          	pushw  $0x0
 692:	00 00                	add    %al,(%eax)
 694:	66 e8 fc ff          	callw  694 <_switch_content_2+0x111>
 698:	ff                   	(bad)  
 699:	ff 66 83             	jmp    *-0x7d(%esi)
 69c:	c4 08                	les    (%eax),%ecx
 69e:	eb 03                	jmp    6a3 <_switch_content_2+0x120>
 6a0:	83 c4 02             	add    $0x2,%esp
 6a3:	66 a1 e0 00 67 66    	mov    0x666700e0,%ax
 6a9:	8d 50 01             	lea    0x1(%eax),%edx
 6ac:	66 89 d0             	mov    %dx,%ax
 6af:	66 c1 f8 1f          	sar    $0x1f,%ax
 6b3:	66 c1 e8 1d          	shr    $0x1d,%ax
 6b7:	66 01 c2             	add    %ax,%dx
 6ba:	66 83 e2 07          	and    $0x7,%dx
 6be:	66 29 c2             	sub    %ax,%dx
 6c1:	66 89 d0             	mov    %dx,%ax
 6c4:	66 a3 e0 00 66 a1    	mov    %ax,0xa16600e0
 6ca:	e0 00                	loopne 6cc <_switch_content_2+0x149>
 6cc:	66 50                	push   %ax
 6ce:	66 68 00 00          	pushw  $0x0
 6d2:	00 00                	add    %al,(%eax)
 6d4:	66 e8 fc ff          	callw  6d4 <_switch_content_2+0x151>
 6d8:	ff                   	(bad)  
 6d9:	ff 66 83             	jmp    *-0x7d(%esi)
 6dc:	c4 08                	les    (%eax),%ecx
 6de:	66 a1 54 00 66 83    	mov    0x83660054,%ax
 6e4:	f8                   	clc    
 6e5:	01 75 7b             	add    %esi,0x7b(%ebp)
 6e8:	66 a1 5c 00 66 85    	mov    0x8566005c,%ax
 6ee:	c0                   	(bad)  
 6ef:	75 72                	jne    763 <_switch_content_2+0x1e0>
 6f1:	90                   	nop
 6f2:	66 c7 06 54 00       	movw   $0x54,(%esi)
 6f7:	02 00                	add    (%eax),%al
 6f9:	00 00                	add    %al,(%eax)
 6fb:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 701:	66 68 00 00          	pushw  $0x0
 705:	00 00                	add    %al,(%eax)
 707:	66 e8 fc ff          	callw  707 <_switch_content_2+0x184>
 70b:	ff                   	(bad)  
 70c:	ff 66 83             	jmp    *-0x7d(%esi)
 70f:	c4 08                	les    (%eax),%ecx
 711:	66 ff 36             	pushw  (%esi)
 714:	3c 00                	cmp    $0x0,%al
 716:	66 9d                	popfw  
 718:	66 8b 3e             	mov    (%esi),%di
 71b:	14 00                	adc    $0x0,%al
 71d:	66 8b 36             	mov    (%esi),%si
 720:	18 00                	sbb    %al,(%eax)
 722:	66 8b 2e             	mov    (%esi),%bp
 725:	1c 00                	sbb    $0x0,%al
 727:	66 8b 26             	mov    (%esi),%sp
 72a:	20 00                	and    %al,(%eax)
 72c:	8e 16                	mov    (%esi),%ss
 72e:	00 00                	add    %al,(%eax)
 730:	8e 06                	mov    (%esi),%es
 732:	0c 00                	or     $0x0,%al
 734:	8e 26                	mov    (%esi),%fs
 736:	08 00                	or     %al,(%eax)
 738:	8e 2e                	mov    (%esi),%gs
 73a:	04 00                	add    $0x0,%al
 73c:	66 a1 10 00 a3 f0    	mov    0xf0a30010,%ax
 742:	00 66 a1             	add    %ah,-0x5f(%esi)
 745:	34 00                	xor    $0x0,%al
 747:	a3 f2 00 66 a1       	mov    %eax,0xa16600f2
 74c:	38 00                	cmp    %al,(%eax)
 74e:	a3 f4 00 66 a1       	mov    %eax,0xa16600f4
 753:	3c 00                	cmp    $0x0,%al
 755:	a3 f6 00 66 c7       	mov    %eax,0xc76600f6
 75a:	06                   	push   %es
 75b:	14 01                	adc    $0x1,%al
 75d:	09 00                	or     %eax,(%eax)
 75f:	00 00                	add    %al,(%eax)
 761:	eb 1b                	jmp    77e <_switch_content_2+0x1fb>
 763:	e9 3d ff 66 a1       	jmp    a16706a5 <_proc_exit_switch+0xa166ff04>
 768:	14 01                	adc    $0x1,%al
 76a:	67 ff b4 00 e4       	pushl  -0x1c00(%si)
 76f:	00 00                	add    %al,(%eax)
 771:	00 66 a1             	add    %ah,-0x5f(%esi)
 774:	14 01                	adc    $0x1,%al
 776:	66 83 e8 01          	sub    $0x1,%ax
 77a:	66 a3 14 01 66 a1    	mov    %ax,0xa1660114
 780:	14 01                	adc    $0x1,%al
 782:	66 83 f8 03          	cmp    $0x3,%ax
 786:	7f de                	jg     766 <_switch_content_2+0x1e3>
 788:	66 a1 30 00 66 8b    	mov    0x8b660030,%ax
 78e:	1e                   	push   %ds
 78f:	24 00                	and    $0x0,%al
 791:	66 8b 0e             	mov    (%esi),%cx
 794:	2c 00                	sub    $0x0,%al
 796:	66 8b 16             	mov    (%esi),%dx
 799:	28 00                	sub    %al,(%eax)
 79b:	66 c3                	retw   
 79d:	66 c9                	leavew 
 79f:	66 c3                	retw   

000007a1 <_proc_exit_switch>:
 7a1:	66 55                	push   %bp
 7a3:	66 89 e5             	mov    %sp,%bp
 7a6:	66 a1 e0 00 67 66    	mov    0x666700e0,%ax
 7ac:	8d 50 01             	lea    0x1(%eax),%edx
 7af:	66 89 d0             	mov    %dx,%ax
 7b2:	66 c1 f8 1f          	sar    $0x1f,%ax
 7b6:	66 c1 e8 1d          	shr    $0x1d,%ax
 7ba:	66 01 c2             	add    %ax,%dx
 7bd:	66 83 e2 07          	and    $0x7,%dx
 7c1:	66 29 c2             	sub    %ax,%dx
 7c4:	66 89 d0             	mov    %dx,%ax
 7c7:	66 a3 e0 00 66 a1    	mov    %ax,0xa16600e0
 7cd:	e0 00                	loopne 7cf <_proc_exit_switch+0x2e>
 7cf:	66 50                	push   %ax
 7d1:	66 68 00 00          	pushw  $0x0
 7d5:	00 00                	add    %al,(%eax)
 7d7:	66 e8 fc ff          	callw  7d7 <_proc_exit_switch+0x36>
 7db:	ff                   	(bad)  
 7dc:	ff 66 83             	jmp    *-0x7d(%esi)
 7df:	c4 08                	les    (%eax),%ecx
 7e1:	66 a1 54 00 66 83    	mov    0x83660054,%ax
 7e7:	f8                   	clc    
 7e8:	01 75 7b             	add    %esi,0x7b(%ebp)
 7eb:	66 a1 5c 00 66 85    	mov    0x8566005c,%ax
 7f1:	c0                   	(bad)  
 7f2:	75 72                	jne    866 <_proc_exit_switch+0xc5>
 7f4:	90                   	nop
 7f5:	66 c7 06 54 00       	movw   $0x54,(%esi)
 7fa:	02 00                	add    (%eax),%al
 7fc:	00 00                	add    %al,(%eax)
 7fe:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 804:	66 68 00 00          	pushw  $0x0
 808:	00 00                	add    %al,(%eax)
 80a:	66 e8 fc ff          	callw  80a <_proc_exit_switch+0x69>
 80e:	ff                   	(bad)  
 80f:	ff 66 83             	jmp    *-0x7d(%esi)
 812:	c4 08                	les    (%eax),%ecx
 814:	66 ff 36             	pushw  (%esi)
 817:	3c 00                	cmp    $0x0,%al
 819:	66 9d                	popfw  
 81b:	66 8b 3e             	mov    (%esi),%di
 81e:	14 00                	adc    $0x0,%al
 820:	66 8b 36             	mov    (%esi),%si
 823:	18 00                	sbb    %al,(%eax)
 825:	66 8b 2e             	mov    (%esi),%bp
 828:	1c 00                	sbb    $0x0,%al
 82a:	66 8b 26             	mov    (%esi),%sp
 82d:	20 00                	and    %al,(%eax)
 82f:	8e 16                	mov    (%esi),%ss
 831:	00 00                	add    %al,(%eax)
 833:	8e 06                	mov    (%esi),%es
 835:	0c 00                	or     $0x0,%al
 837:	8e 26                	mov    (%esi),%fs
 839:	08 00                	or     %al,(%eax)
 83b:	8e 2e                	mov    (%esi),%gs
 83d:	04 00                	add    $0x0,%al
 83f:	66 a1 3c 00 a3 f6    	mov    0xf6a3003c,%ax
 845:	00 66 a1             	add    %ah,-0x5f(%esi)
 848:	38 00                	cmp    %al,(%eax)
 84a:	a3 f4 00 66 a1       	mov    %eax,0xa16600f4
 84f:	34 00                	xor    $0x0,%al
 851:	a3 f2 00 66 a1       	mov    %eax,0xa16600f2
 856:	10 00                	adc    %al,(%eax)
 858:	a3 f0 00 66 c7       	mov    %eax,0xc76600f0
 85d:	06                   	push   %es
 85e:	18 01                	sbb    %al,(%ecx)
 860:	09 00                	or     %eax,(%eax)
 862:	00 00                	add    %al,(%eax)
 864:	eb 1b                	jmp    881 <_proc_exit_switch+0xe0>
 866:	e9 3d ff 66 a1       	jmp    a16707a8 <_proc_exit_switch+0xa1670007>
 86b:	18 01                	sbb    %al,(%ecx)
 86d:	67 ff b4 00 e4       	pushl  -0x1c00(%si)
 872:	00 00                	add    %al,(%eax)
 874:	00 66 a1             	add    %ah,-0x5f(%esi)
 877:	18 01                	sbb    %al,(%ecx)
 879:	66 83 e8 01          	sub    $0x1,%ax
 87d:	66 a3 18 01 66 a1    	mov    %ax,0xa1660118
 883:	18 01                	sbb    %al,(%ecx)
 885:	66 83 f8 03          	cmp    $0x3,%ax
 889:	7f de                	jg     869 <_proc_exit_switch+0xc8>
 88b:	66 a1 30 00 66 8b    	mov    0x8b660030,%ax
 891:	1e                   	push   %ds
 892:	24 00                	and    $0x0,%al
 894:	66 8b 0e             	mov    (%esi),%cx
 897:	2c 00                	sub    $0x0,%al
 899:	66 8b 16             	mov    (%esi),%dx
 89c:	28 00                	sub    %al,(%eax)
 89e:	66 c3                	retw   
 8a0:	66 c9                	leavew 
 8a2:	66 c3                	retw   

Disassembly of section .data:

00000000 <multiproc_on>:
   0:	01 00                	add    %eax,(%eax)
	...

00000004 <spin_int.1402>:
   4:	05                   	.byte 0x5

00000005 <col.1403>:
   5:	07                   	pop    %es

Disassembly of section .bss:

00000000 <cur_pcb>:
	...

00000080 <pcb_tmp>:
	...

000000e0 <cur_proc>:
  e0:	00 00                	add    %al,(%eax)
	...

000000e4 <stack>:
	...

000000fa <kb_stat.1396>:
	...

000000fb <ptr.1401>:
	...

000000fc <pcb_id.1409>:
  fc:	00 00                	add    %al,(%eax)
	...

00000100 <ret_addr.1415>:
 100:	00 00                	add    %al,(%eax)
	...

00000104 <tmp.1410>:
 104:	00 00                	add    %al,(%eax)
	...

00000108 <counter.1427>:
 108:	00 00                	add    %al,(%eax)
	...

0000010c <i.1428>:
 10c:	00 00                	add    %al,(%eax)
	...

00000110 <counter.1440>:
 110:	00 00                	add    %al,(%eax)
	...

00000114 <i.1441>:
 114:	00 00                	add    %al,(%eax)
	...

00000118 <i.1455>:
 118:	00 00                	add    %al,(%eax)
	...

Disassembly of section .rodata:

00000000 <.rodata>:
   0:	7c 2f                	jl     31 <col.1403+0x2c>
   2:	2d                   	.byte 0x2d
   3:	5c                   	pop    %esp
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	00 47 43             	add    %al,0x43(%edi)
   3:	43                   	inc    %ebx
   4:	3a 20                	cmp    (%eax),%ah
   6:	28 47 4e             	sub    %al,0x4e(%edi)
   9:	55                   	push   %ebp
   a:	29 20                	sub    %esp,(%eax)
   c:	34 2e                	xor    $0x2e,%al
   e:	39 2e                	cmp    %ebp,(%esi)
  10:	32 20                	xor    (%eax),%ah
  12:	32 30                	xor    (%eax),%dh
  14:	31 35 30 33 30 34    	xor    %esi,0x34303330
  1a:	20 28                	and    %ch,(%eax)
  1c:	70 72                	jo     90 <pcb_tmp+0x10>
  1e:	65 72 65             	gs jb  86 <pcb_tmp+0x6>
  21:	6c                   	insb   (%dx),%es:(%edi)
  22:	65 61                	gs popa 
  24:	73 65                	jae    8b <pcb_tmp+0xb>
  26:	29 00                	sub    %eax,(%eax)

Disassembly of section .eh_frame:

00000000 <.eh_frame>:
   0:	14 00                	adc    $0x0,%al
   2:	00 00                	add    %al,(%eax)
   4:	00 00                	add    %al,(%eax)
   6:	00 00                	add    %al,(%eax)
   8:	01 7a 52             	add    %edi,0x52(%edx)
   b:	00 01                	add    %al,(%ecx)
   d:	7c 08                	jl     17 <.eh_frame+0x17>
   f:	01 1b                	add    %ebx,(%ebx)
  11:	0c 04                	or     $0x4,%al
  13:	04 88                	add    $0x88,%al
  15:	01 00                	add    %eax,(%eax)
  17:	00 1c 00             	add    %bl,(%eax,%eax,1)
  1a:	00 00                	add    %al,(%eax)
  1c:	1c 00                	sbb    $0x0,%al
  1e:	00 00                	add    %al,(%eax)
  20:	00 00                	add    %al,(%eax)
  22:	00 00                	add    %al,(%eax)
  24:	bb 00 00 00 00       	mov    $0x0,%ebx
  29:	42                   	inc    %edx
  2a:	0e                   	push   %cs
  2b:	08 85 02 43 0d 05    	or     %al,0x50d4302(%ebp)
  31:	02 b4 c5 0c 04 04 00 	add    0x4040c(%ebp,%eax,8),%dh
  38:	1c 00                	sbb    $0x0,%al
  3a:	00 00                	add    %al,(%eax)
  3c:	3c 00                	cmp    $0x0,%al
  3e:	00 00                	add    %al,(%eax)
  40:	bb 00 00 00 a3       	mov    $0xa3000000,%ebx
  45:	00 00                	add    %al,(%eax)
  47:	00 00                	add    %al,(%eax)
  49:	42                   	inc    %edx
  4a:	0e                   	push   %cs
  4b:	08 85 02 43 0d 05    	or     %al,0x50d4302(%ebp)
  51:	02 9c c5 0c 04 04 00 	add    0x4040c(%ebp,%eax,8),%bl
  58:	1c 00                	sbb    $0x0,%al
  5a:	00 00                	add    %al,(%eax)
  5c:	5c                   	pop    %esp
  5d:	00 00                	add    %al,(%eax)
  5f:	00 5e 01             	add    %bl,0x1(%esi)
  62:	00 00                	add    %al,(%eax)
  64:	3f                   	aas    
  65:	01 00                	add    %eax,(%eax)
  67:	00 00                	add    %al,(%eax)
  69:	42                   	inc    %edx
  6a:	0e                   	push   %cs
  6b:	08 85 02 43 0d 05    	or     %al,0x50d4302(%ebp)
  71:	03 38                	add    (%eax),%edi
  73:	01 c5                	add    %eax,%ebp
  75:	0c 04                	or     $0x4,%al
  77:	04 1c                	add    $0x1c,%al
  79:	00 00                	add    %al,(%eax)
  7b:	00 7c 00 00          	add    %bh,0x0(%eax,%eax,1)
  7f:	00 9d 02 00 00 3e    	add    %bl,0x3e000002(%ebp)
  85:	00 00                	add    %al,(%eax)
  87:	00 00                	add    %al,(%eax)
  89:	42                   	inc    %edx
  8a:	0e                   	push   %cs
  8b:	08 85 02 43 0d 05    	or     %al,0x50d4302(%ebp)
  91:	77 c5                	ja     58 <.eh_frame+0x58>
  93:	0c 04                	or     $0x4,%al
  95:	04 00                	add    $0x0,%al
  97:	00 1c 00             	add    %bl,(%eax,%eax,1)
  9a:	00 00                	add    %al,(%eax)
  9c:	9c                   	pushf  
  9d:	00 00                	add    %al,(%eax)
  9f:	00 db                	add    %bl,%bl
  a1:	02 00                	add    (%eax),%al
  a3:	00 87 00 00 00 00    	add    %al,0x0(%edi)
  a9:	42                   	inc    %edx
  aa:	0e                   	push   %cs
  ab:	08 85 02 43 0d 05    	or     %al,0x50d4302(%ebp)
  b1:	02 80 c5 0c 04 04    	add    0x4040cc5(%eax),%al
  b7:	00 1c 00             	add    %bl,(%eax,%eax,1)
  ba:	00 00                	add    %al,(%eax)
  bc:	bc 00 00 00 62       	mov    $0x62000000,%esp
  c1:	03 00                	add    (%eax),%eax
  c3:	00 21                	add    %ah,(%ecx)
  c5:	02 00                	add    (%eax),%al
  c7:	00 00                	add    %al,(%eax)
  c9:	42                   	inc    %edx
  ca:	0e                   	push   %cs
  cb:	08 85 02 43 0d 05    	or     %al,0x50d4302(%ebp)
  d1:	03 1a                	add    (%edx),%ebx
  d3:	02 c5                	add    %ch,%al
  d5:	0c 04                	or     $0x4,%al
  d7:	04 1c                	add    $0x1c,%al
  d9:	00 00                	add    %al,(%eax)
  db:	00 dc                	add    %bl,%ah
  dd:	00 00                	add    %al,(%eax)
  df:	00 83 05 00 00 1e    	add    %al,0x1e000005(%ebx)
  e5:	02 00                	add    (%eax),%al
  e7:	00 00                	add    %al,(%eax)
  e9:	42                   	inc    %edx
  ea:	0e                   	push   %cs
  eb:	08 85 02 43 0d 05    	or     %al,0x50d4302(%ebp)
  f1:	03 17                	add    (%edi),%edx
  f3:	02 c5                	add    %ch,%al
  f5:	0c 04                	or     $0x4,%al
  f7:	04 1c                	add    $0x1c,%al
  f9:	00 00                	add    %al,(%eax)
  fb:	00 fc                	add    %bh,%ah
  fd:	00 00                	add    %al,(%eax)
  ff:	00 a1 07 00 00 03    	add    %ah,0x3000007(%ecx)
 105:	01 00                	add    %eax,(%eax)
 107:	00 00                	add    %al,(%eax)
 109:	42                   	inc    %edx
 10a:	0e                   	push   %cs
 10b:	08 85 02 43 0d 05    	or     %al,0x50d4302(%ebp)
 111:	02 fc                	add    %ah,%bh
 113:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 116:	04 00                	add    $0x0,%al
