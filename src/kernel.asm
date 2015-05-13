00000000  8CC8              mov ax,cs
00000002  8ED8              mov ds,ax
00000004  8EC0              mov es,ax
00000006  EA0B000010        jmp word 0x1000:0xb
0000000B  6655              push ebp
0000000D  6689E5            mov ebp,esp
00000010  66E829000000      call dword 0x3f
00000016  66E842000000      call dword 0x5e
0000001C  666A00            o32 push byte +0x0
0000001F  666A5A            o32 push byte +0x5a
00000022  666A14            o32 push byte +0x14
00000025  66681D1B0000      push dword 0x1b1d
0000002B  66E899150000      call dword 0x15ca
00000031  6683C410          add esp,byte +0x10
00000035  66E8A40A0000      call dword 0xadf
0000003B  66C9              o32 leave
0000003D  66C3              o32 ret
0000003F  6655              push ebp
00000041  6689E5            mov ebp,esp
00000044  66E883100000      call dword 0x10cd
0000004A  66A1A022          mov eax,[0x22a0]
0000004E  6650              push eax
00000050  66E8F30A0000      call dword 0xb49
00000056  6683C404          add esp,byte +0x4
0000005A  66C9              o32 leave
0000005C  66C3              o32 ret
0000005E  6655              push ebp
00000060  6689E5            mov ebp,esp
00000063  6668EB090000      push dword 0x9eb
00000069  666A08            o32 push byte +0x8
0000006C  66E83E090000      call dword 0x9b0
00000072  6683C408          add esp,byte +0x8
00000076  66680A0A0000      push dword 0xa0a
0000007C  666A09            o32 push byte +0x9
0000007F  66E82B090000      call dword 0x9b0
00000085  6683C408          add esp,byte +0x8
00000089  6668860A0000      push dword 0xa86
0000008F  666A1C            o32 push byte +0x1c
00000092  66E818090000      call dword 0x9b0
00000098  6683C408          add esp,byte +0x8
0000009C  6668A50A0000      push dword 0xaa5
000000A2  666A71            o32 push byte +0x71
000000A5  66E805090000      call dword 0x9b0
000000AB  6683C408          add esp,byte +0x8
000000AF  6668C40A0000      push dword 0xac4
000000B5  666A72            o32 push byte +0x72
000000B8  66E8F2080000      call dword 0x9b0
000000BE  6683C408          add esp,byte +0x8
000000C2  6668480A0000      push dword 0xa48
000000C8  666A73            o32 push byte +0x73
000000CB  66E8DF080000      call dword 0x9b0
000000D1  6683C408          add esp,byte +0x8
000000D5  6668290A0000      push dword 0xa29
000000DB  666A74            o32 push byte +0x74
000000DE  66E8CC080000      call dword 0x9b0
000000E4  6683C408          add esp,byte +0x8
000000E8  6668670A0000      push dword 0xa67
000000EE  666A75            o32 push byte +0x75
000000F1  66E8B9080000      call dword 0x9b0
000000F7  6683C408          add esp,byte +0x8
000000FB  66C9              o32 leave
000000FD  66C3              o32 ret
000000FF  6655              push ebp
00000101  6689E5            mov ebp,esp
00000104  660FB606BA24      movzx eax,byte [0x24ba]
0000010A  3C01              cmp al,0x1
0000010C  7F1B              jg 0x129
0000010E  666A4F            o32 push byte +0x4f
00000111  666A00            o32 push byte +0x0
00000114  666A07            o32 push byte +0x7
00000117  6668C0000000      push dword 0xc0
0000011D  66E83A130000      call dword 0x145d
00000123  6683C410          add esp,byte +0x10
00000127  EB63              jmp short 0x18c
00000129  660FB606BA24      movzx eax,byte [0x24ba]
0000012F  3C03              cmp al,0x3
00000131  7F1B              jg 0x14e
00000133  666A4F            o32 push byte +0x4f
00000136  666A00            o32 push byte +0x0
00000139  666A07            o32 push byte +0x7
0000013C  6668DA000000      push dword 0xda
00000142  66E815130000      call dword 0x145d
00000148  6683C410          add esp,byte +0x10
0000014C  EB3E              jmp short 0x18c
0000014E  660FB606BA24      movzx eax,byte [0x24ba]
00000154  3C05              cmp al,0x5
00000156  7F1B              jg 0x173
00000158  666A4F            o32 push byte +0x4f
0000015B  666A00            o32 push byte +0x0
0000015E  666A07            o32 push byte +0x7
00000161  6668BF000000      push dword 0xbf
00000167  66E8F0120000      call dword 0x145d
0000016D  6683C410          add esp,byte +0x10
00000171  EB19              jmp short 0x18c
00000173  666A4F            o32 push byte +0x4f
00000176  666A00            o32 push byte +0x0
00000179  666A07            o32 push byte +0x7
0000017C  6668D9000000      push dword 0xd9
00000182  66E8D5120000      call dword 0x145d
00000188  6683C410          add esp,byte +0x10
0000018C  660FB606BA24      movzx eax,byte [0x24ba]
00000192  660FBEC0          movsx eax,al
00000196  67668D5001        lea edx,[eax+0x1]
0000019B  6689D0            mov eax,edx
0000019E  66C1F81F          sar eax,byte 0x1f
000001A2  66C1E81D          shr eax,byte 0x1d
000001A6  6601C2            add edx,eax
000001A9  6683E207          and edx,byte +0x7
000001AD  6629C2            sub edx,eax
000001B0  6689D0            mov eax,edx
000001B3  A2BA24            mov [0x24ba],al
000001B6  66C9              o32 leave
000001B8  66C3              o32 ret
000001BA  6655              push ebp
000001BC  6689E5            mov ebp,esp
000001BF  6683EC04          sub esp,byte +0x4
000001C3  6766C745FC201B00  mov dword [ebp-0x4],0x1b20
         -00
000001CC  660FB606A822      movzx eax,byte [0x22a8]
000001D2  6683E801          sub eax,byte +0x1
000001D6  A2A822            mov [0x22a8],al
000001D9  660FB606A822      movzx eax,byte [0x22a8]
000001DF  84C0              test al,al
000001E1  7576              jnz 0x259
000001E3  660FB606A922      movzx eax,byte [0x22a9]
000001E9  6683C001          add eax,byte +0x1
000001ED  6683E00F          and eax,byte +0xf
000001F1  A2A922            mov [0x22a9],al
000001F4  660FB606A922      movzx eax,byte [0x22a9]
000001FA  660FB6D0          movzx edx,al
000001FE  660FB606BB24      movzx eax,byte [0x24bb]
00000204  6689C1            mov ecx,eax
00000207  6683C101          add ecx,byte +0x1
0000020B  880EBB24          mov [0x24bb],cl
0000020F  660FBEC8          movsx ecx,al
00000213  67668B45FC        mov eax,[ebp-0x4]
00000218  6601C8            add eax,ecx
0000021B  67660FB600        movzx eax,byte [eax]
00000220  660FBEC0          movsx eax,al
00000224  666A4F            o32 push byte +0x4f
00000227  666A18            o32 push byte +0x18
0000022A  6652              push edx
0000022C  6650              push eax
0000022E  66E829120000      call dword 0x145d
00000234  6683C410          add esp,byte +0x10
00000238  660FB606BB24      movzx eax,byte [0x24bb]
0000023E  6689C2            mov edx,eax
00000241  C0FA07            sar dl,byte 0x7
00000244  C0EA06            shr dl,byte 0x6
00000247  6601D0            add eax,edx
0000024A  6683E003          and eax,byte +0x3
0000024E  6629D0            sub eax,edx
00000251  A2BB24            mov [0x24bb],al
00000254  C606A82205        mov byte [0x22a8],0x5
00000259  66C9              o32 leave
0000025B  66C3              o32 ret
0000025D  6655              push ebp
0000025F  6689E5            mov ebp,esp
00000262  66C706BC24000000  mov dword [0x24bc],0x0
         -00
0000026B  EB2D              jmp short 0x29a
0000026D  66A1BC24          mov eax,[0x24bc]
00000271  6650              push eax
00000273  666840240000      push dword 0x2440
00000279  66E80B120000      call dword 0x148a
0000027F  6683C408          add esp,byte +0x8
00000283  66A19424          mov eax,[0x2494]
00000287  6685C0            test eax,eax
0000028A  7502              jnz 0x28e
0000028C  EB16              jmp short 0x2a4
0000028E  66A1BC24          mov eax,[0x24bc]
00000292  6683C001          add eax,byte +0x1
00000296  66A3BC24          mov [0x24bc],eax
0000029A  66A1BC24          mov eax,[0x24bc]
0000029E  6683F807          cmp eax,byte +0x7
000002A2  7EC9              jng 0x26d
000002A4  66A1BC24          mov eax,[0x24bc]
000002A8  6683F807          cmp eax,byte +0x7
000002AC  7E09              jng 0x2b7
000002AE  66B8FFFFFFFF      mov eax,0xffffffff
000002B4  E9DF00            jmp word 0x396
000002B7  6689266024        mov [0x2460],esp
000002BC  66893E5424        mov [0x2454],edi
000002C1  6689365824        mov [0x2458],esi
000002C6  66892E5C24        mov [0x245c],ebp
000002CB  66A37024          mov [0x2470],eax
000002CF  66891E6424        mov [0x2464],ebx
000002D4  66890E6C24        mov [0x246c],ecx
000002D9  6689166824        mov [0x2468],edx
000002DE  8C164024          mov [0x2440],ss
000002E2  8C064C24          mov [0x244c],es
000002E6  8C264824          mov [0x2448],fs
000002EA  8C2E4424          mov [0x2444],gs
000002EE  8C0E7824          mov [0x2478],cs
000002F2  8C1E5024          mov [0x2450],ds
000002F6  66E8F8110000      call dword 0x14f4
000002FC  66A39024          mov [0x2490],eax
00000300  66A1A024          mov eax,[0x24a0]
00000304  66A39824          mov [0x2498],eax
00000308  66C7069C24000000  mov dword [0x249c],0x0
         -00
00000311  66C7067424C50D00  mov dword [0x2474],0xdc5
         -00
0000031A  66A1FC23          mov eax,[0x23fc]
0000031E  66A37C24          mov [0x247c],eax
00000322  66C7069424010000  mov dword [0x2494],0x1
         -00
0000032B  C606802400        mov byte [0x2480],0x0
00000330  66C7067024000000  mov dword [0x2470],0x0
         -00
00000339  66A1BC24          mov eax,[0x24bc]
0000033D  6683C008          add eax,byte +0x8
00000341  66C1E00A          shl eax,byte 0xa
00000345  66A34024          mov [0x2440],eax
00000349  66A16024          mov eax,[0x2460]
0000034D  6683C002          add eax,byte +0x2
00000351  66A36024          mov [0x2460],eax
00000355  66A14024          mov eax,[0x2440]
00000359  66C1E010          shl eax,byte 0x10
0000035D  6689C2            mov edx,eax
00000360  66A1C023          mov eax,[0x23c0]
00000364  66C1E010          shl eax,byte 0x10
00000368  666800050000      push dword 0x500
0000036E  6652              push edx
00000370  6650              push eax
00000372  66E8D3110000      call dword 0x154b
00000378  6683C40C          add esp,byte +0xc
0000037C  66A1BC24          mov eax,[0x24bc]
00000380  6650              push eax
00000382  666840240000      push dword 0x2440
00000388  66E831110000      call dword 0x14bf
0000038E  6683C408          add esp,byte +0x8
00000392  66A19024          mov eax,[0x2490]
00000396  66C9              o32 leave
00000398  66C3              o32 ret
0000039A  6655              push ebp
0000039C  6689E5            mov ebp,esp
0000039F  66A1A024          mov eax,[0x24a0]
000003A3  6650              push eax
000003A5  6668C0230000      push dword 0x23c0
000003AB  66E8D9100000      call dword 0x148a
000003B1  6683C408          add esp,byte +0x8
000003B5  66C7061C24010000  mov dword [0x241c],0x1
         -00
000003BE  66A1A024          mov eax,[0x24a0]
000003C2  6650              push eax
000003C4  6668C0230000      push dword 0x23c0
000003CA  66E8EF100000      call dword 0x14bf
000003D0  6683C408          add esp,byte +0x8
000003D4  66C9              o32 leave
000003D6  66C3              o32 ret
000003D8  6655              push ebp
000003DA  6689E5            mov ebp,esp
000003DD  6683EC04          sub esp,byte +0x4
000003E1  67668B4508        mov eax,[ebp+0x8]
000003E6  678845FC          mov [ebp-0x4],al
000003EA  66C7061424000000  mov dword [0x2414],0x0
         -00
000003F3  66A1A024          mov eax,[0x24a0]
000003F7  6650              push eax
000003F9  6668C0230000      push dword 0x23c0
000003FF  66E8BA100000      call dword 0x14bf
00000405  6683C408          add esp,byte +0x8
00000409  66A11824          mov eax,[0x2418]
0000040D  6685C0            test eax,eax
00000410  7849              js 0x45b
00000412  66A11824          mov eax,[0x2418]
00000416  6683F807          cmp eax,byte +0x7
0000041A  7F3F              jg 0x45b
0000041C  66A11824          mov eax,[0x2418]
00000420  6650              push eax
00000422  666840240000      push dword 0x2440
00000428  66E85C100000      call dword 0x148a
0000042E  6683C408          add esp,byte +0x8
00000432  66C7069C24000000  mov dword [0x249c],0x0
         -00
0000043B  67660FBE45FC      movsx eax,byte [ebp-0x4]
00000441  66A37024          mov [0x2470],eax
00000445  66A11824          mov eax,[0x2418]
00000449  6650              push eax
0000044B  666840240000      push dword 0x2440
00000451  66E868100000      call dword 0x14bf
00000457  6683C408          add esp,byte +0x8
0000045B  66C9              o32 leave
0000045D  66C3              o32 ret
0000045F  6655              push ebp
00000461  6689E5            mov ebp,esp
00000464  6683EC04          sub esp,byte +0x4
00000468  66A3F023          mov [0x23f0],eax
0000046C  66891EE423        mov [0x23e4],ebx
00000471  66890EEC23        mov [0x23ec],ecx
00000476  668916E823        mov [0x23e8],edx
0000047B  66A1C824          mov eax,[0x24c8]
0000047F  6685C0            test eax,eax
00000482  7F0F              jg 0x493
00000484  66A1C824          mov eax,[0x24c8]
00000488  6683C001          add eax,byte +0x1
0000048C  66A3C824          mov [0x24c8],eax
00000490  E9E901            jmp word 0x67c
00000493  66C706C824000000  mov dword [0x24c8],0x0
         -00
0000049C  66C706CC24000000  mov dword [0x24cc],0x0
         -00
000004A5  EB18              jmp short 0x4bf
000004A7  66A1CC24          mov eax,[0x24cc]
000004AB  678F8400A4240000  pop word [dword eax+eax+0x24a4]
000004B3  66A1CC24          mov eax,[0x24cc]
000004B7  6683C001          add eax,byte +0x1
000004BB  66A3CC24          mov [0x24cc],eax
000004BF  66A1CC24          mov eax,[0x24cc]
000004C3  6683F809          cmp eax,byte +0x9
000004C7  7EDE              jng 0x4a7
000004C9  66A1A024          mov eax,[0x24a0]
000004CD  6650              push eax
000004CF  6668C0230000      push dword 0x23c0
000004D5  66E8AF0F0000      call dword 0x148a
000004DB  6683C408          add esp,byte +0x8
000004DF  66A11424          mov eax,[0x2414]
000004E3  6683F802          cmp eax,byte +0x2
000004E7  0F859400          jnz word 0x57f
000004EB  66893ED423        mov [0x23d4],edi
000004F0  668936D823        mov [0x23d8],esi
000004F5  66892EDC23        mov [0x23dc],ebp
000004FA  668926E023        mov [0x23e0],esp
000004FF  8C16C023          mov [0x23c0],ss
00000503  8C06CC23          mov [0x23cc],es
00000507  8C26C823          mov [0x23c8],fs
0000050B  8C2EC423          mov [0x23c4],gs
0000050F  66C7061424010000  mov dword [0x2414],0x1
         -00
00000518  660FB706B024      movzx eax,word [0x24b0]
0000051E  660FB7C0          movzx eax,ax
00000522  66A3D023          mov [0x23d0],eax
00000526  660FB706B224      movzx eax,word [0x24b2]
0000052C  660FB7C0          movzx eax,ax
00000530  66A3F423          mov [0x23f4],eax
00000534  660FB706B424      movzx eax,word [0x24b4]
0000053A  660FB7C0          movzx eax,ax
0000053E  66A3F823          mov [0x23f8],eax
00000542  660FB706B624      movzx eax,word [0x24b6]
00000548  660FB7C0          movzx eax,ax
0000054C  66A3FC23          mov [0x23fc],eax
00000550  66A1F823          mov eax,[0x23f8]
00000554  66C1E010          shl eax,byte 0x10
00000558  6689C2            mov edx,eax
0000055B  66A1F423          mov eax,[0x23f4]
0000055F  6609D0            or eax,edx
00000562  67668945FC        mov [ebp-0x4],eax
00000567  66A1A024          mov eax,[0x24a0]
0000056B  6650              push eax
0000056D  6668C0230000      push dword 0x23c0
00000573  66E8460F0000      call dword 0x14bf
00000579  6683C408          add esp,byte +0x8
0000057D  EB03              jmp short 0x582
0000057F  83C402            add sp,byte +0x2
00000582  66A1A024          mov eax,[0x24a0]
00000586  67668D5001        lea edx,[eax+0x1]
0000058B  6689D0            mov eax,edx
0000058E  66C1F81F          sar eax,byte 0x1f
00000592  66C1E81D          shr eax,byte 0x1d
00000596  6601C2            add edx,eax
00000599  6683E207          and edx,byte +0x7
0000059D  6629C2            sub edx,eax
000005A0  6689D0            mov eax,edx
000005A3  66A3A024          mov [0x24a0],eax
000005A7  66A1A024          mov eax,[0x24a0]
000005AB  6650              push eax
000005AD  6668C0230000      push dword 0x23c0
000005B3  66E8D10E0000      call dword 0x148a
000005B9  6683C408          add esp,byte +0x8
000005BD  66A11424          mov eax,[0x2414]
000005C1  6683F801          cmp eax,byte +0x1
000005C5  757B              jnz 0x642
000005C7  66A11C24          mov eax,[0x241c]
000005CB  6685C0            test eax,eax
000005CE  7572              jnz 0x642
000005D0  90                nop
000005D1  66C7061424020000  mov dword [0x2414],0x2
         -00
000005DA  66A1A024          mov eax,[0x24a0]
000005DE  6650              push eax
000005E0  6668C0230000      push dword 0x23c0
000005E6  66E8D30E0000      call dword 0x14bf
000005EC  6683C408          add esp,byte +0x8
000005F0  66FF36FC23        push dword [0x23fc]
000005F5  669D              popfd
000005F7  668B3ED423        mov edi,[0x23d4]
000005FC  668B36D823        mov esi,[0x23d8]
00000601  668B2EDC23        mov ebp,[0x23dc]
00000606  668B26E023        mov esp,[0x23e0]
0000060B  8E16C023          mov ss,[0x23c0]
0000060F  8E06CC23          mov es,[0x23cc]
00000613  8E26C823          mov fs,[0x23c8]
00000617  8E2EC423          mov gs,[0x23c4]
0000061B  66A1D023          mov eax,[0x23d0]
0000061F  A3B024            mov [0x24b0],ax
00000622  66A1F423          mov eax,[0x23f4]
00000626  A3B224            mov [0x24b2],ax
00000629  66A1F823          mov eax,[0x23f8]
0000062D  A3B424            mov [0x24b4],ax
00000630  66A1FC23          mov eax,[0x23fc]
00000634  A3B624            mov [0x24b6],ax
00000637  66C706CC24090000  mov dword [0x24cc],0x9
         -00
00000640  EB1B              jmp short 0x65d
00000642  E93DFF            jmp word 0x582
00000645  66A1CC24          mov eax,[0x24cc]
00000649  67FFB400A4240000  push word [dword eax+eax+0x24a4]
00000651  66A1CC24          mov eax,[0x24cc]
00000655  6683E801          sub eax,byte +0x1
00000659  66A3CC24          mov [0x24cc],eax
0000065D  66A1CC24          mov eax,[0x24cc]
00000661  6683F803          cmp eax,byte +0x3
00000665  7FDE              jg 0x645
00000667  66A1F023          mov eax,[0x23f0]
0000066B  668B1EE423        mov ebx,[0x23e4]
00000670  668B0EEC23        mov ecx,[0x23ec]
00000675  668B16E823        mov edx,[0x23e8]
0000067A  66C3              o32 ret
0000067C  66C9              o32 leave
0000067E  66C3              o32 ret
00000680  6655              push ebp
00000682  6689E5            mov ebp,esp
00000685  6683EC04          sub esp,byte +0x4
00000689  66A3F023          mov [0x23f0],eax
0000068D  66891EE423        mov [0x23e4],ebx
00000692  66890EEC23        mov [0x23ec],ecx
00000697  668916E823        mov [0x23e8],edx
0000069C  66A1D024          mov eax,[0x24d0]
000006A0  6685C0            test eax,eax
000006A3  7F0C              jg 0x6b1
000006A5  66A1D024          mov eax,[0x24d0]
000006A9  6683C001          add eax,byte +0x1
000006AD  66A3D024          mov [0x24d0],eax
000006B1  66C706D024000000  mov dword [0x24d0],0x0
         -00
000006BA  66C706D424000000  mov dword [0x24d4],0x0
         -00
000006C3  EB18              jmp short 0x6dd
000006C5  66A1D424          mov eax,[0x24d4]
000006C9  678F8400A4240000  pop word [dword eax+eax+0x24a4]
000006D1  66A1D424          mov eax,[0x24d4]
000006D5  6683C001          add eax,byte +0x1
000006D9  66A3D424          mov [0x24d4],eax
000006DD  66A1D424          mov eax,[0x24d4]
000006E1  6683F809          cmp eax,byte +0x9
000006E5  7EDE              jng 0x6c5
000006E7  66A1A024          mov eax,[0x24a0]
000006EB  6650              push eax
000006ED  6668C0230000      push dword 0x23c0
000006F3  66E8910D0000      call dword 0x148a
000006F9  6683C408          add esp,byte +0x8
000006FD  66A11424          mov eax,[0x2414]
00000701  6683F802          cmp eax,byte +0x2
00000705  0F859400          jnz word 0x79d
00000709  66893ED423        mov [0x23d4],edi
0000070E  668936D823        mov [0x23d8],esi
00000713  66892EDC23        mov [0x23dc],ebp
00000718  668926E023        mov [0x23e0],esp
0000071D  8C16C023          mov [0x23c0],ss
00000721  8C06CC23          mov [0x23cc],es
00000725  8C26C823          mov [0x23c8],fs
00000729  8C2EC423          mov [0x23c4],gs
0000072D  66C7061424010000  mov dword [0x2414],0x1
         -00
00000736  660FB706B024      movzx eax,word [0x24b0]
0000073C  660FB7C0          movzx eax,ax
00000740  66A3D023          mov [0x23d0],eax
00000744  660FB706B224      movzx eax,word [0x24b2]
0000074A  660FB7C0          movzx eax,ax
0000074E  66A3F423          mov [0x23f4],eax
00000752  660FB706B424      movzx eax,word [0x24b4]
00000758  660FB7C0          movzx eax,ax
0000075C  66A3F823          mov [0x23f8],eax
00000760  660FB706B624      movzx eax,word [0x24b6]
00000766  660FB7C0          movzx eax,ax
0000076A  66A3FC23          mov [0x23fc],eax
0000076E  66A1F823          mov eax,[0x23f8]
00000772  66C1E010          shl eax,byte 0x10
00000776  6689C2            mov edx,eax
00000779  66A1F423          mov eax,[0x23f4]
0000077D  6609D0            or eax,edx
00000780  67668945FC        mov [ebp-0x4],eax
00000785  66A1A024          mov eax,[0x24a0]
00000789  6650              push eax
0000078B  6668C0230000      push dword 0x23c0
00000791  66E8280D0000      call dword 0x14bf
00000797  6683C408          add esp,byte +0x8
0000079B  EB03              jmp short 0x7a0
0000079D  83C402            add sp,byte +0x2
000007A0  66A1A024          mov eax,[0x24a0]
000007A4  67668D5001        lea edx,[eax+0x1]
000007A9  6689D0            mov eax,edx
000007AC  66C1F81F          sar eax,byte 0x1f
000007B0  66C1E81D          shr eax,byte 0x1d
000007B4  6601C2            add edx,eax
000007B7  6683E207          and edx,byte +0x7
000007BB  6629C2            sub edx,eax
000007BE  6689D0            mov eax,edx
000007C1  66A3A024          mov [0x24a0],eax
000007C5  66A1A024          mov eax,[0x24a0]
000007C9  6650              push eax
000007CB  6668C0230000      push dword 0x23c0
000007D1  66E8B30C0000      call dword 0x148a
000007D7  6683C408          add esp,byte +0x8
000007DB  66A11424          mov eax,[0x2414]
000007DF  6683F801          cmp eax,byte +0x1
000007E3  757B              jnz 0x860
000007E5  66A11C24          mov eax,[0x241c]
000007E9  6685C0            test eax,eax
000007EC  7572              jnz 0x860
000007EE  90                nop
000007EF  66C7061424020000  mov dword [0x2414],0x2
         -00
000007F8  66A1A024          mov eax,[0x24a0]
000007FC  6650              push eax
000007FE  6668C0230000      push dword 0x23c0
00000804  66E8B50C0000      call dword 0x14bf
0000080A  6683C408          add esp,byte +0x8
0000080E  66FF36FC23        push dword [0x23fc]
00000813  669D              popfd
00000815  668B3ED423        mov edi,[0x23d4]
0000081A  668B36D823        mov esi,[0x23d8]
0000081F  668B2EDC23        mov ebp,[0x23dc]
00000824  668B26E023        mov esp,[0x23e0]
00000829  8E16C023          mov ss,[0x23c0]
0000082D  8E06CC23          mov es,[0x23cc]
00000831  8E26C823          mov fs,[0x23c8]
00000835  8E2EC423          mov gs,[0x23c4]
00000839  66A1D023          mov eax,[0x23d0]
0000083D  A3B024            mov [0x24b0],ax
00000840  66A1F423          mov eax,[0x23f4]
00000844  A3B224            mov [0x24b2],ax
00000847  66A1F823          mov eax,[0x23f8]
0000084B  A3B424            mov [0x24b4],ax
0000084E  66A1FC23          mov eax,[0x23fc]
00000852  A3B624            mov [0x24b6],ax
00000855  66C706D424090000  mov dword [0x24d4],0x9
         -00
0000085E  EB1B              jmp short 0x87b
00000860  E93DFF            jmp word 0x7a0
00000863  66A1D424          mov eax,[0x24d4]
00000867  67FFB400A4240000  push word [dword eax+eax+0x24a4]
0000086F  66A1D424          mov eax,[0x24d4]
00000873  6683E801          sub eax,byte +0x1
00000877  66A3D424          mov [0x24d4],eax
0000087B  66A1D424          mov eax,[0x24d4]
0000087F  6683F803          cmp eax,byte +0x3
00000883  7FDE              jg 0x863
00000885  66A1F023          mov eax,[0x23f0]
00000889  668B1EE423        mov ebx,[0x23e4]
0000088E  668B0EEC23        mov ecx,[0x23ec]
00000893  668B16E823        mov edx,[0x23e8]
00000898  66C3              o32 ret
0000089A  66C9              o32 leave
0000089C  66C3              o32 ret
0000089E  6655              push ebp
000008A0  6689E5            mov ebp,esp
000008A3  66A1A024          mov eax,[0x24a0]
000008A7  67668D5001        lea edx,[eax+0x1]
000008AC  6689D0            mov eax,edx
000008AF  66C1F81F          sar eax,byte 0x1f
000008B3  66C1E81D          shr eax,byte 0x1d
000008B7  6601C2            add edx,eax
000008BA  6683E207          and edx,byte +0x7
000008BE  6629C2            sub edx,eax
000008C1  6689D0            mov eax,edx
000008C4  66A3A024          mov [0x24a0],eax
000008C8  66A1A024          mov eax,[0x24a0]
000008CC  6650              push eax
000008CE  6668C0230000      push dword 0x23c0
000008D4  66E8B00B0000      call dword 0x148a
000008DA  6683C408          add esp,byte +0x8
000008DE  66A11424          mov eax,[0x2414]
000008E2  6683F801          cmp eax,byte +0x1
000008E6  757B              jnz 0x963
000008E8  66A11C24          mov eax,[0x241c]
000008EC  6685C0            test eax,eax
000008EF  7572              jnz 0x963
000008F1  90                nop
000008F2  66C7061424020000  mov dword [0x2414],0x2
         -00
000008FB  66A1A024          mov eax,[0x24a0]
000008FF  6650              push eax
00000901  6668C0230000      push dword 0x23c0
00000907  66E8B20B0000      call dword 0x14bf
0000090D  6683C408          add esp,byte +0x8
00000911  66FF36FC23        push dword [0x23fc]
00000916  669D              popfd
00000918  668B3ED423        mov edi,[0x23d4]
0000091D  668B36D823        mov esi,[0x23d8]
00000922  668B2EDC23        mov ebp,[0x23dc]
00000927  668B26E023        mov esp,[0x23e0]
0000092C  8E16C023          mov ss,[0x23c0]
00000930  8E06CC23          mov es,[0x23cc]
00000934  8E26C823          mov fs,[0x23c8]
00000938  8E2EC423          mov gs,[0x23c4]
0000093C  66A1FC23          mov eax,[0x23fc]
00000940  A3B624            mov [0x24b6],ax
00000943  66A1F823          mov eax,[0x23f8]
00000947  A3B424            mov [0x24b4],ax
0000094A  66A1F423          mov eax,[0x23f4]
0000094E  A3B224            mov [0x24b2],ax
00000951  66A1D023          mov eax,[0x23d0]
00000955  A3B024            mov [0x24b0],ax
00000958  66C706D824090000  mov dword [0x24d8],0x9
         -00
00000961  EB1B              jmp short 0x97e
00000963  E93DFF            jmp word 0x8a3
00000966  66A1D824          mov eax,[0x24d8]
0000096A  67FFB400A4240000  push word [dword eax+eax+0x24a4]
00000972  66A1D824          mov eax,[0x24d8]
00000976  6683E801          sub eax,byte +0x1
0000097A  66A3D824          mov [0x24d8],eax
0000097E  66A1D824          mov eax,[0x24d8]
00000982  6683F803          cmp eax,byte +0x3
00000986  7FDE              jg 0x966
00000988  66A1F023          mov eax,[0x23f0]
0000098C  668B1EE423        mov ebx,[0x23e4]
00000991  668B0EEC23        mov ecx,[0x23ec]
00000996  668B16E823        mov edx,[0x23e8]
0000099B  66C3              o32 ret
0000099D  66C9              o32 leave
0000099F  66C3              o32 ret
000009A1  6690              xchg eax,eax
000009A3  6690              xchg eax,eax
000009A5  6690              xchg eax,eax
000009A7  6690              xchg eax,eax
000009A9  6690              xchg eax,eax
000009AB  6690              xchg eax,eax
000009AD  6690              xchg eax,eax
000009AF  90                nop
000009B0  C8000000          enter 0x0,0x0
000009B4  06                push es
000009B5  6653              push ebx
000009B7  6656              push esi
000009B9  8B4606            mov ax,[bp+0x6]
000009BC  B90400            mov cx,0x4
000009BF  F6E1              mul cl
000009C1  89C3              mov bx,ax
000009C3  31C0              xor ax,ax
000009C5  8EC0              mov es,ax
000009C7  668B760A          mov esi,[bp+0xa]
000009CB  26668B07          mov eax,[es:bx]
000009CF  2E668944FC        mov [cs:si-0x4],eax
000009D4  268937            mov [es:bx],si
000009D7  8CC8              mov ax,cs
000009D9  26894702          mov [es:bx+0x2],ax
000009DD  665E              pop esi
000009DF  665B              pop ebx
000009E1  07                pop es
000009E2  C9                leave
000009E3  6659              pop ecx
000009E5  FFE1              jmp cx
000009E7  0000              add [bx+si],al
000009E9  0000              add [bx+si],al
000009EB  1E                push ds
000009EC  8CC8              mov ax,cs
000009EE  8ED8              mov ds,ax
000009F0  9C                pushfw
000009F1  FA                cli
000009F2  FF1EE709          call word far [0x9e7]
000009F6  66E8BEF7FFFF      call dword 0x1ba
000009FC  6650              push eax
000009FE  B020              mov al,0x20
00000A00  E620              out 0x20,al
00000A02  6658              pop eax
00000A04  1F                pop ds
00000A05  CF                iretw
00000A06  0000              add [bx+si],al
00000A08  0000              add [bx+si],al
00000A0A  1E                push ds
00000A0B  8CC8              mov ax,cs
00000A0D  8ED8              mov ds,ax
00000A0F  9C                pushfw
00000A10  FA                cli
00000A11  FF1E060A          call word far [0xa06]
00000A15  66E8E4F6FFFF      call dword 0xff
00000A1B  6650              push eax
00000A1D  B020              mov al,0x20
00000A1F  E620              out 0x20,al
00000A21  6658              pop eax
00000A23  1F                pop ds
00000A24  CF                iretw
00000A25  0000              add [bx+si],al
00000A27  0000              add [bx+si],al
00000A29  1E                push ds
00000A2A  8CC8              mov ax,cs
00000A2C  8ED8              mov ds,ax
00000A2E  9C                pushfw
00000A2F  FA                cli
00000A30  FF1E250A          call word far [0xa25]
00000A34  66E860F9FFFF      call dword 0x39a
00000A3A  6650              push eax
00000A3C  B020              mov al,0x20
00000A3E  E620              out 0x20,al
00000A40  6658              pop eax
00000A42  1F                pop ds
00000A43  CF                iretw
00000A44  0000              add [bx+si],al
00000A46  0000              add [bx+si],al
00000A48  1E                push ds
00000A49  8CC8              mov ax,cs
00000A4B  8ED8              mov ds,ax
00000A4D  9C                pushfw
00000A4E  FA                cli
00000A4F  FF1E440A          call word far [0xa44]
00000A53  66E87FF9FFFF      call dword 0x3d8
00000A59  6650              push eax
00000A5B  B020              mov al,0x20
00000A5D  E620              out 0x20,al
00000A5F  6658              pop eax
00000A61  1F                pop ds
00000A62  CF                iretw
00000A63  0000              add [bx+si],al
00000A65  0000              add [bx+si],al
00000A67  1E                push ds
00000A68  8CC8              mov ax,cs
00000A6A  8ED8              mov ds,ax
00000A6C  9C                pushfw
00000A6D  FA                cli
00000A6E  FF1E630A          call word far [0xa63]
00000A72  66E8E5F7FFFF      call dword 0x25d
00000A78  6650              push eax
00000A7A  B020              mov al,0x20
00000A7C  E620              out 0x20,al
00000A7E  6658              pop eax
00000A80  1F                pop ds
00000A81  CF                iretw
00000A82  0000              add [bx+si],al
00000A84  0000              add [bx+si],al
00000A86  1E                push ds
00000A87  8CC8              mov ax,cs
00000A89  8ED8              mov ds,ax
00000A8B  9C                pushfw
00000A8C  FA                cli
00000A8D  FF1E820A          call word far [0xa82]
00000A91  66E8C8F9FFFF      call dword 0x45f
00000A97  6650              push eax
00000A99  B020              mov al,0x20
00000A9B  E620              out 0x20,al
00000A9D  6658              pop eax
00000A9F  1F                pop ds
00000AA0  CF                iretw
00000AA1  0000              add [bx+si],al
00000AA3  0000              add [bx+si],al
00000AA5  1E                push ds
00000AA6  8CC8              mov ax,cs
00000AA8  8ED8              mov ds,ax
00000AAA  9C                pushfw
00000AAB  FA                cli
00000AAC  FF1EA10A          call word far [0xaa1]
00000AB0  66E8CAFBFFFF      call dword 0x680
00000AB6  6650              push eax
00000AB8  B020              mov al,0x20
00000ABA  E620              out 0x20,al
00000ABC  6658              pop eax
00000ABE  1F                pop ds
00000ABF  CF                iretw
00000AC0  0000              add [bx+si],al
00000AC2  0000              add [bx+si],al
00000AC4  1E                push ds
00000AC5  8CC8              mov ax,cs
00000AC7  8ED8              mov ds,ax
00000AC9  9C                pushfw
00000ACA  FA                cli
00000ACB  FF1EC00A          call word far [0xac0]
00000ACF  66E8C9FDFFFF      call dword 0x89e
00000AD5  6650              push eax
00000AD7  B020              mov al,0x20
00000AD9  E620              out 0x20,al
00000ADB  6658              pop eax
00000ADD  1F                pop ds
00000ADE  CF                iretw
00000ADF  6655              push ebp
00000AE1  6689E5            mov ebp,esp
00000AE4  6683EC04          sub esp,byte +0x4
00000AE8  66B800100000      mov eax,0x1000
00000AEE  CD16              int 0x16
00000AF0  678845FF          mov [ebp-0x1],al
00000AF4  67660FB645FF      movzx eax,byte [ebp-0x1]
00000AFA  66C9              o32 leave
00000AFC  66C3              o32 ret
00000AFE  6655              push ebp
00000B00  6689E5            mov ebp,esp
00000B03  6653              push ebx
00000B05  6683EC04          sub esp,byte +0x4
00000B09  67668B4508        mov eax,[ebp+0x8]
00000B0E  678845F8          mov [ebp-0x8],al
00000B12  67660FBE45F8      movsx eax,byte [ebp-0x8]
00000B18  6605000E0000      add eax,0xe00
00000B1E  66BA00000000      mov edx,0x0
00000B24  6689D3            mov ebx,edx
00000B27  CD10              int 0x10
00000B29  6683C404          add esp,byte +0x4
00000B2D  665B              pop ebx
00000B2F  665D              pop ebp
00000B31  66C3              o32 ret
00000B33  6655              push ebp
00000B35  6689E5            mov ebp,esp
00000B38  6683EC04          sub esp,byte +0x4
00000B3C  67668B4508        mov eax,[ebp+0x8]
00000B41  678845FC          mov [ebp-0x4],al
00000B45  66C9              o32 leave
00000B47  66C3              o32 ret
00000B49  6655              push ebp
00000B4B  6689E5            mov ebp,esp
00000B4E  EB3B              jmp short 0xb8b
00000B50  67668B4508        mov eax,[ebp+0x8]
00000B55  67660FB600        movzx eax,byte [eax]
00000B5A  3C0A              cmp al,0xa
00000B5C  750D              jnz 0xb6b
00000B5E  666A0D            o32 push byte +0xd
00000B61  66E897FFFFFF      call dword 0xafe
00000B67  6683C404          add esp,byte +0x4
00000B6B  67668B4508        mov eax,[ebp+0x8]
00000B70  67660FB600        movzx eax,byte [eax]
00000B75  660FBEC0          movsx eax,al
00000B79  6650              push eax
00000B7B  66E87DFFFFFF      call dword 0xafe
00000B81  6683C404          add esp,byte +0x4
00000B85  676683450801      add dword [ebp+0x8],byte +0x1
00000B8B  67668B4508        mov eax,[ebp+0x8]
00000B90  67660FB600        movzx eax,byte [eax]
00000B95  84C0              test al,al
00000B97  75B7              jnz 0xb50
00000B99  66C9              o32 leave
00000B9B  66C3              o32 ret
00000B9D  6655              push ebp
00000B9F  6689E5            mov ebp,esp
00000BA2  6683EC04          sub esp,byte +0x4
00000BA6  67C745FE0000      mov word [ebp-0x2],0x0
00000BAC  EB67              jmp short 0xc15
00000BAE  67807DFD08        cmp byte [ebp-0x3],0x8
00000BB3  752E              jnz 0xbe3
00000BB5  67837DFE00        cmp word [ebp-0x2],byte +0x0
00000BBA  7502              jnz 0xbbe
00000BBC  EB57              jmp short 0xc15
00000BBE  67836DFE01        sub word [ebp-0x2],byte +0x1
00000BC3  6668251B0000      push dword 0x1b25
00000BC9  66E87AFFFFFF      call dword 0xb49
00000BCF  6683C404          add esp,byte +0x4
00000BD3  67660FB745FE      movzx eax,word [ebp-0x2]
00000BD9  67C6804026000020  mov byte [eax+0x2640],0x20
00000BE1  EB32              jmp short 0xc15
00000BE3  67660FBE45FD      movsx eax,byte [ebp-0x3]
00000BE9  6650              push eax
00000BEB  66E80DFFFFFF      call dword 0xafe
00000BF1  6683C404          add esp,byte +0x4
00000BF5  67660FB745FE      movzx eax,word [ebp-0x2]
00000BFB  67668D5001        lea edx,[eax+0x1]
00000C00  678955FE          mov [ebp-0x2],dx
00000C04  660FB7C0          movzx eax,ax
00000C08  67660FB655FD      movzx edx,byte [ebp-0x3]
00000C0E  67889040260000    mov [eax+0x2640],dl
00000C15  66E8C4FEFFFF      call dword 0xadf
00000C1B  678845FD          mov [ebp-0x3],al
00000C1F  67807DFD0D        cmp byte [ebp-0x3],0xd
00000C24  7588              jnz 0xbae
00000C26  67660FB745FE      movzx eax,word [ebp-0x2]
00000C2C  67C6804026000000  mov byte [eax+0x2640],0x0
00000C34  6668291B0000      push dword 0x1b29
00000C3A  66E809FFFFFF      call dword 0xb49
00000C40  6683C404          add esp,byte +0x4
00000C44  67660FB745FE      movzx eax,word [ebp-0x2]
00000C4A  66C9              o32 leave
00000C4C  66C3              o32 ret
00000C4E  6655              push ebp
00000C50  6689E5            mov ebp,esp
00000C53  6683EC0C          sub esp,byte +0xc
00000C57  66E840FFFFFF      call dword 0xb9d
00000C5D  678945F6          mov [ebp-0xa],ax
00000C61  67C745FE0000      mov word [ebp-0x2],0x0
00000C67  67668B4508        mov eax,[ebp+0x8]
00000C6C  67668945F8        mov [ebp-0x8],eax
00000C71  67C745FE0000      mov word [ebp-0x2],0x0
00000C77  EB26              jmp short 0xc9f
00000C79  67668B45F8        mov eax,[ebp-0x8]
00000C7E  67668D5001        lea edx,[eax+0x1]
00000C83  67668955F8        mov [ebp-0x8],edx
00000C88  67660FB755FE      movzx edx,word [ebp-0x2]
00000C8E  67660FB692402600  movzx edx,byte [edx+0x2640]
         -00
00000C97  678810            mov [eax],dl
00000C9A  678345FE01        add word [ebp-0x2],byte +0x1
00000C9F  67660FB745FE      movzx eax,word [ebp-0x2]
00000CA5  673B45F6          cmp ax,[ebp-0xa]
00000CA9  72CE              jc 0xc79
00000CAB  67668B45F8        mov eax,[ebp-0x8]
00000CB0  67C60000          mov byte [eax],0x0
00000CB4  66C9              o32 leave
00000CB6  66C3              o32 ret
00000CB8  6655              push ebp
00000CBA  6689E5            mov ebp,esp
00000CBD  6683EC04          sub esp,byte +0x4
00000CC1  6766837D0800      cmp dword [ebp+0x8],byte +0x0
00000CC7  7510              jnz 0xcd9
00000CC9  666A30            o32 push byte +0x30
00000CCC  66E82CFEFFFF      call dword 0xafe
00000CD2  6683C404          add esp,byte +0x4
00000CD6  E9E200            jmp word 0xdbb
00000CD9  67C645FF00        mov byte [ebp-0x1],0x0
00000CDE  6766837D0800      cmp dword [ebp+0x8],byte +0x0
00000CE4  7912              jns 0xcf8
00000CE6  666A2D            o32 push byte +0x2d
00000CE9  66E80FFEFFFF      call dword 0xafe
00000CEF  6683C404          add esp,byte +0x4
00000CF3  6766F75D08        neg dword [ebp+0x8]
00000CF8  E98200            jmp word 0xd7d
00000CFB  67668B4508        mov eax,[ebp+0x8]
00000D00  6699              cdq
00000D02  6766F77D0C        idiv dword [ebp+0xc]
00000D07  6689D0            mov eax,edx
00000D0A  6683F809          cmp eax,byte +0x9
00000D0E  7F2F              jg 0xd3f
00000D10  67660FB645FF      movzx eax,byte [ebp-0x1]
00000D16  67668D5001        lea edx,[eax+0x1]
00000D1B  678855FF          mov [ebp-0x1],dl
00000D1F  660FB6C8          movzx ecx,al
00000D23  67668B4508        mov eax,[ebp+0x8]
00000D28  6699              cdq
00000D2A  6766F77D0C        idiv dword [ebp+0xc]
00000D2F  6689D0            mov eax,edx
00000D32  6683C030          add eax,byte +0x30
00000D36  67888140260000    mov [ecx+0x2640],al
00000D3D  EB2D              jmp short 0xd6c
00000D3F  67660FB645FF      movzx eax,byte [ebp-0x1]
00000D45  67668D5001        lea edx,[eax+0x1]
00000D4A  678855FF          mov [ebp-0x1],dl
00000D4E  660FB6C8          movzx ecx,al
00000D52  67668B4508        mov eax,[ebp+0x8]
00000D57  6699              cdq
00000D59  6766F77D0C        idiv dword [ebp+0xc]
00000D5E  6689D0            mov eax,edx
00000D61  6683C037          add eax,byte +0x37
00000D65  67888140260000    mov [ecx+0x2640],al
00000D6C  67668B4508        mov eax,[ebp+0x8]
00000D71  6699              cdq
00000D73  6766F77D0C        idiv dword [ebp+0xc]
00000D78  6766894508        mov [ebp+0x8],eax
00000D7D  6766837D0800      cmp dword [ebp+0x8],byte +0x0
00000D83  0F8574FF          jnz word 0xcfb
00000D87  EB1F              jmp short 0xda8
00000D89  67660FB645FF      movzx eax,byte [ebp-0x1]
00000D8F  67660FB680402600  movzx eax,byte [eax+0x2640]
         -00
00000D98  660FBEC0          movsx eax,al
00000D9C  6650              push eax
00000D9E  66E85AFDFFFF      call dword 0xafe
00000DA4  6683C404          add esp,byte +0x4
00000DA8  67660FB645FF      movzx eax,byte [ebp-0x1]
00000DAE  67668D50FF        lea edx,[eax-0x1]
00000DB3  678855FF          mov [ebp-0x1],dl
00000DB7  84C0              test al,al
00000DB9  75CE              jnz 0xd89
00000DBB  66C9              o32 leave
00000DBD  66C3              o32 ret
00000DBF  6655              push ebp
00000DC1  6689E5            mov ebp,esp
00000DC4  6653              push ebx
00000DC6  6683EC08          sub esp,byte +0x8
00000DCA  67668D4508        lea eax,[ebp+0x8]
00000DCF  67668945F8        mov [ebp-0x8],eax
00000DD4  E9FE00            jmp word 0xed5
00000DD7  67668B4508        mov eax,[ebp+0x8]
00000DDC  67660FB600        movzx eax,byte [eax]
00000DE1  3C25              cmp al,0x25
00000DE3  0F85AB00          jnz word 0xe92
00000DE7  67668B4508        mov eax,[ebp+0x8]
00000DEC  6683C001          add eax,byte +0x1
00000DF0  6766894508        mov [ebp+0x8],eax
00000DF5  67668345F804      add dword [ebp-0x8],byte +0x4
00000DFB  67668B45F8        mov eax,[ebp-0x8]
00000E00  3667668B18        mov ebx,[ss:eax]
00000E05  6689D8            mov eax,ebx
00000E08  67668945F4        mov [ebp-0xc],eax
00000E0D  67668B4508        mov eax,[ebp+0x8]
00000E12  67660FB600        movzx eax,byte [eax]
00000E17  660FBEC0          movsx eax,al
00000E1B  6683F864          cmp eax,byte +0x64
00000E1F  7435              jz 0xe56
00000E21  6683F864          cmp eax,byte +0x64
00000E25  7F09              jg 0xe30
00000E27  6683F863          cmp eax,byte +0x63
00000E2B  7412              jz 0xe3f
00000E2D  E99700            jmp word 0xec7
00000E30  6683F873          cmp eax,byte +0x73
00000E34  7448              jz 0xe7e
00000E36  6683F878          cmp eax,byte +0x78
00000E3A  742E              jz 0xe6a
00000E3C  E98800            jmp word 0xec7
00000E3F  67668B45F4        mov eax,[ebp-0xc]
00000E44  660FBEC0          movsx eax,al
00000E48  6650              push eax
00000E4A  66E8AEFCFFFF      call dword 0xafe
00000E50  6683C404          add esp,byte +0x4
00000E54  EB3A              jmp short 0xe90
00000E56  666A0A            o32 push byte +0xa
00000E59  6766FF75F4        push dword [ebp-0xc]
00000E5E  66E854FEFFFF      call dword 0xcb8
00000E64  6683C408          add esp,byte +0x8
00000E68  EB26              jmp short 0xe90
00000E6A  666A10            o32 push byte +0x10
00000E6D  6766FF75F4        push dword [ebp-0xc]
00000E72  66E840FEFFFF      call dword 0xcb8
00000E78  6683C408          add esp,byte +0x8
00000E7C  EB12              jmp short 0xe90
00000E7E  67668B45F4        mov eax,[ebp-0xc]
00000E83  6650              push eax
00000E85  66E8BEFCFFFF      call dword 0xb49
00000E8B  6683C404          add esp,byte +0x4
00000E8F  90                nop
00000E90  EB35              jmp short 0xec7
00000E92  67668B4508        mov eax,[ebp+0x8]
00000E97  67660FB600        movzx eax,byte [eax]
00000E9C  3C0A              cmp al,0xa
00000E9E  750D              jnz 0xead
00000EA0  666A0D            o32 push byte +0xd
00000EA3  66E855FCFFFF      call dword 0xafe
00000EA9  6683C404          add esp,byte +0x4
00000EAD  67668B4508        mov eax,[ebp+0x8]
00000EB2  67660FB600        movzx eax,byte [eax]
00000EB7  660FBEC0          movsx eax,al
00000EBB  6650              push eax
00000EBD  66E83BFCFFFF      call dword 0xafe
00000EC3  6683C404          add esp,byte +0x4
00000EC7  67668B4508        mov eax,[ebp+0x8]
00000ECC  6683C001          add eax,byte +0x1
00000ED0  6766894508        mov [ebp+0x8],eax
00000ED5  67668B4508        mov eax,[ebp+0x8]
00000EDA  67660FB600        movzx eax,byte [eax]
00000EDF  84C0              test al,al
00000EE1  0F85F2FE          jnz word 0xdd7
00000EE5  67668B5DFC        mov ebx,[ebp-0x4]
00000EEA  66C9              o32 leave
00000EEC  66C3              o32 ret
00000EEE  6655              push ebp
00000EF0  6689E5            mov ebp,esp
00000EF3  6653              push ebx
00000EF5  6683EC18          sub esp,byte +0x18
00000EF9  67668D4508        lea eax,[ebp+0x8]
00000EFE  67668945F8        mov [ebp-0x8],eax
00000F03  66E894FCFFFF      call dword 0xb9d
00000F09  678845EB          mov [ebp-0x15],al
00000F0D  67C645F700        mov byte [ebp-0x9],0x0
00000F12  E99E01            jmp word 0x10b3
00000F15  67668B4508        mov eax,[ebp+0x8]
00000F1A  67660FB600        movzx eax,byte [eax]
00000F1F  3C25              cmp al,0x25
00000F21  0F858001          jnz word 0x10a5
00000F25  67668B4508        mov eax,[ebp+0x8]
00000F2A  6683C001          add eax,byte +0x1
00000F2E  6766894508        mov [ebp+0x8],eax
00000F33  67668345F804      add dword [ebp-0x8],byte +0x4
00000F39  67668B45F8        mov eax,[ebp-0x8]
00000F3E  3667668B18        mov ebx,[ss:eax]
00000F43  6689D8            mov eax,ebx
00000F46  67668945E4        mov [ebp-0x1c],eax
00000F4B  EB05              jmp short 0xf52
00000F4D  678045F701        add byte [ebp-0x9],0x1
00000F52  67660FB645F7      movzx eax,byte [ebp-0x9]
00000F58  67660FB680402600  movzx eax,byte [eax+0x2640]
         -00
00000F61  3C20              cmp al,0x20
00000F63  74E8              jz 0xf4d
00000F65  67668B4508        mov eax,[ebp+0x8]
00000F6A  67660FB600        movzx eax,byte [eax]
00000F6F  3C63              cmp al,0x63
00000F71  752C              jnz 0xf9f
00000F73  67660FB645F7      movzx eax,byte [ebp-0x9]
00000F79  67668D5001        lea edx,[eax+0x1]
00000F7E  678855F7          mov [ebp-0x9],dl
00000F82  660FB6C0          movzx eax,al
00000F86  67660FB680402600  movzx eax,byte [eax+0x2640]
         -00
00000F8F  660FBED0          movsx edx,al
00000F93  67668B45E4        mov eax,[ebp-0x1c]
00000F98  67668910          mov [eax],edx
00000F9C  E90601            jmp word 0x10a5
00000F9F  67668B4508        mov eax,[ebp+0x8]
00000FA4  67660FB600        movzx eax,byte [eax]
00000FA9  3C73              cmp al,0x73
00000FAB  7568              jnz 0x1015
00000FAD  67668B45E4        mov eax,[ebp-0x1c]
00000FB2  67668945F0        mov [ebp-0x10],eax
00000FB7  EB2A              jmp short 0xfe3
00000FB9  67660FB645F7      movzx eax,byte [ebp-0x9]
00000FBF  67668D5001        lea edx,[eax+0x1]
00000FC4  678855F7          mov [ebp-0x9],dl
00000FC8  660FB6C0          movzx eax,al
00000FCC  67660FB690402600  movzx edx,byte [eax+0x2640]
         -00
00000FD5  67668B45F0        mov eax,[ebp-0x10]
00000FDA  678810            mov [eax],dl
00000FDD  67668345F001      add dword [ebp-0x10],byte +0x1
00000FE3  67660FB645F7      movzx eax,byte [ebp-0x9]
00000FE9  67660FB680402600  movzx eax,byte [eax+0x2640]
         -00
00000FF2  84C0              test al,al
00000FF4  7413              jz 0x1009
00000FF6  67660FB645F7      movzx eax,byte [ebp-0x9]
00000FFC  67660FB680402600  movzx eax,byte [eax+0x2640]
         -00
00001005  3C20              cmp al,0x20
00001007  75B0              jnz 0xfb9
00001009  67668B45F0        mov eax,[ebp-0x10]
0000100E  67C60000          mov byte [eax],0x0
00001012  E99000            jmp word 0x10a5
00001015  67668B4508        mov eax,[ebp+0x8]
0000101A  67660FB600        movzx eax,byte [eax]
0000101F  3C64              cmp al,0x64
00001021  0F858000          jnz word 0x10a5
00001025  6766C745EC000000  mov dword [ebp-0x14],0x0
         -00
0000102E  EB41              jmp short 0x1071
00001030  67668B55EC        mov edx,[ebp-0x14]
00001035  6689D0            mov eax,edx
00001038  66C1E002          shl eax,byte 0x2
0000103C  6601D0            add eax,edx
0000103F  6601C0            add eax,eax
00001042  6689C1            mov ecx,eax
00001045  67660FB645F7      movzx eax,byte [ebp-0x9]
0000104B  67668D5001        lea edx,[eax+0x1]
00001050  678855F7          mov [ebp-0x9],dl
00001054  660FB6C0          movzx eax,al
00001058  67660FB680402600  movzx eax,byte [eax+0x2640]
         -00
00001061  660FBEC0          movsx eax,al
00001065  6683E830          sub eax,byte +0x30
00001069  6601C8            add eax,ecx
0000106C  67668945EC        mov [ebp-0x14],eax
00001071  67660FB645F7      movzx eax,byte [ebp-0x9]
00001077  67660FB680402600  movzx eax,byte [eax+0x2640]
         -00
00001080  3C2F              cmp al,0x2f
00001082  7E13              jng 0x1097
00001084  67660FB645F7      movzx eax,byte [ebp-0x9]
0000108A  67660FB680402600  movzx eax,byte [eax+0x2640]
         -00
00001093  3C39              cmp al,0x39
00001095  7E99              jng 0x1030
00001097  67668B45E4        mov eax,[ebp-0x1c]
0000109C  67668B55EC        mov edx,[ebp-0x14]
000010A1  67668910          mov [eax],edx
000010A5  67668B4508        mov eax,[ebp+0x8]
000010AA  6683C001          add eax,byte +0x1
000010AE  6766894508        mov [ebp+0x8],eax
000010B3  67668B4508        mov eax,[ebp+0x8]
000010B8  67660FB600        movzx eax,byte [eax]
000010BD  84C0              test al,al
000010BF  0F8552FE          jnz word 0xf15
000010C3  6683C418          add esp,byte +0x18
000010C7  665B              pop ebx
000010C9  665D              pop ebp
000010CB  66C3              o32 ret
000010CD  6655              push ebp
000010CF  6689E5            mov ebp,esp
000010D2  66B803000000      mov eax,0x3
000010D8  CD10              int 0x10
000010DA  665D              pop ebp
000010DC  66C3              o32 ret
000010DE  6655              push ebp
000010E0  6689E5            mov ebp,esp
000010E3  6653              push ebx
000010E5  6683EC04          sub esp,byte +0x4
000010E9  66B800080000      mov eax,0x800
000010EF  66BA00000000      mov edx,0x0
000010F5  6689D3            mov ebx,edx
000010F8  CD10              int 0x10
000010FA  678845FB          mov [ebp-0x5],al
000010FE  67660FB645FB      movzx eax,byte [ebp-0x5]
00001104  6683C404          add esp,byte +0x4
00001108  665B              pop ebx
0000110A  665D              pop ebp
0000110C  66C3              o32 ret
0000110E  6655              push ebp
00001110  6689E5            mov ebp,esp
00001113  6653              push ebx
00001115  6683EC04          sub esp,byte +0x4
00001119  67668B4508        mov eax,[ebp+0x8]
0000111E  678845F8          mov [ebp-0x8],al
00001122  67660FB645F8      movzx eax,byte [ebp-0x8]
00001128  660500090000      add eax,0x900
0000112E  66BA07000000      mov edx,0x7
00001134  66B901000000      mov ecx,0x1
0000113A  6689D3            mov ebx,edx
0000113D  CD10              int 0x10
0000113F  6683C404          add esp,byte +0x4
00001143  665B              pop ebx
00001145  665D              pop ebp
00001147  66C3              o32 ret
00001149  6655              push ebp
0000114B  6689E5            mov ebp,esp
0000114E  6653              push ebx
00001150  6683EC04          sub esp,byte +0x4
00001154  66B800030000      mov eax,0x300
0000115A  66BA00000000      mov edx,0x0
00001160  6689D3            mov ebx,edx
00001163  CD10              int 0x10
00001165  6689D0            mov eax,edx
00001168  678945FA          mov [ebp-0x6],ax
0000116C  67660FB745FA      movzx eax,word [ebp-0x6]
00001172  6683C404          add esp,byte +0x4
00001176  665B              pop ebx
00001178  665D              pop ebp
0000117A  66C3              o32 ret
0000117C  6655              push ebp
0000117E  6689E5            mov ebp,esp
00001181  6653              push ebx
00001183  6683EC04          sub esp,byte +0x4
00001187  67668B4508        mov eax,[ebp+0x8]
0000118C  678945F8          mov [ebp-0x8],ax
00001190  66B800020000      mov eax,0x200
00001196  66B900000000      mov ecx,0x0
0000119C  67660FB755F8      movzx edx,word [ebp-0x8]
000011A2  6689CB            mov ebx,ecx
000011A5  CD10              int 0x10
000011A7  6683C404          add esp,byte +0x4
000011AB  665B              pop ebx
000011AD  665D              pop ebp
000011AF  66C3              o32 ret
000011B1  6655              push ebp
000011B3  6689E5            mov ebp,esp
000011B6  6683EC04          sub esp,byte +0x4
000011BA  67668B4508        mov eax,[ebp+0x8]
000011BF  678945FC          mov [ebp-0x4],ax
000011C3  66B800860000      mov eax,0x8600
000011C9  67660FB74DFC      movzx ecx,word [ebp-0x4]
000011CF  66BA00000000      mov edx,0x0
000011D5  CD15              int 0x15
000011D7  66C9              o32 leave
000011D9  66C3              o32 ret
000011DB  6655              push ebp
000011DD  6689E5            mov ebp,esp
000011E0  6653              push ebx
000011E2  6683EC04          sub esp,byte +0x4
000011E6  67668B4508        mov eax,[ebp+0x8]
000011EB  678845F8          mov [ebp-0x8],al
000011EF  67660FBE45F8      movsx eax,byte [ebp-0x8]
000011F5  6605000E0000      add eax,0xe00
000011FB  66BA00000000      mov edx,0x0
00001201  6689D3            mov ebx,edx
00001204  CD10              int 0x10
00001206  6683C404          add esp,byte +0x4
0000120A  665B              pop ebx
0000120C  665D              pop ebp
0000120E  66C3              o32 ret
00001210  6655              push ebp
00001212  6689E5            mov ebp,esp
00001215  6657              push edi
00001217  6656              push esi
00001219  6653              push ebx
0000121B  6683EC20          sub esp,byte +0x20
0000121F  67668B7508        mov esi,[ebp+0x8]
00001224  67668B5D0C        mov ebx,[ebp+0xc]
00001229  67668B4D10        mov ecx,[ebp+0x10]
0000122E  67668B5514        mov edx,[ebp+0x14]
00001233  67668B4518        mov eax,[ebp+0x18]
00001238  678975E4          mov [ebp-0x1c],si
0000123C  67895DE0          mov [ebp-0x20],bx
00001240  67884DDC          mov [ebp-0x24],cl
00001244  678955D8          mov [ebp-0x28],dx
00001248  678845D4          mov [ebp-0x2c],al
0000124C  66B800080000      mov eax,0x800
00001252  67660FB655D4      movzx edx,byte [ebp-0x2c]
00001258  06                push es
00001259  CD13              int 0x13
0000125B  6689D0            mov eax,edx
0000125E  67894DF2          mov [ebp-0xe],cx
00001262  678945F0          mov [ebp-0x10],ax
00001266  67660FB745F2      movzx eax,word [ebp-0xe]
0000126C  678845EF          mov [ebp-0x11],al
00001270  67660FB745F0      movzx eax,word [ebp-0x10]
00001276  C1E808            shr ax,byte 0x8
00001279  6683C001          add eax,byte +0x1
0000127D  678845EE          mov [ebp-0x12],al
00001281  67660FB745D8      movzx eax,word [ebp-0x28]
00001287  67660FB64DEF      movzx ecx,byte [ebp-0x11]
0000128D  67660FB655EE      movzx edx,byte [ebp-0x12]
00001293  6689D6            mov esi,edx
00001296  660FAFF1          imul esi,ecx
0000129A  6699              cdq
0000129C  66F7FE            idiv esi
0000129F  678845ED          mov [ebp-0x13],al
000012A3  67660FB745D8      movzx eax,word [ebp-0x28]
000012A9  67660FB67DEF      movzx edi,byte [ebp-0x11]
000012AF  6699              cdq
000012B1  66F7FF            idiv edi
000012B4  67660FB64DEE      movzx ecx,byte [ebp-0x12]
000012BA  6699              cdq
000012BC  66F7F9            idiv ecx
000012BF  6689D0            mov eax,edx
000012C2  678845EC          mov [ebp-0x14],al
000012C6  67660FB745D8      movzx eax,word [ebp-0x28]
000012CC  67660FB64DEF      movzx ecx,byte [ebp-0x11]
000012D2  6699              cdq
000012D4  66F7F9            idiv ecx
000012D7  6689D0            mov eax,edx
000012DA  6683C001          add eax,byte +0x1
000012DE  678845EB          mov [ebp-0x15],al
000012E2  67660FB645DC      movzx eax,byte [ebp-0x24]
000012E8  660500020000      add eax,0x200
000012EE  67660FB655ED      movzx edx,byte [ebp-0x13]
000012F4  6689D1            mov ecx,edx
000012F7  66C1E108          shl ecx,byte 0x8
000012FB  67660FB655EB      movzx edx,byte [ebp-0x15]
00001301  6601D1            add ecx,edx
00001304  67660FB655EC      movzx edx,byte [ebp-0x14]
0000130A  6689D3            mov ebx,edx
0000130D  66C1E308          shl ebx,byte 0x8
00001311  67660FB655D4      movzx edx,byte [ebp-0x2c]
00001317  6601DA            add edx,ebx
0000131A  67660FB75DE0      movzx ebx,word [ebp-0x20]
00001320  67660FB77DE4      movzx edi,word [ebp-0x1c]
00001326  8EC7              mov es,di
00001328  CD13              int 0x13
0000132A  07                pop es
0000132B  6683C420          add esp,byte +0x20
0000132F  665B              pop ebx
00001331  665E              pop esi
00001333  665F              pop edi
00001335  665D              pop ebp
00001337  66C3              o32 ret
00001339  6655              push ebp
0000133B  6689E5            mov ebp,esp
0000133E  6683EC08          sub esp,byte +0x8
00001342  67668B4510        mov eax,[ebp+0x10]
00001347  678945F8          mov [ebp-0x8],ax
0000134B  67C645FF00        mov byte [ebp-0x1],0x0
00001350  EB42              jmp short 0x1394
00001352  67668B4508        mov eax,[ebp+0x8]
00001357  67668D5001        lea edx,[eax+0x1]
0000135C  6766895508        mov [ebp+0x8],edx
00001361  67660FB608        movzx ecx,byte [eax]
00001366  67668B450C        mov eax,[ebp+0xc]
0000136B  67668D5001        lea edx,[eax+0x1]
00001370  676689550C        mov [ebp+0xc],edx
00001375  67660FB600        movzx eax,byte [eax]
0000137A  38C1              cmp cl,al
0000137C  7408              jz 0x1386
0000137E  66B801000000      mov eax,0x1
00001384  EB25              jmp short 0x13ab
00001386  67660FB645FF      movzx eax,byte [ebp-0x1]
0000138C  6683C001          add eax,byte +0x1
00001390  678845FF          mov [ebp-0x1],al
00001394  67660FBE55FF      movsx edx,byte [ebp-0x1]
0000139A  67660FB745F8      movzx eax,word [ebp-0x8]
000013A0  6639C2            cmp edx,eax
000013A3  7CAD              jl 0x1352
000013A5  66B800000000      mov eax,0x0
000013AB  66C9              o32 leave
000013AD  66C3              o32 ret
000013AF  6655              push ebp
000013B1  6689E5            mov ebp,esp
000013B4  EB26              jmp short 0x13dc
000013B6  67668B4508        mov eax,[ebp+0x8]
000013BB  67668D5001        lea edx,[eax+0x1]
000013C0  6766895508        mov [ebp+0x8],edx
000013C5  67668B550C        mov edx,[ebp+0xc]
000013CA  67668D4A01        lea ecx,[edx+0x1]
000013CF  6766894D0C        mov [ebp+0xc],ecx
000013D4  67660FB612        movzx edx,byte [edx]
000013D9  678810            mov [eax],dl
000013DC  67668B4510        mov eax,[ebp+0x10]
000013E1  67668D50FF        lea edx,[eax-0x1]
000013E6  6766895510        mov [ebp+0x10],edx
000013EB  6685C0            test eax,eax
000013EE  75C6              jnz 0x13b6
000013F0  665D              pop ebp
000013F2  66C3              o32 ret
000013F4  6690              xchg eax,eax
000013F6  6690              xchg eax,eax
000013F8  6690              xchg eax,eax
000013FA  6690              xchg eax,eax
000013FC  6690              xchg eax,eax
000013FE  6690              xchg eax,eax
00001400  C8000000          enter 0x0,0x0
00001404  668CC8            mov eax,cs
00001407  6650              push eax
00001409  66B814140000      mov eax,0x1414
0000140F  6650              push eax
00001411  FF6E06            jmp word far [bp+0x6]
00001414  C9                leave
00001415  6659              pop ecx
00001417  FFE1              jmp cx
00001419  C8000000          enter 0x0,0x0
0000141D  1E                push ds
0000141E  06                push es
0000141F  56                push si
00001420  57                push di
00001421  1E                push ds
00001422  07                pop es
00001423  8B460C            mov ax,[bp+0xc]
00001426  8ED8              mov ds,ax
00001428  8B760A            mov si,[bp+0xa]
0000142B  8B7E06            mov di,[bp+0x6]
0000142E  8B4E0E            mov cx,[bp+0xe]
00001431  F3A4              rep movsb
00001433  5F                pop di
00001434  5E                pop si
00001435  07                pop es
00001436  1F                pop ds
00001437  C9                leave
00001438  6659              pop ecx
0000143A  FFE1              jmp cx
0000143C  C8000000          enter 0x0,0x0
00001440  1E                push ds
00001441  06                push es
00001442  56                push si
00001443  57                push di
00001444  8B4608            mov ax,[bp+0x8]
00001447  8EC0              mov es,ax
00001449  8B760A            mov si,[bp+0xa]
0000144C  8B7E06            mov di,[bp+0x6]
0000144F  8B4E0E            mov cx,[bp+0xe]
00001452  F3A4              rep movsb
00001454  5F                pop di
00001455  5E                pop si
00001456  07                pop es
00001457  1F                pop ds
00001458  C9                leave
00001459  6659              pop ecx
0000145B  FFE1              jmp cx
0000145D  C8000000          enter 0x0,0x0
00001461  06                push es
00001462  53                push bx
00001463  8B460E            mov ax,[bp+0xe]
00001466  BB5000            mov bx,0x50
00001469  F7E3              mul bx
0000146B  034612            add ax,[bp+0x12]
0000146E  BB0200            mov bx,0x2
00001471  F7E3              mul bx
00001473  89C3              mov bx,ax
00001475  B800B8            mov ax,0xb800
00001478  8EC0              mov es,ax
0000147A  8A660A            mov ah,[bp+0xa]
0000147D  8A4606            mov al,[bp+0x6]
00001480  268907            mov [es:bx],ax
00001483  5B                pop bx
00001484  07                pop es
00001485  C9                leave
00001486  6659              pop ecx
00001488  FFE1              jmp cx
0000148A  6655              push ebp
0000148C  6689E5            mov ebp,esp
0000148F  67668B550C        mov edx,[ebp+0xc]
00001494  6689D0            mov eax,edx
00001497  6601C0            add eax,eax
0000149A  6601D0            add eax,edx
0000149D  66C1E005          shl eax,byte 0x5
000014A1  660500060000      add eax,0x600
000014A7  666A60            o32 push byte +0x60
000014AA  6650              push eax
000014AC  6766FF7508        push dword [ebp+0x8]
000014B1  66E862FFFFFF      call dword 0x1419
000014B7  6683C40C          add esp,byte +0xc
000014BB  66C9              o32 leave
000014BD  66C3              o32 ret
000014BF  6655              push ebp
000014C1  6689E5            mov ebp,esp
000014C4  67668B550C        mov edx,[ebp+0xc]
000014C9  6689D0            mov eax,edx
000014CC  6601C0            add eax,eax
000014CF  6601D0            add eax,edx
000014D2  66C1E005          shl eax,byte 0x5
000014D6  660500060000      add eax,0x600
000014DC  666A60            o32 push byte +0x60
000014DF  6766FF7508        push dword [ebp+0x8]
000014E4  6650              push eax
000014E6  66E850FFFFFF      call dword 0x143c
000014EC  6683C40C          add esp,byte +0xc
000014F0  66C9              o32 leave
000014F2  66C3              o32 ret
000014F4  6655              push ebp
000014F6  6689E5            mov ebp,esp
000014F9  66A10025          mov eax,[0x2500]
000014FD  666A04            o32 push byte +0x4
00001500  666800050000      push dword 0x500
00001506  6650              push eax
00001508  66E80BFFFFFF      call dword 0x1419
0000150E  6683C40C          add esp,byte +0xc
00001512  66A10025          mov eax,[0x2500]
00001516  67668B10          mov edx,[eax]
0000151A  6683C201          add edx,byte +0x1
0000151E  67668910          mov [eax],edx
00001522  66A10025          mov eax,[0x2500]
00001526  666A04            o32 push byte +0x4
00001529  6650              push eax
0000152B  666800050000      push dword 0x500
00001531  66E805FFFFFF      call dword 0x143c
00001537  6683C40C          add esp,byte +0xc
0000153B  66A10025          mov eax,[0x2500]
0000153F  67668B00          mov eax,[eax]
00001543  6683E801          sub eax,byte +0x1
00001547  66C9              o32 leave
00001549  66C3              o32 ret
0000154B  6655              push ebp
0000154D  6689E5            mov ebp,esp
00001550  EB48              jmp short 0x159a
00001552  67668B4508        mov eax,[ebp+0x8]
00001557  67668D5001        lea edx,[eax+0x1]
0000155C  6766895508        mov [ebp+0x8],edx
00001561  666A01            o32 push byte +0x1
00001564  6650              push eax
00001566  666804250000      push dword 0x2504
0000156C  66E8A7FEFFFF      call dword 0x1419
00001572  6683C40C          add esp,byte +0xc
00001576  67668B450C        mov eax,[ebp+0xc]
0000157B  67668D5001        lea edx,[eax+0x1]
00001580  676689550C        mov [ebp+0xc],edx
00001585  666A01            o32 push byte +0x1
00001588  666804250000      push dword 0x2504
0000158E  6650              push eax
00001590  66E8A6FEFFFF      call dword 0x143c
00001596  6683C40C          add esp,byte +0xc
0000159A  67668B4510        mov eax,[ebp+0x10]
0000159F  67668D50FF        lea edx,[eax-0x1]
000015A4  6766895510        mov [ebp+0x10],edx
000015A9  6685C0            test eax,eax
000015AC  75A4              jnz 0x1552
000015AE  66C9              o32 leave
000015B0  66C3              o32 ret
000015B2  6655              push ebp
000015B4  6689E5            mov ebp,esp
000015B7  CD74              int 0x74
000015B9  CD71              int 0x71
000015BB  665D              pop ebp
000015BD  66C3              o32 ret
000015BF  6655              push ebp
000015C1  6689E5            mov ebp,esp
000015C4  CD75              int 0x75
000015C6  665D              pop ebp
000015C8  66C3              o32 ret
000015CA  6655              push ebp
000015CC  6689E5            mov ebp,esp
000015CF  6653              push ebx
000015D1  6683EC0C          sub esp,byte +0xc
000015D5  67668B4D0C        mov ecx,[ebp+0xc]
000015DA  67668B5510        mov edx,[ebp+0x10]
000015DF  67668B4514        mov eax,[ebp+0x14]
000015E4  67894DF8          mov [ebp-0x8],cx
000015E8  678955F4          mov [ebp-0xc],dx
000015EC  678945F0          mov [ebp-0x10],ax
000015F0  66C7060825000000  mov dword [0x2508],0x0
         -00
000015F9  EB2D              jmp short 0x1628
000015FB  66A10825          mov eax,[0x2508]
000015FF  6650              push eax
00001601  666840250000      push dword 0x2540
00001607  66E87DFEFFFF      call dword 0x148a
0000160D  6683C408          add esp,byte +0x8
00001611  66A19425          mov eax,[0x2594]
00001615  6685C0            test eax,eax
00001618  7502              jnz 0x161c
0000161A  EB16              jmp short 0x1632
0000161C  66A10825          mov eax,[0x2508]
00001620  6683C001          add eax,byte +0x1
00001624  66A30825          mov [0x2508],eax
00001628  66A10825          mov eax,[0x2508]
0000162C  6683F807          cmp eax,byte +0x7
00001630  7EC9              jng 0x15fb
00001632  66A10825          mov eax,[0x2508]
00001636  6683F807          cmp eax,byte +0x7
0000163A  7E13              jng 0x164f
0000163C  66682C1B0000      push dword 0x1b2c
00001642  66E877F7FFFF      call dword 0xdbf
00001648  6683C404          add esp,byte +0x4
0000164C  E91C01            jmp word 0x176b
0000164F  66A10825          mov eax,[0x2508]
00001653  66C1E01A          shl eax,byte 0x1a
00001657  660500050020      add eax,0x20000500
0000165D  66A3A025          mov [0x25a0],eax
00001661  67660FB75DF4      movzx ebx,word [ebp-0xc]
00001667  67660FB745F8      movzx eax,word [ebp-0x8]
0000166D  660FB6C8          movzx ecx,al
00001671  66A1A025          mov eax,[0x25a0]
00001675  660FB7D0          movzx edx,ax
00001679  66A1A025          mov eax,[0x25a0]
0000167D  66C1F810          sar eax,byte 0x10
00001681  660FB7C0          movzx eax,ax
00001685  666A00            o32 push byte +0x0
00001688  6653              push ebx
0000168A  6651              push ecx
0000168C  6652              push edx
0000168E  6650              push eax
00001690  66E87AFBFFFF      call dword 0x1210
00001696  6683C414          add esp,byte +0x14
0000169A  66A1A025          mov eax,[0x25a0]
0000169E  66C1F810          sar eax,byte 0x10
000016A2  66A34025          mov [0x2540],eax
000016A6  66A14025          mov eax,[0x2540]
000016AA  66A34C25          mov [0x254c],eax
000016AE  66A14C25          mov eax,[0x254c]
000016B2  66A35025          mov [0x2550],eax
000016B6  66A15025          mov eax,[0x2550]
000016BA  66A37825          mov [0x2578],eax
000016BE  66A1A025          mov eax,[0x25a0]
000016C2  660FB7C0          movzx eax,ax
000016C6  66A36025          mov [0x2560],eax
000016CA  66A16025          mov eax,[0x2560]
000016CE  66A37425          mov [0x2574],eax
000016D2  66E81CFEFFFF      call dword 0x14f4
000016D8  66A39025          mov [0x2590],eax
000016DC  66C7069C25000000  mov dword [0x259c],0x0
         -00
000016E5  67837DF000        cmp word [ebp-0x10],byte +0x0
000016EA  7408              jz 0x16f4
000016EC  66B800000000      mov eax,0x0
000016F2  EB06              jmp short 0x16fa
000016F4  66B8FFFFFFFF      mov eax,0xffffffff
000016FA  66A39825          mov [0x2598],eax
000016FE  669C              pushfd
00001700  6658              pop eax
00001702  66A37C25          mov [0x257c],eax
00001706  66C706A425802500  mov dword [0x25a4],0x2580
         -00
0000170F  EB25              jmp short 0x1736
00001711  66A1A425          mov eax,[0x25a4]
00001715  67668D5001        lea edx,[eax+0x1]
0000171A  668916A425        mov [0x25a4],edx
0000171F  67668B5508        mov edx,[ebp+0x8]
00001724  67668D4A01        lea ecx,[edx+0x1]
00001729  6766894D08        mov [ebp+0x8],ecx
0000172E  67660FB612        movzx edx,byte [edx]
00001733  678810            mov [eax],dl
00001736  67668B4508        mov eax,[ebp+0x8]
0000173B  67660FB600        movzx eax,byte [eax]
00001740  84C0              test al,al
00001742  75CD              jnz 0x1711
00001744  66A1A425          mov eax,[0x25a4]
00001748  67C60000          mov byte [eax],0x0
0000174C  66C7069425010000  mov dword [0x2594],0x1
         -00
00001755  66A10825          mov eax,[0x2508]
00001759  6650              push eax
0000175B  666840250000      push dword 0x2540
00001761  66E858FDFFFF      call dword 0x14bf
00001767  6683C408          add esp,byte +0x8
0000176B  67668B5DFC        mov ebx,[ebp-0x4]
00001770  66C9              o32 leave
00001772  66C3              o32 ret
00001774  6655              push ebp
00001776  6689E5            mov ebp,esp
00001779  6656              push esi
0000177B  6653              push ebx
0000177D  6668341B0000      push dword 0x1b34
00001783  66E836F6FFFF      call dword 0xdbf
00001789  6683C404          add esp,byte +0x4
0000178D  67668B4508        mov eax,[ebp+0x8]
00001792  67668B5054        mov edx,[eax+0x54]
00001797  67668B4508        mov eax,[ebp+0x8]
0000179C  67668D4840        lea ecx,[eax+0x40]
000017A1  67668B4508        mov eax,[ebp+0x8]
000017A6  67668B4050        mov eax,[eax+0x50]
000017AB  6652              push edx
000017AD  6651              push ecx
000017AF  6650              push eax
000017B1  6668681B0000      push dword 0x1b68
000017B7  66E802F6FFFF      call dword 0xdbf
000017BD  6683C410          add esp,byte +0x10
000017C1  67668B4508        mov eax,[ebp+0x8]
000017C6  67668B7010        mov esi,[eax+0x10]
000017CB  67668B4508        mov eax,[ebp+0x8]
000017D0  67668B580C        mov ebx,[eax+0xc]
000017D5  67668B4508        mov eax,[ebp+0x8]
000017DA  67668B4808        mov ecx,[eax+0x8]
000017DF  67668B4508        mov eax,[ebp+0x8]
000017E4  67668B5004        mov edx,[eax+0x4]
000017E9  67668B4508        mov eax,[ebp+0x8]
000017EE  67668B00          mov eax,[eax]
000017F2  6656              push esi
000017F4  6653              push ebx
000017F6  6651              push ecx
000017F8  6652              push edx
000017FA  6650              push eax
000017FC  6668881B0000      push dword 0x1b88
00001802  66E8B7F5FFFF      call dword 0xdbf
00001808  6683C418          add esp,byte +0x18
0000180C  67668B4508        mov eax,[ebp+0x8]
00001811  67668B5820        mov ebx,[eax+0x20]
00001816  67668B4508        mov eax,[ebp+0x8]
0000181B  67668B481C        mov ecx,[eax+0x1c]
00001820  67668B4508        mov eax,[ebp+0x8]
00001825  67668B5018        mov edx,[eax+0x18]
0000182A  67668B4508        mov eax,[ebp+0x8]
0000182F  67668B4014        mov eax,[eax+0x14]
00001834  6653              push ebx
00001836  6651              push ecx
00001838  6652              push edx
0000183A  6650              push eax
0000183C  6668B41B0000      push dword 0x1bb4
00001842  66E877F5FFFF      call dword 0xdbf
00001848  6683C414          add esp,byte +0x14
0000184C  67668B4508        mov eax,[ebp+0x8]
00001851  67668B5828        mov ebx,[eax+0x28]
00001856  67668B4508        mov eax,[ebp+0x8]
0000185B  67668B482C        mov ecx,[eax+0x2c]
00001860  67668B4508        mov eax,[ebp+0x8]
00001865  67668B5024        mov edx,[eax+0x24]
0000186A  67668B4508        mov eax,[ebp+0x8]
0000186F  67668B4030        mov eax,[eax+0x30]
00001874  6653              push ebx
00001876  6651              push ecx
00001878  6652              push edx
0000187A  6650              push eax
0000187C  6668D81B0000      push dword 0x1bd8
00001882  66E837F5FFFF      call dword 0xdbf
00001888  6683C414          add esp,byte +0x14
0000188C  67668B4508        mov eax,[ebp+0x8]
00001891  67668B585C        mov ebx,[eax+0x5c]
00001896  67668B4508        mov eax,[ebp+0x8]
0000189B  67668B483C        mov ecx,[eax+0x3c]
000018A0  67668B4508        mov eax,[ebp+0x8]
000018A5  67668B5034        mov edx,[eax+0x34]
000018AA  67668B4508        mov eax,[ebp+0x8]
000018AF  67668B4038        mov eax,[eax+0x38]
000018B4  6653              push ebx
000018B6  6651              push ecx
000018B8  6652              push edx
000018BA  6650              push eax
000018BC  6668FC1B0000      push dword 0x1bfc
000018C2  66E8F7F4FFFF      call dword 0xdbf
000018C8  6683C414          add esp,byte +0x14
000018CC  6668341B0000      push dword 0x1b34
000018D2  66E8E7F4FFFF      call dword 0xdbf
000018D8  6683C404          add esp,byte +0x4
000018DC  67668D65F8        lea esp,[ebp-0x8]
000018E1  665B              pop ebx
000018E3  665E              pop esi
000018E5  665D              pop ebp
000018E7  66C3              o32 ret
000018E9  6655              push ebp
000018EB  6689E5            mov ebp,esp
000018EE  6653              push ebx
000018F0  6683EC04          sub esp,byte +0x4
000018F4  67668B4508        mov eax,[ebp+0x8]
000018F9  678845F8          mov [ebp-0x8],al
000018FD  67660FBE45F8      movsx eax,byte [ebp-0x8]
00001903  6605000E0000      add eax,0xe00
00001909  66BA00000000      mov edx,0x0
0000190F  6689D3            mov ebx,edx
00001912  CD10              int 0x10
00001914  6683C404          add esp,byte +0x4
00001918  665B              pop ebx
0000191A  665D              pop ebp
0000191C  66C3              o32 ret
0000191E  6655              push ebp
00001920  6689E5            mov ebp,esp
00001923  666A4F            o32 push byte +0x4f
00001926  66E8BDFFFFFF      call dword 0x18e9
0000192C  6683C404          add esp,byte +0x4
00001930  666A55            o32 push byte +0x55
00001933  66E8B0FFFFFF      call dword 0x18e9
00001939  6683C404          add esp,byte +0x4
0000193D  666A43            o32 push byte +0x43
00001940  66E8A3FFFFFF      call dword 0x18e9
00001946  6683C404          add esp,byte +0x4
0000194A  666A48            o32 push byte +0x48
0000194D  66E896FFFFFF      call dword 0x18e9
00001953  6683C404          add esp,byte +0x4
00001957  666A21            o32 push byte +0x21
0000195A  66E889FFFFFF      call dword 0x18e9
00001960  6683C404          add esp,byte +0x4
00001964  666A0D            o32 push byte +0xd
00001967  66E87CFFFFFF      call dword 0x18e9
0000196D  6683C404          add esp,byte +0x4
00001971  666A0A            o32 push byte +0xa
00001974  66E86FFFFFFF      call dword 0x18e9
0000197A  6683C404          add esp,byte +0x4
0000197E  66C9              o32 leave
00001980  66C3              o32 ret
00001982  6655              push ebp
00001984  6689E5            mov ebp,esp
00001987  6683EC04          sub esp,byte +0x4
0000198B  67668B4508        mov eax,[ebp+0x8]
00001990  678845FC          mov [ebp-0x4],al
00001994  67660FB645FC      movzx eax,byte [ebp-0x4]
0000199A  6683E830          sub eax,byte +0x30
0000199E  66C9              o32 leave
000019A0  66C3              o32 ret
000019A2  6655              push ebp
000019A4  6689E5            mov ebp,esp
000019A7  6683EC08          sub esp,byte +0x8
000019AB  67668B450C        mov eax,[ebp+0xc]
000019B0  678945F8          mov [ebp-0x8],ax
000019B4  67C745FE0000      mov word [ebp-0x2],0x0
000019BA  EB40              jmp short 0x19fc
000019BC  67668B4508        mov eax,[ebp+0x8]
000019C1  67660FB600        movzx eax,byte [eax]
000019C6  3C60              cmp al,0x60
000019C8  7E27              jng 0x19f1
000019CA  67668B4508        mov eax,[ebp+0x8]
000019CF  67660FB600        movzx eax,byte [eax]
000019D4  3C7A              cmp al,0x7a
000019D6  7F19              jg 0x19f1
000019D8  67668B4508        mov eax,[ebp+0x8]
000019DD  67660FB600        movzx eax,byte [eax]
000019E2  6683E820          sub eax,byte +0x20
000019E6  6689C2            mov edx,eax
000019E9  67668B4508        mov eax,[ebp+0x8]
000019EE  678810            mov [eax],dl
000019F1  676683450801      add dword [ebp+0x8],byte +0x1
000019F7  678345FE01        add word [ebp-0x2],byte +0x1
000019FC  67660FB745FE      movzx eax,word [ebp-0x2]
00001A02  673B45F8          cmp ax,[ebp-0x8]
00001A06  72B4              jc 0x19bc
00001A08  66C9              o32 leave
00001A0A  66C3              o32 ret
00001A0C  6655              push ebp
00001A0E  6689E5            mov ebp,esp
00001A11  6683EC08          sub esp,byte +0x8
00001A15  67668B450C        mov eax,[ebp+0xc]
00001A1A  678945F8          mov [ebp-0x8],ax
00001A1E  67C745FE0000      mov word [ebp-0x2],0x0
00001A24  EB40              jmp short 0x1a66
00001A26  67668B4508        mov eax,[ebp+0x8]
00001A2B  67660FB600        movzx eax,byte [eax]
00001A30  3C40              cmp al,0x40
00001A32  7E27              jng 0x1a5b
00001A34  67668B4508        mov eax,[ebp+0x8]
00001A39  67660FB600        movzx eax,byte [eax]
00001A3E  3C5A              cmp al,0x5a
00001A40  7F19              jg 0x1a5b
00001A42  67668B4508        mov eax,[ebp+0x8]
00001A47  67660FB600        movzx eax,byte [eax]
00001A4C  6683C020          add eax,byte +0x20
00001A50  6689C2            mov edx,eax
00001A53  67668B4508        mov eax,[ebp+0x8]
00001A58  678810            mov [eax],dl
00001A5B  676683450801      add dword [ebp+0x8],byte +0x1
00001A61  678345FE01        add word [ebp-0x2],byte +0x1
00001A66  67660FB745FE      movzx eax,word [ebp-0x2]
00001A6C  673B45F8          cmp ax,[ebp-0x8]
00001A70  72B4              jc 0x1a26
00001A72  66C9              o32 leave
00001A74  66C3              o32 ret
00001A76  6655              push ebp
00001A78  6689E5            mov ebp,esp
00001A7B  6683EC04          sub esp,byte +0x4
00001A7F  67668B4508        mov eax,[ebp+0x8]
00001A84  678845FC          mov [ebp-0x4],al
00001A88  67660FB645FC      movzx eax,byte [ebp-0x4]
00001A8E  6683C030          add eax,byte +0x30
00001A92  66C9              o32 leave
00001A94  66C3              o32 ret
00001A96  6655              push ebp
00001A98  6689E5            mov ebp,esp
00001A9B  EB20              jmp short 0x1abd
00001A9D  67668B4508        mov eax,[ebp+0x8]
00001AA2  67660FB600        movzx eax,byte [eax]
00001AA7  660FBEC0          movsx eax,al
00001AAB  6650              push eax
00001AAD  66E836FEFFFF      call dword 0x18e9
00001AB3  6683C404          add esp,byte +0x4
00001AB7  676683450801      add dword [ebp+0x8],byte +0x1
00001ABD  67668B4508        mov eax,[ebp+0x8]
00001AC2  67660FB600        movzx eax,byte [eax]
00001AC7  84C0              test al,al
00001AC9  75D2              jnz 0x1a9d
00001ACB  66C9              o32 leave
00001ACD  66C3              o32 ret
00001ACF  005374            add [bp+di+0x74],dl
00001AD2  6561              gs popaw
00001AD4  6D                insw
00001AD5  204F53            and [bx+0x53],cl
00001AD8  207634            and [bp+0x34],dh
00001ADB  2E300A            xor [cs:bp+si],cl
00001ADE  43                inc bx
00001ADF  6F                outsw
00001AE0  7079              jo 0x1b5b
00001AE2  7269              jc 0x1b4d
00001AE4  67687420          push word 0x2074
00001AE8  286329            sub [bp+di+0x29],ah
00001AEB  2032              and [bp+si],dh
00001AED  3031              xor [bx+di],dh
00001AEF  352047            xor ax,0x4720
00001AF2  61                popaw
00001AF3  6F                outsw
00001AF4  7962              jns 0x1b58
00001AF6  37                aaa
00001AF7  2E0A5479          or dl,[cs:si+0x79]
00001AFB  7065              jo 0x1b62
00001AFD  2027              and [bx],ah
00001AFF  68656C            push word 0x6c65
00001B02  7027              jo 0x1b2b
00001B04  20666F            and [bp+0x6f],ah
00001B07  7220              jc 0x1b29
00001B09  6D                insw
00001B0A  6F                outsw
00001B0B  7265              jc 0x1b72
00001B0D  20696E            and [bx+di+0x6e],ch
00001B10  666F              outsd
00001B12  726D              jc 0x1b81
00001B14  61                popaw
00001B15  7469              jz 0x1b80
00001B17  6F                outsw
00001B18  6E                outsb
00001B19  2E0A0A            or cl,[cs:bp+si]
00001B1C  007368            add [bp+di+0x68],dh
00001B1F  007C2F            add [si+0x2f],bh
00001B22  2D5C00            sub ax,0x5c
00001B25  0820              or [bx+si],ah
00001B27  0800              or [bx+si],al
00001B29  0A00              or al,[bx+si]
00001B2B  003D              add [di],bh
00001B2D  203D              and [di],bh
00001B2F  210A              and [bp+si],cx
00001B31  0000              add [bx+si],al
00001B33  003D              add [di],bh
00001B35  3D3D3D            cmp ax,0x3d3d
00001B38  3D3D3D            cmp ax,0x3d3d
00001B3B  3D3D3D            cmp ax,0x3d3d
00001B3E  3D3D3D            cmp ax,0x3d3d
00001B41  3D3D3D            cmp ax,0x3d3d
00001B44  3D3D3D            cmp ax,0x3d3d
00001B47  3D3D3D            cmp ax,0x3d3d
00001B4A  3D3D3D            cmp ax,0x3d3d
00001B4D  3D3D3D            cmp ax,0x3d3d
00001B50  3D3D3D            cmp ax,0x3d3d
00001B53  3D3D3D            cmp ax,0x3d3d
00001B56  3D3D3D            cmp ax,0x3d3d
00001B59  3D3D3D            cmp ax,0x3d3d
00001B5C  3D3D3D            cmp ax,0x3d3d
00001B5F  3D3D3D            cmp ax,0x3d3d
00001B62  3D3D3D            cmp ax,0x3d3d
00001B65  3D0A00            cmp ax,0xa
00001B68  7069              jo 0x1bd3
00001B6A  643A20            cmp ah,[fs:bx+si]
00001B6D  256420            and ax,0x2064
00001B70  7C20              jl 0x1b92
00001B72  6E                outsb
00001B73  61                popaw
00001B74  6D                insw
00001B75  653A20            cmp ah,[gs:bx+si]
00001B78  257320            and ax,0x2073
00001B7B  7C20              jl 0x1b9d
00001B7D  7374              jnc 0x1bf3
00001B7F  61                popaw
00001B80  743A              jz 0x1bbc
00001B82  2025              and [di],ah
00001B84  64200A            and [fs:bp+si],cl
00001B87  007373            add [bp+di+0x73],dh
00001B8A  3A20              cmp ah,[bx+si]
00001B8C  257820            and ax,0x2078
00001B8F  7C20              jl 0x1bb1
00001B91  67733A            jnc 0x1bce
00001B94  2025              and [di],ah
00001B96  7820              js 0x1bb8
00001B98  7C20              jl 0x1bba
00001B9A  66733A            o32 jnc 0x1bd7
00001B9D  2025              and [di],ah
00001B9F  7820              js 0x1bc1
00001BA1  7C20              jl 0x1bc3
00001BA3  65733A            gs jnc 0x1be0
00001BA6  2025              and [di],ah
00001BA8  7820              js 0x1bca
00001BAA  7C20              jl 0x1bcc
00001BAC  64733A            fs jnc 0x1be9
00001BAF  2025              and [di],ah
00001BB1  780A              js 0x1bbd
00001BB3  006469            add [si+0x69],ah
00001BB6  3A20              cmp ah,[bx+si]
00001BB8  257820            and ax,0x2078
00001BBB  7C20              jl 0x1bdd
00001BBD  7369              jnc 0x1c28
00001BBF  3A20              cmp ah,[bx+si]
00001BC1  257820            and ax,0x2078
00001BC4  7C20              jl 0x1be6
00001BC6  62703A            bound si,[bx+si+0x3a]
00001BC9  2025              and [di],ah
00001BCB  7820              js 0x1bed
00001BCD  7C20              jl 0x1bef
00001BCF  7370              jnc 0x1c41
00001BD1  3A20              cmp ah,[bx+si]
00001BD3  25780A            and ax,0xa78
00001BD6  0000              add [bx+si],al
00001BD8  61                popaw
00001BD9  783A              js 0x1c15
00001BDB  2025              and [di],ah
00001BDD  7820              js 0x1bff
00001BDF  7C20              jl 0x1c01
00001BE1  62783A            bound di,[bx+si+0x3a]
00001BE4  2025              and [di],ah
00001BE6  7820              js 0x1c08
00001BE8  7C20              jl 0x1c0a
00001BEA  63783A            arpl [bx+si+0x3a],di
00001BED  2025              and [di],ah
00001BEF  7820              js 0x1c11
00001BF1  7C20              jl 0x1c13
00001BF3  64783A            fs js 0x1c30
00001BF6  2025              and [di],ah
00001BF8  780A              js 0x1c04
00001BFA  0000              add [bx+si],al
00001BFC  63733A            arpl [bp+di+0x3a],si
00001BFF  2025              and [di],ah
00001C01  7820              js 0x1c23
00001C03  7C20              jl 0x1c25
00001C05  69703A2025        imul si,[bx+si+0x3a],word 0x2520
00001C0A  7820              js 0x1c2c
00001C0C  7C20              jl 0x1c2e
00001C0E  666C              o32 insb
00001C10  61                popaw
00001C11  67733A            jnc 0x1c4e
00001C14  2025              and [di],ah
00001C16  7820              js 0x1c38
00001C18  7C20              jl 0x1c3a
00001C1A  7761              ja 0x1c7d
00001C1C  69743A2025        imul si,[si+0x3a],word 0x2520
00001C21  640A00            or al,[fs:bx+si]
00001C24  1400              adc al,0x0
00001C26  0000              add [bx+si],al
00001C28  0000              add [bx+si],al
00001C2A  0000              add [bx+si],al
00001C2C  017A52            add [bp+si+0x52],di
00001C2F  0001              add [bx+di],al
00001C31  7C08              jl 0x1c3b
00001C33  011B              add [bp+di],bx
00001C35  0C04              or al,0x4
00001C37  0488              add al,0x88
00001C39  0100              add [bx+si],ax
00001C3B  001C              add [si],bl
00001C3D  0000              add [bx+si],al
00001C3F  001C              add [si],bl
00001C41  0000              add [bx+si],al
00001C43  00C7              add bh,al
00001C45  E3FF              jcxz 0x1c46
00001C47  FF34              push word [si]
00001C49  0000              add [bx+si],al
00001C4B  0000              add [bx+si],al
00001C4D  42                inc dx
00001C4E  0E                push cs
00001C4F  08850243          or [di+0x4302],al
00001C53  0D056D            or ax,0x6d05
00001C56  C50C              lds cx,[si]
00001C58  0404              add al,0x4
00001C5A  0000              add [bx+si],al
00001C5C  1C00              sbb al,0x0
00001C5E  0000              add [bx+si],al
00001C60  3C00              cmp al,0x0
00001C62  0000              add [bx+si],al
00001C64  DBE3              fninit
00001C66  FF                db 0xff
00001C67  FF1F              call word far [bx]
00001C69  0000              add [bx+si],al
00001C6B  0000              add [bx+si],al
00001C6D  42                inc dx
00001C6E  0E                push cs
00001C6F  08850243          or [di+0x4302],al
00001C73  0D0558            or ax,0x5805
00001C76  C50C              lds cx,[si]
00001C78  0404              add al,0x4
00001C7A  0000              add [bx+si],al
00001C7C  1C00              sbb al,0x0
00001C7E  0000              add [bx+si],al
00001C80  5C                pop sp
00001C81  0000              add [bx+si],al
00001C83  00DA              add dl,bl
00001C85  E3FF              jcxz 0x1c86
00001C87  FFA10000          jmp word [bx+di+0x0]
00001C8B  0000              add [bx+si],al
00001C8D  42                inc dx
00001C8E  0E                push cs
00001C8F  08850243          or [di+0x4302],al
00001C93  0D0502            or ax,0x205
00001C96  9AC50C0404        call word 0x404:0xcc5
00001C9B  0014              add [si],dl
00001C9D  0000              add [bx+si],al
00001C9F  0000              add [bx+si],al
00001CA1  0000              add [bx+si],al
00001CA3  0001              add [bx+di],al
00001CA5  7A52              jpe 0x1cf9
00001CA7  0001              add [bx+di],al
00001CA9  7C08              jl 0x1cb3
00001CAB  011B              add [bp+di],bx
00001CAD  0C04              or al,0x4
00001CAF  0488              add al,0x88
00001CB1  0100              add [bx+si],ax
00001CB3  001C              add [si],bl
00001CB5  0000              add [bx+si],al
00001CB7  001C              add [si],bl
00001CB9  0000              add [bx+si],al
00001CBB  0043E4            add [bp+di-0x1c],al
00001CBE  FF                db 0xff
00001CBF  FF                db 0xff
00001CC0  BB0000            mov bx,0x0
00001CC3  0000              add [bx+si],al
00001CC5  42                inc dx
00001CC6  0E                push cs
00001CC7  08850243          or [di+0x4302],al
00001CCB  0D0502            or ax,0x205
00001CCE  B4C5              mov ah,0xc5
00001CD0  0C04              or al,0x4
00001CD2  0400              add al,0x0
00001CD4  1C00              sbb al,0x0
00001CD6  0000              add [bx+si],al
00001CD8  3C00              cmp al,0x0
00001CDA  0000              add [bx+si],al
00001CDC  DEE4              fsubrp st4
00001CDE  FF                db 0xff
00001CDF  FFA30000          jmp word [bp+di+0x0]
00001CE3  0000              add [bx+si],al
00001CE5  42                inc dx
00001CE6  0E                push cs
00001CE7  08850243          or [di+0x4302],al
00001CEB  0D0502            or ax,0x205
00001CEE  9C                pushfw
00001CEF  C50C              lds cx,[si]
00001CF1  0404              add al,0x4
00001CF3  001C              add [si],bl
00001CF5  0000              add [bx+si],al
00001CF7  005C00            add [si+0x0],bl
00001CFA  0000              add [bx+si],al
00001CFC  61                popaw
00001CFD  E5FF              in ax,0xff
00001CFF  FF                db 0xff
00001D00  3D0100            cmp ax,0x1
00001D03  0000              add [bx+si],al
00001D05  42                inc dx
00001D06  0E                push cs
00001D07  08850243          or [di+0x4302],al
00001D0B  0D0503            or ax,0x305
00001D0E  3601C5            ss add bp,ax
00001D11  0C04              or al,0x4
00001D13  041C              add al,0x1c
00001D15  0000              add [bx+si],al
00001D17  007C00            add [si+0x0],bh
00001D1A  0000              add [bx+si],al
00001D1C  7EE6              jng 0x1d04
00001D1E  FF                db 0xff
00001D1F  FF                db 0xff
00001D20  3E0000            add [ds:bx+si],al
00001D23  0000              add [bx+si],al
00001D25  42                inc dx
00001D26  0E                push cs
00001D27  08850243          or [di+0x4302],al
00001D2B  0D0577            or ax,0x7705
00001D2E  C50C              lds cx,[si]
00001D30  0404              add al,0x4
00001D32  0000              add [bx+si],al
00001D34  1C00              sbb al,0x0
00001D36  0000              add [bx+si],al
00001D38  9C                pushfw
00001D39  0000              add [bx+si],al
00001D3B  009CE6FF          add [si-0x1a],bl
00001D3F  FF870000          inc word [bx+0x0]
00001D43  0000              add [bx+si],al
00001D45  42                inc dx
00001D46  0E                push cs
00001D47  08850243          or [di+0x4302],al
00001D4B  0D0502            or ax,0x205
00001D4E  80C50C            add ch,0xc
00001D51  0404              add al,0x4
00001D53  001C              add [si],bl
00001D55  0000              add [bx+si],al
00001D57  00BC0000          add [si+0x0],bh
00001D5B  0003              add [bp+di],al
00001D5D  E7FF              out 0xff,ax
00001D5F  FF21              jmp word [bx+di]
00001D61  0200              add al,[bx+si]
00001D63  0000              add [bx+si],al
00001D65  42                inc dx
00001D66  0E                push cs
00001D67  08850243          or [di+0x4302],al
00001D6B  0D0503            or ax,0x305
00001D6E  1A02              sbb al,[bp+si]
00001D70  C50C              lds cx,[si]
00001D72  0404              add al,0x4
00001D74  1C00              sbb al,0x0
00001D76  0000              add [bx+si],al
00001D78  DC00              fadd qword [bx+si]
00001D7A  0000              add [bx+si],al
00001D7C  04E9              add al,0xe9
00001D7E  FF                db 0xff
00001D7F  FF1E0200          call word far [0x2]
00001D83  0000              add [bx+si],al
00001D85  42                inc dx
00001D86  0E                push cs
00001D87  08850243          or [di+0x4302],al
00001D8B  0D0503            or ax,0x305
00001D8E  17                pop ss
00001D8F  02C5              add al,ch
00001D91  0C04              or al,0x4
00001D93  041C              add al,0x1c
00001D95  0000              add [bx+si],al
00001D97  00FC              add ah,bh
00001D99  0000              add [bx+si],al
00001D9B  0002              add [bp+si],al
00001D9D  EBFF              jmp short 0x1d9e
00001D9F  FF03              inc word [bp+di]
00001DA1  0100              add [bx+si],ax
00001DA3  0000              add [bx+si],al
00001DA5  42                inc dx
00001DA6  0E                push cs
00001DA7  08850243          or [di+0x4302],al
00001DAB  0D0502            or ax,0x205
00001DAE  FC                cld
00001DAF  C50C              lds cx,[si]
00001DB1  0404              add al,0x4
00001DB3  0014              add [si],dl
00001DB5  0000              add [bx+si],al
00001DB7  0000              add [bx+si],al
00001DB9  0000              add [bx+si],al
00001DBB  0001              add [bx+di],al
00001DBD  7A52              jpe 0x1e11
00001DBF  0001              add [bx+di],al
00001DC1  7C08              jl 0x1dcb
00001DC3  011B              add [bp+di],bx
00001DC5  0C04              or al,0x4
00001DC7  0488              add al,0x88
00001DC9  0100              add [bx+si],ax
00001DCB  001C              add [si],bl
00001DCD  0000              add [bx+si],al
00001DCF  001C              add [si],bl
00001DD1  0000              add [bx+si],al
00001DD3  000B              add [bp+di],cl
00001DD5  ED                in ax,dx
00001DD6  FF                db 0xff
00001DD7  FF1F              call word far [bx]
00001DD9  0000              add [bx+si],al
00001DDB  0000              add [bx+si],al
00001DDD  42                inc dx
00001DDE  0E                push cs
00001DDF  08850243          or [di+0x4302],al
00001DE3  0D0558            or ax,0x5805
00001DE6  C50C              lds cx,[si]
00001DE8  0404              add al,0x4
00001DEA  0000              add [bx+si],al
00001DEC  2000              and [bx+si],al
00001DEE  0000              add [bx+si],al
00001DF0  3C00              cmp al,0x0
00001DF2  0000              add [bx+si],al
00001DF4  0AED              or ch,ch
00001DF6  FF                db 0xff
00001DF7  FF35              push word [di]
00001DF9  0000              add [bx+si],al
00001DFB  0000              add [bx+si],al
00001DFD  42                inc dx
00001DFE  0E                push cs
00001DFF  08850243          or [di+0x4302],al
00001E03  0D0546            or ax,0x4605
00001E06  830366            add word [bp+di],byte +0x66
00001E09  C3                ret
00001E0A  42                inc dx
00001E0B  C50C              lds cx,[si]
00001E0D  0404              add al,0x4
00001E0F  001C              add [si],bl
00001E11  0000              add [bx+si],al
00001E13  006000            add [bx+si+0x0],ah
00001E16  0000              add [bx+si],al
00001E18  1BED              sbb bp,bp
00001E1A  FF                db 0xff
00001E1B  FF160000          call word [0x0]
00001E1F  0000              add [bx+si],al
00001E21  42                inc dx
00001E22  0E                push cs
00001E23  08850243          or [di+0x4302],al
00001E27  0D054F            or ax,0x4f05
00001E2A  C50C              lds cx,[si]
00001E2C  0404              add al,0x4
00001E2E  0000              add [bx+si],al
00001E30  1C00              sbb al,0x0
00001E32  0000              add [bx+si],al
00001E34  800000            add byte [bx+si],0x0
00001E37  0011              add [bx+di],dl
00001E39  ED                in ax,dx
00001E3A  FF                db 0xff
00001E3B  FF5400            call word [si+0x0]
00001E3E  0000              add [bx+si],al
00001E40  00420E            add [bp+si+0xe],al
00001E43  08850243          or [di+0x4302],al
00001E47  0D0502            or ax,0x205
00001E4A  4D                dec bp
00001E4B  C50C              lds cx,[si]
00001E4D  0404              add al,0x4
00001E4F  001C              add [si],bl
00001E51  0000              add [bx+si],al
00001E53  00A00000          add [bx+si+0x0],ah
00001E57  0045ED            add [di-0x13],al
00001E5A  FF                db 0xff
00001E5B  FFB10000          push word [bx+di+0x0]
00001E5F  0000              add [bx+si],al
00001E61  42                inc dx
00001E62  0E                push cs
00001E63  08850243          or [di+0x4302],al
00001E67  0D0502            or ax,0x205
00001E6A  AA                stosb
00001E6B  C50C              lds cx,[si]
00001E6D  0404              add al,0x4
00001E6F  001C              add [si],bl
00001E71  0000              add [bx+si],al
00001E73  00C0              add al,al
00001E75  0000              add [bx+si],al
00001E77  00D6              add dh,dl
00001E79  ED                in ax,dx
00001E7A  FF                db 0xff
00001E7B  FF6A00            jmp word far [bp+si+0x0]
00001E7E  0000              add [bx+si],al
00001E80  00420E            add [bp+si+0xe],al
00001E83  08850243          or [di+0x4302],al
00001E87  0D0502            or ax,0x205
00001E8A  63C5              arpl bp,ax
00001E8C  0C04              or al,0x4
00001E8E  0400              add al,0x0
00001E90  1C00              sbb al,0x0
00001E92  0000              add [bx+si],al
00001E94  E000              loopne 0x1e96
00001E96  0000              add [bx+si],al
00001E98  20EE              and dh,ch
00001E9A  FF                db 0xff
00001E9B  FF07              inc word [bx]
00001E9D  0100              add [bx+si],ax
00001E9F  0000              add [bx+si],al
00001EA1  42                inc dx
00001EA2  0E                push cs
00001EA3  08850243          or [di+0x4302],al
00001EA7  0D0503            or ax,0x305
00001EAA  0001              add [bx+di],al
00001EAC  C50C              lds cx,[si]
00001EAE  0404              add al,0x4
00001EB0  2000              and [bx+si],al
00001EB2  0000              add [bx+si],al
00001EB4  0001              add [bx+di],al
00001EB6  0000              add [bx+si],al
00001EB8  07                pop es
00001EB9  EF                out dx,ax
00001EBA  FF                db 0xff
00001EBB  FF2F              jmp word far [bx]
00001EBD  0100              add [bx+si],ax
00001EBF  0000              add [bx+si],al
00001EC1  42                inc dx
00001EC2  0E                push cs
00001EC3  08850243          or [di+0x4302],al
00001EC7  0D0546            or ax,0x4605
00001ECA  830303            add word [bp+di],byte +0x3
00001ECD  2201              and al,[bx+di]
00001ECF  C5                db 0xc5
00001ED0  C3                ret
00001ED1  0C04              or al,0x4
00001ED3  0424              add al,0x24
00001ED5  0000              add [bx+si],al
00001ED7  0024              add [si],ah
00001ED9  0100              add [bx+si],ax
00001EDB  0012              add [bp+si],dl
00001EDD  F0                lock
00001EDE  FF                db 0xff
00001EDF  FF                db 0xff
00001EE0  DF01              fild word [bx+di]
00001EE2  0000              add [bx+si],al
00001EE4  00420E            add [bp+si+0xe],al
00001EE7  08850243          or [di+0x4302],al
00001EEB  0D0546            or ax,0x4605
00001EEE  830303            add word [bp+di],byte +0x3
00001EF1  D001              rol byte [bx+di],1
00001EF3  C3                ret
00001EF4  42                inc dx
00001EF5  C50C              lds cx,[si]
00001EF7  0404              add al,0x4
00001EF9  0000              add [bx+si],al
00001EFB  0014              add [si],dl
00001EFD  0000              add [bx+si],al
00001EFF  0000              add [bx+si],al
00001F01  0000              add [bx+si],al
00001F03  0001              add [bx+di],al
00001F05  7A52              jpe 0x1f59
00001F07  0001              add [bx+di],al
00001F09  7C08              jl 0x1f13
00001F0B  011B              add [bp+di],bx
00001F0D  0C04              or al,0x4
00001F0F  0488              add al,0x88
00001F11  0100              add [bx+si],ax
00001F13  001C              add [si],bl
00001F15  0000              add [bx+si],al
00001F17  001C              add [si],bl
00001F19  0000              add [bx+si],al
00001F1B  00B1F1FF          add [bx+di-0xf],dh
00001F1F  FF11              call word [bx+di]
00001F21  0000              add [bx+si],al
00001F23  0000              add [bx+si],al
00001F25  42                inc dx
00001F26  0E                push cs
00001F27  08850243          or [di+0x4302],al
00001F2B  0D054A            or ax,0x4a05
00001F2E  C50C              lds cx,[si]
00001F30  0404              add al,0x4
00001F32  0000              add [bx+si],al
00001F34  2000              and [bx+si],al
00001F36  0000              add [bx+si],al
00001F38  3C00              cmp al,0x0
00001F3A  0000              add [bx+si],al
00001F3C  A2F1FF            mov [0xfff1],al
00001F3F  FF30              push word [bx+si]
00001F41  0000              add [bx+si],al
00001F43  0000              add [bx+si],al
00001F45  42                inc dx
00001F46  0E                push cs
00001F47  08850243          or [di+0x4302],al
00001F4B  0D0546            or ax,0x4605
00001F4E  830361            add word [bp+di],byte +0x61
00001F51  C3                ret
00001F52  42                inc dx
00001F53  C50C              lds cx,[si]
00001F55  0404              add al,0x4
00001F57  0020              add [bx+si],ah
00001F59  0000              add [bx+si],al
00001F5B  006000            add [bx+si+0x0],ah
00001F5E  0000              add [bx+si],al
00001F60  AE                scasb
00001F61  F1                int1
00001F62  FF                db 0xff
00001F63  FF                db 0xff
00001F64  3B00              cmp ax,[bx+si]
00001F66  0000              add [bx+si],al
00001F68  00420E            add [bp+si+0xe],al
00001F6B  08850243          or [di+0x4302],al
00001F6F  0D0546            or ax,0x4605
00001F72  83036C            add word [bp+di],byte +0x6c
00001F75  C3                ret
00001F76  42                inc dx
00001F77  C50C              lds cx,[si]
00001F79  0404              add al,0x4
00001F7B  0020              add [bx+si],ah
00001F7D  0000              add [bx+si],al
00001F7F  00840000          add [si+0x0],al
00001F83  00C5              add ch,al
00001F85  F1                int1
00001F86  FF                db 0xff
00001F87  FF33              push word [bp+di]
00001F89  0000              add [bx+si],al
00001F8B  0000              add [bx+si],al
00001F8D  42                inc dx
00001F8E  0E                push cs
00001F8F  08850243          or [di+0x4302],al
00001F93  0D0546            or ax,0x4605
00001F96  830364            add word [bp+di],byte +0x64
00001F99  C3                ret
00001F9A  42                inc dx
00001F9B  C50C              lds cx,[si]
00001F9D  0404              add al,0x4
00001F9F  0020              add [bx+si],ah
00001FA1  0000              add [bx+si],al
00001FA3  00A80000          add [bx+si+0x0],ch
00001FA7  00D4              add ah,dl
00001FA9  F1                int1
00001FAA  FF                db 0xff
00001FAB  FF35              push word [di]
00001FAD  0000              add [bx+si],al
00001FAF  0000              add [bx+si],al
00001FB1  42                inc dx
00001FB2  0E                push cs
00001FB3  08850243          or [di+0x4302],al
00001FB7  0D0546            or ax,0x4605
00001FBA  830366            add word [bp+di],byte +0x66
00001FBD  C3                ret
00001FBE  42                inc dx
00001FBF  C50C              lds cx,[si]
00001FC1  0404              add al,0x4
00001FC3  001C              add [si],bl
00001FC5  0000              add [bx+si],al
00001FC7  00CC              add ah,cl
00001FC9  0000              add [bx+si],al
00001FCB  00E5              add ch,ah
00001FCD  F1                int1
00001FCE  FF                db 0xff
00001FCF  FF2A              jmp word far [bp+si]
00001FD1  0000              add [bx+si],al
00001FD3  0000              add [bx+si],al
00001FD5  42                inc dx
00001FD6  0E                push cs
00001FD7  08850243          or [di+0x4302],al
00001FDB  0D0563            or ax,0x6305
00001FDE  C50C              lds cx,[si]
00001FE0  0404              add al,0x4
00001FE2  0000              add [bx+si],al
00001FE4  2000              and [bx+si],al
00001FE6  0000              add [bx+si],al
00001FE8  EC                in al,dx
00001FE9  0000              add [bx+si],al
00001FEB  00EF              add bh,ch
00001FED  F1                int1
00001FEE  FF                db 0xff
00001FEF  FF35              push word [di]
00001FF1  0000              add [bx+si],al
00001FF3  0000              add [bx+si],al
00001FF5  42                inc dx
00001FF6  0E                push cs
00001FF7  08850243          or [di+0x4302],al
00001FFB  0D0546            or ax,0x4605
00001FFE  830366            add word [bp+di],byte +0x66
00002001  C3                ret
00002002  42                inc dx
00002003  C50C              lds cx,[si]
00002005  0404              add al,0x4
00002007  002C              add [si],ch
00002009  0000              add [bx+si],al
0000200B  0010              add [bx+si],dl
0000200D  0100              add [bx+si],ax
0000200F  0000              add [bx+si],al
00002011  F2                repne
00002012  FF                db 0xff
00002013  FF29              jmp word far [bx+di]
00002015  0100              add [bx+si],ax
00002017  0000              add [bx+si],al
00002019  42                inc dx
0000201A  0E                push cs
0000201B  08850243          or [di+0x4302],al
0000201F  0D054A            or ax,0x4a05
00002022  8703              xchg ax,[bp+di]
00002024  8604              xchg al,[si]
00002026  830503            add word [di],byte +0x3
00002029  1201              adc al,[bx+di]
0000202B  C3                ret
0000202C  42                inc dx
0000202D  C642C742          mov byte [bp+si-0x39],0x42
00002031  C50C              lds cx,[si]
00002033  0404              add al,0x4
00002035  0000              add [bx+si],al
00002037  001C              add [si],bl
00002039  0000              add [bx+si],al
0000203B  004001            add [bx+si+0x1],al
0000203E  0000              add [bx+si],al
00002040  F9                stc
00002041  F2                repne
00002042  FF                db 0xff
00002043  FF7600            push word [bp+0x0]
00002046  0000              add [bx+si],al
00002048  00420E            add [bp+si+0xe],al
0000204B  08850243          or [di+0x4302],al
0000204F  0D0502            or ax,0x205
00002052  6F                outsw
00002053  C50C              lds cx,[si]
00002055  0404              add al,0x4
00002057  001C              add [si],bl
00002059  0000              add [bx+si],al
0000205B  006001            add [bx+si+0x1],ah
0000205E  0000              add [bx+si],al
00002060  4F                dec di
00002061  F3                rep
00002062  FF                db 0xff
00002063  FF4500            inc word [di+0x0]
00002066  0000              add [bx+si],al
00002068  00420E            add [bp+si+0xe],al
0000206B  08850243          or [di+0x4302],al
0000206F  0D057E            or ax,0x7e05
00002072  C50C              lds cx,[si]
00002074  0404              add al,0x4
00002076  0000              add [bx+si],al
00002078  1400              adc al,0x0
0000207A  0000              add [bx+si],al
0000207C  0000              add [bx+si],al
0000207E  0000              add [bx+si],al
00002080  017A52            add [bp+si+0x52],di
00002083  0001              add [bx+di],al
00002085  7C08              jl 0x208f
00002087  011B              add [bp+di],bx
00002089  0C04              or al,0x4
0000208B  0488              add al,0x88
0000208D  0100              add [bx+si],ax
0000208F  001C              add [si],bl
00002091  0000              add [bx+si],al
00002093  001C              add [si],bl
00002095  0000              add [bx+si],al
00002097  00F2              add dl,dh
00002099  F3                rep
0000209A  FF                db 0xff
0000209B  FF35              push word [di]
0000209D  0000              add [bx+si],al
0000209F  0000              add [bx+si],al
000020A1  42                inc dx
000020A2  0E                push cs
000020A3  08850243          or [di+0x4302],al
000020A7  0D056E            or ax,0x6e05
000020AA  C50C              lds cx,[si]
000020AC  0404              add al,0x4
000020AE  0000              add [bx+si],al
000020B0  1C00              sbb al,0x0
000020B2  0000              add [bx+si],al
000020B4  3C00              cmp al,0x0
000020B6  0000              add [bx+si],al
000020B8  07                pop es
000020B9  F4                hlt
000020BA  FF                db 0xff
000020BB  FF35              push word [di]
000020BD  0000              add [bx+si],al
000020BF  0000              add [bx+si],al
000020C1  42                inc dx
000020C2  0E                push cs
000020C3  08850243          or [di+0x4302],al
000020C7  0D056E            or ax,0x6e05
000020CA  C50C              lds cx,[si]
000020CC  0404              add al,0x4
000020CE  0000              add [bx+si],al
000020D0  1C00              sbb al,0x0
000020D2  0000              add [bx+si],al
000020D4  5C                pop sp
000020D5  0000              add [bx+si],al
000020D7  001C              add [si],bl
000020D9  F4                hlt
000020DA  FF                db 0xff
000020DB  FF5700            call word [bx+0x0]
000020DE  0000              add [bx+si],al
000020E0  00420E            add [bp+si+0xe],al
000020E3  08850243          or [di+0x4302],al
000020E7  0D0502            or ax,0x205
000020EA  50                push ax
000020EB  C50C              lds cx,[si]
000020ED  0404              add al,0x4
000020EF  001C              add [si],bl
000020F1  0000              add [bx+si],al
000020F3  007C00            add [si+0x0],bh
000020F6  0000              add [bx+si],al
000020F8  53                push bx
000020F9  F4                hlt
000020FA  FF                db 0xff
000020FB  FF6700            jmp word [bx+0x0]
000020FE  0000              add [bx+si],al
00002100  00420E            add [bp+si+0xe],al
00002103  08850243          or [di+0x4302],al
00002107  0D0502            or ax,0x205
0000210A  60                pushaw
0000210B  C50C              lds cx,[si]
0000210D  0404              add al,0x4
0000210F  001C              add [si],bl
00002111  0000              add [bx+si],al
00002113  009C0000          add [si+0x0],bl
00002117  009AF4FF          add [bp+si-0xc],bl
0000211B  FF0D              dec word [di]
0000211D  0000              add [bx+si],al
0000211F  0000              add [bx+si],al
00002121  42                inc dx
00002122  0E                push cs
00002123  08850243          or [di+0x4302],al
00002127  0D0546            or ax,0x4605
0000212A  C50C              lds cx,[si]
0000212C  0404              add al,0x4
0000212E  0000              add [bx+si],al
00002130  1C00              sbb al,0x0
00002132  0000              add [bx+si],al
00002134  BC0000            mov sp,0x0
00002137  0087F4FF          add [bx-0xc],al
0000213B  FF0B              dec word [bp+di]
0000213D  0000              add [bx+si],al
0000213F  0000              add [bx+si],al
00002141  42                inc dx
00002142  0E                push cs
00002143  08850243          or [di+0x4302],al
00002147  0D0544            or ax,0x4405
0000214A  C50C              lds cx,[si]
0000214C  0404              add al,0x4
0000214E  0000              add [bx+si],al
00002150  2000              and [bx+si],al
00002152  0000              add [bx+si],al
00002154  DC00              fadd qword [bx+si]
00002156  0000              add [bx+si],al
00002158  72F4              jc 0x214e
0000215A  FF                db 0xff
0000215B  FFAA0100          jmp word far [bp+si+0x1]
0000215F  0000              add [bx+si],al
00002161  42                inc dx
00002162  0E                push cs
00002163  08850243          or [di+0x4302],al
00002167  0D0546            or ax,0x4605
0000216A  830303            add word [bp+di],byte +0x3
0000216D  9D                popfw
0000216E  01C5              add bp,ax
00002170  C3                ret
00002171  0C04              or al,0x4
00002173  0428              add al,0x28
00002175  0000              add [bx+si],al
00002177  0000              add [bx+si],al
00002179  0100              add [bx+si],ax
0000217B  00F8              add al,bh
0000217D  F5                cmc
0000217E  FF                db 0xff
0000217F  FF7501            push word [di+0x1]
00002182  0000              add [bx+si],al
00002184  00420E            add [bp+si+0xe],al
00002187  08850243          or [di+0x4302],al
0000218B  0D0544            or ax,0x4405
0000218E  8603              xchg al,[bp+di]
00002190  830403            add word [si],byte +0x3
00002193  6601C3            add ebx,eax
00002196  42                inc dx
00002197  C642C50C          mov byte [bp+si-0x3b],0xc
0000219B  0404              add al,0x4
0000219D  0000              add [bx+si],al
0000219F  0014              add [si],dl
000021A1  0000              add [bx+si],al
000021A3  0000              add [bx+si],al
000021A5  0000              add [bx+si],al
000021A7  0001              add [bx+di],al
000021A9  7A52              jpe 0x21fd
000021AB  0001              add [bx+di],al
000021AD  7C08              jl 0x21b7
000021AF  011B              add [bp+di],bx
000021B1  0C04              or al,0x4
000021B3  0488              add al,0x88
000021B5  0100              add [bx+si],ax
000021B7  0020              add [bx+si],ah
000021B9  0000              add [bx+si],al
000021BB  001C              add [si],bl
000021BD  0000              add [bx+si],al
000021BF  0029              add [bx+di],ch
000021C1  F7FF              idiv di
000021C3  FF35              push word [di]
000021C5  0000              add [bx+si],al
000021C7  0000              add [bx+si],al
000021C9  42                inc dx
000021CA  0E                push cs
000021CB  08850243          or [di+0x4302],al
000021CF  0D0546            or ax,0x4605
000021D2  830366            add word [bp+di],byte +0x66
000021D5  C3                ret
000021D6  42                inc dx
000021D7  C50C              lds cx,[si]
000021D9  0404              add al,0x4
000021DB  001C              add [si],bl
000021DD  0000              add [bx+si],al
000021DF  004000            add [bx+si+0x0],al
000021E2  0000              add [bx+si],al
000021E4  3AF7              cmp dh,bh
000021E6  FF                db 0xff
000021E7  FF6400            jmp word [si+0x0]
000021EA  0000              add [bx+si],al
000021EC  00420E            add [bp+si+0xe],al
000021EF  08850243          or [di+0x4302],al
000021F3  0D0502            or ax,0x205
000021F6  5D                pop bp
000021F7  C50C              lds cx,[si]
000021F9  0404              add al,0x4
000021FB  001C              add [si],bl
000021FD  0000              add [bx+si],al
000021FF  006000            add [bx+si+0x0],ah
00002202  0000              add [bx+si],al
00002204  7EF7              jng 0x21fd
00002206  FF                db 0xff
00002207  FF20              jmp word [bx+si]
00002209  0000              add [bx+si],al
0000220B  0000              add [bx+si],al
0000220D  42                inc dx
0000220E  0E                push cs
0000220F  08850243          or [di+0x4302],al
00002213  0D0559            or ax,0x5905
00002216  C50C              lds cx,[si]
00002218  0404              add al,0x4
0000221A  0000              add [bx+si],al
0000221C  1C00              sbb al,0x0
0000221E  0000              add [bx+si],al
00002220  800000            add byte [bx+si],0x0
00002223  007EF7            add [bp-0x9],bh
00002226  FF                db 0xff
00002227  FF6A00            jmp word far [bp+si+0x0]
0000222A  0000              add [bx+si],al
0000222C  00420E            add [bp+si+0xe],al
0000222F  08850243          or [di+0x4302],al
00002233  0D0502            or ax,0x205
00002236  63C5              arpl bp,ax
00002238  0C04              or al,0x4
0000223A  0400              add al,0x0
0000223C  1C00              sbb al,0x0
0000223E  0000              add [bx+si],al
00002240  A00000            mov al,[0x0]
00002243  00C8              add al,cl
00002245  F7FF              idiv di
00002247  FF6A00            jmp word far [bp+si+0x0]
0000224A  0000              add [bx+si],al
0000224C  00420E            add [bp+si+0xe],al
0000224F  08850243          or [di+0x4302],al
00002253  0D0502            or ax,0x205
00002256  63C5              arpl bp,ax
00002258  0C04              or al,0x4
0000225A  0400              add al,0x0
0000225C  1C00              sbb al,0x0
0000225E  0000              add [bx+si],al
00002260  C00000            rol byte [bx+si],byte 0x0
00002263  0012              add [bp+si],dl
00002265  F8                clc
00002266  FF                db 0xff
00002267  FF20              jmp word [bx+si]
00002269  0000              add [bx+si],al
0000226B  0000              add [bx+si],al
0000226D  42                inc dx
0000226E  0E                push cs
0000226F  08850243          or [di+0x4302],al
00002273  0D0559            or ax,0x5905
00002276  C50C              lds cx,[si]
00002278  0404              add al,0x4
0000227A  0000              add [bx+si],al
0000227C  1C00              sbb al,0x0
0000227E  0000              add [bx+si],al
00002280  E000              loopne 0x2282
00002282  0000              add [bx+si],al
00002284  12F8              adc bh,al
00002286  FF                db 0xff
00002287  FF                db 0xff
00002288  3900              cmp [bx+si],ax
0000228A  0000              add [bx+si],al
0000228C  00420E            add [bp+si+0xe],al
0000228F  08850243          or [di+0x4302],al
00002293  0D0572            or ax,0x7205
00002296  C50C              lds cx,[si]
00002298  0404              add al,0x4
0000229A  0000              add [bx+si],al
0000229C  0100              add [bx+si],ax
0000229E  0000              add [bx+si],al
000022A0  D01A              rcr byte [bp+si],1
000022A2  0000              add [bx+si],al
000022A4  0100              add [bx+si],ax
000022A6  0000              add [bx+si],al
000022A8  05                db 0x05
000022A9  07                pop es
