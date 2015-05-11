
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
 163:	1e                   	push   %ds
 164:	0e                   	push   %cs
 165:	1f                   	pop    %ds
 166:	66 c7 06 fc 00       	movw   $0xfc,(%esi)
 16b:	00 00                	add    %al,(%eax)
 16d:	00 00                	add    %al,(%eax)
 16f:	eb 2d                	jmp    19e <_do_fork+0x40>
 171:	66 a1 fc 00 66 50    	mov    0x506600fc,%ax
 177:	66 68 80 00          	pushw  $0x80
 17b:	00 00                	add    %al,(%eax)
 17d:	66 e8 fc ff          	callw  17d <_do_fork+0x1f>
 181:	ff                   	(bad)  
 182:	ff 66 83             	jmp    *-0x7d(%esi)
 185:	c4 08                	les    (%eax),%ecx
 187:	66 a1 d4 00 66 85    	mov    0x856600d4,%ax
 18d:	c0                   	(bad)  
 18e:	75 02                	jne    192 <_do_fork+0x34>
 190:	eb 16                	jmp    1a8 <_do_fork+0x4a>
 192:	66 a1 fc 00 66 83    	mov    0x836600fc,%ax
 198:	c0 01 66             	rolb   $0x66,(%ecx)
 19b:	a3 fc 00 66 a1       	mov    %eax,0xa16600fc
 1a0:	fc                   	cld    
 1a1:	00 66 83             	add    %ah,-0x7d(%esi)
 1a4:	f8                   	clc    
 1a5:	05 7e c9 66 a1       	add    $0xa166c97e,%eax
 1aa:	fc                   	cld    
 1ab:	00 66 83             	add    %ah,-0x7d(%esi)
 1ae:	f8                   	clc    
 1af:	05 7e 09 66 b8       	add    $0xb866097e,%eax
 1b4:	ff                   	(bad)  
 1b5:	ff                   	(bad)  
 1b6:	ff                   	(bad)  
 1b7:	ff                   	(bad)  
 1b8:	e9 ea 00 66 89       	jmp    896602a7 <_proc_exit_switch+0x8965fad3>
 1bd:	26 a0 00 66 89 3e    	mov    %es:0x3e896600,%al
 1c3:	94                   	xchg   %eax,%esp
 1c4:	00 66 89             	add    %ah,-0x77(%esi)
 1c7:	36 98                	ss cwtl 
 1c9:	00 66 89             	add    %ah,-0x77(%esi)
 1cc:	2e 9c                	cs pushf 
 1ce:	00 66 a3             	add    %ah,-0x5d(%esi)
 1d1:	b0 00                	mov    $0x0,%al
 1d3:	66 89 1e             	mov    %bx,(%esi)
 1d6:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 1d7:	00 66 89             	add    %ah,-0x77(%esi)
 1da:	0e                   	push   %cs
 1db:	ac                   	lods   %ds:(%esi),%al
 1dc:	00 66 89             	add    %ah,-0x77(%esi)
 1df:	16                   	push   %ss
 1e0:	a8 00                	test   $0x0,%al
 1e2:	8c 16                	mov    %ss,(%esi)
 1e4:	80 00 8c             	addb   $0x8c,(%eax)
 1e7:	06                   	push   %es
 1e8:	8c 00                	mov    %es,(%eax)
 1ea:	8c 26                	mov    %fs,(%esi)
 1ec:	88 00                	mov    %al,(%eax)
 1ee:	8c 2e                	mov    %gs,(%esi)
 1f0:	84 00                	test   %al,(%eax)
 1f2:	8c 0e                	mov    %cs,(%esi)
 1f4:	b8 00 8c 1e 90       	mov    $0x901e8c00,%eax
 1f9:	00 66 e8             	add    %ah,-0x18(%esi)
 1fc:	fc                   	cld    
 1fd:	ff                   	(bad)  
 1fe:	ff                   	(bad)  
 1ff:	ff 66 a3             	jmp    *-0x5d(%esi)
 202:	d0 00                	rolb   (%eax)
 204:	66 a1 e0 00 66 a3    	mov    0xa36600e0,%ax
 20a:	d8 00                	fadds  (%eax)
 20c:	66 c7 06 dc 00       	movw   $0xdc,(%esi)
 211:	00 00                	add    %al,(%eax)
 213:	00 00                	add    %al,(%eax)
 215:	66 a1 a5 02 66 a3    	mov    0xa36602a5,%ax
 21b:	00 01                	add    %al,(%ecx)
 21d:	66 a1 00 01 66 a3    	mov    0xa3660100,%ax
 223:	b4 00                	mov    $0x0,%ah
 225:	66 a1 3c 00 66 a3    	mov    0xa366003c,%ax
 22b:	bc 00 66 c7 06       	mov    $0x6c76600,%esp
 230:	d4 00                	aam    $0x0
 232:	01 00                	add    %eax,(%eax)
 234:	00 00                	add    %al,(%eax)
 236:	c6 06 c0             	movb   $0xc0,(%esi)
 239:	00 00                	add    %al,(%eax)
 23b:	66 c7 06 b0 00       	movw   $0xb0,(%esi)
 240:	00 00                	add    %al,(%eax)
 242:	00 00                	add    %al,(%eax)
 244:	66 a1 fc 00 66 83    	mov    0x836600fc,%ax
 24a:	c0 08 66             	rorb   $0x66,(%eax)
 24d:	c1 e0 0a             	shl    $0xa,%eax
 250:	66 a3 80 00 66 a1    	mov    %ax,0xa1660080
 256:	80 00 66             	addb   $0x66,(%eax)
 259:	c1 e0 10             	shl    $0x10,%eax
 25c:	66 89 c2             	mov    %ax,%dx
 25f:	66 a1 00 00 66 c1    	mov    0xc1660000,%ax
 265:	e0 10                	loopne 277 <_do_fork+0x119>
 267:	66 68 00 05          	pushw  $0x500
 26b:	00 00                	add    %al,(%eax)
 26d:	66 52                	push   %dx
 26f:	66 50                	push   %ax
 271:	66 e8 fc ff          	callw  271 <_do_fork+0x113>
 275:	ff                   	(bad)  
 276:	ff 66 83             	jmp    *-0x7d(%esi)
 279:	c4 0c 66             	les    (%esi,%eiz,2),%ecx
 27c:	a1 fc 00 66 50       	mov    0x506600fc,%eax
 281:	66 68 80 00          	pushw  $0x80
 285:	00 00                	add    %al,(%eax)
 287:	66 e8 fc ff          	callw  287 <_do_fork+0x129>
 28b:	ff                   	(bad)  
 28c:	ff 66 83             	jmp    *-0x7d(%esi)
 28f:	c4 08                	les    (%eax),%ecx
 291:	66 68 80 00          	pushw  $0x80
 295:	00 00                	add    %al,(%eax)
 297:	66 e8 fc ff          	callw  297 <_do_fork+0x139>
 29b:	ff                   	(bad)  
 29c:	ff 66 83             	jmp    *-0x7d(%esi)
 29f:	c4 04 66             	les    (%esi,%eiz,2),%eax
 2a2:	a1 d0 00 1f 66       	mov    0x661f00d0,%eax

000002a5 <child_proc>:
 2a5:	1f                   	pop    %ds
 2a6:	66 c9                	leavew 
 2a8:	66 c3                	retw   

000002aa <_do_wait>:
 2aa:	66 55                	push   %bp
 2ac:	66 89 e5             	mov    %sp,%bp
 2af:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 2b5:	66 68 00 00          	pushw  $0x0
 2b9:	00 00                	add    %al,(%eax)
 2bb:	66 e8 fc ff          	callw  2bb <_do_wait+0x11>
 2bf:	ff                   	(bad)  
 2c0:	ff 66 83             	jmp    *-0x7d(%esi)
 2c3:	c4 08                	les    (%eax),%ecx
 2c5:	66 c7 06 5c 00       	movw   $0x5c,(%esi)
 2ca:	01 00                	add    %eax,(%eax)
 2cc:	00 00                	add    %al,(%eax)
 2ce:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 2d4:	66 68 00 00          	pushw  $0x0
 2d8:	00 00                	add    %al,(%eax)
 2da:	66 e8 fc ff          	callw  2da <_do_wait+0x30>
 2de:	ff                   	(bad)  
 2df:	ff 66 83             	jmp    *-0x7d(%esi)
 2e2:	c4 08                	les    (%eax),%ecx
 2e4:	66 c9                	leavew 
 2e6:	66 c3                	retw   

000002e8 <_do_exit>:
 2e8:	66 55                	push   %bp
 2ea:	66 89 e5             	mov    %sp,%bp
 2ed:	66 83 ec 04          	sub    $0x4,%sp
 2f1:	67 66 8b 45 08       	mov    0x8(%di),%ax
 2f6:	67 88 45 fc          	mov    %al,-0x4(%di)
 2fa:	66 c7 06 54 00       	movw   $0x54,(%esi)
 2ff:	00 00                	add    %al,(%eax)
 301:	00 00                	add    %al,(%eax)
 303:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 309:	66 68 00 00          	pushw  $0x0
 30d:	00 00                	add    %al,(%eax)
 30f:	66 e8 fc ff          	callw  30f <_do_exit+0x27>
 313:	ff                   	(bad)  
 314:	ff 66 83             	jmp    *-0x7d(%esi)
 317:	c4 08                	les    (%eax),%ecx
 319:	66 a1 58 00 66 85    	mov    0x85660058,%ax
 31f:	c0 78 49 66          	sarb   $0x66,0x49(%eax)
 323:	a1 58 00 66 83       	mov    0x83660058,%eax
 328:	f8                   	clc    
 329:	05 7f 3f 66 a1       	add    $0xa1663f7f,%eax
 32e:	58                   	pop    %eax
 32f:	00 66 50             	add    %ah,0x50(%esi)
 332:	66 68 80 00          	pushw  $0x80
 336:	00 00                	add    %al,(%eax)
 338:	66 e8 fc ff          	callw  338 <_do_exit+0x50>
 33c:	ff                   	(bad)  
 33d:	ff 66 83             	jmp    *-0x7d(%esi)
 340:	c4 08                	les    (%eax),%ecx
 342:	66 c7 06 dc 00       	movw   $0xdc,(%esi)
 347:	00 00                	add    %al,(%eax)
 349:	00 00                	add    %al,(%eax)
 34b:	67 66 0f be 45 fc    	movsbw -0x4(%di),%ax
 351:	66 a3 b0 00 66 a1    	mov    %ax,0xa16600b0
 357:	58                   	pop    %eax
 358:	00 66 50             	add    %ah,0x50(%esi)
 35b:	66 68 80 00          	pushw  $0x80
 35f:	00 00                	add    %al,(%eax)
 361:	66 e8 fc ff          	callw  361 <_do_exit+0x79>
 365:	ff                   	(bad)  
 366:	ff 66 83             	jmp    *-0x7d(%esi)
 369:	c4 08                	les    (%eax),%ecx
 36b:	66 c9                	leavew 
 36d:	66 c3                	retw   

0000036f <_switch_content>:
 36f:	66 55                	push   %bp
 371:	66 89 e5             	mov    %sp,%bp
 374:	66 83 ec 04          	sub    $0x4,%sp
 378:	0e                   	push   %cs
 379:	1f                   	pop    %ds
 37a:	66 a3 30 00 66 89    	mov    %ax,0x89660030
 380:	1e                   	push   %ds
 381:	24 00                	and    $0x0,%al
 383:	66 89 0e             	mov    %cx,(%esi)
 386:	2c 00                	sub    $0x0,%al
 388:	66 89 16             	mov    %dx,(%esi)
 38b:	28 00                	sub    %al,(%eax)
 38d:	66 a1 08 01 66 85    	mov    0x85660108,%ax
 393:	c0 7f 0f 66          	sarb   $0x66,0xf(%edi)
 397:	a1 08 01 66 83       	mov    0x83660108,%eax
 39c:	c0 01 66             	rolb   $0x66,(%ecx)
 39f:	a3 08 01 e9 fa       	mov    %eax,0xfae90108
 3a4:	01 66 c7             	add    %esp,-0x39(%esi)
 3a7:	06                   	push   %es
 3a8:	08 01                	or     %al,(%ecx)
 3aa:	00 00                	add    %al,(%eax)
 3ac:	00 00                	add    %al,(%eax)
 3ae:	66 c7 06 0c 01       	movw   $0x10c,(%esi)
 3b3:	00 00                	add    %al,(%eax)
 3b5:	00 00                	add    %al,(%eax)
 3b7:	eb 18                	jmp    3d1 <_switch_content+0x62>
 3b9:	66 a1 0c 01 67 8f    	mov    0x8f67010c,%ax
 3bf:	84 00                	test   %al,(%eax)
 3c1:	e4 00                	in     $0x0,%al
 3c3:	00 00                	add    %al,(%eax)
 3c5:	66 a1 0c 01 66 83    	mov    0x8366010c,%ax
 3cb:	c0 01 66             	rolb   $0x66,(%ecx)
 3ce:	a3 0c 01 66 a1       	mov    %eax,0xa166010c
 3d3:	0c 01                	or     $0x1,%al
 3d5:	66 83 f8 09          	cmp    $0x9,%ax
 3d9:	7e de                	jle    3b9 <_switch_content+0x4a>
 3db:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 3e1:	66 68 00 00          	pushw  $0x0
 3e5:	00 00                	add    %al,(%eax)
 3e7:	66 e8 fc ff          	callw  3e7 <_switch_content+0x78>
 3eb:	ff                   	(bad)  
 3ec:	ff 66 83             	jmp    *-0x7d(%esi)
 3ef:	c4 08                	les    (%eax),%ecx
 3f1:	66 a1 54 00 66 83    	mov    0x83660054,%ax
 3f7:	f8                   	clc    
 3f8:	02 0f                	add    (%edi),%cl
 3fa:	85 94 00 66 89 3e 14 	test   %edx,0x143e8966(%eax,%eax,1)
 401:	00 66 89             	add    %ah,-0x77(%esi)
 404:	36 18 00             	sbb    %al,%ss:(%eax)
 407:	66 89 2e             	mov    %bp,(%esi)
 40a:	1c 00                	sbb    $0x0,%al
 40c:	66 89 26             	mov    %sp,(%esi)
 40f:	20 00                	and    %al,(%eax)
 411:	8c 16                	mov    %ss,(%esi)
 413:	00 00                	add    %al,(%eax)
 415:	8c 06                	mov    %es,(%esi)
 417:	0c 00                	or     $0x0,%al
 419:	8c 26                	mov    %fs,(%esi)
 41b:	08 00                	or     %al,(%eax)
 41d:	8c 2e                	mov    %gs,(%esi)
 41f:	04 00                	add    $0x0,%al
 421:	66 c7 06 54 00       	movw   $0x54,(%esi)
 426:	01 00                	add    %eax,(%eax)
 428:	00 00                	add    %al,(%eax)
 42a:	66 0f b7 06          	movzww (%esi),%ax
 42e:	f0 00 66 0f          	lock add %ah,0xf(%esi)
 432:	b7 c0                	mov    $0xc0,%bh
 434:	66 a3 10 00 66 0f    	mov    %ax,0xf660010
 43a:	b7 06                	mov    $0x6,%bh
 43c:	f2 00 66 0f          	repnz add %ah,0xf(%esi)
 440:	b7 c0                	mov    $0xc0,%bh
 442:	66 a3 34 00 66 0f    	mov    %ax,0xf660034
 448:	b7 06                	mov    $0x6,%bh
 44a:	f4                   	hlt    
 44b:	00 66 0f             	add    %ah,0xf(%esi)
 44e:	b7 c0                	mov    $0xc0,%bh
 450:	66 a3 38 00 66 0f    	mov    %ax,0xf660038
 456:	b7 06                	mov    $0x6,%bh
 458:	f6 00 66             	testb  $0x66,(%eax)
 45b:	0f b7 c0             	movzwl %ax,%eax
 45e:	66 a3 3c 00 66 a1    	mov    %ax,0xa166003c
 464:	38 00                	cmp    %al,(%eax)
 466:	66 c1 e0 10          	shl    $0x10,%ax
 46a:	66 89 c2             	mov    %ax,%dx
 46d:	66 a1 34 00 66 09    	mov    0x9660034,%ax
 473:	d0 67 66             	shlb   0x66(%edi)
 476:	89 45 fc             	mov    %eax,-0x4(%ebp)
 479:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 47f:	66 68 00 00          	pushw  $0x0
 483:	00 00                	add    %al,(%eax)
 485:	66 e8 fc ff          	callw  485 <_switch_content+0x116>
 489:	ff                   	(bad)  
 48a:	ff 66 83             	jmp    *-0x7d(%esi)
 48d:	c4 08                	les    (%eax),%ecx
 48f:	eb 03                	jmp    494 <_switch_content+0x125>
 491:	83 c4 02             	add    $0x2,%esp
 494:	66 a1 e0 00 67 66    	mov    0x666700e0,%ax
 49a:	8d 48 01             	lea    0x1(%eax),%ecx
 49d:	66 ba ab aa          	mov    $0xaaab,%dx
 4a1:	aa                   	stos   %al,%es:(%edi)
 4a2:	2a 66 89             	sub    -0x77(%esi),%ah
 4a5:	c8 66 f7 ea          	enter  $0xf766,$0xea
 4a9:	66 89 c8             	mov    %cx,%ax
 4ac:	66 c1 f8 1f          	sar    $0x1f,%ax
 4b0:	66 29 c2             	sub    %ax,%dx
 4b3:	66 89 d0             	mov    %dx,%ax
 4b6:	66 01 c0             	add    %ax,%ax
 4b9:	66 01 d0             	add    %dx,%ax
 4bc:	66 01 c0             	add    %ax,%ax
 4bf:	66 29 c1             	sub    %ax,%cx
 4c2:	66 89 ca             	mov    %cx,%dx
 4c5:	66 89 16             	mov    %dx,(%esi)
 4c8:	e0 00                	loopne 4ca <_switch_content+0x15b>
 4ca:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 4d0:	66 68 00 00          	pushw  $0x0
 4d4:	00 00                	add    %al,(%eax)
 4d6:	66 e8 fc ff          	callw  4d6 <_switch_content+0x167>
 4da:	ff                   	(bad)  
 4db:	ff 66 83             	jmp    *-0x7d(%esi)
 4de:	c4 08                	les    (%eax),%ecx
 4e0:	66 a1 54 00 66 83    	mov    0x83660054,%ax
 4e6:	f8                   	clc    
 4e7:	01 75 7b             	add    %esi,0x7b(%ebp)
 4ea:	66 a1 5c 00 66 85    	mov    0x8566005c,%ax
 4f0:	c0                   	(bad)  
 4f1:	75 72                	jne    565 <_switch_content+0x1f6>
 4f3:	90                   	nop
 4f4:	66 c7 06 54 00       	movw   $0x54,(%esi)
 4f9:	02 00                	add    (%eax),%al
 4fb:	00 00                	add    %al,(%eax)
 4fd:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 503:	66 68 00 00          	pushw  $0x0
 507:	00 00                	add    %al,(%eax)
 509:	66 e8 fc ff          	callw  509 <_switch_content+0x19a>
 50d:	ff                   	(bad)  
 50e:	ff 66 83             	jmp    *-0x7d(%esi)
 511:	c4 08                	les    (%eax),%ecx
 513:	66 ff 36             	pushw  (%esi)
 516:	3c 00                	cmp    $0x0,%al
 518:	66 9d                	popfw  
 51a:	66 8b 3e             	mov    (%esi),%di
 51d:	14 00                	adc    $0x0,%al
 51f:	66 8b 36             	mov    (%esi),%si
 522:	18 00                	sbb    %al,(%eax)
 524:	66 8b 2e             	mov    (%esi),%bp
 527:	1c 00                	sbb    $0x0,%al
 529:	66 8b 26             	mov    (%esi),%sp
 52c:	20 00                	and    %al,(%eax)
 52e:	8e 16                	mov    (%esi),%ss
 530:	00 00                	add    %al,(%eax)
 532:	8e 06                	mov    (%esi),%es
 534:	0c 00                	or     $0x0,%al
 536:	8e 26                	mov    (%esi),%fs
 538:	08 00                	or     %al,(%eax)
 53a:	8e 2e                	mov    (%esi),%gs
 53c:	04 00                	add    $0x0,%al
 53e:	66 a1 10 00 a3 f0    	mov    0xf0a30010,%ax
 544:	00 66 a1             	add    %ah,-0x5f(%esi)
 547:	34 00                	xor    $0x0,%al
 549:	a3 f2 00 66 a1       	mov    %eax,0xa16600f2
 54e:	38 00                	cmp    %al,(%eax)
 550:	a3 f4 00 66 a1       	mov    %eax,0xa16600f4
 555:	3c 00                	cmp    $0x0,%al
 557:	a3 f6 00 66 c7       	mov    %eax,0xc76600f6
 55c:	06                   	push   %es
 55d:	0c 01                	or     $0x1,%al
 55f:	09 00                	or     %eax,(%eax)
 561:	00 00                	add    %al,(%eax)
 563:	eb 1b                	jmp    580 <_switch_content+0x211>
 565:	e9 2c ff 66 a1       	jmp    a1670496 <_proc_exit_switch+0xa166fcc2>
 56a:	0c 01                	or     $0x1,%al
 56c:	67 ff b4 00 e4       	pushl  -0x1c00(%si)
 571:	00 00                	add    %al,(%eax)
 573:	00 66 a1             	add    %ah,-0x5f(%esi)
 576:	0c 01                	or     $0x1,%al
 578:	66 83 e8 01          	sub    $0x1,%ax
 57c:	66 a3 0c 01 66 a1    	mov    %ax,0xa166010c
 582:	0c 01                	or     $0x1,%al
 584:	66 83 f8 03          	cmp    $0x3,%ax
 588:	7f de                	jg     568 <_switch_content+0x1f9>
 58a:	66 a1 30 00 66 8b    	mov    0x8b660030,%ax
 590:	1e                   	push   %ds
 591:	24 00                	and    $0x0,%al
 593:	66 8b 0e             	mov    (%esi),%cx
 596:	2c 00                	sub    $0x0,%al
 598:	66 8b 16             	mov    (%esi),%dx
 59b:	28 00                	sub    %al,(%eax)
 59d:	66 c3                	retw   
 59f:	66 c9                	leavew 
 5a1:	66 c3                	retw   

000005a3 <_switch_content_2>:
 5a3:	66 55                	push   %bp
 5a5:	66 89 e5             	mov    %sp,%bp
 5a8:	66 83 ec 04          	sub    $0x4,%sp
 5ac:	0e                   	push   %cs
 5ad:	1f                   	pop    %ds
 5ae:	66 a3 30 00 66 89    	mov    %ax,0x89660030
 5b4:	1e                   	push   %ds
 5b5:	24 00                	and    $0x0,%al
 5b7:	66 89 0e             	mov    %cx,(%esi)
 5ba:	2c 00                	sub    $0x0,%al
 5bc:	66 89 16             	mov    %dx,(%esi)
 5bf:	28 00                	sub    %al,(%eax)
 5c1:	66 a1 10 01 66 85    	mov    0x85660110,%ax
 5c7:	c0 7f 0c 66          	sarb   $0x66,0xc(%edi)
 5cb:	a1 10 01 66 83       	mov    0x83660110,%eax
 5d0:	c0 01 66             	rolb   $0x66,(%ecx)
 5d3:	a3 10 01 66 c7       	mov    %eax,0xc7660110
 5d8:	06                   	push   %es
 5d9:	10 01                	adc    %al,(%ecx)
 5db:	00 00                	add    %al,(%eax)
 5dd:	00 00                	add    %al,(%eax)
 5df:	66 c7 06 14 01       	movw   $0x114,(%esi)
 5e4:	00 00                	add    %al,(%eax)
 5e6:	00 00                	add    %al,(%eax)
 5e8:	eb 18                	jmp    602 <_switch_content_2+0x5f>
 5ea:	66 a1 14 01 67 8f    	mov    0x8f670114,%ax
 5f0:	84 00                	test   %al,(%eax)
 5f2:	e4 00                	in     $0x0,%al
 5f4:	00 00                	add    %al,(%eax)
 5f6:	66 a1 14 01 66 83    	mov    0x83660114,%ax
 5fc:	c0 01 66             	rolb   $0x66,(%ecx)
 5ff:	a3 14 01 66 a1       	mov    %eax,0xa1660114
 604:	14 01                	adc    $0x1,%al
 606:	66 83 f8 09          	cmp    $0x9,%ax
 60a:	7e de                	jle    5ea <_switch_content_2+0x47>
 60c:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 612:	66 68 00 00          	pushw  $0x0
 616:	00 00                	add    %al,(%eax)
 618:	66 e8 fc ff          	callw  618 <_switch_content_2+0x75>
 61c:	ff                   	(bad)  
 61d:	ff 66 83             	jmp    *-0x7d(%esi)
 620:	c4 08                	les    (%eax),%ecx
 622:	66 a1 54 00 66 83    	mov    0x83660054,%ax
 628:	f8                   	clc    
 629:	02 0f                	add    (%edi),%cl
 62b:	85 94 00 66 89 3e 14 	test   %edx,0x143e8966(%eax,%eax,1)
 632:	00 66 89             	add    %ah,-0x77(%esi)
 635:	36 18 00             	sbb    %al,%ss:(%eax)
 638:	66 89 2e             	mov    %bp,(%esi)
 63b:	1c 00                	sbb    $0x0,%al
 63d:	66 89 26             	mov    %sp,(%esi)
 640:	20 00                	and    %al,(%eax)
 642:	8c 16                	mov    %ss,(%esi)
 644:	00 00                	add    %al,(%eax)
 646:	8c 06                	mov    %es,(%esi)
 648:	0c 00                	or     $0x0,%al
 64a:	8c 26                	mov    %fs,(%esi)
 64c:	08 00                	or     %al,(%eax)
 64e:	8c 2e                	mov    %gs,(%esi)
 650:	04 00                	add    $0x0,%al
 652:	66 c7 06 54 00       	movw   $0x54,(%esi)
 657:	01 00                	add    %eax,(%eax)
 659:	00 00                	add    %al,(%eax)
 65b:	66 0f b7 06          	movzww (%esi),%ax
 65f:	f0 00 66 0f          	lock add %ah,0xf(%esi)
 663:	b7 c0                	mov    $0xc0,%bh
 665:	66 a3 10 00 66 0f    	mov    %ax,0xf660010
 66b:	b7 06                	mov    $0x6,%bh
 66d:	f2 00 66 0f          	repnz add %ah,0xf(%esi)
 671:	b7 c0                	mov    $0xc0,%bh
 673:	66 a3 34 00 66 0f    	mov    %ax,0xf660034
 679:	b7 06                	mov    $0x6,%bh
 67b:	f4                   	hlt    
 67c:	00 66 0f             	add    %ah,0xf(%esi)
 67f:	b7 c0                	mov    $0xc0,%bh
 681:	66 a3 38 00 66 0f    	mov    %ax,0xf660038
 687:	b7 06                	mov    $0x6,%bh
 689:	f6 00 66             	testb  $0x66,(%eax)
 68c:	0f b7 c0             	movzwl %ax,%eax
 68f:	66 a3 3c 00 66 a1    	mov    %ax,0xa166003c
 695:	38 00                	cmp    %al,(%eax)
 697:	66 c1 e0 10          	shl    $0x10,%ax
 69b:	66 89 c2             	mov    %ax,%dx
 69e:	66 a1 34 00 66 09    	mov    0x9660034,%ax
 6a4:	d0 67 66             	shlb   0x66(%edi)
 6a7:	89 45 fc             	mov    %eax,-0x4(%ebp)
 6aa:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 6b0:	66 68 00 00          	pushw  $0x0
 6b4:	00 00                	add    %al,(%eax)
 6b6:	66 e8 fc ff          	callw  6b6 <_switch_content_2+0x113>
 6ba:	ff                   	(bad)  
 6bb:	ff 66 83             	jmp    *-0x7d(%esi)
 6be:	c4 08                	les    (%eax),%ecx
 6c0:	eb 03                	jmp    6c5 <_switch_content_2+0x122>
 6c2:	83 c4 02             	add    $0x2,%esp
 6c5:	66 a1 e0 00 67 66    	mov    0x666700e0,%ax
 6cb:	8d 48 01             	lea    0x1(%eax),%ecx
 6ce:	66 ba ab aa          	mov    $0xaaab,%dx
 6d2:	aa                   	stos   %al,%es:(%edi)
 6d3:	2a 66 89             	sub    -0x77(%esi),%ah
 6d6:	c8 66 f7 ea          	enter  $0xf766,$0xea
 6da:	66 89 c8             	mov    %cx,%ax
 6dd:	66 c1 f8 1f          	sar    $0x1f,%ax
 6e1:	66 29 c2             	sub    %ax,%dx
 6e4:	66 89 d0             	mov    %dx,%ax
 6e7:	66 01 c0             	add    %ax,%ax
 6ea:	66 01 d0             	add    %dx,%ax
 6ed:	66 01 c0             	add    %ax,%ax
 6f0:	66 29 c1             	sub    %ax,%cx
 6f3:	66 89 ca             	mov    %cx,%dx
 6f6:	66 89 16             	mov    %dx,(%esi)
 6f9:	e0 00                	loopne 6fb <_switch_content_2+0x158>
 6fb:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 701:	66 68 00 00          	pushw  $0x0
 705:	00 00                	add    %al,(%eax)
 707:	66 e8 fc ff          	callw  707 <_switch_content_2+0x164>
 70b:	ff                   	(bad)  
 70c:	ff 66 83             	jmp    *-0x7d(%esi)
 70f:	c4 08                	les    (%eax),%ecx
 711:	66 a1 54 00 66 83    	mov    0x83660054,%ax
 717:	f8                   	clc    
 718:	01 75 7b             	add    %esi,0x7b(%ebp)
 71b:	66 a1 5c 00 66 85    	mov    0x8566005c,%ax
 721:	c0                   	(bad)  
 722:	75 72                	jne    796 <_switch_content_2+0x1f3>
 724:	90                   	nop
 725:	66 c7 06 54 00       	movw   $0x54,(%esi)
 72a:	02 00                	add    (%eax),%al
 72c:	00 00                	add    %al,(%eax)
 72e:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 734:	66 68 00 00          	pushw  $0x0
 738:	00 00                	add    %al,(%eax)
 73a:	66 e8 fc ff          	callw  73a <_switch_content_2+0x197>
 73e:	ff                   	(bad)  
 73f:	ff 66 83             	jmp    *-0x7d(%esi)
 742:	c4 08                	les    (%eax),%ecx
 744:	66 ff 36             	pushw  (%esi)
 747:	3c 00                	cmp    $0x0,%al
 749:	66 9d                	popfw  
 74b:	66 8b 3e             	mov    (%esi),%di
 74e:	14 00                	adc    $0x0,%al
 750:	66 8b 36             	mov    (%esi),%si
 753:	18 00                	sbb    %al,(%eax)
 755:	66 8b 2e             	mov    (%esi),%bp
 758:	1c 00                	sbb    $0x0,%al
 75a:	66 8b 26             	mov    (%esi),%sp
 75d:	20 00                	and    %al,(%eax)
 75f:	8e 16                	mov    (%esi),%ss
 761:	00 00                	add    %al,(%eax)
 763:	8e 06                	mov    (%esi),%es
 765:	0c 00                	or     $0x0,%al
 767:	8e 26                	mov    (%esi),%fs
 769:	08 00                	or     %al,(%eax)
 76b:	8e 2e                	mov    (%esi),%gs
 76d:	04 00                	add    $0x0,%al
 76f:	66 a1 10 00 a3 f0    	mov    0xf0a30010,%ax
 775:	00 66 a1             	add    %ah,-0x5f(%esi)
 778:	34 00                	xor    $0x0,%al
 77a:	a3 f2 00 66 a1       	mov    %eax,0xa16600f2
 77f:	38 00                	cmp    %al,(%eax)
 781:	a3 f4 00 66 a1       	mov    %eax,0xa16600f4
 786:	3c 00                	cmp    $0x0,%al
 788:	a3 f6 00 66 c7       	mov    %eax,0xc76600f6
 78d:	06                   	push   %es
 78e:	14 01                	adc    $0x1,%al
 790:	09 00                	or     %eax,(%eax)
 792:	00 00                	add    %al,(%eax)
 794:	eb 1b                	jmp    7b1 <_switch_content_2+0x20e>
 796:	e9 2c ff 66 a1       	jmp    a16706c7 <_proc_exit_switch+0xa166fef3>
 79b:	14 01                	adc    $0x1,%al
 79d:	67 ff b4 00 e4       	pushl  -0x1c00(%si)
 7a2:	00 00                	add    %al,(%eax)
 7a4:	00 66 a1             	add    %ah,-0x5f(%esi)
 7a7:	14 01                	adc    $0x1,%al
 7a9:	66 83 e8 01          	sub    $0x1,%ax
 7ad:	66 a3 14 01 66 a1    	mov    %ax,0xa1660114
 7b3:	14 01                	adc    $0x1,%al
 7b5:	66 83 f8 03          	cmp    $0x3,%ax
 7b9:	7f de                	jg     799 <_switch_content_2+0x1f6>
 7bb:	66 a1 30 00 66 8b    	mov    0x8b660030,%ax
 7c1:	1e                   	push   %ds
 7c2:	24 00                	and    $0x0,%al
 7c4:	66 8b 0e             	mov    (%esi),%cx
 7c7:	2c 00                	sub    $0x0,%al
 7c9:	66 8b 16             	mov    (%esi),%dx
 7cc:	28 00                	sub    %al,(%eax)
 7ce:	66 c3                	retw   
 7d0:	66 c9                	leavew 
 7d2:	66 c3                	retw   

000007d4 <_proc_exit_switch>:
 7d4:	66 55                	push   %bp
 7d6:	66 89 e5             	mov    %sp,%bp
 7d9:	0e                   	push   %cs
 7da:	1f                   	pop    %ds
 7db:	66 a1 e0 00 67 66    	mov    0x666700e0,%ax
 7e1:	8d 48 01             	lea    0x1(%eax),%ecx
 7e4:	66 ba ab aa          	mov    $0xaaab,%dx
 7e8:	aa                   	stos   %al,%es:(%edi)
 7e9:	2a 66 89             	sub    -0x77(%esi),%ah
 7ec:	c8 66 f7 ea          	enter  $0xf766,$0xea
 7f0:	66 89 c8             	mov    %cx,%ax
 7f3:	66 c1 f8 1f          	sar    $0x1f,%ax
 7f7:	66 29 c2             	sub    %ax,%dx
 7fa:	66 89 d0             	mov    %dx,%ax
 7fd:	66 01 c0             	add    %ax,%ax
 800:	66 01 d0             	add    %dx,%ax
 803:	66 01 c0             	add    %ax,%ax
 806:	66 29 c1             	sub    %ax,%cx
 809:	66 89 ca             	mov    %cx,%dx
 80c:	66 89 16             	mov    %dx,(%esi)
 80f:	e0 00                	loopne 811 <_proc_exit_switch+0x3d>
 811:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 817:	66 68 00 00          	pushw  $0x0
 81b:	00 00                	add    %al,(%eax)
 81d:	66 e8 fc ff          	callw  81d <_proc_exit_switch+0x49>
 821:	ff                   	(bad)  
 822:	ff 66 83             	jmp    *-0x7d(%esi)
 825:	c4 08                	les    (%eax),%ecx
 827:	66 a1 54 00 66 83    	mov    0x83660054,%ax
 82d:	f8                   	clc    
 82e:	01 75 7b             	add    %esi,0x7b(%ebp)
 831:	66 a1 5c 00 66 85    	mov    0x8566005c,%ax
 837:	c0                   	(bad)  
 838:	75 72                	jne    8ac <_proc_exit_switch+0xd8>
 83a:	90                   	nop
 83b:	66 c7 06 54 00       	movw   $0x54,(%esi)
 840:	02 00                	add    (%eax),%al
 842:	00 00                	add    %al,(%eax)
 844:	66 a1 e0 00 66 50    	mov    0x506600e0,%ax
 84a:	66 68 00 00          	pushw  $0x0
 84e:	00 00                	add    %al,(%eax)
 850:	66 e8 fc ff          	callw  850 <_proc_exit_switch+0x7c>
 854:	ff                   	(bad)  
 855:	ff 66 83             	jmp    *-0x7d(%esi)
 858:	c4 08                	les    (%eax),%ecx
 85a:	66 ff 36             	pushw  (%esi)
 85d:	3c 00                	cmp    $0x0,%al
 85f:	66 9d                	popfw  
 861:	66 8b 3e             	mov    (%esi),%di
 864:	14 00                	adc    $0x0,%al
 866:	66 8b 36             	mov    (%esi),%si
 869:	18 00                	sbb    %al,(%eax)
 86b:	66 8b 2e             	mov    (%esi),%bp
 86e:	1c 00                	sbb    $0x0,%al
 870:	66 8b 26             	mov    (%esi),%sp
 873:	20 00                	and    %al,(%eax)
 875:	8e 16                	mov    (%esi),%ss
 877:	00 00                	add    %al,(%eax)
 879:	8e 06                	mov    (%esi),%es
 87b:	0c 00                	or     $0x0,%al
 87d:	8e 26                	mov    (%esi),%fs
 87f:	08 00                	or     %al,(%eax)
 881:	8e 2e                	mov    (%esi),%gs
 883:	04 00                	add    $0x0,%al
 885:	66 a1 3c 00 a3 f6    	mov    0xf6a3003c,%ax
 88b:	00 66 a1             	add    %ah,-0x5f(%esi)
 88e:	38 00                	cmp    %al,(%eax)
 890:	a3 f4 00 66 a1       	mov    %eax,0xa16600f4
 895:	34 00                	xor    $0x0,%al
 897:	a3 f2 00 66 a1       	mov    %eax,0xa16600f2
 89c:	10 00                	adc    %al,(%eax)
 89e:	a3 f0 00 66 c7       	mov    %eax,0xc76600f0
 8a3:	06                   	push   %es
 8a4:	18 01                	sbb    %al,(%ecx)
 8a6:	09 00                	or     %eax,(%eax)
 8a8:	00 00                	add    %al,(%eax)
 8aa:	eb 1b                	jmp    8c7 <_proc_exit_switch+0xf3>
 8ac:	e9 2c ff 66 a1       	jmp    a16707dd <_proc_exit_switch+0xa1670009>
 8b1:	18 01                	sbb    %al,(%ecx)
 8b3:	67 ff b4 00 e4       	pushl  -0x1c00(%si)
 8b8:	00 00                	add    %al,(%eax)
 8ba:	00 66 a1             	add    %ah,-0x5f(%esi)
 8bd:	18 01                	sbb    %al,(%ecx)
 8bf:	66 83 e8 01          	sub    $0x1,%ax
 8c3:	66 a3 18 01 66 a1    	mov    %ax,0xa1660118
 8c9:	18 01                	sbb    %al,(%ecx)
 8cb:	66 83 f8 03          	cmp    $0x3,%ax
 8cf:	7f de                	jg     8af <_proc_exit_switch+0xdb>
 8d1:	66 a1 30 00 66 8b    	mov    0x8b660030,%ax
 8d7:	1e                   	push   %ds
 8d8:	24 00                	and    $0x0,%al
 8da:	66 8b 0e             	mov    (%esi),%cx
 8dd:	2c 00                	sub    $0x0,%al
 8df:	66 8b 16             	mov    (%esi),%dx
 8e2:	28 00                	sub    %al,(%eax)
 8e4:	66 c3                	retw   
 8e6:	66 c9                	leavew 
 8e8:	66 c3                	retw   

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
  64:	4c                   	dec    %esp
  65:	01 00                	add    %eax,(%eax)
  67:	00 00                	add    %al,(%eax)
  69:	42                   	inc    %edx
  6a:	0e                   	push   %cs
  6b:	08 85 02 43 0d 05    	or     %al,0x50d4302(%ebp)
  71:	03 45 01             	add    0x1(%ebp),%eax
  74:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
  77:	04 1c                	add    $0x1c,%al
  79:	00 00                	add    %al,(%eax)
  7b:	00 7c 00 00          	add    %bh,0x0(%eax,%eax,1)
  7f:	00 aa 02 00 00 3e    	add    %ch,0x3e000002(%edx)
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
  9f:	00 e8                	add    %ch,%al
  a1:	02 00                	add    (%eax),%al
  a3:	00 87 00 00 00 00    	add    %al,0x0(%edi)
  a9:	42                   	inc    %edx
  aa:	0e                   	push   %cs
  ab:	08 85 02 43 0d 05    	or     %al,0x50d4302(%ebp)
  b1:	02 80 c5 0c 04 04    	add    0x4040cc5(%eax),%al
  b7:	00 1c 00             	add    %bl,(%eax,%eax,1)
  ba:	00 00                	add    %al,(%eax)
  bc:	bc 00 00 00 6f       	mov    $0x6f000000,%esp
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
  df:	00 a3 05 00 00 31    	add    %ah,0x31000005(%ebx)
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
  ff:	00 d4                	add    %dl,%ah
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
