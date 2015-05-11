
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
 1b5:	e9 ef 00 66 89       	jmp    896602a9 <_proc_exit_switch+0x8965fad4>
 1ba:	c0 66 89 26          	shlb   $0x26,-0x77(%esi)
 1be:	a0 00 66 89 3e       	mov    0x3e896600,%al
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
 215:	66 ff 36             	pushw  (%esi)
 218:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
 219:	02 66 8f             	add    -0x71(%esi),%ah
 21c:	06                   	push   %es
 21d:	00 01                	add    %al,(%ecx)
 21f:	66 a1 00 01 66 a3    	mov    0xa3660100,%ax
 225:	b4 00                	mov    $0x0,%ah
 227:	66 a1 3c 00 66 a3    	mov    0xa366003c,%ax
 22d:	bc 00 66 c7 06       	mov    $0x6c76600,%esp
 232:	d4 00                	aam    $0x0
 234:	01 00                	add    %eax,(%eax)
 236:	00 00                	add    %al,(%eax)
 238:	c6 06 c0             	movb   $0xc0,(%esi)
 23b:	00 00                	add    %al,(%eax)
 23d:	66 c7 06 b0 00       	movw   $0xb0,(%esi)
 242:	00 00                	add    %al,(%eax)
 244:	00 00                	add    %al,(%eax)
 246:	66 a1 fc 00 66 83    	mov    0x836600fc,%ax
 24c:	c0 08 66             	rorb   $0x66,(%eax)
 24f:	c1 e0 0a             	shl    $0xa,%eax
 252:	66 a3 80 00 66 a1    	mov    %ax,0xa1660080
 258:	80 00 66             	addb   $0x66,(%eax)
 25b:	c1 e0 10             	shl    $0x10,%eax
 25e:	66 89 c2             	mov    %ax,%dx
 261:	66 a1 00 00 66 c1    	mov    0xc1660000,%ax
 267:	e0 10                	loopne 279 <_do_fork+0x11b>
 269:	66 68 00 05          	pushw  $0x500
 26d:	00 00                	add    %al,(%eax)
 26f:	66 52                	push   %dx
 271:	66 50                	push   %ax
 273:	66 e8 fc ff          	callw  273 <_do_fork+0x115>
 277:	ff                   	(bad)  
 278:	ff 66 83             	jmp    *-0x7d(%esi)
 27b:	c4 0c 66             	les    (%esi,%eiz,2),%ecx
 27e:	a1 fc 00 66 50       	mov    0x506600fc,%eax
 283:	66 68 80 00          	pushw  $0x80
 287:	00 00                	add    %al,(%eax)
 289:	66 e8 fc ff          	callw  289 <_do_fork+0x12b>
 28d:	ff                   	(bad)  
 28e:	ff 66 83             	jmp    *-0x7d(%esi)
 291:	c4 08                	les    (%eax),%ecx
 293:	66 68 80 00          	pushw  $0x80
 297:	00 00                	add    %al,(%eax)
 299:	66 e8 fc ff          	callw  299 <_do_fork+0x13b>
 29d:	ff                   	(bad)  
 29e:	ff 66 83             	jmp    *-0x7d(%esi)
 2a1:	c4 04 66             	les    (%esi,%eiz,2),%eax
 2a4:	a1 d0 00 66 c9       	mov    0xc96600d0,%eax

000002a7 <child_proc>:
 2a7:	66 c9                	leavew 
 2a9:	66 c3                	retw   
