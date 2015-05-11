
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
 163:	66 c7 06 fc 00       	movw   $0xfc,(%esi)
 168:	00 00                	add    %al,(%eax)
 16a:	00 00                	add    %al,(%eax)
 16c:	eb 2d                	jmp    19b <_do_fork+0x3d>
 16e:	66 a1 fc 00 66 50    	mov    0x506600fc,%ax
 174:	66 68 80 00          	pushw  $0x80
 178:	00 00                	add    %al,(%eax)
 17a:	66 e8 fc ff          	callw  17a <_do_fork+0x1c>
 17e:	ff                   	(bad)  
 17f:	ff 66 83             	jmp    *-0x7d(%esi)
 182:	c4 08                	les    (%eax),%ecx
 184:	66 a1 d4 00 66 85    	mov    0x856600d4,%ax
 18a:	c0                   	(bad)  
 18b:	75 02                	jne    18f <_do_fork+0x31>
 18d:	eb 16                	jmp    1a5 <_do_fork+0x47>
 18f:	66 a1 fc 00 66 83    	mov    0x836600fc,%ax
 195:	c0 01 66             	rolb   $0x66,(%ecx)
 198:	a3 fc 00 66 a1       	mov    %eax,0xa16600fc
 19d:	fc                   	cld    
 19e:	00 66 83             	add    %ah,-0x7d(%esi)
 1a1:	f8                   	clc    
 1a2:	05 7e c9 66 a1       	add    $0xa166c97e,%eax
 1a7:	fc                   	cld    
 1a8:	00 66 83             	add    %ah,-0x7d(%esi)
 1ab:	f8                   	clc    
 1ac:	05 7e 09 66 b8       	add    $0xb866097e,%eax
 1b1:	ff                   	(bad)  
 1b2:	ff                   	(bad)  
 1b3:	ff                   	(bad)  
 1b4:	ff                   	(bad)  
 1b5:	e9 f5 00 66 c7       	jmp    c76602af <_proc_exit_switch+0xc765fad4>
 1ba:	06                   	push   %es
 1bb:	a0 00 34 12 00       	mov    0x123400,%al
 1c0:	00 66 89             	add    %ah,-0x77(%esi)
 1c3:	26 a0 00 66 89 3e    	mov    %es:0x3e896600,%al
 1c9:	94                   	xchg   %eax,%esp
 1ca:	00 66 89             	add    %ah,-0x77(%esi)
 1cd:	36 98                	ss cwtl 
 1cf:	00 66 89             	add    %ah,-0x77(%esi)
 1d2:	2e 9c                	cs pushf 
 1d4:	00 66 a3             	add    %ah,-0x5d(%esi)
 1d7:	b0 00                	mov    $0x0,%al
 1d9:	66 89 1e             	mov    %bx,(%esi)
 1dc:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 1dd:	00 66 89             	add    %ah,-0x77(%esi)
 1e0:	0e                   	push   %cs
 1e1:	ac                   	lods   %ds:(%esi),%al
 1e2:	00 66 89             	add    %ah,-0x77(%esi)
 1e5:	16                   	push   %ss
 1e6:	a8 00                	test   $0x0,%al
 1e8:	8c 16                	mov    %ss,(%esi)
 1ea:	80 00 8c             	addb   $0x8c,(%eax)
 1ed:	06                   	push   %es
 1ee:	8c 00                	mov    %es,(%eax)
 1f0:	8c 26                	mov    %fs,(%esi)
 1f2:	88 00                	mov    %al,(%eax)
 1f4:	8c 2e                	mov    %gs,(%esi)
 1f6:	84 00                	test   %al,(%eax)
 1f8:	8c 0e                	mov    %cs,(%esi)
 1fa:	b8 00 8c 1e 90       	mov    $0x901e8c00,%eax
 1ff:	00 66 e8             	add    %ah,-0x18(%esi)
 202:	fc                   	cld    
 203:	ff                   	(bad)  
 204:	ff                   	(bad)  
 205:	ff 66 a3             	jmp    *-0x5d(%esi)
 208:	d0 00                	rolb   (%eax)
 20a:	66 a1 e0 00 66 a3    	mov    0xa36600e0,%ax
 210:	d8 00                	fadds  (%eax)
 212:	66 c7 06 dc 00       	movw   $0xdc,(%esi)
 217:	00 00                	add    %al,(%eax)
 219:	00 00                	add    %al,(%eax)
 21b:	66 ff 36             	pushw  (%esi)
 21e:	ad                   	lods   %ds:(%esi),%eax
 21f:	02 66 8f             	add    -0x71(%esi),%ah
 222:	06                   	push   %es
 223:	00 01                	add    %al,(%ecx)
 225:	66 a1 00 01 66 a3    	mov    0xa3660100,%ax
 22b:	b4 00                	mov    $0x0,%ah
 22d:	66 a1 3c 00 66 a3    	mov    0xa366003c,%ax
 233:	bc 00 66 c7 06       	mov    $0x6c76600,%esp
 238:	d4 00                	aam    $0x0
 23a:	01 00                	add    %eax,(%eax)
 23c:	00 00                	add    %al,(%eax)
 23e:	c6 06 c0             	movb   $0xc0,(%esi)
 241:	00 00                	add    %al,(%eax)
 243:	66 c7 06 b0 00       	movw   $0xb0,(%esi)
 248:	00 00                	add    %al,(%eax)
 24a:	00 00                	add    %al,(%eax)
 24c:	66 a1 fc 00 66 83    	mov    0x836600fc,%ax
 252:	c0 08 66             	rorb   $0x66,(%eax)
 255:	c1 e0 0a             	shl    $0xa,%eax
 258:	66 a3 80 00 66 a1    	mov    %ax,0xa1660080
 25e:	80 00 66             	addb   $0x66,(%eax)
 261:	c1 e0 10             	shl    $0x10,%eax
 264:	66 89 c2             	mov    %ax,%dx
 267:	66 a1 00 00 66 c1    	mov    0xc1660000,%ax
 26d:	e0 10                	loopne 27f <_do_fork+0x121>
 26f:	66 68 00 05          	pushw  $0x500
 273:	00 00                	add    %al,(%eax)
 275:	66 52                	push   %dx
 277:	66 50                	push   %ax
 279:	66 e8 fc ff          	callw  279 <_do_fork+0x11b>
 27d:	ff                   	(bad)  
 27e:	ff 66 83             	jmp    *-0x7d(%esi)
 281:	c4 0c 66             	les    (%esi,%eiz,2),%ecx
 284:	a1 fc 00 66 50       	mov    0x506600fc,%eax
 289:	66 68 80 00          	pushw  $0x80
 28d:	00 00                	add    %al,(%eax)
 28f:	66 e8 fc ff          	callw  28f <_do_fork+0x131>
 293:	ff                   	(bad)  
 294:	ff 66 83             	jmp    *-0x7d(%esi)
 297:	c4 08                	les    (%eax),%ecx
 299:	66 68 80 00          	pushw  $0x80
 29d:	00 00                	add    %al,(%eax)
 29f:	66 e8 fc ff          	callw  29f <_do_fork+0x141>
 2a3:	ff                   	(bad)  
 2a4:	ff 66 83             	jmp    *-0x7d(%esi)
 2a7:	c4 04 66             	les    (%esi,%eiz,2),%eax
 2aa:	a1 d0 00 66 c9       	mov    0xc96600d0,%eax

000002ad <child_proc>:
 2ad:	66 c9                	leavew 
 2af:	66 c3                	retw   

000002b1 <_do_wait>:
 2b1:	66 55                	push   %bp
 2b3:	66 89 e5             	mov    %sp,%bp
 2b6:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 2bc:	66 68 00 00          	pushw  $0x0
 2c0:	00 00                	add    %al,(%eax)
 2c2:	66 e8 fc ff          	callw  2c2 <_do_wait+0x11>
 2c6:	ff                   	(bad)  
 2c7:	ff 66 83             	jmp    *-0x7d(%esi)
 2ca:	c4 08                	les    (%eax),%ecx
 2cc:	66 c7 06 5c 00       	movw   $0x5c,(%esi)
 2d1:	01 00                	add    %eax,(%eax)
 2d3:	00 00                	add    %al,(%eax)
 2d5:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 2db:	66 68 00 00          	pushw  $0x0
 2df:	00 00                	add    %al,(%eax)
 2e1:	66 e8 fc ff          	callw  2e1 <_do_wait+0x30>
 2e5:	ff                   	(bad)  
 2e6:	ff 66 83             	jmp    *-0x7d(%esi)
 2e9:	c4 08                	les    (%eax),%ecx
 2eb:	66 c9                	leavew 
 2ed:	66 c3                	retw   

000002ef <_do_exit>:
 2ef:	66 55                	push   %bp
 2f1:	66 89 e5             	mov    %sp,%bp
 2f4:	66 83 ec 04          	sub    $0x4,%sp
 2f8:	67 66 8b 45 08       	mov    0x8(%di),%ax
 2fd:	67 88 45 fc          	mov    %al,-0x4(%di)
 301:	66 c7 06 54 00       	movw   $0x54,(%esi)
 306:	00 00                	add    %al,(%eax)
 308:	00 00                	add    %al,(%eax)
 30a:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 310:	66 68 00 00          	pushw  $0x0
 314:	00 00                	add    %al,(%eax)
 316:	66 e8 fc ff          	callw  316 <_do_exit+0x27>
 31a:	ff                   	(bad)  
 31b:	ff 66 83             	jmp    *-0x7d(%esi)
 31e:	c4 08                	les    (%eax),%ecx
 320:	66 a1 58 00 66 85    	mov    0x85660058,%ax
 326:	c0 78 49 66          	sarb   $0x66,0x49(%eax)
 32a:	a1 58 00 66 83       	mov    0x83660058,%eax
 32f:	f8                   	clc    
 330:	05 7f 3f 66 a1       	add    $0xa1663f7f,%eax
 335:	58                   	pop    %eax
 336:	00 66 50             	add    %ah,0x50(%esi)
 339:	66 68 80 00          	pushw  $0x80
 33d:	00 00                	add    %al,(%eax)
 33f:	66 e8 fc ff          	callw  33f <_do_exit+0x50>
 343:	ff                   	(bad)  
 344:	ff 66 83             	jmp    *-0x7d(%esi)
 347:	c4 08                	les    (%eax),%ecx
 349:	66 c7 06 dc 00       	movw   $0xdc,(%esi)
 34e:	00 00                	add    %al,(%eax)
 350:	00 00                	add    %al,(%eax)
 352:	67 66 0f be 45 fc    	movsbw -0x4(%di),%ax
 358:	66 a3 b0 00 66 a1    	mov    %ax,0xa16600b0
 35e:	58                   	pop    %eax
 35f:	00 66 50             	add    %ah,0x50(%esi)
 362:	66 68 80 00          	pushw  $0x80
 366:	00 00                	add    %al,(%eax)
 368:	66 e8 fc ff          	callw  368 <_do_exit+0x79>
 36c:	ff                   	(bad)  
 36d:	ff 66 83             	jmp    *-0x7d(%esi)
 370:	c4 08                	les    (%eax),%ecx
 372:	66 c9                	leavew 
 374:	66 c3                	retw   

00000376 <_switch_content>:
 376:	66 55                	push   %bp
 378:	66 89 e5             	mov    %sp,%bp
 37b:	66 83 ec 04          	sub    $0x4,%sp
 37f:	0e                   	push   %cs
 380:	1f                   	pop    %ds
 381:	66 a3 30 00 66 89    	mov    %ax,0x89660030
 387:	1e                   	push   %ds
 388:	24 00                	and    $0x0,%al
 38a:	66 89 0e             	mov    %cx,(%esi)
 38d:	2c 00                	sub    $0x0,%al
 38f:	66 89 16             	mov    %dx,(%esi)
 392:	28 00                	sub    %al,(%eax)
 394:	66 a1 08 01 66 85    	mov    0x85660108,%ax
 39a:	c0 7f 0f 66          	sarb   $0x66,0xf(%edi)
 39e:	a1 08 01 66 83       	mov    0x83660108,%eax
 3a3:	c0 01 66             	rolb   $0x66,(%ecx)
 3a6:	a3 08 01 e9 fa       	mov    %eax,0xfae90108
 3ab:	01 66 c7             	add    %esp,-0x39(%esi)
 3ae:	06                   	push   %es
 3af:	08 01                	or     %al,(%ecx)
 3b1:	00 00                	add    %al,(%eax)
 3b3:	00 00                	add    %al,(%eax)
 3b5:	66 c7 06 0c 01       	movw   $0x10c,(%esi)
 3ba:	00 00                	add    %al,(%eax)
 3bc:	00 00                	add    %al,(%eax)
 3be:	eb 18                	jmp    3d8 <_switch_content+0x62>
 3c0:	66 a1 0c 01 67 8f    	mov    0x8f67010c,%ax
 3c6:	84 00                	test   %al,(%eax)
 3c8:	e4 00                	in     $0x0,%al
 3ca:	00 00                	add    %al,(%eax)
 3cc:	66 a1 0c 01 66 83    	mov    0x8366010c,%ax
 3d2:	c0 01 66             	rolb   $0x66,(%ecx)
 3d5:	a3 0c 01 66 a1       	mov    %eax,0xa166010c
 3da:	0c 01                	or     $0x1,%al
 3dc:	66 83 f8 09          	cmp    $0x9,%ax
 3e0:	7e de                	jle    3c0 <_switch_content+0x4a>
 3e2:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 3e8:	66 68 00 00          	pushw  $0x0
 3ec:	00 00                	add    %al,(%eax)
 3ee:	66 e8 fc ff          	callw  3ee <_switch_content+0x78>
 3f2:	ff                   	(bad)  
 3f3:	ff 66 83             	jmp    *-0x7d(%esi)
 3f6:	c4 08                	les    (%eax),%ecx
 3f8:	66 a1 54 00 66 83    	mov    0x83660054,%ax
 3fe:	f8                   	clc    
 3ff:	02 0f                	add    (%edi),%cl
 401:	85 94 00 66 89 3e 14 	test   %edx,0x143e8966(%eax,%eax,1)
 408:	00 66 89             	add    %ah,-0x77(%esi)
 40b:	36 18 00             	sbb    %al,%ss:(%eax)
 40e:	66 89 2e             	mov    %bp,(%esi)
 411:	1c 00                	sbb    $0x0,%al
 413:	66 89 26             	mov    %sp,(%esi)
 416:	20 00                	and    %al,(%eax)
 418:	8c 16                	mov    %ss,(%esi)
 41a:	00 00                	add    %al,(%eax)
 41c:	8c 06                	mov    %es,(%esi)
 41e:	0c 00                	or     $0x0,%al
 420:	8c 26                	mov    %fs,(%esi)
 422:	08 00                	or     %al,(%eax)
 424:	8c 2e                	mov    %gs,(%esi)
 426:	04 00                	add    $0x0,%al
 428:	66 c7 06 54 00       	movw   $0x54,(%esi)
 42d:	01 00                	add    %eax,(%eax)
 42f:	00 00                	add    %al,(%eax)
 431:	66 0f b7 06          	movzww (%esi),%ax
 435:	f0 00 66 0f          	lock add %ah,0xf(%esi)
 439:	b7 c0                	mov    $0xc0,%bh
 43b:	66 a3 10 00 66 0f    	mov    %ax,0xf660010
 441:	b7 06                	mov    $0x6,%bh
 443:	f2 00 66 0f          	repnz add %ah,0xf(%esi)
 447:	b7 c0                	mov    $0xc0,%bh
 449:	66 a3 34 00 66 0f    	mov    %ax,0xf660034
 44f:	b7 06                	mov    $0x6,%bh
 451:	f4                   	hlt    
 452:	00 66 0f             	add    %ah,0xf(%esi)
 455:	b7 c0                	mov    $0xc0,%bh
 457:	66 a3 38 00 66 0f    	mov    %ax,0xf660038
 45d:	b7 06                	mov    $0x6,%bh
 45f:	f6 00 66             	testb  $0x66,(%eax)
 462:	0f b7 c0             	movzwl %ax,%eax
 465:	66 a3 3c 00 66 a1    	mov    %ax,0xa166003c
 46b:	38 00                	cmp    %al,(%eax)
 46d:	66 c1 e0 10          	shl    $0x10,%ax
 471:	66 89 c2             	mov    %ax,%dx
 474:	66 a1 34 00 66 09    	mov    0x9660034,%ax
 47a:	d0 67 66             	shlb   0x66(%edi)
 47d:	89 45 fc             	mov    %eax,-0x4(%ebp)
 480:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 486:	66 68 00 00          	pushw  $0x0
 48a:	00 00                	add    %al,(%eax)
 48c:	66 e8 fc ff          	callw  48c <_switch_content+0x116>
 490:	ff                   	(bad)  
 491:	ff 66 83             	jmp    *-0x7d(%esi)
 494:	c4 08                	les    (%eax),%ecx
 496:	eb 03                	jmp    49b <_switch_content+0x125>
 498:	83 c4 02             	add    $0x2,%esp
 49b:	66 a1 e0 00 67 66    	mov    0x666700e0,%ax
 4a1:	8d 48 01             	lea    0x1(%eax),%ecx
 4a4:	66 ba ab aa          	mov    $0xaaab,%dx
 4a8:	aa                   	stos   %al,%es:(%edi)
 4a9:	2a 66 89             	sub    -0x77(%esi),%ah
 4ac:	c8 66 f7 ea          	enter  $0xf766,$0xea
 4b0:	66 89 c8             	mov    %cx,%ax
 4b3:	66 c1 f8 1f          	sar    $0x1f,%ax
 4b7:	66 29 c2             	sub    %ax,%dx
 4ba:	66 89 d0             	mov    %dx,%ax
 4bd:	66 01 c0             	add    %ax,%ax
 4c0:	66 01 d0             	add    %dx,%ax
 4c3:	66 01 c0             	add    %ax,%ax
 4c6:	66 29 c1             	sub    %ax,%cx
 4c9:	66 89 ca             	mov    %cx,%dx
 4cc:	66 89 16             	mov    %dx,(%esi)
 4cf:	e0 00                	loopne 4d1 <_switch_content+0x15b>
 4d1:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 4d7:	66 68 00 00          	pushw  $0x0
 4db:	00 00                	add    %al,(%eax)
 4dd:	66 e8 fc ff          	callw  4dd <_switch_content+0x167>
 4e1:	ff                   	(bad)  
 4e2:	ff 66 83             	jmp    *-0x7d(%esi)
 4e5:	c4 08                	les    (%eax),%ecx
 4e7:	66 a1 54 00 66 83    	mov    0x83660054,%ax
 4ed:	f8                   	clc    
 4ee:	01 75 7b             	add    %esi,0x7b(%ebp)
 4f1:	66 a1 5c 00 66 85    	mov    0x8566005c,%ax
 4f7:	c0                   	(bad)  
 4f8:	75 72                	jne    56c <_switch_content+0x1f6>
 4fa:	90                   	nop
 4fb:	66 c7 06 54 00       	movw   $0x54,(%esi)
 500:	02 00                	add    (%eax),%al
 502:	00 00                	add    %al,(%eax)
 504:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 50a:	66 68 00 00          	pushw  $0x0
 50e:	00 00                	add    %al,(%eax)
 510:	66 e8 fc ff          	callw  510 <_switch_content+0x19a>
 514:	ff                   	(bad)  
 515:	ff 66 83             	jmp    *-0x7d(%esi)
 518:	c4 08                	les    (%eax),%ecx
 51a:	66 ff 36             	pushw  (%esi)
 51d:	3c 00                	cmp    $0x0,%al
 51f:	66 9d                	popfw  
 521:	66 8b 3e             	mov    (%esi),%di
 524:	14 00                	adc    $0x0,%al
 526:	66 8b 36             	mov    (%esi),%si
 529:	18 00                	sbb    %al,(%eax)
 52b:	66 8b 2e             	mov    (%esi),%bp
 52e:	1c 00                	sbb    $0x0,%al
 530:	66 8b 26             	mov    (%esi),%sp
 533:	20 00                	and    %al,(%eax)
 535:	8e 16                	mov    (%esi),%ss
 537:	00 00                	add    %al,(%eax)
 539:	8e 06                	mov    (%esi),%es
 53b:	0c 00                	or     $0x0,%al
 53d:	8e 26                	mov    (%esi),%fs
 53f:	08 00                	or     %al,(%eax)
 541:	8e 2e                	mov    (%esi),%gs
 543:	04 00                	add    $0x0,%al
 545:	66 a1 10 00 a3 f0    	mov    0xf0a30010,%ax
 54b:	00 66 a1             	add    %ah,-0x5f(%esi)
 54e:	34 00                	xor    $0x0,%al
 550:	a3 f2 00 66 a1       	mov    %eax,0xa16600f2
 555:	38 00                	cmp    %al,(%eax)
 557:	a3 f4 00 66 a1       	mov    %eax,0xa16600f4
 55c:	3c 00                	cmp    $0x0,%al
 55e:	a3 f6 00 66 c7       	mov    %eax,0xc76600f6
 563:	06                   	push   %es
 564:	0c 01                	or     $0x1,%al
 566:	09 00                	or     %eax,(%eax)
 568:	00 00                	add    %al,(%eax)
 56a:	eb 1b                	jmp    587 <_switch_content+0x211>
 56c:	e9 2c ff 66 a1       	jmp    a167049d <_proc_exit_switch+0xa166fcc2>
 571:	0c 01                	or     $0x1,%al
 573:	67 ff b4 00 e4       	pushl  -0x1c00(%si)
 578:	00 00                	add    %al,(%eax)
 57a:	00 66 a1             	add    %ah,-0x5f(%esi)
 57d:	0c 01                	or     $0x1,%al
 57f:	66 83 e8 01          	sub    $0x1,%ax
 583:	66 a3 0c 01 66 a1    	mov    %ax,0xa166010c
 589:	0c 01                	or     $0x1,%al
 58b:	66 83 f8 03          	cmp    $0x3,%ax
 58f:	7f de                	jg     56f <_switch_content+0x1f9>
 591:	66 a1 30 00 66 8b    	mov    0x8b660030,%ax
 597:	1e                   	push   %ds
 598:	24 00                	and    $0x0,%al
 59a:	66 8b 0e             	mov    (%esi),%cx
 59d:	2c 00                	sub    $0x0,%al
 59f:	66 8b 16             	mov    (%esi),%dx
 5a2:	28 00                	sub    %al,(%eax)
 5a4:	66 c3                	retw   
 5a6:	66 c9                	leavew 
 5a8:	66 c3                	retw   

000005aa <_switch_content_2>:
 5aa:	66 55                	push   %bp
 5ac:	66 89 e5             	mov    %sp,%bp
 5af:	66 83 ec 04          	sub    $0x4,%sp
 5b3:	0e                   	push   %cs
 5b4:	1f                   	pop    %ds
 5b5:	66 a3 30 00 66 89    	mov    %ax,0x89660030
 5bb:	1e                   	push   %ds
 5bc:	24 00                	and    $0x0,%al
 5be:	66 89 0e             	mov    %cx,(%esi)
 5c1:	2c 00                	sub    $0x0,%al
 5c3:	66 89 16             	mov    %dx,(%esi)
 5c6:	28 00                	sub    %al,(%eax)
 5c8:	66 a1 10 01 66 85    	mov    0x85660110,%ax
 5ce:	c0 7f 0c 66          	sarb   $0x66,0xc(%edi)
 5d2:	a1 10 01 66 83       	mov    0x83660110,%eax
 5d7:	c0 01 66             	rolb   $0x66,(%ecx)
 5da:	a3 10 01 66 c7       	mov    %eax,0xc7660110
 5df:	06                   	push   %es
 5e0:	10 01                	adc    %al,(%ecx)
 5e2:	00 00                	add    %al,(%eax)
 5e4:	00 00                	add    %al,(%eax)
 5e6:	66 c7 06 14 01       	movw   $0x114,(%esi)
 5eb:	00 00                	add    %al,(%eax)
 5ed:	00 00                	add    %al,(%eax)
 5ef:	eb 18                	jmp    609 <_switch_content_2+0x5f>
 5f1:	66 a1 14 01 67 8f    	mov    0x8f670114,%ax
 5f7:	84 00                	test   %al,(%eax)
 5f9:	e4 00                	in     $0x0,%al
 5fb:	00 00                	add    %al,(%eax)
 5fd:	66 a1 14 01 66 83    	mov    0x83660114,%ax
 603:	c0 01 66             	rolb   $0x66,(%ecx)
 606:	a3 14 01 66 a1       	mov    %eax,0xa1660114
 60b:	14 01                	adc    $0x1,%al
 60d:	66 83 f8 09          	cmp    $0x9,%ax
 611:	7e de                	jle    5f1 <_switch_content_2+0x47>
 613:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 619:	66 68 00 00          	pushw  $0x0
 61d:	00 00                	add    %al,(%eax)
 61f:	66 e8 fc ff          	callw  61f <_switch_content_2+0x75>
 623:	ff                   	(bad)  
 624:	ff 66 83             	jmp    *-0x7d(%esi)
 627:	c4 08                	les    (%eax),%ecx
 629:	66 a1 54 00 66 83    	mov    0x83660054,%ax
 62f:	f8                   	clc    
 630:	02 0f                	add    (%edi),%cl
 632:	85 94 00 66 89 3e 14 	test   %edx,0x143e8966(%eax,%eax,1)
 639:	00 66 89             	add    %ah,-0x77(%esi)
 63c:	36 18 00             	sbb    %al,%ss:(%eax)
 63f:	66 89 2e             	mov    %bp,(%esi)
 642:	1c 00                	sbb    $0x0,%al
 644:	66 89 26             	mov    %sp,(%esi)
 647:	20 00                	and    %al,(%eax)
 649:	8c 16                	mov    %ss,(%esi)
 64b:	00 00                	add    %al,(%eax)
 64d:	8c 06                	mov    %es,(%esi)
 64f:	0c 00                	or     $0x0,%al
 651:	8c 26                	mov    %fs,(%esi)
 653:	08 00                	or     %al,(%eax)
 655:	8c 2e                	mov    %gs,(%esi)
 657:	04 00                	add    $0x0,%al
 659:	66 c7 06 54 00       	movw   $0x54,(%esi)
 65e:	01 00                	add    %eax,(%eax)
 660:	00 00                	add    %al,(%eax)
 662:	66 0f b7 06          	movzww (%esi),%ax
 666:	f0 00 66 0f          	lock add %ah,0xf(%esi)
 66a:	b7 c0                	mov    $0xc0,%bh
 66c:	66 a3 10 00 66 0f    	mov    %ax,0xf660010
 672:	b7 06                	mov    $0x6,%bh
 674:	f2 00 66 0f          	repnz add %ah,0xf(%esi)
 678:	b7 c0                	mov    $0xc0,%bh
 67a:	66 a3 34 00 66 0f    	mov    %ax,0xf660034
 680:	b7 06                	mov    $0x6,%bh
 682:	f4                   	hlt    
 683:	00 66 0f             	add    %ah,0xf(%esi)
 686:	b7 c0                	mov    $0xc0,%bh
 688:	66 a3 38 00 66 0f    	mov    %ax,0xf660038
 68e:	b7 06                	mov    $0x6,%bh
 690:	f6 00 66             	testb  $0x66,(%eax)
 693:	0f b7 c0             	movzwl %ax,%eax
 696:	66 a3 3c 00 66 a1    	mov    %ax,0xa166003c
 69c:	38 00                	cmp    %al,(%eax)
 69e:	66 c1 e0 10          	shl    $0x10,%ax
 6a2:	66 89 c2             	mov    %ax,%dx
 6a5:	66 a1 34 00 66 09    	mov    0x9660034,%ax
 6ab:	d0 67 66             	shlb   0x66(%edi)
 6ae:	89 45 fc             	mov    %eax,-0x4(%ebp)
 6b1:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 6b7:	66 68 00 00          	pushw  $0x0
 6bb:	00 00                	add    %al,(%eax)
 6bd:	66 e8 fc ff          	callw  6bd <_switch_content_2+0x113>
 6c1:	ff                   	(bad)  
 6c2:	ff 66 83             	jmp    *-0x7d(%esi)
 6c5:	c4 08                	les    (%eax),%ecx
 6c7:	eb 03                	jmp    6cc <_switch_content_2+0x122>
 6c9:	83 c4 02             	add    $0x2,%esp
 6cc:	66 a1 e0 00 67 66    	mov    0x666700e0,%ax
 6d2:	8d 48 01             	lea    0x1(%eax),%ecx
 6d5:	66 ba ab aa          	mov    $0xaaab,%dx
 6d9:	aa                   	stos   %al,%es:(%edi)
 6da:	2a 66 89             	sub    -0x77(%esi),%ah
 6dd:	c8 66 f7 ea          	enter  $0xf766,$0xea
 6e1:	66 89 c8             	mov    %cx,%ax
 6e4:	66 c1 f8 1f          	sar    $0x1f,%ax
 6e8:	66 29 c2             	sub    %ax,%dx
 6eb:	66 89 d0             	mov    %dx,%ax
 6ee:	66 01 c0             	add    %ax,%ax
 6f1:	66 01 d0             	add    %dx,%ax
 6f4:	66 01 c0             	add    %ax,%ax
 6f7:	66 29 c1             	sub    %ax,%cx
 6fa:	66 89 ca             	mov    %cx,%dx
 6fd:	66 89 16             	mov    %dx,(%esi)
 700:	e0 00                	loopne 702 <_switch_content_2+0x158>
 702:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 708:	66 68 00 00          	pushw  $0x0
 70c:	00 00                	add    %al,(%eax)
 70e:	66 e8 fc ff          	callw  70e <_switch_content_2+0x164>
 712:	ff                   	(bad)  
 713:	ff 66 83             	jmp    *-0x7d(%esi)
 716:	c4 08                	les    (%eax),%ecx
 718:	66 a1 54 00 66 83    	mov    0x83660054,%ax
 71e:	f8                   	clc    
 71f:	01 75 7b             	add    %esi,0x7b(%ebp)
 722:	66 a1 5c 00 66 85    	mov    0x8566005c,%ax
 728:	c0                   	(bad)  
 729:	75 72                	jne    79d <_switch_content_2+0x1f3>
 72b:	90                   	nop
 72c:	66 c7 06 54 00       	movw   $0x54,(%esi)
 731:	02 00                	add    (%eax),%al
 733:	00 00                	add    %al,(%eax)
 735:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 73b:	66 68 00 00          	pushw  $0x0
 73f:	00 00                	add    %al,(%eax)
 741:	66 e8 fc ff          	callw  741 <_switch_content_2+0x197>
 745:	ff                   	(bad)  
 746:	ff 66 83             	jmp    *-0x7d(%esi)
 749:	c4 08                	les    (%eax),%ecx
 74b:	66 ff 36             	pushw  (%esi)
 74e:	3c 00                	cmp    $0x0,%al
 750:	66 9d                	popfw  
 752:	66 8b 3e             	mov    (%esi),%di
 755:	14 00                	adc    $0x0,%al
 757:	66 8b 36             	mov    (%esi),%si
 75a:	18 00                	sbb    %al,(%eax)
 75c:	66 8b 2e             	mov    (%esi),%bp
 75f:	1c 00                	sbb    $0x0,%al
 761:	66 8b 26             	mov    (%esi),%sp
 764:	20 00                	and    %al,(%eax)
 766:	8e 16                	mov    (%esi),%ss
 768:	00 00                	add    %al,(%eax)
 76a:	8e 06                	mov    (%esi),%es
 76c:	0c 00                	or     $0x0,%al
 76e:	8e 26                	mov    (%esi),%fs
 770:	08 00                	or     %al,(%eax)
 772:	8e 2e                	mov    (%esi),%gs
 774:	04 00                	add    $0x0,%al
 776:	66 a1 10 00 a3 f0    	mov    0xf0a30010,%ax
 77c:	00 66 a1             	add    %ah,-0x5f(%esi)
 77f:	34 00                	xor    $0x0,%al
 781:	a3 f2 00 66 a1       	mov    %eax,0xa16600f2
 786:	38 00                	cmp    %al,(%eax)
 788:	a3 f4 00 66 a1       	mov    %eax,0xa16600f4
 78d:	3c 00                	cmp    $0x0,%al
 78f:	a3 f6 00 66 c7       	mov    %eax,0xc76600f6
 794:	06                   	push   %es
 795:	14 01                	adc    $0x1,%al
 797:	09 00                	or     %eax,(%eax)
 799:	00 00                	add    %al,(%eax)
 79b:	eb 1b                	jmp    7b8 <_switch_content_2+0x20e>
 79d:	e9 2c ff 66 a1       	jmp    a16706ce <_proc_exit_switch+0xa166fef3>
 7a2:	14 01                	adc    $0x1,%al
 7a4:	67 ff b4 00 e4       	pushl  -0x1c00(%si)
 7a9:	00 00                	add    %al,(%eax)
 7ab:	00 66 a1             	add    %ah,-0x5f(%esi)
 7ae:	14 01                	adc    $0x1,%al
 7b0:	66 83 e8 01          	sub    $0x1,%ax
 7b4:	66 a3 14 01 66 a1    	mov    %ax,0xa1660114
 7ba:	14 01                	adc    $0x1,%al
 7bc:	66 83 f8 03          	cmp    $0x3,%ax
 7c0:	7f de                	jg     7a0 <_switch_content_2+0x1f6>
 7c2:	66 a1 30 00 66 8b    	mov    0x8b660030,%ax
 7c8:	1e                   	push   %ds
 7c9:	24 00                	and    $0x0,%al
 7cb:	66 8b 0e             	mov    (%esi),%cx
 7ce:	2c 00                	sub    $0x0,%al
 7d0:	66 8b 16             	mov    (%esi),%dx
 7d3:	28 00                	sub    %al,(%eax)
 7d5:	66 c3                	retw   
 7d7:	66 c9                	leavew 
 7d9:	66 c3                	retw   

000007db <_proc_exit_switch>:
 7db:	66 55                	push   %bp
 7dd:	66 89 e5             	mov    %sp,%bp
 7e0:	0e                   	push   %cs
 7e1:	1f                   	pop    %ds
 7e2:	66 a1 e0 00 67 66    	mov    0x666700e0,%ax
 7e8:	8d 48 01             	lea    0x1(%eax),%ecx
 7eb:	66 ba ab aa          	mov    $0xaaab,%dx
 7ef:	aa                   	stos   %al,%es:(%edi)
 7f0:	2a 66 89             	sub    -0x77(%esi),%ah
 7f3:	c8 66 f7 ea          	enter  $0xf766,$0xea
 7f7:	66 89 c8             	mov    %cx,%ax
 7fa:	66 c1 f8 1f          	sar    $0x1f,%ax
 7fe:	66 29 c2             	sub    %ax,%dx
 801:	66 89 d0             	mov    %dx,%ax
 804:	66 01 c0             	add    %ax,%ax
 807:	66 01 d0             	add    %dx,%ax
 80a:	66 01 c0             	add    %ax,%ax
 80d:	66 29 c1             	sub    %ax,%cx
 810:	66 89 ca             	mov    %cx,%dx
 813:	66 89 16             	mov    %dx,(%esi)
 816:	e0 00                	loopne 818 <_proc_exit_switch+0x3d>
 818:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 81e:	66 68 00 00          	pushw  $0x0
 822:	00 00                	add    %al,(%eax)
 824:	66 e8 fc ff          	callw  824 <_proc_exit_switch+0x49>
 828:	ff                   	(bad)  
 829:	ff 66 83             	jmp    *-0x7d(%esi)
 82c:	c4 08                	les    (%eax),%ecx
 82e:	66 a1 54 00 66 83    	mov    0x83660054,%ax
 834:	f8                   	clc    
 835:	01 75 7b             	add    %esi,0x7b(%ebp)
 838:	66 a1 5c 00 66 85    	mov    0x8566005c,%ax
 83e:	c0                   	(bad)  
 83f:	75 72                	jne    8b3 <_proc_exit_switch+0xd8>
 841:	90                   	nop
 842:	66 c7 06 54 00       	movw   $0x54,(%esi)
 847:	02 00                	add    (%eax),%al
 849:	00 00                	add    %al,(%eax)
 84b:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 851:	66 68 00 00          	pushw  $0x0
 855:	00 00                	add    %al,(%eax)
 857:	66 e8 fc ff          	callw  857 <_proc_exit_switch+0x7c>
 85b:	ff                   	(bad)  
 85c:	ff 66 83             	jmp    *-0x7d(%esi)
 85f:	c4 08                	les    (%eax),%ecx
 861:	66 ff 36             	pushw  (%esi)
 864:	3c 00                	cmp    $0x0,%al
 866:	66 9d                	popfw  
 868:	66 8b 3e             	mov    (%esi),%di
 86b:	14 00                	adc    $0x0,%al
 86d:	66 8b 36             	mov    (%esi),%si
 870:	18 00                	sbb    %al,(%eax)
 872:	66 8b 2e             	mov    (%esi),%bp
 875:	1c 00                	sbb    $0x0,%al
 877:	66 8b 26             	mov    (%esi),%sp
 87a:	20 00                	and    %al,(%eax)
 87c:	8e 16                	mov    (%esi),%ss
 87e:	00 00                	add    %al,(%eax)
 880:	8e 06                	mov    (%esi),%es
 882:	0c 00                	or     $0x0,%al
 884:	8e 26                	mov    (%esi),%fs
 886:	08 00                	or     %al,(%eax)
 888:	8e 2e                	mov    (%esi),%gs
 88a:	04 00                	add    $0x0,%al
 88c:	66 a1 3c 00 a3 f6    	mov    0xf6a3003c,%ax
 892:	00 66 a1             	add    %ah,-0x5f(%esi)
 895:	38 00                	cmp    %al,(%eax)
 897:	a3 f4 00 66 a1       	mov    %eax,0xa16600f4
 89c:	34 00                	xor    $0x0,%al
 89e:	a3 f2 00 66 a1       	mov    %eax,0xa16600f2
 8a3:	10 00                	adc    %al,(%eax)
 8a5:	a3 f0 00 66 c7       	mov    %eax,0xc76600f0
 8aa:	06                   	push   %es
 8ab:	18 01                	sbb    %al,(%ecx)
 8ad:	09 00                	or     %eax,(%eax)
 8af:	00 00                	add    %al,(%eax)
 8b1:	eb 1b                	jmp    8ce <_proc_exit_switch+0xf3>
 8b3:	e9 2c ff 66 a1       	jmp    a16707e4 <_proc_exit_switch+0xa1670009>
 8b8:	18 01                	sbb    %al,(%ecx)
 8ba:	67 ff b4 00 e4       	pushl  -0x1c00(%si)
 8bf:	00 00                	add    %al,(%eax)
 8c1:	00 66 a1             	add    %ah,-0x5f(%esi)
 8c4:	18 01                	sbb    %al,(%ecx)
 8c6:	66 83 e8 01          	sub    $0x1,%ax
 8ca:	66 a3 18 01 66 a1    	mov    %ax,0xa1660118
 8d0:	18 01                	sbb    %al,(%ecx)
 8d2:	66 83 f8 03          	cmp    $0x3,%ax
 8d6:	7f de                	jg     8b6 <_proc_exit_switch+0xdb>
 8d8:	66 a1 30 00 66 8b    	mov    0x8b660030,%ax
 8de:	1e                   	push   %ds
 8df:	24 00                	and    $0x0,%al
 8e1:	66 8b 0e             	mov    (%esi),%cx
 8e4:	2c 00                	sub    $0x0,%al
 8e6:	66 8b 16             	mov    (%esi),%dx
 8e9:	28 00                	sub    %al,(%eax)
 8eb:	66 c3                	retw   
 8ed:	66 c9                	leavew 
 8ef:	66 c3                	retw   

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

00000100 <ret_addr.1410>:
 100:	00 00                	add    %al,(%eax)
	...

00000104 <tmp.1411>:
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
  64:	53                   	push   %ebx
  65:	01 00                	add    %eax,(%eax)
  67:	00 00                	add    %al,(%eax)
  69:	42                   	inc    %edx
  6a:	0e                   	push   %cs
  6b:	08 85 02 43 0d 05    	or     %al,0x50d4302(%ebp)
  71:	03 4c 01 c5          	add    -0x3b(%ecx,%eax,1),%ecx
  75:	0c 04                	or     $0x4,%al
  77:	04 1c                	add    $0x1c,%al
  79:	00 00                	add    %al,(%eax)
  7b:	00 7c 00 00          	add    %bh,0x0(%eax,%eax,1)
  7f:	00 b1 02 00 00 3e    	add    %dh,0x3e000002(%ecx)
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
  9f:	00 ef                	add    %ch,%bh
  a1:	02 00                	add    (%eax),%al
  a3:	00 87 00 00 00 00    	add    %al,0x0(%edi)
  a9:	42                   	inc    %edx
  aa:	0e                   	push   %cs
  ab:	08 85 02 43 0d 05    	or     %al,0x50d4302(%ebp)
  b1:	02 80 c5 0c 04 04    	add    0x4040cc5(%eax),%al
  b7:	00 1c 00             	add    %bl,(%eax,%eax,1)
  ba:	00 00                	add    %al,(%eax)
  bc:	bc 00 00 00 76       	mov    $0x76000000,%esp
  c1:	03 00                	add    (%eax),%eax
  c3:	00 34 02             	add    %dh,(%edx,%eax,1)
  c6:	00 00                	add    %al,(%eax)
  c8:	00 42 0e             	add    %al,0xe(%edx)
  cb:	08 85 02 43 0d 05    	or     %al,0x50d4302(%ebp)
  d1:	03 2d 02 c5 0c 04    	add    0x40cc502,%ebp
  d7:	04 1c                	add    $0x1c,%al
  d9:	00 00                	add    %al,(%eax)
  db:	00 dc                	add    %bl,%ah
  dd:	00 00                	add    %al,(%eax)
  df:	00 aa 05 00 00 31    	add    %ch,0x31000005(%edx)
  e5:	02 00                	add    (%eax),%al
  e7:	00 00                	add    %al,(%eax)
  e9:	42                   	inc    %edx
  ea:	0e                   	push   %cs
  eb:	08 85 02 43 0d 05    	or     %al,0x50d4302(%ebp)
  f1:	03 2a                	add    (%edx),%ebp
  f3:	02 c5                	add    %ch,%al
  f5:	0c 04                	or     $0x4,%al
  f7:	04 1c                	add    $0x1c,%al
  f9:	00 00                	add    %al,(%eax)
  fb:	00 fc                	add    %bh,%ah
  fd:	00 00                	add    %al,(%eax)
  ff:	00 db                	add    %bl,%bl
 101:	07                   	pop    %es
 102:	00 00                	add    %al,(%eax)
 104:	16                   	push   %ss
 105:	01 00                	add    %eax,(%eax)
 107:	00 00                	add    %al,(%eax)
 109:	42                   	inc    %edx
 10a:	0e                   	push   %cs
 10b:	08 85 02 43 0d 05    	or     %al,0x50d4302(%ebp)
 111:	03 0f                	add    (%edi),%ecx
 113:	01 c5                	add    %eax,%ebp
 115:	0c 04                	or     $0x4,%al
 117:	04                   	.byte 0x4
