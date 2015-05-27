00000000  8CC8              mov ax,cs
00000002  8ED8              mov ds,ax
00000004  8EC0              mov es,ax
00000006  EA0B000010        jmp word 0x1000:0xb
0000000B  6655              push ebp
0000000D  6689E5            mov ebp,esp
00000010  66E82A000000      call dword 0x40
00000016  66E844000000      call dword 0x60
0000001C  666A00            o32 push byte +0x0
0000001F  666A5A            o32 push byte +0x5a
00000022  666A14            o32 push byte +0x14
00000025  6668D51B0000      push dword 0x1bd5
0000002B  66E84E160000      call dword 0x167f
00000031  6683C410          add esp,byte +0x10
00000035  66E8A40A0000      call dword 0xadf
0000003B  90                nop
0000003C  66C9              o32 leave
0000003E  66C3              o32 ret
00000040  6655              push ebp
00000042  6689E5            mov ebp,esp
00000045  66E830110000      call dword 0x117b
0000004B  66A17C23          mov eax,[0x237c]
0000004F  6650              push eax
00000051  66E8990B0000      call dword 0xbf0
00000057  6683C404          add esp,byte +0x4
0000005B  90                nop
0000005C  66C9              o32 leave
0000005E  66C3              o32 ret
00000060  6655              push ebp
00000062  6689E5            mov ebp,esp
00000065  6668EB090000      push dword 0x9eb
0000006B  666A08            o32 push byte +0x8
0000006E  66E83C090000      call dword 0x9b0
00000074  6683C408          add esp,byte +0x8
00000078  66680A0A0000      push dword 0xa0a
0000007E  666A09            o32 push byte +0x9
00000081  66E829090000      call dword 0x9b0
00000087  6683C408          add esp,byte +0x8
0000008B  6668860A0000      push dword 0xa86
00000091  666A1C            o32 push byte +0x1c
00000094  66E816090000      call dword 0x9b0
0000009A  6683C408          add esp,byte +0x8
0000009E  6668A50A0000      push dword 0xaa5
000000A4  666A71            o32 push byte +0x71
000000A7  66E803090000      call dword 0x9b0
000000AD  6683C408          add esp,byte +0x8
000000B1  6668C40A0000      push dword 0xac4
000000B7  666A72            o32 push byte +0x72
000000BA  66E8F0080000      call dword 0x9b0
000000C0  6683C408          add esp,byte +0x8
000000C4  6668480A0000      push dword 0xa48
000000CA  666A73            o32 push byte +0x73
000000CD  66E8DD080000      call dword 0x9b0
000000D3  6683C408          add esp,byte +0x8
000000D7  6668290A0000      push dword 0xa29
000000DD  666A74            o32 push byte +0x74
000000E0  66E8CA080000      call dword 0x9b0
000000E6  6683C408          add esp,byte +0x8
000000EA  6668670A0000      push dword 0xa67
000000F0  666A75            o32 push byte +0x75
000000F3  66E8B7080000      call dword 0x9b0
000000F9  6683C408          add esp,byte +0x8
000000FD  90                nop
000000FE  66C9              o32 leave
00000100  66C3              o32 ret
00000102  6655              push ebp
00000104  6689E5            mov ebp,esp
00000107  660FB6065A25      movzx eax,byte [0x255a]
0000010D  3C01              cmp al,0x1
0000010F  7F1B              jg 0x12c
00000111  666A4F            o32 push byte +0x4f
00000114  666A00            o32 push byte +0x0
00000117  666A07            o32 push byte +0x7
0000011A  6668C0000000      push dword 0xc0
00000120  66E8E7130000      call dword 0x150d
00000126  6683C410          add esp,byte +0x10
0000012A  EB63              jmp short 0x18f
0000012C  660FB6065A25      movzx eax,byte [0x255a]
00000132  3C03              cmp al,0x3
00000134  7F1B              jg 0x151
00000136  666A4F            o32 push byte +0x4f
00000139  666A00            o32 push byte +0x0
0000013C  666A07            o32 push byte +0x7
0000013F  6668DA000000      push dword 0xda
00000145  66E8C2130000      call dword 0x150d
0000014B  6683C410          add esp,byte +0x10
0000014F  EB3E              jmp short 0x18f
00000151  660FB6065A25      movzx eax,byte [0x255a]
00000157  3C05              cmp al,0x5
00000159  7F1B              jg 0x176
0000015B  666A4F            o32 push byte +0x4f
0000015E  666A00            o32 push byte +0x0
00000161  666A07            o32 push byte +0x7
00000164  6668BF000000      push dword 0xbf
0000016A  66E89D130000      call dword 0x150d
00000170  6683C410          add esp,byte +0x10
00000174  EB19              jmp short 0x18f
00000176  666A4F            o32 push byte +0x4f
00000179  666A00            o32 push byte +0x0
0000017C  666A07            o32 push byte +0x7
0000017F  6668D9000000      push dword 0xd9
00000185  66E882130000      call dword 0x150d
0000018B  6683C410          add esp,byte +0x10
0000018F  660FB6065A25      movzx eax,byte [0x255a]
00000195  660FBEC0          movsx eax,al
00000199  67668D5001        lea edx,[eax+0x1]
0000019E  6689D0            mov eax,edx
000001A1  66C1F81F          sar eax,byte 0x1f
000001A5  66C1E81D          shr eax,byte 0x1d
000001A9  6601C2            add edx,eax
000001AC  6683E207          and edx,byte +0x7
000001B0  6629C2            sub edx,eax
000001B3  6689D0            mov eax,edx
000001B6  A25A25            mov [0x255a],al
000001B9  90                nop
000001BA  66C9              o32 leave
000001BC  66C3              o32 ret
000001BE  6655              push ebp
000001C0  6689E5            mov ebp,esp
000001C3  6683EC04          sub esp,byte +0x4
000001C7  6766C745FCD81B00  mov dword [ebp-0x4],0x1bd8
         -00
000001D0  660FB6068423      movzx eax,byte [0x2384]
000001D6  6683E801          sub eax,byte +0x1
000001DA  A28423            mov [0x2384],al
000001DD  660FB6068423      movzx eax,byte [0x2384]
000001E3  84C0              test al,al
000001E5  7576              jnz 0x25d
000001E7  660FB6068523      movzx eax,byte [0x2385]
000001ED  6683C001          add eax,byte +0x1
000001F1  6683E00F          and eax,byte +0xf
000001F5  A28523            mov [0x2385],al
000001F8  660FB6068523      movzx eax,byte [0x2385]
000001FE  660FB6D0          movzx edx,al
00000202  660FB6065B25      movzx eax,byte [0x255b]
00000208  6689C1            mov ecx,eax
0000020B  6683C101          add ecx,byte +0x1
0000020F  880E5B25          mov [0x255b],cl
00000213  660FBEC8          movsx ecx,al
00000217  67668B45FC        mov eax,[ebp-0x4]
0000021C  6601C8            add eax,ecx
0000021F  67660FB600        movzx eax,byte [eax]
00000224  660FBEC0          movsx eax,al
00000228  666A4F            o32 push byte +0x4f
0000022B  666A18            o32 push byte +0x18
0000022E  6652              push edx
00000230  6650              push eax
00000232  66E8D5120000      call dword 0x150d
00000238  6683C410          add esp,byte +0x10
0000023C  660FB6065B25      movzx eax,byte [0x255b]
00000242  6689C2            mov edx,eax
00000245  C0FA07            sar dl,byte 0x7
00000248  C0EA06            shr dl,byte 0x6
0000024B  6601D0            add eax,edx
0000024E  6683E003          and eax,byte +0x3
00000252  6629D0            sub eax,edx
00000255  A25B25            mov [0x255b],al
00000258  C606842305        mov byte [0x2384],0x5
0000025D  90                nop
0000025E  66C9              o32 leave
00000260  66C3              o32 ret
00000262  6655              push ebp
00000264  6689E5            mov ebp,esp
00000267  66C7065C25000000  mov dword [0x255c],0x0
         -00
00000270  EB2B              jmp short 0x29d
00000272  66A15C25          mov eax,[0x255c]
00000276  6650              push eax
00000278  6668E0240000      push dword 0x24e0
0000027E  66E8B6120000      call dword 0x153a
00000284  6683C408          add esp,byte +0x8
00000288  66A13425          mov eax,[0x2534]
0000028C  6685C0            test eax,eax
0000028F  7418              jz 0x2a9
00000291  66A15C25          mov eax,[0x255c]
00000295  6683C001          add eax,byte +0x1
00000299  66A35C25          mov [0x255c],eax
0000029D  66A15C25          mov eax,[0x255c]
000002A1  6683F807          cmp eax,byte +0x7
000002A5  7ECB              jng 0x272
000002A7  EB01              jmp short 0x2aa
000002A9  90                nop
000002AA  66A15C25          mov eax,[0x255c]
000002AE  6683F807          cmp eax,byte +0x7
000002B2  7E09              jng 0x2bd
000002B4  66B8FFFFFFFF      mov eax,0xffffffff
000002BA  E9DF00            jmp word 0x39c
000002BD  6689260025        mov [0x2500],esp
000002C2  66893EF424        mov [0x24f4],edi
000002C7  668936F824        mov [0x24f8],esi
000002CC  66892EFC24        mov [0x24fc],ebp
000002D1  66A31025          mov [0x2510],eax
000002D5  66891E0425        mov [0x2504],ebx
000002DA  66890E0C25        mov [0x250c],ecx
000002DF  6689160825        mov [0x2508],edx
000002E4  8C16E024          mov [0x24e0],ss
000002E8  8C06EC24          mov [0x24ec],es
000002EC  8C26E824          mov [0x24e8],fs
000002F0  8C2EE424          mov [0x24e4],gs
000002F4  8C0E1825          mov [0x2518],cs
000002F8  8C1EF024          mov [0x24f0],ds
000002FC  66E8A4120000      call dword 0x15a6
00000302  66A33025          mov [0x2530],eax
00000306  66A14025          mov eax,[0x2540]
0000030A  66A33825          mov [0x2538],eax
0000030E  66C7063C25000000  mov dword [0x253c],0x0
         -00
00000317  66C70614259C0300  mov dword [0x2514],0x39c
         -00
00000320  66A1BC24          mov eax,[0x24bc]
00000324  66A31C25          mov [0x251c],eax
00000328  66C7063425010000  mov dword [0x2534],0x1
         -00
00000331  C606202500        mov byte [0x2520],0x0
00000336  66C7061025000000  mov dword [0x2510],0x0
         -00
0000033F  66A15C25          mov eax,[0x255c]
00000343  6683C008          add eax,byte +0x8
00000347  66C1E00A          shl eax,byte 0xa
0000034B  66A3E024          mov [0x24e0],eax
0000034F  66A10025          mov eax,[0x2500]
00000353  6683C002          add eax,byte +0x2
00000357  66A30025          mov [0x2500],eax
0000035B  66A1E024          mov eax,[0x24e0]
0000035F  66C1E010          shl eax,byte 0x10
00000363  6689C2            mov edx,eax
00000366  66A18024          mov eax,[0x2480]
0000036A  66C1E010          shl eax,byte 0x10
0000036E  666800050000      push dword 0x500
00000374  6652              push edx
00000376  6650              push eax
00000378  66E87F120000      call dword 0x15fd
0000037E  6683C40C          add esp,byte +0xc
00000382  66A15C25          mov eax,[0x255c]
00000386  6650              push eax
00000388  6668E0240000      push dword 0x24e0
0000038E  66E8DC110000      call dword 0x1570
00000394  6683C408          add esp,byte +0x8
00000398  66A13025          mov eax,[0x2530]
0000039C  90                nop
0000039D  66C9              o32 leave
0000039F  66C3              o32 ret
000003A1  6655              push ebp
000003A3  6689E5            mov ebp,esp
000003A6  66A14025          mov eax,[0x2540]
000003AA  6650              push eax
000003AC  666880240000      push dword 0x2480
000003B2  66E882110000      call dword 0x153a
000003B8  6683C408          add esp,byte +0x8
000003BC  66C706DC24010000  mov dword [0x24dc],0x1
         -00
000003C5  66A14025          mov eax,[0x2540]
000003C9  6650              push eax
000003CB  666880240000      push dword 0x2480
000003D1  66E899110000      call dword 0x1570
000003D7  6683C408          add esp,byte +0x8
000003DB  90                nop
000003DC  66C9              o32 leave
000003DE  66C3              o32 ret
000003E0  6655              push ebp
000003E2  6689E5            mov ebp,esp
000003E5  6683EC04          sub esp,byte +0x4
000003E9  67668B4508        mov eax,[ebp+0x8]
000003EE  678845FC          mov [ebp-0x4],al
000003F2  66C706D424000000  mov dword [0x24d4],0x0
         -00
000003FB  66A14025          mov eax,[0x2540]
000003FF  6650              push eax
00000401  666880240000      push dword 0x2480
00000407  66E863110000      call dword 0x1570
0000040D  6683C408          add esp,byte +0x8
00000411  66A1D824          mov eax,[0x24d8]
00000415  6685C0            test eax,eax
00000418  7849              js 0x463
0000041A  66A1D824          mov eax,[0x24d8]
0000041E  6683F807          cmp eax,byte +0x7
00000422  7F3F              jg 0x463
00000424  66A1D824          mov eax,[0x24d8]
00000428  6650              push eax
0000042A  6668E0240000      push dword 0x24e0
00000430  66E804110000      call dword 0x153a
00000436  6683C408          add esp,byte +0x8
0000043A  66C7063C25000000  mov dword [0x253c],0x0
         -00
00000443  67660FBE45FC      movsx eax,byte [ebp-0x4]
00000449  66A31025          mov [0x2510],eax
0000044D  66A1D824          mov eax,[0x24d8]
00000451  6650              push eax
00000453  6668E0240000      push dword 0x24e0
00000459  66E811110000      call dword 0x1570
0000045F  6683C408          add esp,byte +0x8
00000463  90                nop
00000464  66C9              o32 leave
00000466  66C3              o32 ret
00000468  6655              push ebp
0000046A  6689E5            mov ebp,esp
0000046D  6683EC04          sub esp,byte +0x4
00000471  66A3B024          mov [0x24b0],eax
00000475  66891EA424        mov [0x24a4],ebx
0000047A  66890EAC24        mov [0x24ac],ecx
0000047F  668916A824        mov [0x24a8],edx
00000484  66A16825          mov eax,[0x2568]
00000488  6685C0            test eax,eax
0000048B  7F0F              jg 0x49c
0000048D  66A16825          mov eax,[0x2568]
00000491  6683C001          add eax,byte +0x1
00000495  66A36825          mov [0x2568],eax
00000499  E9E801            jmp word 0x684
0000049C  66C7066825000000  mov dword [0x2568],0x0
         -00
000004A5  66C7066C25000000  mov dword [0x256c],0x0
         -00
000004AE  EB18              jmp short 0x4c8
000004B0  66A16C25          mov eax,[0x256c]
000004B4  678F840044250000  pop word [dword eax+eax+0x2544]
000004BC  66A16C25          mov eax,[0x256c]
000004C0  6683C001          add eax,byte +0x1
000004C4  66A36C25          mov [0x256c],eax
000004C8  66A16C25          mov eax,[0x256c]
000004CC  6683F809          cmp eax,byte +0x9
000004D0  7EDE              jng 0x4b0
000004D2  66A14025          mov eax,[0x2540]
000004D6  6650              push eax
000004D8  666880240000      push dword 0x2480
000004DE  66E856100000      call dword 0x153a
000004E4  6683C408          add esp,byte +0x8
000004E8  66A1D424          mov eax,[0x24d4]
000004EC  6683F802          cmp eax,byte +0x2
000004F0  0F859400          jnz word 0x588
000004F4  66893E9424        mov [0x2494],edi
000004F9  6689369824        mov [0x2498],esi
000004FE  66892E9C24        mov [0x249c],ebp
00000503  668926A024        mov [0x24a0],esp
00000508  8C168024          mov [0x2480],ss
0000050C  8C068C24          mov [0x248c],es
00000510  8C268824          mov [0x2488],fs
00000514  8C2E8424          mov [0x2484],gs
00000518  66C706D424010000  mov dword [0x24d4],0x1
         -00
00000521  660FB7065025      movzx eax,word [0x2550]
00000527  660FB7C0          movzx eax,ax
0000052B  66A39024          mov [0x2490],eax
0000052F  660FB7065225      movzx eax,word [0x2552]
00000535  660FB7C0          movzx eax,ax
00000539  66A3B424          mov [0x24b4],eax
0000053D  660FB7065425      movzx eax,word [0x2554]
00000543  660FB7C0          movzx eax,ax
00000547  66A3B824          mov [0x24b8],eax
0000054B  660FB7065625      movzx eax,word [0x2556]
00000551  660FB7C0          movzx eax,ax
00000555  66A3BC24          mov [0x24bc],eax
00000559  66A1B824          mov eax,[0x24b8]
0000055D  66C1E010          shl eax,byte 0x10
00000561  6689C2            mov edx,eax
00000564  66A1B424          mov eax,[0x24b4]
00000568  6609D0            or eax,edx
0000056B  67668945FC        mov [ebp-0x4],eax
00000570  66A14025          mov eax,[0x2540]
00000574  6650              push eax
00000576  666880240000      push dword 0x2480
0000057C  66E8EE0F0000      call dword 0x1570
00000582  6683C408          add esp,byte +0x8
00000586  EB03              jmp short 0x58b
00000588  83C402            add sp,byte +0x2
0000058B  66A14025          mov eax,[0x2540]
0000058F  67668D5001        lea edx,[eax+0x1]
00000594  6689D0            mov eax,edx
00000597  66C1F81F          sar eax,byte 0x1f
0000059B  66C1E81D          shr eax,byte 0x1d
0000059F  6601C2            add edx,eax
000005A2  6683E207          and edx,byte +0x7
000005A6  6629C2            sub edx,eax
000005A9  6689D0            mov eax,edx
000005AC  66A34025          mov [0x2540],eax
000005B0  66A14025          mov eax,[0x2540]
000005B4  6650              push eax
000005B6  666880240000      push dword 0x2480
000005BC  66E8780F0000      call dword 0x153a
000005C2  6683C408          add esp,byte +0x8
000005C6  66A1D424          mov eax,[0x24d4]
000005CA  6683F801          cmp eax,byte +0x1
000005CE  75BB              jnz 0x58b
000005D0  66A1DC24          mov eax,[0x24dc]
000005D4  6685C0            test eax,eax
000005D7  7402              jz 0x5db
000005D9  EBB0              jmp short 0x58b
000005DB  90                nop
000005DC  66C706D424020000  mov dword [0x24d4],0x2
         -00
000005E5  66A14025          mov eax,[0x2540]
000005E9  6650              push eax
000005EB  666880240000      push dword 0x2480
000005F1  66E8790F0000      call dword 0x1570
000005F7  6683C408          add esp,byte +0x8
000005FB  66FF36BC24        push dword [0x24bc]
00000600  669D              popfd
00000602  668B3E9424        mov edi,[0x2494]
00000607  668B369824        mov esi,[0x2498]
0000060C  668B2E9C24        mov ebp,[0x249c]
00000611  668B26A024        mov esp,[0x24a0]
00000616  8E168024          mov ss,[0x2480]
0000061A  8E068C24          mov es,[0x248c]
0000061E  8E268824          mov fs,[0x2488]
00000622  8E2E8424          mov gs,[0x2484]
00000626  66A19024          mov eax,[0x2490]
0000062A  A35025            mov [0x2550],ax
0000062D  66A1B424          mov eax,[0x24b4]
00000631  A35225            mov [0x2552],ax
00000634  66A1B824          mov eax,[0x24b8]
00000638  A35425            mov [0x2554],ax
0000063B  66A1BC24          mov eax,[0x24bc]
0000063F  A35625            mov [0x2556],ax
00000642  66C7066C25090000  mov dword [0x256c],0x9
         -00
0000064B  EB18              jmp short 0x665
0000064D  66A16C25          mov eax,[0x256c]
00000651  67FFB40044250000  push word [dword eax+eax+0x2544]
00000659  66A16C25          mov eax,[0x256c]
0000065D  6683E801          sub eax,byte +0x1
00000661  66A36C25          mov [0x256c],eax
00000665  66A16C25          mov eax,[0x256c]
00000669  6683F803          cmp eax,byte +0x3
0000066D  7FDE              jg 0x64d
0000066F  66A1B024          mov eax,[0x24b0]
00000673  668B1EA424        mov ebx,[0x24a4]
00000678  668B0EAC24        mov ecx,[0x24ac]
0000067D  668B16A824        mov edx,[0x24a8]
00000682  66C3              o32 ret
00000684  66C9              o32 leave
00000686  66C3              o32 ret
00000688  6655              push ebp
0000068A  6689E5            mov ebp,esp
0000068D  6683EC04          sub esp,byte +0x4
00000691  66A3B024          mov [0x24b0],eax
00000695  66891EA424        mov [0x24a4],ebx
0000069A  66890EAC24        mov [0x24ac],ecx
0000069F  668916A824        mov [0x24a8],edx
000006A4  66A17025          mov eax,[0x2570]
000006A8  6685C0            test eax,eax
000006AB  7F0C              jg 0x6b9
000006AD  66A17025          mov eax,[0x2570]
000006B1  6683C001          add eax,byte +0x1
000006B5  66A37025          mov [0x2570],eax
000006B9  66C7067025000000  mov dword [0x2570],0x0
         -00
000006C2  66C7067425000000  mov dword [0x2574],0x0
         -00
000006CB  EB18              jmp short 0x6e5
000006CD  66A17425          mov eax,[0x2574]
000006D1  678F840044250000  pop word [dword eax+eax+0x2544]
000006D9  66A17425          mov eax,[0x2574]
000006DD  6683C001          add eax,byte +0x1
000006E1  66A37425          mov [0x2574],eax
000006E5  66A17425          mov eax,[0x2574]
000006E9  6683F809          cmp eax,byte +0x9
000006ED  7EDE              jng 0x6cd
000006EF  66A14025          mov eax,[0x2540]
000006F3  6650              push eax
000006F5  666880240000      push dword 0x2480
000006FB  66E8390E0000      call dword 0x153a
00000701  6683C408          add esp,byte +0x8
00000705  66A1D424          mov eax,[0x24d4]
00000709  6683F802          cmp eax,byte +0x2
0000070D  0F859400          jnz word 0x7a5
00000711  66893E9424        mov [0x2494],edi
00000716  6689369824        mov [0x2498],esi
0000071B  66892E9C24        mov [0x249c],ebp
00000720  668926A024        mov [0x24a0],esp
00000725  8C168024          mov [0x2480],ss
00000729  8C068C24          mov [0x248c],es
0000072D  8C268824          mov [0x2488],fs
00000731  8C2E8424          mov [0x2484],gs
00000735  66C706D424010000  mov dword [0x24d4],0x1
         -00
0000073E  660FB7065025      movzx eax,word [0x2550]
00000744  660FB7C0          movzx eax,ax
00000748  66A39024          mov [0x2490],eax
0000074C  660FB7065225      movzx eax,word [0x2552]
00000752  660FB7C0          movzx eax,ax
00000756  66A3B424          mov [0x24b4],eax
0000075A  660FB7065425      movzx eax,word [0x2554]
00000760  660FB7C0          movzx eax,ax
00000764  66A3B824          mov [0x24b8],eax
00000768  660FB7065625      movzx eax,word [0x2556]
0000076E  660FB7C0          movzx eax,ax
00000772  66A3BC24          mov [0x24bc],eax
00000776  66A1B824          mov eax,[0x24b8]
0000077A  66C1E010          shl eax,byte 0x10
0000077E  6689C2            mov edx,eax
00000781  66A1B424          mov eax,[0x24b4]
00000785  6609D0            or eax,edx
00000788  67668945FC        mov [ebp-0x4],eax
0000078D  66A14025          mov eax,[0x2540]
00000791  6650              push eax
00000793  666880240000      push dword 0x2480
00000799  66E8D10D0000      call dword 0x1570
0000079F  6683C408          add esp,byte +0x8
000007A3  EB03              jmp short 0x7a8
000007A5  83C402            add sp,byte +0x2
000007A8  66A14025          mov eax,[0x2540]
000007AC  67668D5001        lea edx,[eax+0x1]
000007B1  6689D0            mov eax,edx
000007B4  66C1F81F          sar eax,byte 0x1f
000007B8  66C1E81D          shr eax,byte 0x1d
000007BC  6601C2            add edx,eax
000007BF  6683E207          and edx,byte +0x7
000007C3  6629C2            sub edx,eax
000007C6  6689D0            mov eax,edx
000007C9  66A34025          mov [0x2540],eax
000007CD  66A14025          mov eax,[0x2540]
000007D1  6650              push eax
000007D3  666880240000      push dword 0x2480
000007D9  66E85B0D0000      call dword 0x153a
000007DF  6683C408          add esp,byte +0x8
000007E3  66A1D424          mov eax,[0x24d4]
000007E7  6683F801          cmp eax,byte +0x1
000007EB  75BB              jnz 0x7a8
000007ED  66A1DC24          mov eax,[0x24dc]
000007F1  6685C0            test eax,eax
000007F4  7402              jz 0x7f8
000007F6  EBB0              jmp short 0x7a8
000007F8  90                nop
000007F9  66C706D424020000  mov dword [0x24d4],0x2
         -00
00000802  66A14025          mov eax,[0x2540]
00000806  6650              push eax
00000808  666880240000      push dword 0x2480
0000080E  66E85C0D0000      call dword 0x1570
00000814  6683C408          add esp,byte +0x8
00000818  66FF36BC24        push dword [0x24bc]
0000081D  669D              popfd
0000081F  668B3E9424        mov edi,[0x2494]
00000824  668B369824        mov esi,[0x2498]
00000829  668B2E9C24        mov ebp,[0x249c]
0000082E  668B26A024        mov esp,[0x24a0]
00000833  8E168024          mov ss,[0x2480]
00000837  8E068C24          mov es,[0x248c]
0000083B  8E268824          mov fs,[0x2488]
0000083F  8E2E8424          mov gs,[0x2484]
00000843  66A19024          mov eax,[0x2490]
00000847  A35025            mov [0x2550],ax
0000084A  66A1B424          mov eax,[0x24b4]
0000084E  A35225            mov [0x2552],ax
00000851  66A1B824          mov eax,[0x24b8]
00000855  A35425            mov [0x2554],ax
00000858  66A1BC24          mov eax,[0x24bc]
0000085C  A35625            mov [0x2556],ax
0000085F  66C7067425090000  mov dword [0x2574],0x9
         -00
00000868  EB18              jmp short 0x882
0000086A  66A17425          mov eax,[0x2574]
0000086E  67FFB40044250000  push word [dword eax+eax+0x2544]
00000876  66A17425          mov eax,[0x2574]
0000087A  6683E801          sub eax,byte +0x1
0000087E  66A37425          mov [0x2574],eax
00000882  66A17425          mov eax,[0x2574]
00000886  6683F803          cmp eax,byte +0x3
0000088A  7FDE              jg 0x86a
0000088C  66A1B024          mov eax,[0x24b0]
00000890  668B1EA424        mov ebx,[0x24a4]
00000895  668B0EAC24        mov ecx,[0x24ac]
0000089A  668B16A824        mov edx,[0x24a8]
0000089F  66C3              o32 ret
000008A1  90                nop
000008A2  66C9              o32 leave
000008A4  66C3              o32 ret
000008A6  6655              push ebp
000008A8  6689E5            mov ebp,esp
000008AB  66A14025          mov eax,[0x2540]
000008AF  67668D5001        lea edx,[eax+0x1]
000008B4  6689D0            mov eax,edx
000008B7  66C1F81F          sar eax,byte 0x1f
000008BB  66C1E81D          shr eax,byte 0x1d
000008BF  6601C2            add edx,eax
000008C2  6683E207          and edx,byte +0x7
000008C6  6629C2            sub edx,eax
000008C9  6689D0            mov eax,edx
000008CC  66A34025          mov [0x2540],eax
000008D0  66A14025          mov eax,[0x2540]
000008D4  6650              push eax
000008D6  666880240000      push dword 0x2480
000008DC  66E8580C0000      call dword 0x153a
000008E2  6683C408          add esp,byte +0x8
000008E6  66A1D424          mov eax,[0x24d4]
000008EA  6683F801          cmp eax,byte +0x1
000008EE  75BB              jnz 0x8ab
000008F0  66A1DC24          mov eax,[0x24dc]
000008F4  6685C0            test eax,eax
000008F7  7402              jz 0x8fb
000008F9  EBB0              jmp short 0x8ab
000008FB  90                nop
000008FC  66C706D424020000  mov dword [0x24d4],0x2
         -00
00000905  66A14025          mov eax,[0x2540]
00000909  6650              push eax
0000090B  666880240000      push dword 0x2480
00000911  66E8590C0000      call dword 0x1570
00000917  6683C408          add esp,byte +0x8
0000091B  66FF36BC24        push dword [0x24bc]
00000920  669D              popfd
00000922  668B3E9424        mov edi,[0x2494]
00000927  668B369824        mov esi,[0x2498]
0000092C  668B2E9C24        mov ebp,[0x249c]
00000931  668B26A024        mov esp,[0x24a0]
00000936  8E168024          mov ss,[0x2480]
0000093A  8E068C24          mov es,[0x248c]
0000093E  8E268824          mov fs,[0x2488]
00000942  8E2E8424          mov gs,[0x2484]
00000946  66A1BC24          mov eax,[0x24bc]
0000094A  A35625            mov [0x2556],ax
0000094D  66A1B824          mov eax,[0x24b8]
00000951  A35425            mov [0x2554],ax
00000954  66A1B424          mov eax,[0x24b4]
00000958  A35225            mov [0x2552],ax
0000095B  66A19024          mov eax,[0x2490]
0000095F  A35025            mov [0x2550],ax
00000962  66C7067825090000  mov dword [0x2578],0x9
         -00
0000096B  EB18              jmp short 0x985
0000096D  66A17825          mov eax,[0x2578]
00000971  67FFB40044250000  push word [dword eax+eax+0x2544]
00000979  66A17825          mov eax,[0x2578]
0000097D  6683E801          sub eax,byte +0x1
00000981  66A37825          mov [0x2578],eax
00000985  66A17825          mov eax,[0x2578]
00000989  6683F803          cmp eax,byte +0x3
0000098D  7FDE              jg 0x96d
0000098F  66A1B024          mov eax,[0x24b0]
00000993  668B1EA424        mov ebx,[0x24a4]
00000998  668B0EAC24        mov ecx,[0x24ac]
0000099D  668B16A824        mov edx,[0x24a8]
000009A2  66C3              o32 ret
000009A4  90                nop
000009A5  66C9              o32 leave
000009A7  66C3              o32 ret
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
000009F6  66E8C2F7FFFF      call dword 0x1be
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
00000A15  66E8E7F6FFFF      call dword 0x102
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
00000A34  66E867F9FFFF      call dword 0x3a1
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
00000A53  66E887F9FFFF      call dword 0x3e0
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
00000A72  66E8EAF7FFFF      call dword 0x262
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
00000A91  66E8D1F9FFFF      call dword 0x468
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
00000AB0  66E8D2FBFFFF      call dword 0x688
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
00000ACF  66E8D1FDFFFF      call dword 0x8a6
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
00000B29  90                nop
00000B2A  6683C404          add esp,byte +0x4
00000B2E  665B              pop ebx
00000B30  665D              pop ebp
00000B32  66C3              o32 ret
00000B34  6655              push ebp
00000B36  6689E5            mov ebp,esp
00000B39  6653              push ebx
00000B3B  6683EC08          sub esp,byte +0x8
00000B3F  67668B5508        mov edx,[ebp+0x8]
00000B44  67668B450C        mov eax,[ebp+0xc]
00000B49  678855F8          mov [ebp-0x8],dl
00000B4D  678945F4          mov [ebp-0xc],ax
00000B51  67660FBE45F8      movsx eax,byte [ebp-0x8]
00000B57  660500090000      add eax,0x900
00000B5D  67660FB755F4      movzx edx,word [ebp-0xc]
00000B63  66B901000000      mov ecx,0x1
00000B69  6689D3            mov ebx,edx
00000B6C  CD10              int 0x10
00000B6E  90                nop
00000B6F  6683C408          add esp,byte +0x8
00000B73  665B              pop ebx
00000B75  665D              pop ebp
00000B77  66C3              o32 ret
00000B79  6655              push ebp
00000B7B  6689E5            mov ebp,esp
00000B7E  6683EC04          sub esp,byte +0x4
00000B82  67668B450C        mov eax,[ebp+0xc]
00000B87  678945FC          mov [ebp-0x4],ax
00000B8B  EB50              jmp short 0xbdd
00000B8D  67660FB745FC      movzx eax,word [ebp-0x4]
00000B93  6650              push eax
00000B95  666A20            o32 push byte +0x20
00000B98  66E896FFFFFF      call dword 0xb34
00000B9E  6683C408          add esp,byte +0x8
00000BA2  67668B4508        mov eax,[ebp+0x8]
00000BA7  67660FB600        movzx eax,byte [eax]
00000BAC  3C0A              cmp al,0xa
00000BAE  750D              jnz 0xbbd
00000BB0  666A0D            o32 push byte +0xd
00000BB3  66E845FFFFFF      call dword 0xafe
00000BB9  6683C404          add esp,byte +0x4
00000BBD  67668B4508        mov eax,[ebp+0x8]
00000BC2  67660FB600        movzx eax,byte [eax]
00000BC7  660FBEC0          movsx eax,al
00000BCB  6650              push eax
00000BCD  66E82BFFFFFF      call dword 0xafe
00000BD3  6683C404          add esp,byte +0x4
00000BD7  676683450801      add dword [ebp+0x8],byte +0x1
00000BDD  67668B4508        mov eax,[ebp+0x8]
00000BE2  67660FB600        movzx eax,byte [eax]
00000BE7  84C0              test al,al
00000BE9  75A2              jnz 0xb8d
00000BEB  90                nop
00000BEC  66C9              o32 leave
00000BEE  66C3              o32 ret
00000BF0  6655              push ebp
00000BF2  6689E5            mov ebp,esp
00000BF5  EB3B              jmp short 0xc32
00000BF7  67668B4508        mov eax,[ebp+0x8]
00000BFC  67660FB600        movzx eax,byte [eax]
00000C01  3C0A              cmp al,0xa
00000C03  750D              jnz 0xc12
00000C05  666A0D            o32 push byte +0xd
00000C08  66E8F0FEFFFF      call dword 0xafe
00000C0E  6683C404          add esp,byte +0x4
00000C12  67668B4508        mov eax,[ebp+0x8]
00000C17  67660FB600        movzx eax,byte [eax]
00000C1C  660FBEC0          movsx eax,al
00000C20  6650              push eax
00000C22  66E8D6FEFFFF      call dword 0xafe
00000C28  6683C404          add esp,byte +0x4
00000C2C  676683450801      add dword [ebp+0x8],byte +0x1
00000C32  67668B4508        mov eax,[ebp+0x8]
00000C37  67660FB600        movzx eax,byte [eax]
00000C3C  84C0              test al,al
00000C3E  75B7              jnz 0xbf7
00000C40  90                nop
00000C41  66C9              o32 leave
00000C43  66C3              o32 ret
00000C45  6655              push ebp
00000C47  6689E5            mov ebp,esp
00000C4A  6683EC04          sub esp,byte +0x4
00000C4E  67C745FE0000      mov word [ebp-0x2],0x0
00000C54  EB67              jmp short 0xcbd
00000C56  67807DFD08        cmp byte [ebp-0x3],0x8
00000C5B  752E              jnz 0xc8b
00000C5D  67837DFE00        cmp word [ebp-0x2],byte +0x0
00000C62  7502              jnz 0xc66
00000C64  EB57              jmp short 0xcbd
00000C66  67836DFE01        sub word [ebp-0x2],byte +0x1
00000C6B  6668DD1B0000      push dword 0x1bdd
00000C71  66E879FFFFFF      call dword 0xbf0
00000C77  6683C404          add esp,byte +0x4
00000C7B  67660FB745FE      movzx eax,word [ebp-0x2]
00000C81  67C6808026000020  mov byte [eax+0x2680],0x20
00000C89  EB32              jmp short 0xcbd
00000C8B  67660FBE45FD      movsx eax,byte [ebp-0x3]
00000C91  6650              push eax
00000C93  66E865FEFFFF      call dword 0xafe
00000C99  6683C404          add esp,byte +0x4
00000C9D  67660FB745FE      movzx eax,word [ebp-0x2]
00000CA3  67668D5001        lea edx,[eax+0x1]
00000CA8  678955FE          mov [ebp-0x2],dx
00000CAC  660FB7C0          movzx eax,ax
00000CB0  67660FB655FD      movzx edx,byte [ebp-0x3]
00000CB6  67889080260000    mov [eax+0x2680],dl
00000CBD  66E81CFEFFFF      call dword 0xadf
00000CC3  678845FD          mov [ebp-0x3],al
00000CC7  67807DFD0D        cmp byte [ebp-0x3],0xd
00000CCC  7588              jnz 0xc56
00000CCE  67660FB745FE      movzx eax,word [ebp-0x2]
00000CD4  67C6808026000000  mov byte [eax+0x2680],0x0
00000CDC  6668E11B0000      push dword 0x1be1
00000CE2  66E808FFFFFF      call dword 0xbf0
00000CE8  6683C404          add esp,byte +0x4
00000CEC  67660FB745FE      movzx eax,word [ebp-0x2]
00000CF2  66C9              o32 leave
00000CF4  66C3              o32 ret
00000CF6  6655              push ebp
00000CF8  6689E5            mov ebp,esp
00000CFB  6683EC0C          sub esp,byte +0xc
00000CFF  66E840FFFFFF      call dword 0xc45
00000D05  678945F6          mov [ebp-0xa],ax
00000D09  67C745FE0000      mov word [ebp-0x2],0x0
00000D0F  67668B4508        mov eax,[ebp+0x8]
00000D14  67668945F8        mov [ebp-0x8],eax
00000D19  67C745FE0000      mov word [ebp-0x2],0x0
00000D1F  EB26              jmp short 0xd47
00000D21  67668B45F8        mov eax,[ebp-0x8]
00000D26  67668D5001        lea edx,[eax+0x1]
00000D2B  67668955F8        mov [ebp-0x8],edx
00000D30  67660FB755FE      movzx edx,word [ebp-0x2]
00000D36  67660FB692802600  movzx edx,byte [edx+0x2680]
         -00
00000D3F  678810            mov [eax],dl
00000D42  678345FE01        add word [ebp-0x2],byte +0x1
00000D47  67660FB745FE      movzx eax,word [ebp-0x2]
00000D4D  673B45F6          cmp ax,[ebp-0xa]
00000D51  72CE              jc 0xd21
00000D53  67668B45F8        mov eax,[ebp-0x8]
00000D58  67C60000          mov byte [eax],0x0
00000D5C  90                nop
00000D5D  66C9              o32 leave
00000D5F  66C3              o32 ret
00000D61  6655              push ebp
00000D63  6689E5            mov ebp,esp
00000D66  6683EC04          sub esp,byte +0x4
00000D6A  6766837D0800      cmp dword [ebp+0x8],byte +0x0
00000D70  7510              jnz 0xd82
00000D72  666A30            o32 push byte +0x30
00000D75  66E883FDFFFF      call dword 0xafe
00000D7B  6683C404          add esp,byte +0x4
00000D7F  E9E400            jmp word 0xe66
00000D82  67C645FF00        mov byte [ebp-0x1],0x0
00000D87  6766837D0800      cmp dword [ebp+0x8],byte +0x0
00000D8D  0F899700          jns word 0xe28
00000D91  666A2D            o32 push byte +0x2d
00000D94  66E864FDFFFF      call dword 0xafe
00000D9A  6683C404          add esp,byte +0x4
00000D9E  6766F75D08        neg dword [ebp+0x8]
00000DA3  E98200            jmp word 0xe28
00000DA6  67668B4508        mov eax,[ebp+0x8]
00000DAB  6699              cdq
00000DAD  6766F77D0C        idiv dword [ebp+0xc]
00000DB2  6689D0            mov eax,edx
00000DB5  6683F809          cmp eax,byte +0x9
00000DB9  7F2F              jg 0xdea
00000DBB  67660FB645FF      movzx eax,byte [ebp-0x1]
00000DC1  67668D5001        lea edx,[eax+0x1]
00000DC6  678855FF          mov [ebp-0x1],dl
00000DCA  660FB6C8          movzx ecx,al
00000DCE  67668B4508        mov eax,[ebp+0x8]
00000DD3  6699              cdq
00000DD5  6766F77D0C        idiv dword [ebp+0xc]
00000DDA  6689D0            mov eax,edx
00000DDD  6683C030          add eax,byte +0x30
00000DE1  67888180260000    mov [ecx+0x2680],al
00000DE8  EB2D              jmp short 0xe17
00000DEA  67660FB645FF      movzx eax,byte [ebp-0x1]
00000DF0  67668D5001        lea edx,[eax+0x1]
00000DF5  678855FF          mov [ebp-0x1],dl
00000DF9  660FB6C8          movzx ecx,al
00000DFD  67668B4508        mov eax,[ebp+0x8]
00000E02  6699              cdq
00000E04  6766F77D0C        idiv dword [ebp+0xc]
00000E09  6689D0            mov eax,edx
00000E0C  6683C037          add eax,byte +0x37
00000E10  67888180260000    mov [ecx+0x2680],al
00000E17  67668B4508        mov eax,[ebp+0x8]
00000E1C  6699              cdq
00000E1E  6766F77D0C        idiv dword [ebp+0xc]
00000E23  6766894508        mov [ebp+0x8],eax
00000E28  6766837D0800      cmp dword [ebp+0x8],byte +0x0
00000E2E  0F8574FF          jnz word 0xda6
00000E32  EB1F              jmp short 0xe53
00000E34  67660FB645FF      movzx eax,byte [ebp-0x1]
00000E3A  67660FB680802600  movzx eax,byte [eax+0x2680]
         -00
00000E43  660FBEC0          movsx eax,al
00000E47  6650              push eax
00000E49  66E8AFFCFFFF      call dword 0xafe
00000E4F  6683C404          add esp,byte +0x4
00000E53  67660FB645FF      movzx eax,byte [ebp-0x1]
00000E59  67668D50FF        lea edx,[eax-0x1]
00000E5E  678855FF          mov [ebp-0x1],dl
00000E62  84C0              test al,al
00000E64  75CE              jnz 0xe34
00000E66  90                nop
00000E67  66C9              o32 leave
00000E69  66C3              o32 ret
00000E6B  6655              push ebp
00000E6D  6689E5            mov ebp,esp
00000E70  6653              push ebx
00000E72  6683EC08          sub esp,byte +0x8
00000E76  67668D4508        lea eax,[ebp+0x8]
00000E7B  67668945F8        mov [ebp-0x8],eax
00000E80  E9FE00            jmp word 0xf81
00000E83  67668B4508        mov eax,[ebp+0x8]
00000E88  67660FB600        movzx eax,byte [eax]
00000E8D  3C25              cmp al,0x25
00000E8F  0F85AB00          jnz word 0xf3e
00000E93  67668B4508        mov eax,[ebp+0x8]
00000E98  6683C001          add eax,byte +0x1
00000E9C  6766894508        mov [ebp+0x8],eax
00000EA1  67668345F804      add dword [ebp-0x8],byte +0x4
00000EA7  67668B45F8        mov eax,[ebp-0x8]
00000EAC  3667668B18        mov ebx,[ss:eax]
00000EB1  6689D8            mov eax,ebx
00000EB4  67668945F4        mov [ebp-0xc],eax
00000EB9  67668B4508        mov eax,[ebp+0x8]
00000EBE  67660FB600        movzx eax,byte [eax]
00000EC3  660FBEC0          movsx eax,al
00000EC7  6683F864          cmp eax,byte +0x64
00000ECB  7435              jz 0xf02
00000ECD  6683F864          cmp eax,byte +0x64
00000ED1  7F09              jg 0xedc
00000ED3  6683F863          cmp eax,byte +0x63
00000ED7  7412              jz 0xeeb
00000ED9  E99700            jmp word 0xf73
00000EDC  6683F873          cmp eax,byte +0x73
00000EE0  7448              jz 0xf2a
00000EE2  6683F878          cmp eax,byte +0x78
00000EE6  742E              jz 0xf16
00000EE8  E98800            jmp word 0xf73
00000EEB  67668B45F4        mov eax,[ebp-0xc]
00000EF0  660FBEC0          movsx eax,al
00000EF4  6650              push eax
00000EF6  66E802FCFFFF      call dword 0xafe
00000EFC  6683C404          add esp,byte +0x4
00000F00  EB71              jmp short 0xf73
00000F02  666A0A            o32 push byte +0xa
00000F05  6766FF75F4        push dword [ebp-0xc]
00000F0A  66E851FEFFFF      call dword 0xd61
00000F10  6683C408          add esp,byte +0x8
00000F14  EB5D              jmp short 0xf73
00000F16  666A10            o32 push byte +0x10
00000F19  6766FF75F4        push dword [ebp-0xc]
00000F1E  66E83DFEFFFF      call dword 0xd61
00000F24  6683C408          add esp,byte +0x8
00000F28  EB49              jmp short 0xf73
00000F2A  67668B45F4        mov eax,[ebp-0xc]
00000F2F  6650              push eax
00000F31  66E8B9FCFFFF      call dword 0xbf0
00000F37  6683C404          add esp,byte +0x4
00000F3B  90                nop
00000F3C  EB35              jmp short 0xf73
00000F3E  67668B4508        mov eax,[ebp+0x8]
00000F43  67660FB600        movzx eax,byte [eax]
00000F48  3C0A              cmp al,0xa
00000F4A  750D              jnz 0xf59
00000F4C  666A0D            o32 push byte +0xd
00000F4F  66E8A9FBFFFF      call dword 0xafe
00000F55  6683C404          add esp,byte +0x4
00000F59  67668B4508        mov eax,[ebp+0x8]
00000F5E  67660FB600        movzx eax,byte [eax]
00000F63  660FBEC0          movsx eax,al
00000F67  6650              push eax
00000F69  66E88FFBFFFF      call dword 0xafe
00000F6F  6683C404          add esp,byte +0x4
00000F73  67668B4508        mov eax,[ebp+0x8]
00000F78  6683C001          add eax,byte +0x1
00000F7C  6766894508        mov [ebp+0x8],eax
00000F81  67668B4508        mov eax,[ebp+0x8]
00000F86  67660FB600        movzx eax,byte [eax]
00000F8B  84C0              test al,al
00000F8D  0F85F2FE          jnz word 0xe83
00000F91  90                nop
00000F92  67668B5DFC        mov ebx,[ebp-0x4]
00000F97  66C9              o32 leave
00000F99  66C3              o32 ret
00000F9B  6655              push ebp
00000F9D  6689E5            mov ebp,esp
00000FA0  6653              push ebx
00000FA2  6683EC18          sub esp,byte +0x18
00000FA6  67668D4508        lea eax,[ebp+0x8]
00000FAB  67668945F8        mov [ebp-0x8],eax
00000FB0  66E88FFCFFFF      call dword 0xc45
00000FB6  678845EB          mov [ebp-0x15],al
00000FBA  67C645F700        mov byte [ebp-0x9],0x0
00000FBF  E99E01            jmp word 0x1160
00000FC2  67668B4508        mov eax,[ebp+0x8]
00000FC7  67660FB600        movzx eax,byte [eax]
00000FCC  3C25              cmp al,0x25
00000FCE  0F858001          jnz word 0x1152
00000FD2  67668B4508        mov eax,[ebp+0x8]
00000FD7  6683C001          add eax,byte +0x1
00000FDB  6766894508        mov [ebp+0x8],eax
00000FE0  67668345F804      add dword [ebp-0x8],byte +0x4
00000FE6  67668B45F8        mov eax,[ebp-0x8]
00000FEB  3667668B18        mov ebx,[ss:eax]
00000FF0  6689D8            mov eax,ebx
00000FF3  67668945E4        mov [ebp-0x1c],eax
00000FF8  EB05              jmp short 0xfff
00000FFA  678045F701        add byte [ebp-0x9],0x1
00000FFF  67660FB645F7      movzx eax,byte [ebp-0x9]
00001005  67660FB680802600  movzx eax,byte [eax+0x2680]
         -00
0000100E  3C20              cmp al,0x20
00001010  74E8              jz 0xffa
00001012  67668B4508        mov eax,[ebp+0x8]
00001017  67660FB600        movzx eax,byte [eax]
0000101C  3C63              cmp al,0x63
0000101E  752C              jnz 0x104c
00001020  67660FB645F7      movzx eax,byte [ebp-0x9]
00001026  67668D5001        lea edx,[eax+0x1]
0000102B  678855F7          mov [ebp-0x9],dl
0000102F  660FB6C0          movzx eax,al
00001033  67660FB680802600  movzx eax,byte [eax+0x2680]
         -00
0000103C  660FBED0          movsx edx,al
00001040  67668B45E4        mov eax,[ebp-0x1c]
00001045  67668910          mov [eax],edx
00001049  E90601            jmp word 0x1152
0000104C  67668B4508        mov eax,[ebp+0x8]
00001051  67660FB600        movzx eax,byte [eax]
00001056  3C73              cmp al,0x73
00001058  7568              jnz 0x10c2
0000105A  67668B45E4        mov eax,[ebp-0x1c]
0000105F  67668945F0        mov [ebp-0x10],eax
00001064  EB2A              jmp short 0x1090
00001066  67660FB645F7      movzx eax,byte [ebp-0x9]
0000106C  67668D5001        lea edx,[eax+0x1]
00001071  678855F7          mov [ebp-0x9],dl
00001075  660FB6C0          movzx eax,al
00001079  67660FB690802600  movzx edx,byte [eax+0x2680]
         -00
00001082  67668B45F0        mov eax,[ebp-0x10]
00001087  678810            mov [eax],dl
0000108A  67668345F001      add dword [ebp-0x10],byte +0x1
00001090  67660FB645F7      movzx eax,byte [ebp-0x9]
00001096  67660FB680802600  movzx eax,byte [eax+0x2680]
         -00
0000109F  84C0              test al,al
000010A1  7413              jz 0x10b6
000010A3  67660FB645F7      movzx eax,byte [ebp-0x9]
000010A9  67660FB680802600  movzx eax,byte [eax+0x2680]
         -00
000010B2  3C20              cmp al,0x20
000010B4  75B0              jnz 0x1066
000010B6  67668B45F0        mov eax,[ebp-0x10]
000010BB  67C60000          mov byte [eax],0x0
000010BF  E99000            jmp word 0x1152
000010C2  67668B4508        mov eax,[ebp+0x8]
000010C7  67660FB600        movzx eax,byte [eax]
000010CC  3C64              cmp al,0x64
000010CE  0F858000          jnz word 0x1152
000010D2  6766C745EC000000  mov dword [ebp-0x14],0x0
         -00
000010DB  EB41              jmp short 0x111e
000010DD  67668B55EC        mov edx,[ebp-0x14]
000010E2  6689D0            mov eax,edx
000010E5  66C1E002          shl eax,byte 0x2
000010E9  6601D0            add eax,edx
000010EC  6601C0            add eax,eax
000010EF  6689C1            mov ecx,eax
000010F2  67660FB645F7      movzx eax,byte [ebp-0x9]
000010F8  67668D5001        lea edx,[eax+0x1]
000010FD  678855F7          mov [ebp-0x9],dl
00001101  660FB6C0          movzx eax,al
00001105  67660FB680802600  movzx eax,byte [eax+0x2680]
         -00
0000110E  660FBEC0          movsx eax,al
00001112  6683E830          sub eax,byte +0x30
00001116  6601C8            add eax,ecx
00001119  67668945EC        mov [ebp-0x14],eax
0000111E  67660FB645F7      movzx eax,byte [ebp-0x9]
00001124  67660FB680802600  movzx eax,byte [eax+0x2680]
         -00
0000112D  3C2F              cmp al,0x2f
0000112F  7E13              jng 0x1144
00001131  67660FB645F7      movzx eax,byte [ebp-0x9]
00001137  67660FB680802600  movzx eax,byte [eax+0x2680]
         -00
00001140  3C39              cmp al,0x39
00001142  7E99              jng 0x10dd
00001144  67668B45E4        mov eax,[ebp-0x1c]
00001149  67668B55EC        mov edx,[ebp-0x14]
0000114E  67668910          mov [eax],edx
00001152  67668B4508        mov eax,[ebp+0x8]
00001157  6683C001          add eax,byte +0x1
0000115B  6766894508        mov [ebp+0x8],eax
00001160  67668B4508        mov eax,[ebp+0x8]
00001165  67660FB600        movzx eax,byte [eax]
0000116A  84C0              test al,al
0000116C  0F8552FE          jnz word 0xfc2
00001170  90                nop
00001171  6683C418          add esp,byte +0x18
00001175  665B              pop ebx
00001177  665D              pop ebp
00001179  66C3              o32 ret
0000117B  6655              push ebp
0000117D  6689E5            mov ebp,esp
00001180  66B803000000      mov eax,0x3
00001186  CD10              int 0x10
00001188  90                nop
00001189  665D              pop ebp
0000118B  66C3              o32 ret
0000118D  6655              push ebp
0000118F  6689E5            mov ebp,esp
00001192  6653              push ebx
00001194  6683EC04          sub esp,byte +0x4
00001198  66B800080000      mov eax,0x800
0000119E  66BA00000000      mov edx,0x0
000011A4  6689D3            mov ebx,edx
000011A7  CD10              int 0x10
000011A9  678845FB          mov [ebp-0x5],al
000011AD  67660FB645FB      movzx eax,byte [ebp-0x5]
000011B3  6683C404          add esp,byte +0x4
000011B7  665B              pop ebx
000011B9  665D              pop ebp
000011BB  66C3              o32 ret
000011BD  6655              push ebp
000011BF  6689E5            mov ebp,esp
000011C2  6653              push ebx
000011C4  6683EC04          sub esp,byte +0x4
000011C8  67668B4508        mov eax,[ebp+0x8]
000011CD  678845F8          mov [ebp-0x8],al
000011D1  67660FB645F8      movzx eax,byte [ebp-0x8]
000011D7  660500090000      add eax,0x900
000011DD  66BA07000000      mov edx,0x7
000011E3  66B901000000      mov ecx,0x1
000011E9  6689D3            mov ebx,edx
000011EC  CD10              int 0x10
000011EE  90                nop
000011EF  6683C404          add esp,byte +0x4
000011F3  665B              pop ebx
000011F5  665D              pop ebp
000011F7  66C3              o32 ret
000011F9  6655              push ebp
000011FB  6689E5            mov ebp,esp
000011FE  6653              push ebx
00001200  6683EC04          sub esp,byte +0x4
00001204  66B800030000      mov eax,0x300
0000120A  66BA00000000      mov edx,0x0
00001210  6689D3            mov ebx,edx
00001213  CD10              int 0x10
00001215  6689D0            mov eax,edx
00001218  678945FA          mov [ebp-0x6],ax
0000121C  67660FB745FA      movzx eax,word [ebp-0x6]
00001222  6683C404          add esp,byte +0x4
00001226  665B              pop ebx
00001228  665D              pop ebp
0000122A  66C3              o32 ret
0000122C  6655              push ebp
0000122E  6689E5            mov ebp,esp
00001231  6653              push ebx
00001233  6683EC04          sub esp,byte +0x4
00001237  67668B4508        mov eax,[ebp+0x8]
0000123C  678945F8          mov [ebp-0x8],ax
00001240  66B800020000      mov eax,0x200
00001246  66B900000000      mov ecx,0x0
0000124C  67660FB755F8      movzx edx,word [ebp-0x8]
00001252  6689CB            mov ebx,ecx
00001255  CD10              int 0x10
00001257  90                nop
00001258  6683C404          add esp,byte +0x4
0000125C  665B              pop ebx
0000125E  665D              pop ebp
00001260  66C3              o32 ret
00001262  6655              push ebp
00001264  6689E5            mov ebp,esp
00001267  6683EC04          sub esp,byte +0x4
0000126B  67668B4508        mov eax,[ebp+0x8]
00001270  678945FC          mov [ebp-0x4],ax
00001274  66B800860000      mov eax,0x8600
0000127A  67660FB74DFC      movzx ecx,word [ebp-0x4]
00001280  66BA00000000      mov edx,0x0
00001286  CD15              int 0x15
00001288  90                nop
00001289  66C9              o32 leave
0000128B  66C3              o32 ret
0000128D  6655              push ebp
0000128F  6689E5            mov ebp,esp
00001292  6653              push ebx
00001294  6683EC04          sub esp,byte +0x4
00001298  67668B4508        mov eax,[ebp+0x8]
0000129D  678845F8          mov [ebp-0x8],al
000012A1  67660FBE45F8      movsx eax,byte [ebp-0x8]
000012A7  6605000E0000      add eax,0xe00
000012AD  66BA00000000      mov edx,0x0
000012B3  6689D3            mov ebx,edx
000012B6  CD10              int 0x10
000012B8  90                nop
000012B9  6683C404          add esp,byte +0x4
000012BD  665B              pop ebx
000012BF  665D              pop ebp
000012C1  66C3              o32 ret
000012C3  6655              push ebp
000012C5  6689E5            mov ebp,esp
000012C8  6657              push edi
000012CA  6656              push esi
000012CC  6653              push ebx
000012CE  6683EC20          sub esp,byte +0x20
000012D2  67668B7508        mov esi,[ebp+0x8]
000012D7  67668B5D0C        mov ebx,[ebp+0xc]
000012DC  67668B4D10        mov ecx,[ebp+0x10]
000012E1  67668B5514        mov edx,[ebp+0x14]
000012E6  67668B4518        mov eax,[ebp+0x18]
000012EB  678975E4          mov [ebp-0x1c],si
000012EF  67895DE0          mov [ebp-0x20],bx
000012F3  67884DDC          mov [ebp-0x24],cl
000012F7  678955D8          mov [ebp-0x28],dx
000012FB  678845D4          mov [ebp-0x2c],al
000012FF  66B800080000      mov eax,0x800
00001305  67660FB655D4      movzx edx,byte [ebp-0x2c]
0000130B  06                push es
0000130C  CD13              int 0x13
0000130E  6689D0            mov eax,edx
00001311  67894DF2          mov [ebp-0xe],cx
00001315  678945F0          mov [ebp-0x10],ax
00001319  67660FB745F2      movzx eax,word [ebp-0xe]
0000131F  678845EF          mov [ebp-0x11],al
00001323  67660FB745F0      movzx eax,word [ebp-0x10]
00001329  C1E808            shr ax,byte 0x8
0000132C  6683C001          add eax,byte +0x1
00001330  678845EE          mov [ebp-0x12],al
00001334  67660FB745D8      movzx eax,word [ebp-0x28]
0000133A  67660FB64DEF      movzx ecx,byte [ebp-0x11]
00001340  67660FB655EE      movzx edx,byte [ebp-0x12]
00001346  6689D6            mov esi,edx
00001349  660FAFF1          imul esi,ecx
0000134D  6699              cdq
0000134F  66F7FE            idiv esi
00001352  678845ED          mov [ebp-0x13],al
00001356  67660FB745D8      movzx eax,word [ebp-0x28]
0000135C  67660FB67DEF      movzx edi,byte [ebp-0x11]
00001362  6699              cdq
00001364  66F7FF            idiv edi
00001367  67660FB64DEE      movzx ecx,byte [ebp-0x12]
0000136D  6699              cdq
0000136F  66F7F9            idiv ecx
00001372  6689D0            mov eax,edx
00001375  678845EC          mov [ebp-0x14],al
00001379  67660FB745D8      movzx eax,word [ebp-0x28]
0000137F  67660FB64DEF      movzx ecx,byte [ebp-0x11]
00001385  6699              cdq
00001387  66F7F9            idiv ecx
0000138A  6689D0            mov eax,edx
0000138D  6683C001          add eax,byte +0x1
00001391  678845EB          mov [ebp-0x15],al
00001395  67660FB645DC      movzx eax,byte [ebp-0x24]
0000139B  660500020000      add eax,0x200
000013A1  67660FB655ED      movzx edx,byte [ebp-0x13]
000013A7  6689D1            mov ecx,edx
000013AA  66C1E108          shl ecx,byte 0x8
000013AE  67660FB655EB      movzx edx,byte [ebp-0x15]
000013B4  6601D1            add ecx,edx
000013B7  67660FB655EC      movzx edx,byte [ebp-0x14]
000013BD  6689D3            mov ebx,edx
000013C0  66C1E308          shl ebx,byte 0x8
000013C4  67660FB655D4      movzx edx,byte [ebp-0x2c]
000013CA  6601DA            add edx,ebx
000013CD  67660FB75DE0      movzx ebx,word [ebp-0x20]
000013D3  67660FB77DE4      movzx edi,word [ebp-0x1c]
000013D9  8EC7              mov es,di
000013DB  CD13              int 0x13
000013DD  07                pop es
000013DE  90                nop
000013DF  6683C420          add esp,byte +0x20
000013E3  665B              pop ebx
000013E5  665E              pop esi
000013E7  665F              pop edi
000013E9  665D              pop ebp
000013EB  66C3              o32 ret
000013ED  6655              push ebp
000013EF  6689E5            mov ebp,esp
000013F2  6683EC08          sub esp,byte +0x8
000013F6  67668B4510        mov eax,[ebp+0x10]
000013FB  678945F8          mov [ebp-0x8],ax
000013FF  67C645FF00        mov byte [ebp-0x1],0x0
00001404  EB42              jmp short 0x1448
00001406  67668B4508        mov eax,[ebp+0x8]
0000140B  67668D5001        lea edx,[eax+0x1]
00001410  6766895508        mov [ebp+0x8],edx
00001415  67660FB608        movzx ecx,byte [eax]
0000141A  67668B450C        mov eax,[ebp+0xc]
0000141F  67668D5001        lea edx,[eax+0x1]
00001424  676689550C        mov [ebp+0xc],edx
00001429  67660FB600        movzx eax,byte [eax]
0000142E  38C1              cmp cl,al
00001430  7408              jz 0x143a
00001432  66B801000000      mov eax,0x1
00001438  EB25              jmp short 0x145f
0000143A  67660FB645FF      movzx eax,byte [ebp-0x1]
00001440  6683C001          add eax,byte +0x1
00001444  678845FF          mov [ebp-0x1],al
00001448  67660FBE55FF      movsx edx,byte [ebp-0x1]
0000144E  67660FB745F8      movzx eax,word [ebp-0x8]
00001454  6639C2            cmp edx,eax
00001457  7CAD              jl 0x1406
00001459  66B800000000      mov eax,0x0
0000145F  66C9              o32 leave
00001461  66C3              o32 ret
00001463  6655              push ebp
00001465  6689E5            mov ebp,esp
00001468  EB26              jmp short 0x1490
0000146A  67668B4508        mov eax,[ebp+0x8]
0000146F  67668D5001        lea edx,[eax+0x1]
00001474  6766895508        mov [ebp+0x8],edx
00001479  67668B550C        mov edx,[ebp+0xc]
0000147E  67668D4A01        lea ecx,[edx+0x1]
00001483  6766894D0C        mov [ebp+0xc],ecx
00001488  67660FB612        movzx edx,byte [edx]
0000148D  678810            mov [eax],dl
00001490  67668B4510        mov eax,[ebp+0x10]
00001495  67668D50FF        lea edx,[eax-0x1]
0000149A  6766895510        mov [ebp+0x10],edx
0000149F  6685C0            test eax,eax
000014A2  75C6              jnz 0x146a
000014A4  90                nop
000014A5  665D              pop ebp
000014A7  66C3              o32 ret
000014A9  6690              xchg eax,eax
000014AB  6690              xchg eax,eax
000014AD  6690              xchg eax,eax
000014AF  90                nop
000014B0  C8000000          enter 0x0,0x0
000014B4  668CC8            mov eax,cs
000014B7  6650              push eax
000014B9  66B8C4140000      mov eax,0x14c4
000014BF  6650              push eax
000014C1  FF6E06            jmp word far [bp+0x6]
000014C4  C9                leave
000014C5  6659              pop ecx
000014C7  FFE1              jmp cx
000014C9  C8000000          enter 0x0,0x0
000014CD  1E                push ds
000014CE  06                push es
000014CF  56                push si
000014D0  57                push di
000014D1  1E                push ds
000014D2  07                pop es
000014D3  8B460C            mov ax,[bp+0xc]
000014D6  8ED8              mov ds,ax
000014D8  8B760A            mov si,[bp+0xa]
000014DB  8B7E06            mov di,[bp+0x6]
000014DE  8B4E0E            mov cx,[bp+0xe]
000014E1  F3A4              rep movsb
000014E3  5F                pop di
000014E4  5E                pop si
000014E5  07                pop es
000014E6  1F                pop ds
000014E7  C9                leave
000014E8  6659              pop ecx
000014EA  FFE1              jmp cx
000014EC  C8000000          enter 0x0,0x0
000014F0  1E                push ds
000014F1  06                push es
000014F2  56                push si
000014F3  57                push di
000014F4  8B4608            mov ax,[bp+0x8]
000014F7  8EC0              mov es,ax
000014F9  8B760A            mov si,[bp+0xa]
000014FC  8B7E06            mov di,[bp+0x6]
000014FF  8B4E0E            mov cx,[bp+0xe]
00001502  F3A4              rep movsb
00001504  5F                pop di
00001505  5E                pop si
00001506  07                pop es
00001507  1F                pop ds
00001508  C9                leave
00001509  6659              pop ecx
0000150B  FFE1              jmp cx
0000150D  C8000000          enter 0x0,0x0
00001511  06                push es
00001512  53                push bx
00001513  8B460E            mov ax,[bp+0xe]
00001516  BB5000            mov bx,0x50
00001519  F7E3              mul bx
0000151B  034612            add ax,[bp+0x12]
0000151E  BB0200            mov bx,0x2
00001521  F7E3              mul bx
00001523  89C3              mov bx,ax
00001525  B800B8            mov ax,0xb800
00001528  8EC0              mov es,ax
0000152A  8A660A            mov ah,[bp+0xa]
0000152D  8A4606            mov al,[bp+0x6]
00001530  268907            mov [es:bx],ax
00001533  5B                pop bx
00001534  07                pop es
00001535  C9                leave
00001536  6659              pop ecx
00001538  FFE1              jmp cx
0000153A  6655              push ebp
0000153C  6689E5            mov ebp,esp
0000153F  67668B550C        mov edx,[ebp+0xc]
00001544  6689D0            mov eax,edx
00001547  6601C0            add eax,eax
0000154A  6601D0            add eax,edx
0000154D  66C1E005          shl eax,byte 0x5
00001551  660500060000      add eax,0x600
00001557  666A60            o32 push byte +0x60
0000155A  6650              push eax
0000155C  6766FF7508        push dword [ebp+0x8]
00001561  66E862FFFFFF      call dword 0x14c9
00001567  6683C40C          add esp,byte +0xc
0000156B  90                nop
0000156C  66C9              o32 leave
0000156E  66C3              o32 ret
00001570  6655              push ebp
00001572  6689E5            mov ebp,esp
00001575  67668B550C        mov edx,[ebp+0xc]
0000157A  6689D0            mov eax,edx
0000157D  6601C0            add eax,eax
00001580  6601D0            add eax,edx
00001583  66C1E005          shl eax,byte 0x5
00001587  660500060000      add eax,0x600
0000158D  666A60            o32 push byte +0x60
00001590  6766FF7508        push dword [ebp+0x8]
00001595  6650              push eax
00001597  66E84FFFFFFF      call dword 0x14ec
0000159D  6683C40C          add esp,byte +0xc
000015A1  90                nop
000015A2  66C9              o32 leave
000015A4  66C3              o32 ret
000015A6  6655              push ebp
000015A8  6689E5            mov ebp,esp
000015AB  66A18025          mov eax,[0x2580]
000015AF  666A04            o32 push byte +0x4
000015B2  666800050000      push dword 0x500
000015B8  6650              push eax
000015BA  66E809FFFFFF      call dword 0x14c9
000015C0  6683C40C          add esp,byte +0xc
000015C4  66A18025          mov eax,[0x2580]
000015C8  67668B10          mov edx,[eax]
000015CC  6683C201          add edx,byte +0x1
000015D0  67668910          mov [eax],edx
000015D4  66A18025          mov eax,[0x2580]
000015D8  666A04            o32 push byte +0x4
000015DB  6650              push eax
000015DD  666800050000      push dword 0x500
000015E3  66E803FFFFFF      call dword 0x14ec
000015E9  6683C40C          add esp,byte +0xc
000015ED  66A18025          mov eax,[0x2580]
000015F1  67668B00          mov eax,[eax]
000015F5  6683E801          sub eax,byte +0x1
000015F9  66C9              o32 leave
000015FB  66C3              o32 ret
000015FD  6655              push ebp
000015FF  6689E5            mov ebp,esp
00001602  EB48              jmp short 0x164c
00001604  67668B4508        mov eax,[ebp+0x8]
00001609  67668D5001        lea edx,[eax+0x1]
0000160E  6766895508        mov [ebp+0x8],edx
00001613  666A01            o32 push byte +0x1
00001616  6650              push eax
00001618  666884250000      push dword 0x2584
0000161E  66E8A5FEFFFF      call dword 0x14c9
00001624  6683C40C          add esp,byte +0xc
00001628  67668B450C        mov eax,[ebp+0xc]
0000162D  67668D5001        lea edx,[eax+0x1]
00001632  676689550C        mov [ebp+0xc],edx
00001637  666A01            o32 push byte +0x1
0000163A  666884250000      push dword 0x2584
00001640  6650              push eax
00001642  66E8A4FEFFFF      call dword 0x14ec
00001648  6683C40C          add esp,byte +0xc
0000164C  67668B4510        mov eax,[ebp+0x10]
00001651  67668D50FF        lea edx,[eax-0x1]
00001656  6766895510        mov [ebp+0x10],edx
0000165B  6685C0            test eax,eax
0000165E  75A4              jnz 0x1604
00001660  90                nop
00001661  66C9              o32 leave
00001663  66C3              o32 ret
00001665  6655              push ebp
00001667  6689E5            mov ebp,esp
0000166A  CD74              int 0x74
0000166C  CD71              int 0x71
0000166E  90                nop
0000166F  665D              pop ebp
00001671  66C3              o32 ret
00001673  6655              push ebp
00001675  6689E5            mov ebp,esp
00001678  CD75              int 0x75
0000167A  90                nop
0000167B  665D              pop ebp
0000167D  66C3              o32 ret
0000167F  6655              push ebp
00001681  6689E5            mov ebp,esp
00001684  6653              push ebx
00001686  6683EC0C          sub esp,byte +0xc
0000168A  67668B4D0C        mov ecx,[ebp+0xc]
0000168F  67668B5510        mov edx,[ebp+0x10]
00001694  67668B4514        mov eax,[ebp+0x14]
00001699  67894DF8          mov [ebp-0x8],cx
0000169D  678955F4          mov [ebp-0xc],dx
000016A1  678945F0          mov [ebp-0x10],ax
000016A5  66C7068825000000  mov dword [0x2588],0x0
         -00
000016AE  EB2B              jmp short 0x16db
000016B0  66A18825          mov eax,[0x2588]
000016B4  6650              push eax
000016B6  6668A0250000      push dword 0x25a0
000016BC  66E878FEFFFF      call dword 0x153a
000016C2  6683C408          add esp,byte +0x8
000016C6  66A1F425          mov eax,[0x25f4]
000016CA  6685C0            test eax,eax
000016CD  7418              jz 0x16e7
000016CF  66A18825          mov eax,[0x2588]
000016D3  6683C001          add eax,byte +0x1
000016D7  66A38825          mov [0x2588],eax
000016DB  66A18825          mov eax,[0x2588]
000016DF  6683F807          cmp eax,byte +0x7
000016E3  7ECB              jng 0x16b0
000016E5  EB01              jmp short 0x16e8
000016E7  90                nop
000016E8  66A18825          mov eax,[0x2588]
000016EC  6683F807          cmp eax,byte +0x7
000016F0  7E13              jng 0x1705
000016F2  6668E41B0000      push dword 0x1be4
000016F8  66E86DF7FFFF      call dword 0xe6b
000016FE  6683C404          add esp,byte +0x4
00001702  E91901            jmp word 0x181e
00001705  66A18825          mov eax,[0x2588]
00001709  66C1E01A          shl eax,byte 0x1a
0000170D  660500050020      add eax,0x20000500
00001713  66A30026          mov [0x2600],eax
00001717  67660FB74DF4      movzx ecx,word [ebp-0xc]
0000171D  67660FB745F8      movzx eax,word [ebp-0x8]
00001723  660FB6D0          movzx edx,al
00001727  66A10026          mov eax,[0x2600]
0000172B  660FB7C0          movzx eax,ax
0000172F  668B1E0026        mov ebx,[0x2600]
00001734  66C1EB10          shr ebx,byte 0x10
00001738  666A00            o32 push byte +0x0
0000173B  6651              push ecx
0000173D  6652              push edx
0000173F  6650              push eax
00001741  6653              push ebx
00001743  66E87AFBFFFF      call dword 0x12c3
00001749  6683C414          add esp,byte +0x14
0000174D  66A10026          mov eax,[0x2600]
00001751  66C1F810          sar eax,byte 0x10
00001755  66A3A025          mov [0x25a0],eax
00001759  66A1A025          mov eax,[0x25a0]
0000175D  66A3AC25          mov [0x25ac],eax
00001761  66A1AC25          mov eax,[0x25ac]
00001765  66A3B025          mov [0x25b0],eax
00001769  66A1B025          mov eax,[0x25b0]
0000176D  66A3D825          mov [0x25d8],eax
00001771  66A10026          mov eax,[0x2600]
00001775  660FB7C0          movzx eax,ax
00001779  66A3C025          mov [0x25c0],eax
0000177D  66A1C025          mov eax,[0x25c0]
00001781  66A3D425          mov [0x25d4],eax
00001785  66E81BFEFFFF      call dword 0x15a6
0000178B  66A3F025          mov [0x25f0],eax
0000178F  66C706FC25000000  mov dword [0x25fc],0x0
         -00
00001798  67837DF000        cmp word [ebp-0x10],byte +0x0
0000179D  7408              jz 0x17a7
0000179F  66B800000000      mov eax,0x0
000017A5  EB06              jmp short 0x17ad
000017A7  66B8FFFFFFFF      mov eax,0xffffffff
000017AD  66A3F825          mov [0x25f8],eax
000017B1  669C              pushfd
000017B3  6658              pop eax
000017B5  66A3DC25          mov [0x25dc],eax
000017B9  66C7060426E02500  mov dword [0x2604],0x25e0
         -00
000017C2  EB25              jmp short 0x17e9
000017C4  66A10426          mov eax,[0x2604]
000017C8  67668D5001        lea edx,[eax+0x1]
000017CD  6689160426        mov [0x2604],edx
000017D2  67668B5508        mov edx,[ebp+0x8]
000017D7  67668D4A01        lea ecx,[edx+0x1]
000017DC  6766894D08        mov [ebp+0x8],ecx
000017E1  67660FB612        movzx edx,byte [edx]
000017E6  678810            mov [eax],dl
000017E9  67668B4508        mov eax,[ebp+0x8]
000017EE  67660FB600        movzx eax,byte [eax]
000017F3  84C0              test al,al
000017F5  75CD              jnz 0x17c4
000017F7  66A10426          mov eax,[0x2604]
000017FB  67C60000          mov byte [eax],0x0
000017FF  66C706F425010000  mov dword [0x25f4],0x1
         -00
00001808  66A18825          mov eax,[0x2588]
0000180C  6650              push eax
0000180E  6668A0250000      push dword 0x25a0
00001814  66E856FDFFFF      call dword 0x1570
0000181A  6683C408          add esp,byte +0x8
0000181E  67668B5DFC        mov ebx,[ebp-0x4]
00001823  66C9              o32 leave
00001825  66C3              o32 ret
00001827  6655              push ebp
00001829  6689E5            mov ebp,esp
0000182C  6656              push esi
0000182E  6653              push ebx
00001830  6668EC1B0000      push dword 0x1bec
00001836  66E82FF6FFFF      call dword 0xe6b
0000183C  6683C404          add esp,byte +0x4
00001840  67668B4508        mov eax,[ebp+0x8]
00001845  67668B5054        mov edx,[eax+0x54]
0000184A  67668B4508        mov eax,[ebp+0x8]
0000184F  67668D4840        lea ecx,[eax+0x40]
00001854  67668B4508        mov eax,[ebp+0x8]
00001859  67668B4050        mov eax,[eax+0x50]
0000185E  6652              push edx
00001860  6651              push ecx
00001862  6650              push eax
00001864  6668201C0000      push dword 0x1c20
0000186A  66E8FBF5FFFF      call dword 0xe6b
00001870  6683C410          add esp,byte +0x10
00001874  67668B4508        mov eax,[ebp+0x8]
00001879  67668B7010        mov esi,[eax+0x10]
0000187E  67668B4508        mov eax,[ebp+0x8]
00001883  67668B580C        mov ebx,[eax+0xc]
00001888  67668B4508        mov eax,[ebp+0x8]
0000188D  67668B4808        mov ecx,[eax+0x8]
00001892  67668B4508        mov eax,[ebp+0x8]
00001897  67668B5004        mov edx,[eax+0x4]
0000189C  67668B4508        mov eax,[ebp+0x8]
000018A1  67668B00          mov eax,[eax]
000018A5  6656              push esi
000018A7  6653              push ebx
000018A9  6651              push ecx
000018AB  6652              push edx
000018AD  6650              push eax
000018AF  6668401C0000      push dword 0x1c40
000018B5  66E8B0F5FFFF      call dword 0xe6b
000018BB  6683C418          add esp,byte +0x18
000018BF  67668B4508        mov eax,[ebp+0x8]
000018C4  67668B5820        mov ebx,[eax+0x20]
000018C9  67668B4508        mov eax,[ebp+0x8]
000018CE  67668B481C        mov ecx,[eax+0x1c]
000018D3  67668B4508        mov eax,[ebp+0x8]
000018D8  67668B5018        mov edx,[eax+0x18]
000018DD  67668B4508        mov eax,[ebp+0x8]
000018E2  67668B4014        mov eax,[eax+0x14]
000018E7  6653              push ebx
000018E9  6651              push ecx
000018EB  6652              push edx
000018ED  6650              push eax
000018EF  66686C1C0000      push dword 0x1c6c
000018F5  66E870F5FFFF      call dword 0xe6b
000018FB  6683C414          add esp,byte +0x14
000018FF  67668B4508        mov eax,[ebp+0x8]
00001904  67668B5828        mov ebx,[eax+0x28]
00001909  67668B4508        mov eax,[ebp+0x8]
0000190E  67668B482C        mov ecx,[eax+0x2c]
00001913  67668B4508        mov eax,[ebp+0x8]
00001918  67668B5024        mov edx,[eax+0x24]
0000191D  67668B4508        mov eax,[ebp+0x8]
00001922  67668B4030        mov eax,[eax+0x30]
00001927  6653              push ebx
00001929  6651              push ecx
0000192B  6652              push edx
0000192D  6650              push eax
0000192F  6668901C0000      push dword 0x1c90
00001935  66E830F5FFFF      call dword 0xe6b
0000193B  6683C414          add esp,byte +0x14
0000193F  67668B4508        mov eax,[ebp+0x8]
00001944  67668B585C        mov ebx,[eax+0x5c]
00001949  67668B4508        mov eax,[ebp+0x8]
0000194E  67668B483C        mov ecx,[eax+0x3c]
00001953  67668B4508        mov eax,[ebp+0x8]
00001958  67668B5034        mov edx,[eax+0x34]
0000195D  67668B4508        mov eax,[ebp+0x8]
00001962  67668B4038        mov eax,[eax+0x38]
00001967  6653              push ebx
00001969  6651              push ecx
0000196B  6652              push edx
0000196D  6650              push eax
0000196F  6668B41C0000      push dword 0x1cb4
00001975  66E8F0F4FFFF      call dword 0xe6b
0000197B  6683C414          add esp,byte +0x14
0000197F  6668EC1B0000      push dword 0x1bec
00001985  66E8E0F4FFFF      call dword 0xe6b
0000198B  6683C404          add esp,byte +0x4
0000198F  90                nop
00001990  67668D65F8        lea esp,[ebp-0x8]
00001995  665B              pop ebx
00001997  665E              pop esi
00001999  665D              pop ebp
0000199B  66C3              o32 ret
0000199D  6655              push ebp
0000199F  6689E5            mov ebp,esp
000019A2  6653              push ebx
000019A4  6683EC04          sub esp,byte +0x4
000019A8  67668B4508        mov eax,[ebp+0x8]
000019AD  678845F8          mov [ebp-0x8],al
000019B1  67660FBE45F8      movsx eax,byte [ebp-0x8]
000019B7  6605000E0000      add eax,0xe00
000019BD  66BA00000000      mov edx,0x0
000019C3  6689D3            mov ebx,edx
000019C6  CD10              int 0x10
000019C8  90                nop
000019C9  6683C404          add esp,byte +0x4
000019CD  665B              pop ebx
000019CF  665D              pop ebp
000019D1  66C3              o32 ret
000019D3  6655              push ebp
000019D5  6689E5            mov ebp,esp
000019D8  666A4F            o32 push byte +0x4f
000019DB  66E8BCFFFFFF      call dword 0x199d
000019E1  6683C404          add esp,byte +0x4
000019E5  666A55            o32 push byte +0x55
000019E8  66E8AFFFFFFF      call dword 0x199d
000019EE  6683C404          add esp,byte +0x4
000019F2  666A43            o32 push byte +0x43
000019F5  66E8A2FFFFFF      call dword 0x199d
000019FB  6683C404          add esp,byte +0x4
000019FF  666A48            o32 push byte +0x48
00001A02  66E895FFFFFF      call dword 0x199d
00001A08  6683C404          add esp,byte +0x4
00001A0C  666A21            o32 push byte +0x21
00001A0F  66E888FFFFFF      call dword 0x199d
00001A15  6683C404          add esp,byte +0x4
00001A19  666A0D            o32 push byte +0xd
00001A1C  66E87BFFFFFF      call dword 0x199d
00001A22  6683C404          add esp,byte +0x4
00001A26  666A0A            o32 push byte +0xa
00001A29  66E86EFFFFFF      call dword 0x199d
00001A2F  6683C404          add esp,byte +0x4
00001A33  90                nop
00001A34  66C9              o32 leave
00001A36  66C3              o32 ret
00001A38  6655              push ebp
00001A3A  6689E5            mov ebp,esp
00001A3D  6683EC04          sub esp,byte +0x4
00001A41  67668B4508        mov eax,[ebp+0x8]
00001A46  678845FC          mov [ebp-0x4],al
00001A4A  67660FB645FC      movzx eax,byte [ebp-0x4]
00001A50  6683E830          sub eax,byte +0x30
00001A54  66C9              o32 leave
00001A56  66C3              o32 ret
00001A58  6655              push ebp
00001A5A  6689E5            mov ebp,esp
00001A5D  6683EC08          sub esp,byte +0x8
00001A61  67668B450C        mov eax,[ebp+0xc]
00001A66  678945F8          mov [ebp-0x8],ax
00001A6A  67C745FE0000      mov word [ebp-0x2],0x0
00001A70  EB40              jmp short 0x1ab2
00001A72  67668B4508        mov eax,[ebp+0x8]
00001A77  67660FB600        movzx eax,byte [eax]
00001A7C  3C60              cmp al,0x60
00001A7E  7E27              jng 0x1aa7
00001A80  67668B4508        mov eax,[ebp+0x8]
00001A85  67660FB600        movzx eax,byte [eax]
00001A8A  3C7A              cmp al,0x7a
00001A8C  7F19              jg 0x1aa7
00001A8E  67668B4508        mov eax,[ebp+0x8]
00001A93  67660FB600        movzx eax,byte [eax]
00001A98  6683E820          sub eax,byte +0x20
00001A9C  6689C2            mov edx,eax
00001A9F  67668B4508        mov eax,[ebp+0x8]
00001AA4  678810            mov [eax],dl
00001AA7  676683450801      add dword [ebp+0x8],byte +0x1
00001AAD  678345FE01        add word [ebp-0x2],byte +0x1
00001AB2  67660FB745FE      movzx eax,word [ebp-0x2]
00001AB8  673B45F8          cmp ax,[ebp-0x8]
00001ABC  72B4              jc 0x1a72
00001ABE  90                nop
00001ABF  66C9              o32 leave
00001AC1  66C3              o32 ret
00001AC3  6655              push ebp
00001AC5  6689E5            mov ebp,esp
00001AC8  6683EC08          sub esp,byte +0x8
00001ACC  67668B450C        mov eax,[ebp+0xc]
00001AD1  678945F8          mov [ebp-0x8],ax
00001AD5  67C745FE0000      mov word [ebp-0x2],0x0
00001ADB  EB40              jmp short 0x1b1d
00001ADD  67668B4508        mov eax,[ebp+0x8]
00001AE2  67660FB600        movzx eax,byte [eax]
00001AE7  3C40              cmp al,0x40
00001AE9  7E27              jng 0x1b12
00001AEB  67668B4508        mov eax,[ebp+0x8]
00001AF0  67660FB600        movzx eax,byte [eax]
00001AF5  3C5A              cmp al,0x5a
00001AF7  7F19              jg 0x1b12
00001AF9  67668B4508        mov eax,[ebp+0x8]
00001AFE  67660FB600        movzx eax,byte [eax]
00001B03  6683C020          add eax,byte +0x20
00001B07  6689C2            mov edx,eax
00001B0A  67668B4508        mov eax,[ebp+0x8]
00001B0F  678810            mov [eax],dl
00001B12  676683450801      add dword [ebp+0x8],byte +0x1
00001B18  678345FE01        add word [ebp-0x2],byte +0x1
00001B1D  67660FB745FE      movzx eax,word [ebp-0x2]
00001B23  673B45F8          cmp ax,[ebp-0x8]
00001B27  72B4              jc 0x1add
00001B29  90                nop
00001B2A  66C9              o32 leave
00001B2C  66C3              o32 ret
00001B2E  6655              push ebp
00001B30  6689E5            mov ebp,esp
00001B33  6683EC04          sub esp,byte +0x4
00001B37  67668B4508        mov eax,[ebp+0x8]
00001B3C  678845FC          mov [ebp-0x4],al
00001B40  67660FB645FC      movzx eax,byte [ebp-0x4]
00001B46  6683C030          add eax,byte +0x30
00001B4A  66C9              o32 leave
00001B4C  66C3              o32 ret
00001B4E  6655              push ebp
00001B50  6689E5            mov ebp,esp
00001B53  EB20              jmp short 0x1b75
00001B55  67668B4508        mov eax,[ebp+0x8]
00001B5A  67660FB600        movzx eax,byte [eax]
00001B5F  660FBEC0          movsx eax,al
00001B63  6650              push eax
00001B65  66E832FEFFFF      call dword 0x199d
00001B6B  6683C404          add esp,byte +0x4
00001B6F  676683450801      add dword [ebp+0x8],byte +0x1
00001B75  67668B4508        mov eax,[ebp+0x8]
00001B7A  67660FB600        movzx eax,byte [eax]
00001B7F  84C0              test al,al
00001B81  75D2              jnz 0x1b55
00001B83  90                nop
00001B84  66C9              o32 leave
00001B86  66C3              o32 ret
00001B88  53                push bx
00001B89  7465              jz 0x1bf0
00001B8B  61                popaw
00001B8C  6D                insw
00001B8D  204F53            and [bx+0x53],cl
00001B90  207634            and [bp+0x34],dh
00001B93  2E300A            xor [cs:bp+si],cl
00001B96  43                inc bx
00001B97  6F                outsw
00001B98  7079              jo 0x1c13
00001B9A  7269              jc 0x1c05
00001B9C  67687420          push word 0x2074
00001BA0  286329            sub [bp+di+0x29],ah
00001BA3  2032              and [bp+si],dh
00001BA5  3031              xor [bx+di],dh
00001BA7  352047            xor ax,0x4720
00001BAA  61                popaw
00001BAB  6F                outsw
00001BAC  7962              jns 0x1c10
00001BAE  37                aaa
00001BAF  2E0A5479          or dl,[cs:si+0x79]
00001BB3  7065              jo 0x1c1a
00001BB5  2027              and [bx],ah
00001BB7  68656C            push word 0x6c65
00001BBA  7027              jo 0x1be3
00001BBC  20666F            and [bp+0x6f],ah
00001BBF  7220              jc 0x1be1
00001BC1  6D                insw
00001BC2  6F                outsw
00001BC3  7265              jc 0x1c2a
00001BC5  20696E            and [bx+di+0x6e],ch
00001BC8  666F              outsd
00001BCA  726D              jc 0x1c39
00001BCC  61                popaw
00001BCD  7469              jz 0x1c38
00001BCF  6F                outsw
00001BD0  6E                outsb
00001BD1  2E0A0A            or cl,[cs:bp+si]
00001BD4  007368            add [bp+di+0x68],dh
00001BD7  007C2F            add [si+0x2f],bh
00001BDA  2D5C00            sub ax,0x5c
00001BDD  0820              or [bx+si],ah
00001BDF  0800              or [bx+si],al
00001BE1  0A00              or al,[bx+si]
00001BE3  003D              add [di],bh
00001BE5  203D              and [di],bh
00001BE7  210A              and [bp+si],cx
00001BE9  0000              add [bx+si],al
00001BEB  003D              add [di],bh
00001BED  3D3D3D            cmp ax,0x3d3d
00001BF0  3D3D3D            cmp ax,0x3d3d
00001BF3  3D3D3D            cmp ax,0x3d3d
00001BF6  3D3D3D            cmp ax,0x3d3d
00001BF9  3D3D3D            cmp ax,0x3d3d
00001BFC  3D3D3D            cmp ax,0x3d3d
00001BFF  3D3D3D            cmp ax,0x3d3d
00001C02  3D3D3D            cmp ax,0x3d3d
00001C05  3D3D3D            cmp ax,0x3d3d
00001C08  3D3D3D            cmp ax,0x3d3d
00001C0B  3D3D3D            cmp ax,0x3d3d
00001C0E  3D3D3D            cmp ax,0x3d3d
00001C11  3D3D3D            cmp ax,0x3d3d
00001C14  3D3D3D            cmp ax,0x3d3d
00001C17  3D3D3D            cmp ax,0x3d3d
00001C1A  3D3D3D            cmp ax,0x3d3d
00001C1D  3D0A00            cmp ax,0xa
00001C20  7069              jo 0x1c8b
00001C22  643A20            cmp ah,[fs:bx+si]
00001C25  256420            and ax,0x2064
00001C28  7C20              jl 0x1c4a
00001C2A  6E                outsb
00001C2B  61                popaw
00001C2C  6D                insw
00001C2D  653A20            cmp ah,[gs:bx+si]
00001C30  257320            and ax,0x2073
00001C33  7C20              jl 0x1c55
00001C35  7374              jnc 0x1cab
00001C37  61                popaw
00001C38  743A              jz 0x1c74
00001C3A  2025              and [di],ah
00001C3C  64200A            and [fs:bp+si],cl
00001C3F  007373            add [bp+di+0x73],dh
00001C42  3A20              cmp ah,[bx+si]
00001C44  257820            and ax,0x2078
00001C47  7C20              jl 0x1c69
00001C49  67733A            jnc 0x1c86
00001C4C  2025              and [di],ah
00001C4E  7820              js 0x1c70
00001C50  7C20              jl 0x1c72
00001C52  66733A            o32 jnc 0x1c8f
00001C55  2025              and [di],ah
00001C57  7820              js 0x1c79
00001C59  7C20              jl 0x1c7b
00001C5B  65733A            gs jnc 0x1c98
00001C5E  2025              and [di],ah
00001C60  7820              js 0x1c82
00001C62  7C20              jl 0x1c84
00001C64  64733A            fs jnc 0x1ca1
00001C67  2025              and [di],ah
00001C69  780A              js 0x1c75
00001C6B  006469            add [si+0x69],ah
00001C6E  3A20              cmp ah,[bx+si]
00001C70  257820            and ax,0x2078
00001C73  7C20              jl 0x1c95
00001C75  7369              jnc 0x1ce0
00001C77  3A20              cmp ah,[bx+si]
00001C79  257820            and ax,0x2078
00001C7C  7C20              jl 0x1c9e
00001C7E  62703A            bound si,[bx+si+0x3a]
00001C81  2025              and [di],ah
00001C83  7820              js 0x1ca5
00001C85  7C20              jl 0x1ca7
00001C87  7370              jnc 0x1cf9
00001C89  3A20              cmp ah,[bx+si]
00001C8B  25780A            and ax,0xa78
00001C8E  0000              add [bx+si],al
00001C90  61                popaw
00001C91  783A              js 0x1ccd
00001C93  2025              and [di],ah
00001C95  7820              js 0x1cb7
00001C97  7C20              jl 0x1cb9
00001C99  62783A            bound di,[bx+si+0x3a]
00001C9C  2025              and [di],ah
00001C9E  7820              js 0x1cc0
00001CA0  7C20              jl 0x1cc2
00001CA2  63783A            arpl [bx+si+0x3a],di
00001CA5  2025              and [di],ah
00001CA7  7820              js 0x1cc9
00001CA9  7C20              jl 0x1ccb
00001CAB  64783A            fs js 0x1ce8
00001CAE  2025              and [di],ah
00001CB0  780A              js 0x1cbc
00001CB2  0000              add [bx+si],al
00001CB4  63733A            arpl [bp+di+0x3a],si
00001CB7  2025              and [di],ah
00001CB9  7820              js 0x1cdb
00001CBB  7C20              jl 0x1cdd
00001CBD  69703A2025        imul si,[bx+si+0x3a],word 0x2520
00001CC2  7820              js 0x1ce4
00001CC4  7C20              jl 0x1ce6
00001CC6  666C              o32 insb
00001CC8  61                popaw
00001CC9  67733A            jnc 0x1d06
00001CCC  2025              and [di],ah
00001CCE  7820              js 0x1cf0
00001CD0  7C20              jl 0x1cf2
00001CD2  7761              ja 0x1d35
00001CD4  69743A2025        imul si,[si+0x3a],word 0x2520
00001CD9  640A00            or al,[fs:bx+si]
00001CDC  1400              adc al,0x0
00001CDE  0000              add [bx+si],al
00001CE0  0000              add [bx+si],al
00001CE2  0000              add [bx+si],al
00001CE4  017A52            add [bp+si+0x52],di
00001CE7  0001              add [bx+di],al
00001CE9  7C08              jl 0x1cf3
00001CEB  011B              add [bp+di],bx
00001CED  0C04              or al,0x4
00001CEF  0488              add al,0x88
00001CF1  0100              add [bx+si],ax
00001CF3  001C              add [si],bl
00001CF5  0000              add [bx+si],al
00001CF7  001C              add [si],bl
00001CF9  0000              add [bx+si],al
00001CFB  000F              add [bx],cl
00001CFD  E3FF              jcxz 0x1cfe
00001CFF  FF35              push word [di]
00001D01  0000              add [bx+si],al
00001D03  0000              add [bx+si],al
00001D05  42                inc dx
00001D06  0E                push cs
00001D07  08850243          or [di+0x4302],al
00001D0B  0D056E            or ax,0x6e05
00001D0E  C50C              lds cx,[si]
00001D10  0404              add al,0x4
00001D12  0000              add [bx+si],al
00001D14  1C00              sbb al,0x0
00001D16  0000              add [bx+si],al
00001D18  3C00              cmp al,0x0
00001D1A  0000              add [bx+si],al
00001D1C  24E3              and al,0xe3
00001D1E  FF                db 0xff
00001D1F  FF20              jmp word [bx+si]
00001D21  0000              add [bx+si],al
00001D23  0000              add [bx+si],al
00001D25  42                inc dx
00001D26  0E                push cs
00001D27  08850243          or [di+0x4302],al
00001D2B  0D0559            or ax,0x5905
00001D2E  C50C              lds cx,[si]
00001D30  0404              add al,0x4
00001D32  0000              add [bx+si],al
00001D34  1C00              sbb al,0x0
00001D36  0000              add [bx+si],al
00001D38  5C                pop sp
00001D39  0000              add [bx+si],al
00001D3B  0024              add [si],ah
00001D3D  E3FF              jcxz 0x1d3e
00001D3F  FFA20000          jmp word [bp+si+0x0]
00001D43  0000              add [bx+si],al
00001D45  42                inc dx
00001D46  0E                push cs
00001D47  08850243          or [di+0x4302],al
00001D4B  0D0502            or ax,0x205
00001D4E  9BC50C            wait lds cx,[si]
00001D51  0404              add al,0x4
00001D53  0014              add [si],dl
00001D55  0000              add [bx+si],al
00001D57  0000              add [bx+si],al
00001D59  0000              add [bx+si],al
00001D5B  0001              add [bx+di],al
00001D5D  7A52              jpe 0x1db1
00001D5F  0001              add [bx+di],al
00001D61  7C08              jl 0x1d6b
00001D63  011B              add [bp+di],bx
00001D65  0C04              or al,0x4
00001D67  0488              add al,0x88
00001D69  0100              add [bx+si],ax
00001D6B  001C              add [si],bl
00001D6D  0000              add [bx+si],al
00001D6F  001C              add [si],bl
00001D71  0000              add [bx+si],al
00001D73  008EE3FF          add [bp-0x1d],cl
00001D77  FF                db 0xff
00001D78  BC0000            mov sp,0x0
00001D7B  0000              add [bx+si],al
00001D7D  42                inc dx
00001D7E  0E                push cs
00001D7F  08850243          or [di+0x4302],al
00001D83  0D0502            or ax,0x205
00001D86  B5C5              mov ch,0xc5
00001D88  0C04              or al,0x4
00001D8A  0400              add al,0x0
00001D8C  1C00              sbb al,0x0
00001D8E  0000              add [bx+si],al
00001D90  3C00              cmp al,0x0
00001D92  0000              add [bx+si],al
00001D94  2AE4              sub ah,ah
00001D96  FF                db 0xff
00001D97  FFA40000          jmp word [si+0x0]
00001D9B  0000              add [bx+si],al
00001D9D  42                inc dx
00001D9E  0E                push cs
00001D9F  08850243          or [di+0x4302],al
00001DA3  0D0502            or ax,0x205
00001DA6  9D                popfw
00001DA7  C50C              lds cx,[si]
00001DA9  0404              add al,0x4
00001DAB  001C              add [si],bl
00001DAD  0000              add [bx+si],al
00001DAF  005C00            add [si+0x0],bl
00001DB2  0000              add [bx+si],al
00001DB4  AE                scasb
00001DB5  E4FF              in al,0xff
00001DB7  FF                db 0xff
00001DB8  3F                aas
00001DB9  0100              add [bx+si],ax
00001DBB  0000              add [bx+si],al
00001DBD  42                inc dx
00001DBE  0E                push cs
00001DBF  08850243          or [di+0x4302],al
00001DC3  0D0503            or ax,0x305
00001DC6  3801              cmp [bx+di],al
00001DC8  C50C              lds cx,[si]
00001DCA  0404              add al,0x4
00001DCC  1C00              sbb al,0x0
00001DCE  0000              add [bx+si],al
00001DD0  7C00              jl 0x1dd2
00001DD2  0000              add [bx+si],al
00001DD4  CDE5              int 0xe5
00001DD6  FF                db 0xff
00001DD7  FF                db 0xff
00001DD8  3F                aas
00001DD9  0000              add [bx+si],al
00001DDB  0000              add [bx+si],al
00001DDD  42                inc dx
00001DDE  0E                push cs
00001DDF  08850243          or [di+0x4302],al
00001DE3  0D0578            or ax,0x7805
00001DE6  C50C              lds cx,[si]
00001DE8  0404              add al,0x4
00001DEA  0000              add [bx+si],al
00001DEC  1C00              sbb al,0x0
00001DEE  0000              add [bx+si],al
00001DF0  9C                pushfw
00001DF1  0000              add [bx+si],al
00001DF3  00EC              add ah,ch
00001DF5  E5FF              in ax,0xff
00001DF7  FF880000          dec word [bx+si+0x0]
00001DFB  0000              add [bx+si],al
00001DFD  42                inc dx
00001DFE  0E                push cs
00001DFF  08850243          or [di+0x4302],al
00001E03  0D0502            or ax,0x205
00001E06  81C50C04          add bp,0x40c
00001E0A  0400              add al,0x0
00001E0C  1C00              sbb al,0x0
00001E0E  0000              add [bx+si],al
00001E10  BC0000            mov sp,0x0
00001E13  0054E6            add [si-0x1a],dl
00001E16  FF                db 0xff
00001E17  FF20              jmp word [bx+si]
00001E19  0200              add al,[bx+si]
00001E1B  0000              add [bx+si],al
00001E1D  42                inc dx
00001E1E  0E                push cs
00001E1F  08850243          or [di+0x4302],al
00001E23  0D0503            or ax,0x305
00001E26  1902              sbb [bp+si],ax
00001E28  C50C              lds cx,[si]
00001E2A  0404              add al,0x4
00001E2C  1C00              sbb al,0x0
00001E2E  0000              add [bx+si],al
00001E30  DC00              fadd qword [bx+si]
00001E32  0000              add [bx+si],al
00001E34  54                push sp
00001E35  E8FFFF            call word 0x1e37
00001E38  1E                push ds
00001E39  0200              add al,[bx+si]
00001E3B  0000              add [bx+si],al
00001E3D  42                inc dx
00001E3E  0E                push cs
00001E3F  08850243          or [di+0x4302],al
00001E43  0D0503            or ax,0x305
00001E46  17                pop ss
00001E47  02C5              add al,ch
00001E49  0C04              or al,0x4
00001E4B  041C              add al,0x1c
00001E4D  0000              add [bx+si],al
00001E4F  00FC              add ah,bh
00001E51  0000              add [bx+si],al
00001E53  0052EA            add [bp+si-0x16],dl
00001E56  FF                db 0xff
00001E57  FF03              inc word [bp+di]
00001E59  0100              add [bx+si],ax
00001E5B  0000              add [bx+si],al
00001E5D  42                inc dx
00001E5E  0E                push cs
00001E5F  08850243          or [di+0x4302],al
00001E63  0D0502            or ax,0x205
00001E66  FC                cld
00001E67  C50C              lds cx,[si]
00001E69  0404              add al,0x4
00001E6B  0014              add [si],dl
00001E6D  0000              add [bx+si],al
00001E6F  0000              add [bx+si],al
00001E71  0000              add [bx+si],al
00001E73  0001              add [bx+di],al
00001E75  7A52              jpe 0x1ec9
00001E77  0001              add [bx+di],al
00001E79  7C08              jl 0x1e83
00001E7B  011B              add [bp+di],bx
00001E7D  0C04              or al,0x4
00001E7F  0488              add al,0x88
00001E81  0100              add [bx+si],ax
00001E83  001C              add [si],bl
00001E85  0000              add [bx+si],al
00001E87  001C              add [si],bl
00001E89  0000              add [bx+si],al
00001E8B  0053EC            add [bp+di-0x14],dl
00001E8E  FF                db 0xff
00001E8F  FF1F              call word far [bx]
00001E91  0000              add [bx+si],al
00001E93  0000              add [bx+si],al
00001E95  42                inc dx
00001E96  0E                push cs
00001E97  08850243          or [di+0x4302],al
00001E9B  0D0558            or ax,0x5805
00001E9E  C50C              lds cx,[si]
00001EA0  0404              add al,0x4
00001EA2  0000              add [bx+si],al
00001EA4  2000              and [bx+si],al
00001EA6  0000              add [bx+si],al
00001EA8  3C00              cmp al,0x0
00001EAA  0000              add [bx+si],al
00001EAC  52                push dx
00001EAD  EC                in al,dx
00001EAE  FF                db 0xff
00001EAF  FF360000          push word [0x0]
00001EB3  0000              add [bx+si],al
00001EB5  42                inc dx
00001EB6  0E                push cs
00001EB7  08850243          or [di+0x4302],al
00001EBB  0D0546            or ax,0x4605
00001EBE  830367            add word [bp+di],byte +0x67
00001EC1  C3                ret
00001EC2  42                inc dx
00001EC3  C50C              lds cx,[si]
00001EC5  0404              add al,0x4
00001EC7  0020              add [bx+si],ah
00001EC9  0000              add [bx+si],al
00001ECB  006000            add [bx+si+0x0],ah
00001ECE  0000              add [bx+si],al
00001ED0  64EC              fs in al,dx
00001ED2  FF                db 0xff
00001ED3  FF4500            inc word [di+0x0]
00001ED6  0000              add [bx+si],al
00001ED8  00420E            add [bp+si+0xe],al
00001EDB  08850243          or [di+0x4302],al
00001EDF  0D0546            or ax,0x4605
00001EE2  830376            add word [bp+di],byte +0x76
00001EE5  C3                ret
00001EE6  42                inc dx
00001EE7  C50C              lds cx,[si]
00001EE9  0404              add al,0x4
00001EEB  001C              add [si],bl
00001EED  0000              add [bx+si],al
00001EEF  00840000          add [si+0x0],al
00001EF3  0085ECFF          add [di-0x14],al
00001EF7  FF7700            push word [bx+0x0]
00001EFA  0000              add [bx+si],al
00001EFC  00420E            add [bp+si+0xe],al
00001EFF  08850243          or [di+0x4302],al
00001F03  0D0502            or ax,0x205
00001F06  70C5              jo 0x1ecd
00001F08  0C04              or al,0x4
00001F0A  0400              add al,0x0
00001F0C  1C00              sbb al,0x0
00001F0E  0000              add [bx+si],al
00001F10  A4                movsb
00001F11  0000              add [bx+si],al
00001F13  00DC              add ah,bl
00001F15  EC                in al,dx
00001F16  FF                db 0xff
00001F17  FF5500            call word [di+0x0]
00001F1A  0000              add [bx+si],al
00001F1C  00420E            add [bp+si+0xe],al
00001F1F  08850243          or [di+0x4302],al
00001F23  0D0502            or ax,0x205
00001F26  4E                dec si
00001F27  C50C              lds cx,[si]
00001F29  0404              add al,0x4
00001F2B  001C              add [si],bl
00001F2D  0000              add [bx+si],al
00001F2F  00C4              add ah,al
00001F31  0000              add [bx+si],al
00001F33  0011              add [bx+di],dl
00001F35  ED                in ax,dx
00001F36  FF                db 0xff
00001F37  FFB10000          push word [bx+di+0x0]
00001F3B  0000              add [bx+si],al
00001F3D  42                inc dx
00001F3E  0E                push cs
00001F3F  08850243          or [di+0x4302],al
00001F43  0D0502            or ax,0x205
00001F46  AA                stosb
00001F47  C50C              lds cx,[si]
00001F49  0404              add al,0x4
00001F4B  001C              add [si],bl
00001F4D  0000              add [bx+si],al
00001F4F  00E4              add ah,ah
00001F51  0000              add [bx+si],al
00001F53  00A2EDFF          add [bp+si-0x13],ah
00001F57  FF6B00            jmp word far [bp+di+0x0]
00001F5A  0000              add [bx+si],al
00001F5C  00420E            add [bp+si+0xe],al
00001F5F  08850243          or [di+0x4302],al
00001F63  0D0502            or ax,0x205
00001F66  64C50C            lds cx,[fs:si]
00001F69  0404              add al,0x4
00001F6B  001C              add [si],bl
00001F6D  0000              add [bx+si],al
00001F6F  0004              add [si],al
00001F71  0100              add [bx+si],ax
00001F73  00ED              add ch,ch
00001F75  ED                in ax,dx
00001F76  FF                db 0xff
00001F77  FF0A              dec word [bp+si]
00001F79  0100              add [bx+si],ax
00001F7B  0000              add [bx+si],al
00001F7D  42                inc dx
00001F7E  0E                push cs
00001F7F  08850243          or [di+0x4302],al
00001F83  0D0503            or ax,0x305
00001F86  0301              add ax,[bx+di]
00001F88  C50C              lds cx,[si]
00001F8A  0404              add al,0x4
00001F8C  2000              and [bx+si],al
00001F8E  0000              add [bx+si],al
00001F90  2401              and al,0x1
00001F92  0000              add [bx+si],al
00001F94  D7                xlatb
00001F95  EE                out dx,al
00001F96  FF                db 0xff
00001F97  FF30              push word [bx+si]
00001F99  0100              add [bx+si],ax
00001F9B  0000              add [bx+si],al
00001F9D  42                inc dx
00001F9E  0E                push cs
00001F9F  08850243          or [di+0x4302],al
00001FA3  0D0546            or ax,0x4605
00001FA6  830303            add word [bp+di],byte +0x3
00001FA9  2301              and ax,[bx+di]
00001FAB  C5                db 0xc5
00001FAC  C3                ret
00001FAD  0C04              or al,0x4
00001FAF  0424              add al,0x24
00001FB1  0000              add [bx+si],al
00001FB3  004801            add [bx+si+0x1],cl
00001FB6  0000              add [bx+si],al
00001FB8  E3EF              jcxz 0x1fa9
00001FBA  FF                db 0xff
00001FBB  FFE0              jmp ax
00001FBD  0100              add [bx+si],ax
00001FBF  0000              add [bx+si],al
00001FC1  42                inc dx
00001FC2  0E                push cs
00001FC3  08850243          or [di+0x4302],al
00001FC7  0D0546            or ax,0x4605
00001FCA  830303            add word [bp+di],byte +0x3
00001FCD  D101              rol word [bx+di],1
00001FCF  C3                ret
00001FD0  42                inc dx
00001FD1  C50C              lds cx,[si]
00001FD3  0404              add al,0x4
00001FD5  0000              add [bx+si],al
00001FD7  0014              add [si],dl
00001FD9  0000              add [bx+si],al
00001FDB  0000              add [bx+si],al
00001FDD  0000              add [bx+si],al
00001FDF  0001              add [bx+di],al
00001FE1  7A52              jpe 0x2035
00001FE3  0001              add [bx+di],al
00001FE5  7C08              jl 0x1fef
00001FE7  011B              add [bp+di],bx
00001FE9  0C04              or al,0x4
00001FEB  0488              add al,0x88
00001FED  0100              add [bx+si],ax
00001FEF  001C              add [si],bl
00001FF1  0000              add [bx+si],al
00001FF3  001C              add [si],bl
00001FF5  0000              add [bx+si],al
00001FF7  0083F1FF          add [bp+di-0xf],al
00001FFB  FF12              call word [bp+si]
00001FFD  0000              add [bx+si],al
00001FFF  0000              add [bx+si],al
00002001  42                inc dx
00002002  0E                push cs
00002003  08850243          or [di+0x4302],al
00002007  0D054B            or ax,0x4b05
0000200A  C50C              lds cx,[si]
0000200C  0404              add al,0x4
0000200E  0000              add [bx+si],al
00002010  2000              and [bx+si],al
00002012  0000              add [bx+si],al
00002014  3C00              cmp al,0x0
00002016  0000              add [bx+si],al
00002018  75F1              jnz 0x200b
0000201A  FF                db 0xff
0000201B  FF30              push word [bx+si]
0000201D  0000              add [bx+si],al
0000201F  0000              add [bx+si],al
00002021  42                inc dx
00002022  0E                push cs
00002023  08850243          or [di+0x4302],al
00002027  0D0546            or ax,0x4605
0000202A  830361            add word [bp+di],byte +0x61
0000202D  C3                ret
0000202E  42                inc dx
0000202F  C50C              lds cx,[si]
00002031  0404              add al,0x4
00002033  0020              add [bx+si],ah
00002035  0000              add [bx+si],al
00002037  006000            add [bx+si+0x0],ah
0000203A  0000              add [bx+si],al
0000203C  81F1FFFF          xor cx,0xffff
00002040  3C00              cmp al,0x0
00002042  0000              add [bx+si],al
00002044  00420E            add [bp+si+0xe],al
00002047  08850243          or [di+0x4302],al
0000204B  0D0546            or ax,0x4605
0000204E  83036D            add word [bp+di],byte +0x6d
00002051  C3                ret
00002052  42                inc dx
00002053  C50C              lds cx,[si]
00002055  0404              add al,0x4
00002057  0020              add [bx+si],ah
00002059  0000              add [bx+si],al
0000205B  00840000          add [si+0x0],al
0000205F  0099F1FF          add [bx+di-0xf],bl
00002063  FF33              push word [bp+di]
00002065  0000              add [bx+si],al
00002067  0000              add [bx+si],al
00002069  42                inc dx
0000206A  0E                push cs
0000206B  08850243          or [di+0x4302],al
0000206F  0D0546            or ax,0x4605
00002072  830364            add word [bp+di],byte +0x64
00002075  C3                ret
00002076  42                inc dx
00002077  C50C              lds cx,[si]
00002079  0404              add al,0x4
0000207B  0020              add [bx+si],ah
0000207D  0000              add [bx+si],al
0000207F  00A80000          add [bx+si+0x0],ch
00002083  00A8F1FF          add [bx+si-0xf],ch
00002087  FF360000          push word [0x0]
0000208B  0000              add [bx+si],al
0000208D  42                inc dx
0000208E  0E                push cs
0000208F  08850243          or [di+0x4302],al
00002093  0D0546            or ax,0x4605
00002096  830367            add word [bp+di],byte +0x67
00002099  C3                ret
0000209A  42                inc dx
0000209B  C50C              lds cx,[si]
0000209D  0404              add al,0x4
0000209F  001C              add [si],bl
000020A1  0000              add [bx+si],al
000020A3  00CC              add ah,cl
000020A5  0000              add [bx+si],al
000020A7  00BAF1FF          add [bp+si-0xf],bh
000020AB  FF2B              jmp word far [bp+di]
000020AD  0000              add [bx+si],al
000020AF  0000              add [bx+si],al
000020B1  42                inc dx
000020B2  0E                push cs
000020B3  08850243          or [di+0x4302],al
000020B7  0D0564            or ax,0x6405
000020BA  C50C              lds cx,[si]
000020BC  0404              add al,0x4
000020BE  0000              add [bx+si],al
000020C0  2000              and [bx+si],al
000020C2  0000              add [bx+si],al
000020C4  EC                in al,dx
000020C5  0000              add [bx+si],al
000020C7  00C5              add ch,al
000020C9  F1                int1
000020CA  FF                db 0xff
000020CB  FF360000          push word [0x0]
000020CF  0000              add [bx+si],al
000020D1  42                inc dx
000020D2  0E                push cs
000020D3  08850243          or [di+0x4302],al
000020D7  0D0546            or ax,0x4605
000020DA  830367            add word [bp+di],byte +0x67
000020DD  C3                ret
000020DE  42                inc dx
000020DF  C50C              lds cx,[si]
000020E1  0404              add al,0x4
000020E3  002C              add [si],ch
000020E5  0000              add [bx+si],al
000020E7  0010              add [bx+si],dl
000020E9  0100              add [bx+si],ax
000020EB  00D7              add bh,dl
000020ED  F1                int1
000020EE  FF                db 0xff
000020EF  FF2A              jmp word far [bp+si]
000020F1  0100              add [bx+si],ax
000020F3  0000              add [bx+si],al
000020F5  42                inc dx
000020F6  0E                push cs
000020F7  08850243          or [di+0x4302],al
000020FB  0D054A            or ax,0x4a05
000020FE  8703              xchg ax,[bp+di]
00002100  8604              xchg al,[si]
00002102  830503            add word [di],byte +0x3
00002105  1301              adc ax,[bx+di]
00002107  C3                ret
00002108  42                inc dx
00002109  C642C742          mov byte [bp+si-0x39],0x42
0000210D  C50C              lds cx,[si]
0000210F  0404              add al,0x4
00002111  0000              add [bx+si],al
00002113  001C              add [si],bl
00002115  0000              add [bx+si],al
00002117  004001            add [bx+si+0x1],al
0000211A  0000              add [bx+si],al
0000211C  D1                db 0xd1
0000211D  F2                repne
0000211E  FF                db 0xff
0000211F  FF7600            push word [bp+0x0]
00002122  0000              add [bx+si],al
00002124  00420E            add [bp+si+0xe],al
00002127  08850243          or [di+0x4302],al
0000212B  0D0502            or ax,0x205
0000212E  6F                outsw
0000212F  C50C              lds cx,[si]
00002131  0404              add al,0x4
00002133  001C              add [si],bl
00002135  0000              add [bx+si],al
00002137  006001            add [bx+si+0x1],ah
0000213A  0000              add [bx+si],al
0000213C  27                daa
0000213D  F3                rep
0000213E  FF                db 0xff
0000213F  FF4600            inc word [bp+0x0]
00002142  0000              add [bx+si],al
00002144  00420E            add [bp+si+0xe],al
00002147  08850243          or [di+0x4302],al
0000214B  0D057F            or ax,0x7f05
0000214E  C50C              lds cx,[si]
00002150  0404              add al,0x4
00002152  0000              add [bx+si],al
00002154  1400              adc al,0x0
00002156  0000              add [bx+si],al
00002158  0000              add [bx+si],al
0000215A  0000              add [bx+si],al
0000215C  017A52            add [bp+si+0x52],di
0000215F  0001              add [bx+di],al
00002161  7C08              jl 0x216b
00002163  011B              add [bp+di],bx
00002165  0C04              or al,0x4
00002167  0488              add al,0x88
00002169  0100              add [bx+si],ax
0000216B  001C              add [si],bl
0000216D  0000              add [bx+si],al
0000216F  001C              add [si],bl
00002171  0000              add [bx+si],al
00002173  00C6              add dh,al
00002175  F3                rep
00002176  FF                db 0xff
00002177  FF360000          push word [0x0]
0000217B  0000              add [bx+si],al
0000217D  42                inc dx
0000217E  0E                push cs
0000217F  08850243          or [di+0x4302],al
00002183  0D056F            or ax,0x6f05
00002186  C50C              lds cx,[si]
00002188  0404              add al,0x4
0000218A  0000              add [bx+si],al
0000218C  1C00              sbb al,0x0
0000218E  0000              add [bx+si],al
00002190  3C00              cmp al,0x0
00002192  0000              add [bx+si],al
00002194  DCF3              fdivr to st3
00002196  FF                db 0xff
00002197  FF360000          push word [0x0]
0000219B  0000              add [bx+si],al
0000219D  42                inc dx
0000219E  0E                push cs
0000219F  08850243          or [di+0x4302],al
000021A3  0D056F            or ax,0x6f05
000021A6  C50C              lds cx,[si]
000021A8  0404              add al,0x4
000021AA  0000              add [bx+si],al
000021AC  1C00              sbb al,0x0
000021AE  0000              add [bx+si],al
000021B0  5C                pop sp
000021B1  0000              add [bx+si],al
000021B3  00F2              add dl,dh
000021B5  F3                rep
000021B6  FF                db 0xff
000021B7  FF5700            call word [bx+0x0]
000021BA  0000              add [bx+si],al
000021BC  00420E            add [bp+si+0xe],al
000021BF  08850243          or [di+0x4302],al
000021C3  0D0502            or ax,0x205
000021C6  50                push ax
000021C7  C50C              lds cx,[si]
000021C9  0404              add al,0x4
000021CB  001C              add [si],bl
000021CD  0000              add [bx+si],al
000021CF  007C00            add [si+0x0],bh
000021D2  0000              add [bx+si],al
000021D4  29F4              sub sp,si
000021D6  FF                db 0xff
000021D7  FF6800            jmp word far [bx+si+0x0]
000021DA  0000              add [bx+si],al
000021DC  00420E            add [bp+si+0xe],al
000021DF  08850243          or [di+0x4302],al
000021E3  0D0502            or ax,0x205
000021E6  61                popaw
000021E7  C50C              lds cx,[si]
000021E9  0404              add al,0x4
000021EB  001C              add [si],bl
000021ED  0000              add [bx+si],al
000021EF  009C0000          add [si+0x0],bl
000021F3  0071F4            add [bx+di-0xc],dh
000021F6  FF                db 0xff
000021F7  FF0E0000          dec word [0x0]
000021FB  0000              add [bx+si],al
000021FD  42                inc dx
000021FE  0E                push cs
000021FF  08850243          or [di+0x4302],al
00002203  0D0547            or ax,0x4705
00002206  C50C              lds cx,[si]
00002208  0404              add al,0x4
0000220A  0000              add [bx+si],al
0000220C  1C00              sbb al,0x0
0000220E  0000              add [bx+si],al
00002210  BC0000            mov sp,0x0
00002213  005FF4            add [bx-0xc],bl
00002216  FF                db 0xff
00002217  FF0C              dec word [si]
00002219  0000              add [bx+si],al
0000221B  0000              add [bx+si],al
0000221D  42                inc dx
0000221E  0E                push cs
0000221F  08850243          or [di+0x4302],al
00002223  0D0545            or ax,0x4505
00002226  C50C              lds cx,[si]
00002228  0404              add al,0x4
0000222A  0000              add [bx+si],al
0000222C  2000              and [bx+si],al
0000222E  0000              add [bx+si],al
00002230  DC00              fadd qword [bx+si]
00002232  0000              add [bx+si],al
00002234  4B                dec bx
00002235  F4                hlt
00002236  FF                db 0xff
00002237  FFA80100          jmp word far [bx+si+0x1]
0000223B  0000              add [bx+si],al
0000223D  42                inc dx
0000223E  0E                push cs
0000223F  08850243          or [di+0x4302],al
00002243  0D0546            or ax,0x4605
00002246  830303            add word [bp+di],byte +0x3
00002249  9B01C5            wait add bp,ax
0000224C  C3                ret
0000224D  0C04              or al,0x4
0000224F  0428              add al,0x28
00002251  0000              add [bx+si],al
00002253  0000              add [bx+si],al
00002255  0100              add [bx+si],ax
00002257  00CF              add bh,cl
00002259  F5                cmc
0000225A  FF                db 0xff
0000225B  FF7601            push word [bp+0x1]
0000225E  0000              add [bx+si],al
00002260  00420E            add [bp+si+0xe],al
00002263  08850243          or [di+0x4302],al
00002267  0D0544            or ax,0x4405
0000226A  8603              xchg al,[bp+di]
0000226C  830403            add word [si],byte +0x3
0000226F  6701C3            a32 add bx,ax
00002272  42                inc dx
00002273  C642C50C          mov byte [bp+si-0x3b],0xc
00002277  0404              add al,0x4
00002279  0000              add [bx+si],al
0000227B  0014              add [si],dl
0000227D  0000              add [bx+si],al
0000227F  0000              add [bx+si],al
00002281  0000              add [bx+si],al
00002283  0001              add [bx+di],al
00002285  7A52              jpe 0x22d9
00002287  0001              add [bx+di],al
00002289  7C08              jl 0x2293
0000228B  011B              add [bp+di],bx
0000228D  0C04              or al,0x4
0000228F  0488              add al,0x88
00002291  0100              add [bx+si],ax
00002293  0020              add [bx+si],ah
00002295  0000              add [bx+si],al
00002297  001C              add [si],bl
00002299  0000              add [bx+si],al
0000229B  0001              add [bx+di],al
0000229D  F7FF              idiv di
0000229F  FF360000          push word [0x0]
000022A3  0000              add [bx+si],al
000022A5  42                inc dx
000022A6  0E                push cs
000022A7  08850243          or [di+0x4302],al
000022AB  0D0546            or ax,0x4605
000022AE  830367            add word [bp+di],byte +0x67
000022B1  C3                ret
000022B2  42                inc dx
000022B3  C50C              lds cx,[si]
000022B5  0404              add al,0x4
000022B7  001C              add [si],bl
000022B9  0000              add [bx+si],al
000022BB  004000            add [bx+si+0x0],al
000022BE  0000              add [bx+si],al
000022C0  13F7              adc si,di
000022C2  FF                db 0xff
000022C3  FF6500            jmp word [di+0x0]
000022C6  0000              add [bx+si],al
000022C8  00420E            add [bp+si+0xe],al
000022CB  08850243          or [di+0x4302],al
000022CF  0D0502            or ax,0x205
000022D2  5E                pop si
000022D3  C50C              lds cx,[si]
000022D5  0404              add al,0x4
000022D7  001C              add [si],bl
000022D9  0000              add [bx+si],al
000022DB  006000            add [bx+si+0x0],ah
000022DE  0000              add [bx+si],al
000022E0  58                pop ax
000022E1  F7FF              idiv di
000022E3  FF20              jmp word [bx+si]
000022E5  0000              add [bx+si],al
000022E7  0000              add [bx+si],al
000022E9  42                inc dx
000022EA  0E                push cs
000022EB  08850243          or [di+0x4302],al
000022EF  0D0559            or ax,0x5905
000022F2  C50C              lds cx,[si]
000022F4  0404              add al,0x4
000022F6  0000              add [bx+si],al
000022F8  1C00              sbb al,0x0
000022FA  0000              add [bx+si],al
000022FC  800000            add byte [bx+si],0x0
000022FF  0058F7            add [bx+si-0x9],bl
00002302  FF                db 0xff
00002303  FF6B00            jmp word far [bp+di+0x0]
00002306  0000              add [bx+si],al
00002308  00420E            add [bp+si+0xe],al
0000230B  08850243          or [di+0x4302],al
0000230F  0D0502            or ax,0x205
00002312  64C50C            lds cx,[fs:si]
00002315  0404              add al,0x4
00002317  001C              add [si],bl
00002319  0000              add [bx+si],al
0000231B  00A00000          add [bx+si+0x0],ah
0000231F  00A3F7FF          add [bp+di-0x9],ah
00002323  FF6B00            jmp word far [bp+di+0x0]
00002326  0000              add [bx+si],al
00002328  00420E            add [bp+si+0xe],al
0000232B  08850243          or [di+0x4302],al
0000232F  0D0502            or ax,0x205
00002332  64C50C            lds cx,[fs:si]
00002335  0404              add al,0x4
00002337  001C              add [si],bl
00002339  0000              add [bx+si],al
0000233B  00C0              add al,al
0000233D  0000              add [bx+si],al
0000233F  00EE              add dh,ch
00002341  F7FF              idiv di
00002343  FF20              jmp word [bx+si]
00002345  0000              add [bx+si],al
00002347  0000              add [bx+si],al
00002349  42                inc dx
0000234A  0E                push cs
0000234B  08850243          or [di+0x4302],al
0000234F  0D0559            or ax,0x5905
00002352  C50C              lds cx,[si]
00002354  0404              add al,0x4
00002356  0000              add [bx+si],al
00002358  1C00              sbb al,0x0
0000235A  0000              add [bx+si],al
0000235C  E000              loopne 0x235e
0000235E  0000              add [bx+si],al
00002360  EE                out dx,al
00002361  F7FF              idiv di
00002363  FF                db 0xff
00002364  3A00              cmp al,[bx+si]
00002366  0000              add [bx+si],al
00002368  00420E            add [bp+si+0xe],al
0000236B  08850243          or [di+0x4302],al
0000236F  0D0573            or ax,0x7305
00002372  C50C              lds cx,[si]
00002374  0404              add al,0x4
00002376  0000              add [bx+si],al
00002378  0100              add [bx+si],ax
0000237A  0000              add [bx+si],al
0000237C  881B              mov [bp+di],bl
0000237E  0000              add [bx+si],al
00002380  0100              add [bx+si],ax
00002382  0000              add [bx+si],al
00002384  05                db 0x05
00002385  07                pop es
