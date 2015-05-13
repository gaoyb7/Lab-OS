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
00000025  6668FD1A0000      push dword 0x1afd
0000002B  66E879150000      call dword 0x15aa
00000031  6683C410          add esp,byte +0x10
00000035  66E8F4010000      call dword 0x22f
0000003B  66C9              o32 leave
0000003D  66C3              o32 ret
0000003F  6655              push ebp
00000041  6689E5            mov ebp,esp
00000044  66E8BD070000      call dword 0x807
0000004A  66A16022          mov eax,[0x2260]
0000004E  6650              push eax
00000050  66E82D020000      call dword 0x283
00000056  6683C404          add esp,byte +0x4
0000005A  66C9              o32 leave
0000005C  66C3              o32 ret
0000005E  6655              push ebp
00000060  6689E5            mov ebp,esp
00000063  66683B010000      push dword 0x13b
00000069  666A08            o32 push byte +0x8
0000006C  66E88E000000      call dword 0x100
00000072  6683C408          add esp,byte +0x8
00000076  66685A010000      push dword 0x15a
0000007C  666A09            o32 push byte +0x9
0000007F  66E87B000000      call dword 0x100
00000085  6683C408          add esp,byte +0x8
00000089  6668D6010000      push dword 0x1d6
0000008F  666A1C            o32 push byte +0x1c
00000092  66E868000000      call dword 0x100
00000098  6683C408          add esp,byte +0x8
0000009C  6668F5010000      push dword 0x1f5
000000A2  666A71            o32 push byte +0x71
000000A5  66E855000000      call dword 0x100
000000AB  6683C408          add esp,byte +0x8
000000AF  666814020000      push dword 0x214
000000B5  666A72            o32 push byte +0x72
000000B8  66E842000000      call dword 0x100
000000BE  6683C408          add esp,byte +0x8
000000C2  666898010000      push dword 0x198
000000C8  666A73            o32 push byte +0x73
000000CB  66E82F000000      call dword 0x100
000000D1  6683C408          add esp,byte +0x8
000000D5  666879010000      push dword 0x179
000000DB  666A74            o32 push byte +0x74
000000DE  66E81C000000      call dword 0x100
000000E4  6683C408          add esp,byte +0x8
000000E8  6668B7010000      push dword 0x1b7
000000EE  666A75            o32 push byte +0x75
000000F1  66E809000000      call dword 0x100
000000F7  6683C408          add esp,byte +0x8
000000FB  66C9              o32 leave
000000FD  66C3              o32 ret
000000FF  90                nop
00000100  C8000000          enter 0x0,0x0
00000104  06                push es
00000105  6653              push ebx
00000107  6656              push esi
00000109  8B4606            mov ax,[bp+0x6]
0000010C  B90400            mov cx,0x4
0000010F  F6E1              mul cl
00000111  89C3              mov bx,ax
00000113  31C0              xor ax,ax
00000115  8EC0              mov es,ax
00000117  668B760A          mov esi,[bp+0xa]
0000011B  26668B07          mov eax,[es:bx]
0000011F  2E668944FC        mov [cs:si-0x4],eax
00000124  268937            mov [es:bx],si
00000127  8CC8              mov ax,cs
00000129  26894702          mov [es:bx+0x2],ax
0000012D  665E              pop esi
0000012F  665B              pop ebx
00000131  07                pop es
00000132  C9                leave
00000133  6659              pop ecx
00000135  FFE1              jmp cx
00000137  0000              add [bx+si],al
00000139  0000              add [bx+si],al
0000013B  1E                push ds
0000013C  8CC8              mov ax,cs
0000013E  8ED8              mov ds,ax
00000140  9C                pushfw
00000141  FA                cli
00000142  FF1E3701          call word far [0x137]
00000146  66E89D0A0000      call dword 0xbe9
0000014C  6650              push eax
0000014E  B020              mov al,0x20
00000150  E620              out 0x20,al
00000152  6658              pop eax
00000154  1F                pop ds
00000155  CF                iretw
00000156  0000              add [bx+si],al
00000158  0000              add [bx+si],al
0000015A  1E                push ds
0000015B  8CC8              mov ax,cs
0000015D  8ED8              mov ds,ax
0000015F  9C                pushfw
00000160  FA                cli
00000161  FF1E5601          call word far [0x156]
00000165  66E8C3090000      call dword 0xb2e
0000016B  6650              push eax
0000016D  B020              mov al,0x20
0000016F  E620              out 0x20,al
00000171  6658              pop eax
00000173  1F                pop ds
00000174  CF                iretw
00000175  0000              add [bx+si],al
00000177  0000              add [bx+si],al
00000179  1E                push ds
0000017A  8CC8              mov ax,cs
0000017C  8ED8              mov ds,ax
0000017E  9C                pushfw
0000017F  FA                cli
00000180  FF1E7501          call word far [0x175]
00000184  66E8410C0000      call dword 0xdcb
0000018A  6650              push eax
0000018C  B020              mov al,0x20
0000018E  E620              out 0x20,al
00000190  6658              pop eax
00000192  1F                pop ds
00000193  CF                iretw
00000194  0000              add [bx+si],al
00000196  0000              add [bx+si],al
00000198  1E                push ds
00000199  8CC8              mov ax,cs
0000019B  8ED8              mov ds,ax
0000019D  9C                pushfw
0000019E  FA                cli
0000019F  FF1E9401          call word far [0x194]
000001A3  66E8600C0000      call dword 0xe09
000001A9  6650              push eax
000001AB  B020              mov al,0x20
000001AD  E620              out 0x20,al
000001AF  6658              pop eax
000001B1  1F                pop ds
000001B2  CF                iretw
000001B3  0000              add [bx+si],al
000001B5  0000              add [bx+si],al
000001B7  1E                push ds
000001B8  8CC8              mov ax,cs
000001BA  8ED8              mov ds,ax
000001BC  9C                pushfw
000001BD  FA                cli
000001BE  FF1EB301          call word far [0x1b3]
000001C2  66E8C40A0000      call dword 0xc8c
000001C8  6650              push eax
000001CA  B020              mov al,0x20
000001CC  E620              out 0x20,al
000001CE  6658              pop eax
000001D0  1F                pop ds
000001D1  CF                iretw
000001D2  0000              add [bx+si],al
000001D4  0000              add [bx+si],al
000001D6  1E                push ds
000001D7  8CC8              mov ax,cs
000001D9  8ED8              mov ds,ax
000001DB  9C                pushfw
000001DC  FA                cli
000001DD  FF1ED201          call word far [0x1d2]
000001E1  66E8A90C0000      call dword 0xe90
000001E7  6650              push eax
000001E9  B020              mov al,0x20
000001EB  E620              out 0x20,al
000001ED  6658              pop eax
000001EF  1F                pop ds
000001F0  CF                iretw
000001F1  0000              add [bx+si],al
000001F3  0000              add [bx+si],al
000001F5  1E                push ds
000001F6  8CC8              mov ax,cs
000001F8  8ED8              mov ds,ax
000001FA  9C                pushfw
000001FB  FA                cli
000001FC  FF1EF101          call word far [0x1f1]
00000200  66E8AB0E0000      call dword 0x10b1
00000206  6650              push eax
00000208  B020              mov al,0x20
0000020A  E620              out 0x20,al
0000020C  6658              pop eax
0000020E  1F                pop ds
0000020F  CF                iretw
00000210  0000              add [bx+si],al
00000212  0000              add [bx+si],al
00000214  1E                push ds
00000215  8CC8              mov ax,cs
00000217  8ED8              mov ds,ax
00000219  9C                pushfw
0000021A  FA                cli
0000021B  FF1E1002          call word far [0x210]
0000021F  66E8AA100000      call dword 0x12cf
00000225  6650              push eax
00000227  B020              mov al,0x20
00000229  E620              out 0x20,al
0000022B  6658              pop eax
0000022D  1F                pop ds
0000022E  CF                iretw
0000022F  6655              push ebp
00000231  6689E5            mov ebp,esp
00000234  6683EC04          sub esp,byte +0x4
00000238  66B800100000      mov eax,0x1000
0000023E  CD16              int 0x16
00000240  678845FF          mov [ebp-0x1],al
00000244  67660FB645FF      movzx eax,byte [ebp-0x1]
0000024A  66C9              o32 leave
0000024C  66C3              o32 ret
0000024E  6655              push ebp
00000250  6689E5            mov ebp,esp
00000253  6653              push ebx
00000255  6683EC04          sub esp,byte +0x4
00000259  67668B4508        mov eax,[ebp+0x8]
0000025E  678845F8          mov [ebp-0x8],al
00000262  67660FBE45F8      movsx eax,byte [ebp-0x8]
00000268  6605000E0000      add eax,0xe00
0000026E  66BA00000000      mov edx,0x0
00000274  6689D3            mov ebx,edx
00000277  CD10              int 0x10
00000279  6683C404          add esp,byte +0x4
0000027D  665B              pop ebx
0000027F  665D              pop ebp
00000281  66C3              o32 ret
00000283  6655              push ebp
00000285  6689E5            mov ebp,esp
00000288  EB3B              jmp short 0x2c5
0000028A  67668B4508        mov eax,[ebp+0x8]
0000028F  67660FB600        movzx eax,byte [eax]
00000294  3C0A              cmp al,0xa
00000296  750D              jnz 0x2a5
00000298  666A0D            o32 push byte +0xd
0000029B  66E8ADFFFFFF      call dword 0x24e
000002A1  6683C404          add esp,byte +0x4
000002A5  67668B4508        mov eax,[ebp+0x8]
000002AA  67660FB600        movzx eax,byte [eax]
000002AF  660FBEC0          movsx eax,al
000002B3  6650              push eax
000002B5  66E893FFFFFF      call dword 0x24e
000002BB  6683C404          add esp,byte +0x4
000002BF  676683450801      add dword [ebp+0x8],byte +0x1
000002C5  67668B4508        mov eax,[ebp+0x8]
000002CA  67660FB600        movzx eax,byte [eax]
000002CF  84C0              test al,al
000002D1  75B7              jnz 0x28a
000002D3  66C9              o32 leave
000002D5  66C3              o32 ret
000002D7  6655              push ebp
000002D9  6689E5            mov ebp,esp
000002DC  6683EC04          sub esp,byte +0x4
000002E0  67C745FE0000      mov word [ebp-0x2],0x0
000002E6  EB67              jmp short 0x34f
000002E8  67807DFD08        cmp byte [ebp-0x3],0x8
000002ED  752E              jnz 0x31d
000002EF  67837DFE00        cmp word [ebp-0x2],byte +0x0
000002F4  7502              jnz 0x2f8
000002F6  EB57              jmp short 0x34f
000002F8  67836DFE01        sub word [ebp-0x2],byte +0x1
000002FD  6668001B0000      push dword 0x1b00
00000303  66E87AFFFFFF      call dword 0x283
00000309  6683C404          add esp,byte +0x4
0000030D  67660FB745FE      movzx eax,word [ebp-0x2]
00000313  67C6800026000020  mov byte [eax+0x2600],0x20
0000031B  EB32              jmp short 0x34f
0000031D  67660FBE45FD      movsx eax,byte [ebp-0x3]
00000323  6650              push eax
00000325  66E823FFFFFF      call dword 0x24e
0000032B  6683C404          add esp,byte +0x4
0000032F  67660FB745FE      movzx eax,word [ebp-0x2]
00000335  67668D5001        lea edx,[eax+0x1]
0000033A  678955FE          mov [ebp-0x2],dx
0000033E  660FB7C0          movzx eax,ax
00000342  67660FB655FD      movzx edx,byte [ebp-0x3]
00000348  67889000260000    mov [eax+0x2600],dl
0000034F  66E8DAFEFFFF      call dword 0x22f
00000355  678845FD          mov [ebp-0x3],al
00000359  67807DFD0D        cmp byte [ebp-0x3],0xd
0000035E  7588              jnz 0x2e8
00000360  67660FB745FE      movzx eax,word [ebp-0x2]
00000366  67C6800026000000  mov byte [eax+0x2600],0x0
0000036E  6668041B0000      push dword 0x1b04
00000374  66E809FFFFFF      call dword 0x283
0000037A  6683C404          add esp,byte +0x4
0000037E  67660FB745FE      movzx eax,word [ebp-0x2]
00000384  66C9              o32 leave
00000386  66C3              o32 ret
00000388  6655              push ebp
0000038A  6689E5            mov ebp,esp
0000038D  6683EC0C          sub esp,byte +0xc
00000391  66E840FFFFFF      call dword 0x2d7
00000397  678945F6          mov [ebp-0xa],ax
0000039B  67C745FE0000      mov word [ebp-0x2],0x0
000003A1  67668B4508        mov eax,[ebp+0x8]
000003A6  67668945F8        mov [ebp-0x8],eax
000003AB  67C745FE0000      mov word [ebp-0x2],0x0
000003B1  EB26              jmp short 0x3d9
000003B3  67668B45F8        mov eax,[ebp-0x8]
000003B8  67668D5001        lea edx,[eax+0x1]
000003BD  67668955F8        mov [ebp-0x8],edx
000003C2  67660FB755FE      movzx edx,word [ebp-0x2]
000003C8  67660FB692002600  movzx edx,byte [edx+0x2600]
         -00
000003D1  678810            mov [eax],dl
000003D4  678345FE01        add word [ebp-0x2],byte +0x1
000003D9  67660FB745FE      movzx eax,word [ebp-0x2]
000003DF  673B45F6          cmp ax,[ebp-0xa]
000003E3  72CE              jc 0x3b3
000003E5  67668B45F8        mov eax,[ebp-0x8]
000003EA  67C60000          mov byte [eax],0x0
000003EE  66C9              o32 leave
000003F0  66C3              o32 ret
000003F2  6655              push ebp
000003F4  6689E5            mov ebp,esp
000003F7  6683EC04          sub esp,byte +0x4
000003FB  6766837D0800      cmp dword [ebp+0x8],byte +0x0
00000401  7510              jnz 0x413
00000403  666A30            o32 push byte +0x30
00000406  66E842FEFFFF      call dword 0x24e
0000040C  6683C404          add esp,byte +0x4
00000410  E9E200            jmp word 0x4f5
00000413  67C645FF00        mov byte [ebp-0x1],0x0
00000418  6766837D0800      cmp dword [ebp+0x8],byte +0x0
0000041E  7912              jns 0x432
00000420  666A2D            o32 push byte +0x2d
00000423  66E825FEFFFF      call dword 0x24e
00000429  6683C404          add esp,byte +0x4
0000042D  6766F75D08        neg dword [ebp+0x8]
00000432  E98200            jmp word 0x4b7
00000435  67668B4508        mov eax,[ebp+0x8]
0000043A  6699              cdq
0000043C  6766F77D0C        idiv dword [ebp+0xc]
00000441  6689D0            mov eax,edx
00000444  6683F809          cmp eax,byte +0x9
00000448  7F2F              jg 0x479
0000044A  67660FB645FF      movzx eax,byte [ebp-0x1]
00000450  67668D5001        lea edx,[eax+0x1]
00000455  678855FF          mov [ebp-0x1],dl
00000459  660FB6C8          movzx ecx,al
0000045D  67668B4508        mov eax,[ebp+0x8]
00000462  6699              cdq
00000464  6766F77D0C        idiv dword [ebp+0xc]
00000469  6689D0            mov eax,edx
0000046C  6683C030          add eax,byte +0x30
00000470  67888100260000    mov [ecx+0x2600],al
00000477  EB2D              jmp short 0x4a6
00000479  67660FB645FF      movzx eax,byte [ebp-0x1]
0000047F  67668D5001        lea edx,[eax+0x1]
00000484  678855FF          mov [ebp-0x1],dl
00000488  660FB6C8          movzx ecx,al
0000048C  67668B4508        mov eax,[ebp+0x8]
00000491  6699              cdq
00000493  6766F77D0C        idiv dword [ebp+0xc]
00000498  6689D0            mov eax,edx
0000049B  6683C037          add eax,byte +0x37
0000049F  67888100260000    mov [ecx+0x2600],al
000004A6  67668B4508        mov eax,[ebp+0x8]
000004AB  6699              cdq
000004AD  6766F77D0C        idiv dword [ebp+0xc]
000004B2  6766894508        mov [ebp+0x8],eax
000004B7  6766837D0800      cmp dword [ebp+0x8],byte +0x0
000004BD  0F8574FF          jnz word 0x435
000004C1  EB1F              jmp short 0x4e2
000004C3  67660FB645FF      movzx eax,byte [ebp-0x1]
000004C9  67660FB680002600  movzx eax,byte [eax+0x2600]
         -00
000004D2  660FBEC0          movsx eax,al
000004D6  6650              push eax
000004D8  66E870FDFFFF      call dword 0x24e
000004DE  6683C404          add esp,byte +0x4
000004E2  67660FB645FF      movzx eax,byte [ebp-0x1]
000004E8  67668D50FF        lea edx,[eax-0x1]
000004ED  678855FF          mov [ebp-0x1],dl
000004F1  84C0              test al,al
000004F3  75CE              jnz 0x4c3
000004F5  66C9              o32 leave
000004F7  66C3              o32 ret
000004F9  6655              push ebp
000004FB  6689E5            mov ebp,esp
000004FE  6653              push ebx
00000500  6683EC08          sub esp,byte +0x8
00000504  67668D4508        lea eax,[ebp+0x8]
00000509  67668945F8        mov [ebp-0x8],eax
0000050E  E9FE00            jmp word 0x60f
00000511  67668B4508        mov eax,[ebp+0x8]
00000516  67660FB600        movzx eax,byte [eax]
0000051B  3C25              cmp al,0x25
0000051D  0F85AB00          jnz word 0x5cc
00000521  67668B4508        mov eax,[ebp+0x8]
00000526  6683C001          add eax,byte +0x1
0000052A  6766894508        mov [ebp+0x8],eax
0000052F  67668345F804      add dword [ebp-0x8],byte +0x4
00000535  67668B45F8        mov eax,[ebp-0x8]
0000053A  3667668B18        mov ebx,[ss:eax]
0000053F  6689D8            mov eax,ebx
00000542  67668945F4        mov [ebp-0xc],eax
00000547  67668B4508        mov eax,[ebp+0x8]
0000054C  67660FB600        movzx eax,byte [eax]
00000551  660FBEC0          movsx eax,al
00000555  6683F864          cmp eax,byte +0x64
00000559  7435              jz 0x590
0000055B  6683F864          cmp eax,byte +0x64
0000055F  7F09              jg 0x56a
00000561  6683F863          cmp eax,byte +0x63
00000565  7412              jz 0x579
00000567  E99700            jmp word 0x601
0000056A  6683F873          cmp eax,byte +0x73
0000056E  7448              jz 0x5b8
00000570  6683F878          cmp eax,byte +0x78
00000574  742E              jz 0x5a4
00000576  E98800            jmp word 0x601
00000579  67668B45F4        mov eax,[ebp-0xc]
0000057E  660FBEC0          movsx eax,al
00000582  6650              push eax
00000584  66E8C4FCFFFF      call dword 0x24e
0000058A  6683C404          add esp,byte +0x4
0000058E  EB3A              jmp short 0x5ca
00000590  666A0A            o32 push byte +0xa
00000593  6766FF75F4        push dword [ebp-0xc]
00000598  66E854FEFFFF      call dword 0x3f2
0000059E  6683C408          add esp,byte +0x8
000005A2  EB26              jmp short 0x5ca
000005A4  666A10            o32 push byte +0x10
000005A7  6766FF75F4        push dword [ebp-0xc]
000005AC  66E840FEFFFF      call dword 0x3f2
000005B2  6683C408          add esp,byte +0x8
000005B6  EB12              jmp short 0x5ca
000005B8  67668B45F4        mov eax,[ebp-0xc]
000005BD  6650              push eax
000005BF  66E8BEFCFFFF      call dword 0x283
000005C5  6683C404          add esp,byte +0x4
000005C9  90                nop
000005CA  EB35              jmp short 0x601
000005CC  67668B4508        mov eax,[ebp+0x8]
000005D1  67660FB600        movzx eax,byte [eax]
000005D6  3C0A              cmp al,0xa
000005D8  750D              jnz 0x5e7
000005DA  666A0D            o32 push byte +0xd
000005DD  66E86BFCFFFF      call dword 0x24e
000005E3  6683C404          add esp,byte +0x4
000005E7  67668B4508        mov eax,[ebp+0x8]
000005EC  67660FB600        movzx eax,byte [eax]
000005F1  660FBEC0          movsx eax,al
000005F5  6650              push eax
000005F7  66E851FCFFFF      call dword 0x24e
000005FD  6683C404          add esp,byte +0x4
00000601  67668B4508        mov eax,[ebp+0x8]
00000606  6683C001          add eax,byte +0x1
0000060A  6766894508        mov [ebp+0x8],eax
0000060F  67668B4508        mov eax,[ebp+0x8]
00000614  67660FB600        movzx eax,byte [eax]
00000619  84C0              test al,al
0000061B  0F85F2FE          jnz word 0x511
0000061F  67668B5DFC        mov ebx,[ebp-0x4]
00000624  66C9              o32 leave
00000626  66C3              o32 ret
00000628  6655              push ebp
0000062A  6689E5            mov ebp,esp
0000062D  6653              push ebx
0000062F  6683EC18          sub esp,byte +0x18
00000633  67668D4508        lea eax,[ebp+0x8]
00000638  67668945F8        mov [ebp-0x8],eax
0000063D  66E894FCFFFF      call dword 0x2d7
00000643  678845EB          mov [ebp-0x15],al
00000647  67C645F700        mov byte [ebp-0x9],0x0
0000064C  E99E01            jmp word 0x7ed
0000064F  67668B4508        mov eax,[ebp+0x8]
00000654  67660FB600        movzx eax,byte [eax]
00000659  3C25              cmp al,0x25
0000065B  0F858001          jnz word 0x7df
0000065F  67668B4508        mov eax,[ebp+0x8]
00000664  6683C001          add eax,byte +0x1
00000668  6766894508        mov [ebp+0x8],eax
0000066D  67668345F804      add dword [ebp-0x8],byte +0x4
00000673  67668B45F8        mov eax,[ebp-0x8]
00000678  3667668B18        mov ebx,[ss:eax]
0000067D  6689D8            mov eax,ebx
00000680  67668945E4        mov [ebp-0x1c],eax
00000685  EB05              jmp short 0x68c
00000687  678045F701        add byte [ebp-0x9],0x1
0000068C  67660FB645F7      movzx eax,byte [ebp-0x9]
00000692  67660FB680002600  movzx eax,byte [eax+0x2600]
         -00
0000069B  3C20              cmp al,0x20
0000069D  74E8              jz 0x687
0000069F  67668B4508        mov eax,[ebp+0x8]
000006A4  67660FB600        movzx eax,byte [eax]
000006A9  3C63              cmp al,0x63
000006AB  752C              jnz 0x6d9
000006AD  67660FB645F7      movzx eax,byte [ebp-0x9]
000006B3  67668D5001        lea edx,[eax+0x1]
000006B8  678855F7          mov [ebp-0x9],dl
000006BC  660FB6C0          movzx eax,al
000006C0  67660FB680002600  movzx eax,byte [eax+0x2600]
         -00
000006C9  660FBED0          movsx edx,al
000006CD  67668B45E4        mov eax,[ebp-0x1c]
000006D2  67668910          mov [eax],edx
000006D6  E90601            jmp word 0x7df
000006D9  67668B4508        mov eax,[ebp+0x8]
000006DE  67660FB600        movzx eax,byte [eax]
000006E3  3C73              cmp al,0x73
000006E5  7568              jnz 0x74f
000006E7  67668B45E4        mov eax,[ebp-0x1c]
000006EC  67668945F0        mov [ebp-0x10],eax
000006F1  EB2A              jmp short 0x71d
000006F3  67660FB645F7      movzx eax,byte [ebp-0x9]
000006F9  67668D5001        lea edx,[eax+0x1]
000006FE  678855F7          mov [ebp-0x9],dl
00000702  660FB6C0          movzx eax,al
00000706  67660FB690002600  movzx edx,byte [eax+0x2600]
         -00
0000070F  67668B45F0        mov eax,[ebp-0x10]
00000714  678810            mov [eax],dl
00000717  67668345F001      add dword [ebp-0x10],byte +0x1
0000071D  67660FB645F7      movzx eax,byte [ebp-0x9]
00000723  67660FB680002600  movzx eax,byte [eax+0x2600]
         -00
0000072C  84C0              test al,al
0000072E  7413              jz 0x743
00000730  67660FB645F7      movzx eax,byte [ebp-0x9]
00000736  67660FB680002600  movzx eax,byte [eax+0x2600]
         -00
0000073F  3C20              cmp al,0x20
00000741  75B0              jnz 0x6f3
00000743  67668B45F0        mov eax,[ebp-0x10]
00000748  67C60000          mov byte [eax],0x0
0000074C  E99000            jmp word 0x7df
0000074F  67668B4508        mov eax,[ebp+0x8]
00000754  67660FB600        movzx eax,byte [eax]
00000759  3C64              cmp al,0x64
0000075B  0F858000          jnz word 0x7df
0000075F  6766C745EC000000  mov dword [ebp-0x14],0x0
         -00
00000768  EB41              jmp short 0x7ab
0000076A  67668B55EC        mov edx,[ebp-0x14]
0000076F  6689D0            mov eax,edx
00000772  66C1E002          shl eax,byte 0x2
00000776  6601D0            add eax,edx
00000779  6601C0            add eax,eax
0000077C  6689C1            mov ecx,eax
0000077F  67660FB645F7      movzx eax,byte [ebp-0x9]
00000785  67668D5001        lea edx,[eax+0x1]
0000078A  678855F7          mov [ebp-0x9],dl
0000078E  660FB6C0          movzx eax,al
00000792  67660FB680002600  movzx eax,byte [eax+0x2600]
         -00
0000079B  660FBEC0          movsx eax,al
0000079F  6683E830          sub eax,byte +0x30
000007A3  6601C8            add eax,ecx
000007A6  67668945EC        mov [ebp-0x14],eax
000007AB  67660FB645F7      movzx eax,byte [ebp-0x9]
000007B1  67660FB680002600  movzx eax,byte [eax+0x2600]
         -00
000007BA  3C2F              cmp al,0x2f
000007BC  7E13              jng 0x7d1
000007BE  67660FB645F7      movzx eax,byte [ebp-0x9]
000007C4  67660FB680002600  movzx eax,byte [eax+0x2600]
         -00
000007CD  3C39              cmp al,0x39
000007CF  7E99              jng 0x76a
000007D1  67668B45E4        mov eax,[ebp-0x1c]
000007D6  67668B55EC        mov edx,[ebp-0x14]
000007DB  67668910          mov [eax],edx
000007DF  67668B4508        mov eax,[ebp+0x8]
000007E4  6683C001          add eax,byte +0x1
000007E8  6766894508        mov [ebp+0x8],eax
000007ED  67668B4508        mov eax,[ebp+0x8]
000007F2  67660FB600        movzx eax,byte [eax]
000007F7  84C0              test al,al
000007F9  0F8552FE          jnz word 0x64f
000007FD  6683C418          add esp,byte +0x18
00000801  665B              pop ebx
00000803  665D              pop ebp
00000805  66C3              o32 ret
00000807  6655              push ebp
00000809  6689E5            mov ebp,esp
0000080C  66B803000000      mov eax,0x3
00000812  CD10              int 0x10
00000814  665D              pop ebp
00000816  66C3              o32 ret
00000818  6655              push ebp
0000081A  6689E5            mov ebp,esp
0000081D  6653              push ebx
0000081F  6683EC04          sub esp,byte +0x4
00000823  66B800080000      mov eax,0x800
00000829  66BA00000000      mov edx,0x0
0000082F  6689D3            mov ebx,edx
00000832  CD10              int 0x10
00000834  678845FB          mov [ebp-0x5],al
00000838  67660FB645FB      movzx eax,byte [ebp-0x5]
0000083E  6683C404          add esp,byte +0x4
00000842  665B              pop ebx
00000844  665D              pop ebp
00000846  66C3              o32 ret
00000848  6655              push ebp
0000084A  6689E5            mov ebp,esp
0000084D  6653              push ebx
0000084F  6683EC04          sub esp,byte +0x4
00000853  67668B4508        mov eax,[ebp+0x8]
00000858  678845F8          mov [ebp-0x8],al
0000085C  67660FB645F8      movzx eax,byte [ebp-0x8]
00000862  660500090000      add eax,0x900
00000868  66BA07000000      mov edx,0x7
0000086E  66B901000000      mov ecx,0x1
00000874  6689D3            mov ebx,edx
00000877  CD10              int 0x10
00000879  6683C404          add esp,byte +0x4
0000087D  665B              pop ebx
0000087F  665D              pop ebp
00000881  66C3              o32 ret
00000883  6655              push ebp
00000885  6689E5            mov ebp,esp
00000888  6653              push ebx
0000088A  6683EC04          sub esp,byte +0x4
0000088E  66B800030000      mov eax,0x300
00000894  66BA00000000      mov edx,0x0
0000089A  6689D3            mov ebx,edx
0000089D  CD10              int 0x10
0000089F  6689D0            mov eax,edx
000008A2  678945FA          mov [ebp-0x6],ax
000008A6  67660FB745FA      movzx eax,word [ebp-0x6]
000008AC  6683C404          add esp,byte +0x4
000008B0  665B              pop ebx
000008B2  665D              pop ebp
000008B4  66C3              o32 ret
000008B6  6655              push ebp
000008B8  6689E5            mov ebp,esp
000008BB  6653              push ebx
000008BD  6683EC04          sub esp,byte +0x4
000008C1  67668B4508        mov eax,[ebp+0x8]
000008C6  678945F8          mov [ebp-0x8],ax
000008CA  66B800020000      mov eax,0x200
000008D0  66B900000000      mov ecx,0x0
000008D6  67660FB755F8      movzx edx,word [ebp-0x8]
000008DC  6689CB            mov ebx,ecx
000008DF  CD10              int 0x10
000008E1  6683C404          add esp,byte +0x4
000008E5  665B              pop ebx
000008E7  665D              pop ebp
000008E9  66C3              o32 ret
000008EB  6655              push ebp
000008ED  6689E5            mov ebp,esp
000008F0  6683EC04          sub esp,byte +0x4
000008F4  67668B4508        mov eax,[ebp+0x8]
000008F9  678945FC          mov [ebp-0x4],ax
000008FD  66B800860000      mov eax,0x8600
00000903  67660FB74DFC      movzx ecx,word [ebp-0x4]
00000909  66BA00000000      mov edx,0x0
0000090F  CD15              int 0x15
00000911  66C9              o32 leave
00000913  66C3              o32 ret
00000915  6655              push ebp
00000917  6689E5            mov ebp,esp
0000091A  6653              push ebx
0000091C  6683EC04          sub esp,byte +0x4
00000920  67668B4508        mov eax,[ebp+0x8]
00000925  678845F8          mov [ebp-0x8],al
00000929  67660FBE45F8      movsx eax,byte [ebp-0x8]
0000092F  6605000E0000      add eax,0xe00
00000935  66BA00000000      mov edx,0x0
0000093B  6689D3            mov ebx,edx
0000093E  CD10              int 0x10
00000940  6683C404          add esp,byte +0x4
00000944  665B              pop ebx
00000946  665D              pop ebp
00000948  66C3              o32 ret
0000094A  6655              push ebp
0000094C  6689E5            mov ebp,esp
0000094F  6657              push edi
00000951  6656              push esi
00000953  6653              push ebx
00000955  6683EC20          sub esp,byte +0x20
00000959  67668B7508        mov esi,[ebp+0x8]
0000095E  67668B5D0C        mov ebx,[ebp+0xc]
00000963  67668B4D10        mov ecx,[ebp+0x10]
00000968  67668B5514        mov edx,[ebp+0x14]
0000096D  67668B4518        mov eax,[ebp+0x18]
00000972  678975E4          mov [ebp-0x1c],si
00000976  67895DE0          mov [ebp-0x20],bx
0000097A  67884DDC          mov [ebp-0x24],cl
0000097E  678955D8          mov [ebp-0x28],dx
00000982  678845D4          mov [ebp-0x2c],al
00000986  66B800080000      mov eax,0x800
0000098C  67660FB655D4      movzx edx,byte [ebp-0x2c]
00000992  06                push es
00000993  CD13              int 0x13
00000995  6689D0            mov eax,edx
00000998  67894DF2          mov [ebp-0xe],cx
0000099C  678945F0          mov [ebp-0x10],ax
000009A0  67660FB745F2      movzx eax,word [ebp-0xe]
000009A6  678845EF          mov [ebp-0x11],al
000009AA  67660FB745F0      movzx eax,word [ebp-0x10]
000009B0  C1E808            shr ax,byte 0x8
000009B3  6683C001          add eax,byte +0x1
000009B7  678845EE          mov [ebp-0x12],al
000009BB  67660FB745D8      movzx eax,word [ebp-0x28]
000009C1  67660FB64DEF      movzx ecx,byte [ebp-0x11]
000009C7  67660FB655EE      movzx edx,byte [ebp-0x12]
000009CD  6689D6            mov esi,edx
000009D0  660FAFF1          imul esi,ecx
000009D4  6699              cdq
000009D6  66F7FE            idiv esi
000009D9  678845ED          mov [ebp-0x13],al
000009DD  67660FB745D8      movzx eax,word [ebp-0x28]
000009E3  67660FB67DEF      movzx edi,byte [ebp-0x11]
000009E9  6699              cdq
000009EB  66F7FF            idiv edi
000009EE  67660FB64DEE      movzx ecx,byte [ebp-0x12]
000009F4  6699              cdq
000009F6  66F7F9            idiv ecx
000009F9  6689D0            mov eax,edx
000009FC  678845EC          mov [ebp-0x14],al
00000A00  67660FB745D8      movzx eax,word [ebp-0x28]
00000A06  67660FB64DEF      movzx ecx,byte [ebp-0x11]
00000A0C  6699              cdq
00000A0E  66F7F9            idiv ecx
00000A11  6689D0            mov eax,edx
00000A14  6683C001          add eax,byte +0x1
00000A18  678845EB          mov [ebp-0x15],al
00000A1C  67660FB645DC      movzx eax,byte [ebp-0x24]
00000A22  660500020000      add eax,0x200
00000A28  67660FB655ED      movzx edx,byte [ebp-0x13]
00000A2E  6689D1            mov ecx,edx
00000A31  66C1E108          shl ecx,byte 0x8
00000A35  67660FB655EB      movzx edx,byte [ebp-0x15]
00000A3B  6601D1            add ecx,edx
00000A3E  67660FB655EC      movzx edx,byte [ebp-0x14]
00000A44  6689D3            mov ebx,edx
00000A47  66C1E308          shl ebx,byte 0x8
00000A4B  67660FB655D4      movzx edx,byte [ebp-0x2c]
00000A51  6601DA            add edx,ebx
00000A54  67660FB75DE0      movzx ebx,word [ebp-0x20]
00000A5A  67660FB77DE4      movzx edi,word [ebp-0x1c]
00000A60  8EC7              mov es,di
00000A62  CD13              int 0x13
00000A64  07                pop es
00000A65  6683C420          add esp,byte +0x20
00000A69  665B              pop ebx
00000A6B  665E              pop esi
00000A6D  665F              pop edi
00000A6F  665D              pop ebp
00000A71  66C3              o32 ret
00000A73  6655              push ebp
00000A75  6689E5            mov ebp,esp
00000A78  6683EC08          sub esp,byte +0x8
00000A7C  67668B4510        mov eax,[ebp+0x10]
00000A81  678945F8          mov [ebp-0x8],ax
00000A85  67C645FF00        mov byte [ebp-0x1],0x0
00000A8A  EB42              jmp short 0xace
00000A8C  67668B4508        mov eax,[ebp+0x8]
00000A91  67668D5001        lea edx,[eax+0x1]
00000A96  6766895508        mov [ebp+0x8],edx
00000A9B  67660FB608        movzx ecx,byte [eax]
00000AA0  67668B450C        mov eax,[ebp+0xc]
00000AA5  67668D5001        lea edx,[eax+0x1]
00000AAA  676689550C        mov [ebp+0xc],edx
00000AAF  67660FB600        movzx eax,byte [eax]
00000AB4  38C1              cmp cl,al
00000AB6  7408              jz 0xac0
00000AB8  66B801000000      mov eax,0x1
00000ABE  EB25              jmp short 0xae5
00000AC0  67660FB645FF      movzx eax,byte [ebp-0x1]
00000AC6  6683C001          add eax,byte +0x1
00000ACA  678845FF          mov [ebp-0x1],al
00000ACE  67660FBE55FF      movsx edx,byte [ebp-0x1]
00000AD4  67660FB745F8      movzx eax,word [ebp-0x8]
00000ADA  6639C2            cmp edx,eax
00000ADD  7CAD              jl 0xa8c
00000ADF  66B800000000      mov eax,0x0
00000AE5  66C9              o32 leave
00000AE7  66C3              o32 ret
00000AE9  6655              push ebp
00000AEB  6689E5            mov ebp,esp
00000AEE  EB26              jmp short 0xb16
00000AF0  67668B4508        mov eax,[ebp+0x8]
00000AF5  67668D5001        lea edx,[eax+0x1]
00000AFA  6766895508        mov [ebp+0x8],edx
00000AFF  67668B550C        mov edx,[ebp+0xc]
00000B04  67668D4A01        lea ecx,[edx+0x1]
00000B09  6766894D0C        mov [ebp+0xc],ecx
00000B0E  67660FB612        movzx edx,byte [edx]
00000B13  678810            mov [eax],dl
00000B16  67668B4510        mov eax,[ebp+0x10]
00000B1B  67668D50FF        lea edx,[eax-0x1]
00000B20  6766895510        mov [ebp+0x10],edx
00000B25  6685C0            test eax,eax
00000B28  75C6              jnz 0xaf0
00000B2A  665D              pop ebp
00000B2C  66C3              o32 ret
00000B2E  6655              push ebp
00000B30  6689E5            mov ebp,esp
00000B33  660FB6067A24      movzx eax,byte [0x247a]
00000B39  3C01              cmp al,0x1
00000B3B  7F1B              jg 0xb58
00000B3D  666A4F            o32 push byte +0x4f
00000B40  666A00            o32 push byte +0x0
00000B43  666A07            o32 push byte +0x7
00000B46  6668C0000000      push dword 0xc0
00000B4C  66E8EB080000      call dword 0x143d
00000B52  6683C410          add esp,byte +0x10
00000B56  EB63              jmp short 0xbbb
00000B58  660FB6067A24      movzx eax,byte [0x247a]
00000B5E  3C03              cmp al,0x3
00000B60  7F1B              jg 0xb7d
00000B62  666A4F            o32 push byte +0x4f
00000B65  666A00            o32 push byte +0x0
00000B68  666A07            o32 push byte +0x7
00000B6B  6668DA000000      push dword 0xda
00000B71  66E8C6080000      call dword 0x143d
00000B77  6683C410          add esp,byte +0x10
00000B7B  EB3E              jmp short 0xbbb
00000B7D  660FB6067A24      movzx eax,byte [0x247a]
00000B83  3C05              cmp al,0x5
00000B85  7F1B              jg 0xba2
00000B87  666A4F            o32 push byte +0x4f
00000B8A  666A00            o32 push byte +0x0
00000B8D  666A07            o32 push byte +0x7
00000B90  6668BF000000      push dword 0xbf
00000B96  66E8A1080000      call dword 0x143d
00000B9C  6683C410          add esp,byte +0x10
00000BA0  EB19              jmp short 0xbbb
00000BA2  666A4F            o32 push byte +0x4f
00000BA5  666A00            o32 push byte +0x0
00000BA8  666A07            o32 push byte +0x7
00000BAB  6668D9000000      push dword 0xd9
00000BB1  66E886080000      call dword 0x143d
00000BB7  6683C410          add esp,byte +0x10
00000BBB  660FB6067A24      movzx eax,byte [0x247a]
00000BC1  660FBEC0          movsx eax,al
00000BC5  67668D5001        lea edx,[eax+0x1]
00000BCA  6689D0            mov eax,edx
00000BCD  66C1F81F          sar eax,byte 0x1f
00000BD1  66C1E81D          shr eax,byte 0x1d
00000BD5  6601C2            add edx,eax
00000BD8  6683E207          and edx,byte +0x7
00000BDC  6629C2            sub edx,eax
00000BDF  6689D0            mov eax,edx
00000BE2  A27A24            mov [0x247a],al
00000BE5  66C9              o32 leave
00000BE7  66C3              o32 ret
00000BE9  6655              push ebp
00000BEB  6689E5            mov ebp,esp
00000BEE  6683EC04          sub esp,byte +0x4
00000BF2  6766C745FC061B00  mov dword [ebp-0x4],0x1b06
         -00
00000BFB  660FB6066822      movzx eax,byte [0x2268]
00000C01  6683E801          sub eax,byte +0x1
00000C05  A26822            mov [0x2268],al
00000C08  660FB6066822      movzx eax,byte [0x2268]
00000C0E  84C0              test al,al
00000C10  7576              jnz 0xc88
00000C12  660FB6066922      movzx eax,byte [0x2269]
00000C18  6683C001          add eax,byte +0x1
00000C1C  6683E00F          and eax,byte +0xf
00000C20  A26922            mov [0x2269],al
00000C23  660FB6066922      movzx eax,byte [0x2269]
00000C29  660FB6D0          movzx edx,al
00000C2D  660FB6067B24      movzx eax,byte [0x247b]
00000C33  6689C1            mov ecx,eax
00000C36  6683C101          add ecx,byte +0x1
00000C3A  880E7B24          mov [0x247b],cl
00000C3E  660FBEC8          movsx ecx,al
00000C42  67668B45FC        mov eax,[ebp-0x4]
00000C47  6601C8            add eax,ecx
00000C4A  67660FB600        movzx eax,byte [eax]
00000C4F  660FBEC0          movsx eax,al
00000C53  666A4F            o32 push byte +0x4f
00000C56  666A18            o32 push byte +0x18
00000C59  6652              push edx
00000C5B  6650              push eax
00000C5D  66E8DA070000      call dword 0x143d
00000C63  6683C410          add esp,byte +0x10
00000C67  660FB6067B24      movzx eax,byte [0x247b]
00000C6D  6689C2            mov edx,eax
00000C70  C0FA07            sar dl,byte 0x7
00000C73  C0EA06            shr dl,byte 0x6
00000C76  6601D0            add eax,edx
00000C79  6683E003          and eax,byte +0x3
00000C7D  6629D0            sub eax,edx
00000C80  A27B24            mov [0x247b],al
00000C83  C606682205        mov byte [0x2268],0x5
00000C88  66C9              o32 leave
00000C8A  66C3              o32 ret
00000C8C  6655              push ebp
00000C8E  6689E5            mov ebp,esp
00000C91  FA                cli
00000C92  66C7067C24000000  mov dword [0x247c],0x0
         -00
00000C9B  EB2D              jmp short 0xcca
00000C9D  66A17C24          mov eax,[0x247c]
00000CA1  6650              push eax
00000CA3  666800240000      push dword 0x2400
00000CA9  66E8BB070000      call dword 0x146a
00000CAF  6683C408          add esp,byte +0x8
00000CB3  66A15424          mov eax,[0x2454]
00000CB7  6685C0            test eax,eax
00000CBA  7502              jnz 0xcbe
00000CBC  EB16              jmp short 0xcd4
00000CBE  66A17C24          mov eax,[0x247c]
00000CC2  6683C001          add eax,byte +0x1
00000CC6  66A37C24          mov [0x247c],eax
00000CCA  66A17C24          mov eax,[0x247c]
00000CCE  6683F807          cmp eax,byte +0x7
00000CD2  7EC9              jng 0xc9d
00000CD4  66A17C24          mov eax,[0x247c]
00000CD8  6683F807          cmp eax,byte +0x7
00000CDC  7E09              jng 0xce7
00000CDE  66B8FFFFFFFF      mov eax,0xffffffff
00000CE4  E9DF00            jmp word 0xdc6
00000CE7  6689262024        mov [0x2420],esp
00000CEC  66893E1424        mov [0x2414],edi
00000CF1  6689361824        mov [0x2418],esi
00000CF6  66892E1C24        mov [0x241c],ebp
00000CFB  66A33024          mov [0x2430],eax
00000CFF  66891E2424        mov [0x2424],ebx
00000D04  66890E2C24        mov [0x242c],ecx
00000D09  6689162824        mov [0x2428],edx
00000D0E  8C160024          mov [0x2400],ss
00000D12  8C060C24          mov [0x240c],es
00000D16  8C260824          mov [0x2408],fs
00000D1A  8C2E0424          mov [0x2404],gs
00000D1E  8C0E3824          mov [0x2438],cs
00000D22  8C1E1024          mov [0x2410],ds
00000D26  66E8A8070000      call dword 0x14d4
00000D2C  66A35024          mov [0x2450],eax
00000D30  66A16024          mov eax,[0x2460]
00000D34  66A35824          mov [0x2458],eax
00000D38  66C7065C24000000  mov dword [0x245c],0x0
         -00
00000D41  66C7063424D60D00  mov dword [0x2434],0xdd6
         -00
00000D4A  66A1BC23          mov eax,[0x23bc]
00000D4E  66A33C24          mov [0x243c],eax
00000D52  66C7065424010000  mov dword [0x2454],0x1
         -00
00000D5B  C606402400        mov byte [0x2440],0x0
00000D60  66C7063024000000  mov dword [0x2430],0x0
         -00
00000D69  66A17C24          mov eax,[0x247c]
00000D6D  6683C008          add eax,byte +0x8
00000D71  66C1E00A          shl eax,byte 0xa
00000D75  66A30024          mov [0x2400],eax
00000D79  66A12024          mov eax,[0x2420]
00000D7D  6683C002          add eax,byte +0x2
00000D81  66A32024          mov [0x2420],eax
00000D85  66A10024          mov eax,[0x2400]
00000D89  66C1E010          shl eax,byte 0x10
00000D8D  6689C2            mov edx,eax
00000D90  66A18023          mov eax,[0x2380]
00000D94  66C1E010          shl eax,byte 0x10
00000D98  666800050000      push dword 0x500
00000D9E  6652              push edx
00000DA0  6650              push eax
00000DA2  66E883070000      call dword 0x152b
00000DA8  6683C40C          add esp,byte +0xc
00000DAC  66A17C24          mov eax,[0x247c]
00000DB0  6650              push eax
00000DB2  666800240000      push dword 0x2400
00000DB8  66E8E1060000      call dword 0x149f
00000DBE  6683C408          add esp,byte +0x8
00000DC2  66A15024          mov eax,[0x2450]
00000DC6  FB                sti
00000DC7  66C9              o32 leave
00000DC9  66C3              o32 ret
00000DCB  6655              push ebp
00000DCD  6689E5            mov ebp,esp
00000DD0  66A16024          mov eax,[0x2460]
00000DD4  6650              push eax
00000DD6  666880230000      push dword 0x2380
00000DDC  66E888060000      call dword 0x146a
00000DE2  6683C408          add esp,byte +0x8
00000DE6  66C706DC23010000  mov dword [0x23dc],0x1
         -00
00000DEF  66A16024          mov eax,[0x2460]
00000DF3  6650              push eax
00000DF5  666880230000      push dword 0x2380
00000DFB  66E89E060000      call dword 0x149f
00000E01  6683C408          add esp,byte +0x8
00000E05  66C9              o32 leave
00000E07  66C3              o32 ret
00000E09  6655              push ebp
00000E0B  6689E5            mov ebp,esp
00000E0E  6683EC04          sub esp,byte +0x4
00000E12  67668B4508        mov eax,[ebp+0x8]
00000E17  678845FC          mov [ebp-0x4],al
00000E1B  66C706D423000000  mov dword [0x23d4],0x0
         -00
00000E24  66A16024          mov eax,[0x2460]
00000E28  6650              push eax
00000E2A  666880230000      push dword 0x2380
00000E30  66E869060000      call dword 0x149f
00000E36  6683C408          add esp,byte +0x8
00000E3A  66A1D823          mov eax,[0x23d8]
00000E3E  6685C0            test eax,eax
00000E41  7849              js 0xe8c
00000E43  66A1D823          mov eax,[0x23d8]
00000E47  6683F807          cmp eax,byte +0x7
00000E4B  7F3F              jg 0xe8c
00000E4D  66A1D823          mov eax,[0x23d8]
00000E51  6650              push eax
00000E53  666800240000      push dword 0x2400
00000E59  66E80B060000      call dword 0x146a
00000E5F  6683C408          add esp,byte +0x8
00000E63  66C7065C24000000  mov dword [0x245c],0x0
         -00
00000E6C  67660FBE45FC      movsx eax,byte [ebp-0x4]
00000E72  66A33024          mov [0x2430],eax
00000E76  66A1D823          mov eax,[0x23d8]
00000E7A  6650              push eax
00000E7C  666800240000      push dword 0x2400
00000E82  66E817060000      call dword 0x149f
00000E88  6683C408          add esp,byte +0x8
00000E8C  66C9              o32 leave
00000E8E  66C3              o32 ret
00000E90  6655              push ebp
00000E92  6689E5            mov ebp,esp
00000E95  6683EC04          sub esp,byte +0x4
00000E99  66A3B023          mov [0x23b0],eax
00000E9D  66891EA423        mov [0x23a4],ebx
00000EA2  66890EAC23        mov [0x23ac],ecx
00000EA7  668916A823        mov [0x23a8],edx
00000EAC  66A18824          mov eax,[0x2488]
00000EB0  6685C0            test eax,eax
00000EB3  7F0F              jg 0xec4
00000EB5  66A18824          mov eax,[0x2488]
00000EB9  6683C001          add eax,byte +0x1
00000EBD  66A38824          mov [0x2488],eax
00000EC1  E9E901            jmp word 0x10ad
00000EC4  66C7068824000000  mov dword [0x2488],0x0
         -00
00000ECD  66C7068C24000000  mov dword [0x248c],0x0
         -00
00000ED6  EB18              jmp short 0xef0
00000ED8  66A18C24          mov eax,[0x248c]
00000EDC  678F840064240000  pop word [dword eax+eax+0x2464]
00000EE4  66A18C24          mov eax,[0x248c]
00000EE8  6683C001          add eax,byte +0x1
00000EEC  66A38C24          mov [0x248c],eax
00000EF0  66A18C24          mov eax,[0x248c]
00000EF4  6683F809          cmp eax,byte +0x9
00000EF8  7EDE              jng 0xed8
00000EFA  66A16024          mov eax,[0x2460]
00000EFE  6650              push eax
00000F00  666880230000      push dword 0x2380
00000F06  66E85E050000      call dword 0x146a
00000F0C  6683C408          add esp,byte +0x8
00000F10  66A1D423          mov eax,[0x23d4]
00000F14  6683F802          cmp eax,byte +0x2
00000F18  0F859400          jnz word 0xfb0
00000F1C  66893E9423        mov [0x2394],edi
00000F21  6689369823        mov [0x2398],esi
00000F26  66892E9C23        mov [0x239c],ebp
00000F2B  668926A023        mov [0x23a0],esp
00000F30  8C168023          mov [0x2380],ss
00000F34  8C068C23          mov [0x238c],es
00000F38  8C268823          mov [0x2388],fs
00000F3C  8C2E8423          mov [0x2384],gs
00000F40  66C706D423010000  mov dword [0x23d4],0x1
         -00
00000F49  660FB7067024      movzx eax,word [0x2470]
00000F4F  660FB7C0          movzx eax,ax
00000F53  66A39023          mov [0x2390],eax
00000F57  660FB7067224      movzx eax,word [0x2472]
00000F5D  660FB7C0          movzx eax,ax
00000F61  66A3B423          mov [0x23b4],eax
00000F65  660FB7067424      movzx eax,word [0x2474]
00000F6B  660FB7C0          movzx eax,ax
00000F6F  66A3B823          mov [0x23b8],eax
00000F73  660FB7067624      movzx eax,word [0x2476]
00000F79  660FB7C0          movzx eax,ax
00000F7D  66A3BC23          mov [0x23bc],eax
00000F81  66A1B823          mov eax,[0x23b8]
00000F85  66C1E010          shl eax,byte 0x10
00000F89  6689C2            mov edx,eax
00000F8C  66A1B423          mov eax,[0x23b4]
00000F90  6609D0            or eax,edx
00000F93  67668945FC        mov [ebp-0x4],eax
00000F98  66A16024          mov eax,[0x2460]
00000F9C  6650              push eax
00000F9E  666880230000      push dword 0x2380
00000FA4  66E8F5040000      call dword 0x149f
00000FAA  6683C408          add esp,byte +0x8
00000FAE  EB03              jmp short 0xfb3
00000FB0  83C402            add sp,byte +0x2
00000FB3  66A16024          mov eax,[0x2460]
00000FB7  67668D5001        lea edx,[eax+0x1]
00000FBC  6689D0            mov eax,edx
00000FBF  66C1F81F          sar eax,byte 0x1f
00000FC3  66C1E81D          shr eax,byte 0x1d
00000FC7  6601C2            add edx,eax
00000FCA  6683E207          and edx,byte +0x7
00000FCE  6629C2            sub edx,eax
00000FD1  6689D0            mov eax,edx
00000FD4  66A36024          mov [0x2460],eax
00000FD8  66A16024          mov eax,[0x2460]
00000FDC  6650              push eax
00000FDE  666880230000      push dword 0x2380
00000FE4  66E880040000      call dword 0x146a
00000FEA  6683C408          add esp,byte +0x8
00000FEE  66A1D423          mov eax,[0x23d4]
00000FF2  6683F801          cmp eax,byte +0x1
00000FF6  757B              jnz 0x1073
00000FF8  66A1DC23          mov eax,[0x23dc]
00000FFC  6685C0            test eax,eax
00000FFF  7572              jnz 0x1073
00001001  90                nop
00001002  66C706D423020000  mov dword [0x23d4],0x2
         -00
0000100B  66A16024          mov eax,[0x2460]
0000100F  6650              push eax
00001011  666880230000      push dword 0x2380
00001017  66E882040000      call dword 0x149f
0000101D  6683C408          add esp,byte +0x8
00001021  66FF36BC23        push dword [0x23bc]
00001026  669D              popfd
00001028  668B3E9423        mov edi,[0x2394]
0000102D  668B369823        mov esi,[0x2398]
00001032  668B2E9C23        mov ebp,[0x239c]
00001037  668B26A023        mov esp,[0x23a0]
0000103C  8E168023          mov ss,[0x2380]
00001040  8E068C23          mov es,[0x238c]
00001044  8E268823          mov fs,[0x2388]
00001048  8E2E8423          mov gs,[0x2384]
0000104C  66A19023          mov eax,[0x2390]
00001050  A37024            mov [0x2470],ax
00001053  66A1B423          mov eax,[0x23b4]
00001057  A37224            mov [0x2472],ax
0000105A  66A1B823          mov eax,[0x23b8]
0000105E  A37424            mov [0x2474],ax
00001061  66A1BC23          mov eax,[0x23bc]
00001065  A37624            mov [0x2476],ax
00001068  66C7068C24090000  mov dword [0x248c],0x9
         -00
00001071  EB1B              jmp short 0x108e
00001073  E93DFF            jmp word 0xfb3
00001076  66A18C24          mov eax,[0x248c]
0000107A  67FFB40064240000  push word [dword eax+eax+0x2464]
00001082  66A18C24          mov eax,[0x248c]
00001086  6683E801          sub eax,byte +0x1
0000108A  66A38C24          mov [0x248c],eax
0000108E  66A18C24          mov eax,[0x248c]
00001092  6683F803          cmp eax,byte +0x3
00001096  7FDE              jg 0x1076
00001098  66A1B023          mov eax,[0x23b0]
0000109C  668B1EA423        mov ebx,[0x23a4]
000010A1  668B0EAC23        mov ecx,[0x23ac]
000010A6  668B16A823        mov edx,[0x23a8]
000010AB  66C3              o32 ret
000010AD  66C9              o32 leave
000010AF  66C3              o32 ret
000010B1  6655              push ebp
000010B3  6689E5            mov ebp,esp
000010B6  6683EC04          sub esp,byte +0x4
000010BA  66A3B023          mov [0x23b0],eax
000010BE  66891EA423        mov [0x23a4],ebx
000010C3  66890EAC23        mov [0x23ac],ecx
000010C8  668916A823        mov [0x23a8],edx
000010CD  66A19024          mov eax,[0x2490]
000010D1  6685C0            test eax,eax
000010D4  7F0C              jg 0x10e2
000010D6  66A19024          mov eax,[0x2490]
000010DA  6683C001          add eax,byte +0x1
000010DE  66A39024          mov [0x2490],eax
000010E2  66C7069024000000  mov dword [0x2490],0x0
         -00
000010EB  66C7069424000000  mov dword [0x2494],0x0
         -00
000010F4  EB18              jmp short 0x110e
000010F6  66A19424          mov eax,[0x2494]
000010FA  678F840064240000  pop word [dword eax+eax+0x2464]
00001102  66A19424          mov eax,[0x2494]
00001106  6683C001          add eax,byte +0x1
0000110A  66A39424          mov [0x2494],eax
0000110E  66A19424          mov eax,[0x2494]
00001112  6683F809          cmp eax,byte +0x9
00001116  7EDE              jng 0x10f6
00001118  66A16024          mov eax,[0x2460]
0000111C  6650              push eax
0000111E  666880230000      push dword 0x2380
00001124  66E840030000      call dword 0x146a
0000112A  6683C408          add esp,byte +0x8
0000112E  66A1D423          mov eax,[0x23d4]
00001132  6683F802          cmp eax,byte +0x2
00001136  0F859400          jnz word 0x11ce
0000113A  66893E9423        mov [0x2394],edi
0000113F  6689369823        mov [0x2398],esi
00001144  66892E9C23        mov [0x239c],ebp
00001149  668926A023        mov [0x23a0],esp
0000114E  8C168023          mov [0x2380],ss
00001152  8C068C23          mov [0x238c],es
00001156  8C268823          mov [0x2388],fs
0000115A  8C2E8423          mov [0x2384],gs
0000115E  66C706D423010000  mov dword [0x23d4],0x1
         -00
00001167  660FB7067024      movzx eax,word [0x2470]
0000116D  660FB7C0          movzx eax,ax
00001171  66A39023          mov [0x2390],eax
00001175  660FB7067224      movzx eax,word [0x2472]
0000117B  660FB7C0          movzx eax,ax
0000117F  66A3B423          mov [0x23b4],eax
00001183  660FB7067424      movzx eax,word [0x2474]
00001189  660FB7C0          movzx eax,ax
0000118D  66A3B823          mov [0x23b8],eax
00001191  660FB7067624      movzx eax,word [0x2476]
00001197  660FB7C0          movzx eax,ax
0000119B  66A3BC23          mov [0x23bc],eax
0000119F  66A1B823          mov eax,[0x23b8]
000011A3  66C1E010          shl eax,byte 0x10
000011A7  6689C2            mov edx,eax
000011AA  66A1B423          mov eax,[0x23b4]
000011AE  6609D0            or eax,edx
000011B1  67668945FC        mov [ebp-0x4],eax
000011B6  66A16024          mov eax,[0x2460]
000011BA  6650              push eax
000011BC  666880230000      push dword 0x2380
000011C2  66E8D7020000      call dword 0x149f
000011C8  6683C408          add esp,byte +0x8
000011CC  EB03              jmp short 0x11d1
000011CE  83C402            add sp,byte +0x2
000011D1  66A16024          mov eax,[0x2460]
000011D5  67668D5001        lea edx,[eax+0x1]
000011DA  6689D0            mov eax,edx
000011DD  66C1F81F          sar eax,byte 0x1f
000011E1  66C1E81D          shr eax,byte 0x1d
000011E5  6601C2            add edx,eax
000011E8  6683E207          and edx,byte +0x7
000011EC  6629C2            sub edx,eax
000011EF  6689D0            mov eax,edx
000011F2  66A36024          mov [0x2460],eax
000011F6  66A16024          mov eax,[0x2460]
000011FA  6650              push eax
000011FC  666880230000      push dword 0x2380
00001202  66E862020000      call dword 0x146a
00001208  6683C408          add esp,byte +0x8
0000120C  66A1D423          mov eax,[0x23d4]
00001210  6683F801          cmp eax,byte +0x1
00001214  757B              jnz 0x1291
00001216  66A1DC23          mov eax,[0x23dc]
0000121A  6685C0            test eax,eax
0000121D  7572              jnz 0x1291
0000121F  90                nop
00001220  66C706D423020000  mov dword [0x23d4],0x2
         -00
00001229  66A16024          mov eax,[0x2460]
0000122D  6650              push eax
0000122F  666880230000      push dword 0x2380
00001235  66E864020000      call dword 0x149f
0000123B  6683C408          add esp,byte +0x8
0000123F  66FF36BC23        push dword [0x23bc]
00001244  669D              popfd
00001246  668B3E9423        mov edi,[0x2394]
0000124B  668B369823        mov esi,[0x2398]
00001250  668B2E9C23        mov ebp,[0x239c]
00001255  668B26A023        mov esp,[0x23a0]
0000125A  8E168023          mov ss,[0x2380]
0000125E  8E068C23          mov es,[0x238c]
00001262  8E268823          mov fs,[0x2388]
00001266  8E2E8423          mov gs,[0x2384]
0000126A  66A19023          mov eax,[0x2390]
0000126E  A37024            mov [0x2470],ax
00001271  66A1B423          mov eax,[0x23b4]
00001275  A37224            mov [0x2472],ax
00001278  66A1B823          mov eax,[0x23b8]
0000127C  A37424            mov [0x2474],ax
0000127F  66A1BC23          mov eax,[0x23bc]
00001283  A37624            mov [0x2476],ax
00001286  66C7069424090000  mov dword [0x2494],0x9
         -00
0000128F  EB1B              jmp short 0x12ac
00001291  E93DFF            jmp word 0x11d1
00001294  66A19424          mov eax,[0x2494]
00001298  67FFB40064240000  push word [dword eax+eax+0x2464]
000012A0  66A19424          mov eax,[0x2494]
000012A4  6683E801          sub eax,byte +0x1
000012A8  66A39424          mov [0x2494],eax
000012AC  66A19424          mov eax,[0x2494]
000012B0  6683F803          cmp eax,byte +0x3
000012B4  7FDE              jg 0x1294
000012B6  66A1B023          mov eax,[0x23b0]
000012BA  668B1EA423        mov ebx,[0x23a4]
000012BF  668B0EAC23        mov ecx,[0x23ac]
000012C4  668B16A823        mov edx,[0x23a8]
000012C9  66C3              o32 ret
000012CB  66C9              o32 leave
000012CD  66C3              o32 ret
000012CF  6655              push ebp
000012D1  6689E5            mov ebp,esp
000012D4  66A16024          mov eax,[0x2460]
000012D8  67668D5001        lea edx,[eax+0x1]
000012DD  6689D0            mov eax,edx
000012E0  66C1F81F          sar eax,byte 0x1f
000012E4  66C1E81D          shr eax,byte 0x1d
000012E8  6601C2            add edx,eax
000012EB  6683E207          and edx,byte +0x7
000012EF  6629C2            sub edx,eax
000012F2  6689D0            mov eax,edx
000012F5  66A36024          mov [0x2460],eax
000012F9  66A16024          mov eax,[0x2460]
000012FD  6650              push eax
000012FF  666880230000      push dword 0x2380
00001305  66E85F010000      call dword 0x146a
0000130B  6683C408          add esp,byte +0x8
0000130F  66A1D423          mov eax,[0x23d4]
00001313  6683F801          cmp eax,byte +0x1
00001317  757B              jnz 0x1394
00001319  66A1DC23          mov eax,[0x23dc]
0000131D  6685C0            test eax,eax
00001320  7572              jnz 0x1394
00001322  90                nop
00001323  66C706D423020000  mov dword [0x23d4],0x2
         -00
0000132C  66A16024          mov eax,[0x2460]
00001330  6650              push eax
00001332  666880230000      push dword 0x2380
00001338  66E861010000      call dword 0x149f
0000133E  6683C408          add esp,byte +0x8
00001342  66FF36BC23        push dword [0x23bc]
00001347  669D              popfd
00001349  668B3E9423        mov edi,[0x2394]
0000134E  668B369823        mov esi,[0x2398]
00001353  668B2E9C23        mov ebp,[0x239c]
00001358  668B26A023        mov esp,[0x23a0]
0000135D  8E168023          mov ss,[0x2380]
00001361  8E068C23          mov es,[0x238c]
00001365  8E268823          mov fs,[0x2388]
00001369  8E2E8423          mov gs,[0x2384]
0000136D  66A1BC23          mov eax,[0x23bc]
00001371  A37624            mov [0x2476],ax
00001374  66A1B823          mov eax,[0x23b8]
00001378  A37424            mov [0x2474],ax
0000137B  66A1B423          mov eax,[0x23b4]
0000137F  A37224            mov [0x2472],ax
00001382  66A19023          mov eax,[0x2390]
00001386  A37024            mov [0x2470],ax
00001389  66C7069824090000  mov dword [0x2498],0x9
         -00
00001392  EB1B              jmp short 0x13af
00001394  E93DFF            jmp word 0x12d4
00001397  66A19824          mov eax,[0x2498]
0000139B  67FFB40064240000  push word [dword eax+eax+0x2464]
000013A3  66A19824          mov eax,[0x2498]
000013A7  6683E801          sub eax,byte +0x1
000013AB  66A39824          mov [0x2498],eax
000013AF  66A19824          mov eax,[0x2498]
000013B3  6683F803          cmp eax,byte +0x3
000013B7  7FDE              jg 0x1397
000013B9  66A1B023          mov eax,[0x23b0]
000013BD  668B1EA423        mov ebx,[0x23a4]
000013C2  668B0EAC23        mov ecx,[0x23ac]
000013C7  668B16A823        mov edx,[0x23a8]
000013CC  66C3              o32 ret
000013CE  66C9              o32 leave
000013D0  66C3              o32 ret
000013D2  6690              xchg eax,eax
000013D4  6690              xchg eax,eax
000013D6  6690              xchg eax,eax
000013D8  6690              xchg eax,eax
000013DA  6690              xchg eax,eax
000013DC  6690              xchg eax,eax
000013DE  6690              xchg eax,eax
000013E0  C8000000          enter 0x0,0x0
000013E4  668CC8            mov eax,cs
000013E7  6650              push eax
000013E9  66B8F4130000      mov eax,0x13f4
000013EF  6650              push eax
000013F1  FF6E06            jmp word far [bp+0x6]
000013F4  C9                leave
000013F5  6659              pop ecx
000013F7  FFE1              jmp cx
000013F9  C8000000          enter 0x0,0x0
000013FD  1E                push ds
000013FE  06                push es
000013FF  56                push si
00001400  57                push di
00001401  1E                push ds
00001402  07                pop es
00001403  8B460C            mov ax,[bp+0xc]
00001406  8ED8              mov ds,ax
00001408  8B760A            mov si,[bp+0xa]
0000140B  8B7E06            mov di,[bp+0x6]
0000140E  8B4E0E            mov cx,[bp+0xe]
00001411  F3A4              rep movsb
00001413  5F                pop di
00001414  5E                pop si
00001415  07                pop es
00001416  1F                pop ds
00001417  C9                leave
00001418  6659              pop ecx
0000141A  FFE1              jmp cx
0000141C  C8000000          enter 0x0,0x0
00001420  1E                push ds
00001421  06                push es
00001422  56                push si
00001423  57                push di
00001424  8B4608            mov ax,[bp+0x8]
00001427  8EC0              mov es,ax
00001429  8B760A            mov si,[bp+0xa]
0000142C  8B7E06            mov di,[bp+0x6]
0000142F  8B4E0E            mov cx,[bp+0xe]
00001432  F3A4              rep movsb
00001434  5F                pop di
00001435  5E                pop si
00001436  07                pop es
00001437  1F                pop ds
00001438  C9                leave
00001439  6659              pop ecx
0000143B  FFE1              jmp cx
0000143D  C8000000          enter 0x0,0x0
00001441  06                push es
00001442  53                push bx
00001443  8B460E            mov ax,[bp+0xe]
00001446  BB5000            mov bx,0x50
00001449  F7E3              mul bx
0000144B  034612            add ax,[bp+0x12]
0000144E  BB0200            mov bx,0x2
00001451  F7E3              mul bx
00001453  89C3              mov bx,ax
00001455  B800B8            mov ax,0xb800
00001458  8EC0              mov es,ax
0000145A  8A660A            mov ah,[bp+0xa]
0000145D  8A4606            mov al,[bp+0x6]
00001460  268907            mov [es:bx],ax
00001463  5B                pop bx
00001464  07                pop es
00001465  C9                leave
00001466  6659              pop ecx
00001468  FFE1              jmp cx
0000146A  6655              push ebp
0000146C  6689E5            mov ebp,esp
0000146F  67668B550C        mov edx,[ebp+0xc]
00001474  6689D0            mov eax,edx
00001477  6601C0            add eax,eax
0000147A  6601D0            add eax,edx
0000147D  66C1E005          shl eax,byte 0x5
00001481  660500060000      add eax,0x600
00001487  666A60            o32 push byte +0x60
0000148A  6650              push eax
0000148C  6766FF7508        push dword [ebp+0x8]
00001491  66E862FFFFFF      call dword 0x13f9
00001497  6683C40C          add esp,byte +0xc
0000149B  66C9              o32 leave
0000149D  66C3              o32 ret
0000149F  6655              push ebp
000014A1  6689E5            mov ebp,esp
000014A4  67668B550C        mov edx,[ebp+0xc]
000014A9  6689D0            mov eax,edx
000014AC  6601C0            add eax,eax
000014AF  6601D0            add eax,edx
000014B2  66C1E005          shl eax,byte 0x5
000014B6  660500060000      add eax,0x600
000014BC  666A60            o32 push byte +0x60
000014BF  6766FF7508        push dword [ebp+0x8]
000014C4  6650              push eax
000014C6  66E850FFFFFF      call dword 0x141c
000014CC  6683C40C          add esp,byte +0xc
000014D0  66C9              o32 leave
000014D2  66C3              o32 ret
000014D4  6655              push ebp
000014D6  6689E5            mov ebp,esp
000014D9  66A1C024          mov eax,[0x24c0]
000014DD  666A04            o32 push byte +0x4
000014E0  666800050000      push dword 0x500
000014E6  6650              push eax
000014E8  66E80BFFFFFF      call dword 0x13f9
000014EE  6683C40C          add esp,byte +0xc
000014F2  66A1C024          mov eax,[0x24c0]
000014F6  67668B10          mov edx,[eax]
000014FA  6683C201          add edx,byte +0x1
000014FE  67668910          mov [eax],edx
00001502  66A1C024          mov eax,[0x24c0]
00001506  666A04            o32 push byte +0x4
00001509  6650              push eax
0000150B  666800050000      push dword 0x500
00001511  66E805FFFFFF      call dword 0x141c
00001517  6683C40C          add esp,byte +0xc
0000151B  66A1C024          mov eax,[0x24c0]
0000151F  67668B00          mov eax,[eax]
00001523  6683E801          sub eax,byte +0x1
00001527  66C9              o32 leave
00001529  66C3              o32 ret
0000152B  6655              push ebp
0000152D  6689E5            mov ebp,esp
00001530  EB48              jmp short 0x157a
00001532  67668B4508        mov eax,[ebp+0x8]
00001537  67668D5001        lea edx,[eax+0x1]
0000153C  6766895508        mov [ebp+0x8],edx
00001541  666A01            o32 push byte +0x1
00001544  6650              push eax
00001546  6668C4240000      push dword 0x24c4
0000154C  66E8A7FEFFFF      call dword 0x13f9
00001552  6683C40C          add esp,byte +0xc
00001556  67668B450C        mov eax,[ebp+0xc]
0000155B  67668D5001        lea edx,[eax+0x1]
00001560  676689550C        mov [ebp+0xc],edx
00001565  666A01            o32 push byte +0x1
00001568  6668C4240000      push dword 0x24c4
0000156E  6650              push eax
00001570  66E8A6FEFFFF      call dword 0x141c
00001576  6683C40C          add esp,byte +0xc
0000157A  67668B4510        mov eax,[ebp+0x10]
0000157F  67668D50FF        lea edx,[eax-0x1]
00001584  6766895510        mov [ebp+0x10],edx
00001589  6685C0            test eax,eax
0000158C  75A4              jnz 0x1532
0000158E  66C9              o32 leave
00001590  66C3              o32 ret
00001592  6655              push ebp
00001594  6689E5            mov ebp,esp
00001597  CD74              int 0x74
00001599  CD71              int 0x71
0000159B  665D              pop ebp
0000159D  66C3              o32 ret
0000159F  6655              push ebp
000015A1  6689E5            mov ebp,esp
000015A4  CD75              int 0x75
000015A6  665D              pop ebp
000015A8  66C3              o32 ret
000015AA  6655              push ebp
000015AC  6689E5            mov ebp,esp
000015AF  6653              push ebx
000015B1  6683EC0C          sub esp,byte +0xc
000015B5  67668B4D0C        mov ecx,[ebp+0xc]
000015BA  67668B5510        mov edx,[ebp+0x10]
000015BF  67668B4514        mov eax,[ebp+0x14]
000015C4  67894DF8          mov [ebp-0x8],cx
000015C8  678955F4          mov [ebp-0xc],dx
000015CC  678945F0          mov [ebp-0x10],ax
000015D0  66C706C824000000  mov dword [0x24c8],0x0
         -00
000015D9  EB2D              jmp short 0x1608
000015DB  66A1C824          mov eax,[0x24c8]
000015DF  6650              push eax
000015E1  666800250000      push dword 0x2500
000015E7  66E87DFEFFFF      call dword 0x146a
000015ED  6683C408          add esp,byte +0x8
000015F1  66A15425          mov eax,[0x2554]
000015F5  6685C0            test eax,eax
000015F8  7502              jnz 0x15fc
000015FA  EB16              jmp short 0x1612
000015FC  66A1C824          mov eax,[0x24c8]
00001600  6683C001          add eax,byte +0x1
00001604  66A3C824          mov [0x24c8],eax
00001608  66A1C824          mov eax,[0x24c8]
0000160C  6683F807          cmp eax,byte +0x7
00001610  7EC9              jng 0x15db
00001612  66A1C824          mov eax,[0x24c8]
00001616  6683F807          cmp eax,byte +0x7
0000161A  7E13              jng 0x162f
0000161C  66680C1B0000      push dword 0x1b0c
00001622  66E8D1EEFFFF      call dword 0x4f9
00001628  6683C404          add esp,byte +0x4
0000162C  E91C01            jmp word 0x174b
0000162F  66A1C824          mov eax,[0x24c8]
00001633  66C1E01A          shl eax,byte 0x1a
00001637  660500050020      add eax,0x20000500
0000163D  66A36025          mov [0x2560],eax
00001641  67660FB75DF4      movzx ebx,word [ebp-0xc]
00001647  67660FB745F8      movzx eax,word [ebp-0x8]
0000164D  660FB6C8          movzx ecx,al
00001651  66A16025          mov eax,[0x2560]
00001655  660FB7D0          movzx edx,ax
00001659  66A16025          mov eax,[0x2560]
0000165D  66C1F810          sar eax,byte 0x10
00001661  660FB7C0          movzx eax,ax
00001665  666A00            o32 push byte +0x0
00001668  6653              push ebx
0000166A  6651              push ecx
0000166C  6652              push edx
0000166E  6650              push eax
00001670  66E8D4F2FFFF      call dword 0x94a
00001676  6683C414          add esp,byte +0x14
0000167A  66A16025          mov eax,[0x2560]
0000167E  66C1F810          sar eax,byte 0x10
00001682  66A30025          mov [0x2500],eax
00001686  66A10025          mov eax,[0x2500]
0000168A  66A30C25          mov [0x250c],eax
0000168E  66A10C25          mov eax,[0x250c]
00001692  66A31025          mov [0x2510],eax
00001696  66A11025          mov eax,[0x2510]
0000169A  66A33825          mov [0x2538],eax
0000169E  66A16025          mov eax,[0x2560]
000016A2  660FB7C0          movzx eax,ax
000016A6  66A32025          mov [0x2520],eax
000016AA  66A12025          mov eax,[0x2520]
000016AE  66A33425          mov [0x2534],eax
000016B2  66E81CFEFFFF      call dword 0x14d4
000016B8  66A35025          mov [0x2550],eax
000016BC  66C7065C25000000  mov dword [0x255c],0x0
         -00
000016C5  67837DF000        cmp word [ebp-0x10],byte +0x0
000016CA  7408              jz 0x16d4
000016CC  66B800000000      mov eax,0x0
000016D2  EB06              jmp short 0x16da
000016D4  66B8FFFFFFFF      mov eax,0xffffffff
000016DA  66A35825          mov [0x2558],eax
000016DE  669C              pushfd
000016E0  6658              pop eax
000016E2  66A33C25          mov [0x253c],eax
000016E6  66C7066425402500  mov dword [0x2564],0x2540
         -00
000016EF  EB25              jmp short 0x1716
000016F1  66A16425          mov eax,[0x2564]
000016F5  67668D5001        lea edx,[eax+0x1]
000016FA  6689166425        mov [0x2564],edx
000016FF  67668B5508        mov edx,[ebp+0x8]
00001704  67668D4A01        lea ecx,[edx+0x1]
00001709  6766894D08        mov [ebp+0x8],ecx
0000170E  67660FB612        movzx edx,byte [edx]
00001713  678810            mov [eax],dl
00001716  67668B4508        mov eax,[ebp+0x8]
0000171B  67660FB600        movzx eax,byte [eax]
00001720  84C0              test al,al
00001722  75CD              jnz 0x16f1
00001724  66A16425          mov eax,[0x2564]
00001728  67C60000          mov byte [eax],0x0
0000172C  66C7065425010000  mov dword [0x2554],0x1
         -00
00001735  66A1C824          mov eax,[0x24c8]
00001739  6650              push eax
0000173B  666800250000      push dword 0x2500
00001741  66E858FDFFFF      call dword 0x149f
00001747  6683C408          add esp,byte +0x8
0000174B  67668B5DFC        mov ebx,[ebp-0x4]
00001750  66C9              o32 leave
00001752  66C3              o32 ret
00001754  6655              push ebp
00001756  6689E5            mov ebp,esp
00001759  6656              push esi
0000175B  6653              push ebx
0000175D  6668141B0000      push dword 0x1b14
00001763  66E890EDFFFF      call dword 0x4f9
00001769  6683C404          add esp,byte +0x4
0000176D  67668B4508        mov eax,[ebp+0x8]
00001772  67668B5054        mov edx,[eax+0x54]
00001777  67668B4508        mov eax,[ebp+0x8]
0000177C  67668D4840        lea ecx,[eax+0x40]
00001781  67668B4508        mov eax,[ebp+0x8]
00001786  67668B4050        mov eax,[eax+0x50]
0000178B  6652              push edx
0000178D  6651              push ecx
0000178F  6650              push eax
00001791  6668481B0000      push dword 0x1b48
00001797  66E85CEDFFFF      call dword 0x4f9
0000179D  6683C410          add esp,byte +0x10
000017A1  67668B4508        mov eax,[ebp+0x8]
000017A6  67668B7010        mov esi,[eax+0x10]
000017AB  67668B4508        mov eax,[ebp+0x8]
000017B0  67668B580C        mov ebx,[eax+0xc]
000017B5  67668B4508        mov eax,[ebp+0x8]
000017BA  67668B4808        mov ecx,[eax+0x8]
000017BF  67668B4508        mov eax,[ebp+0x8]
000017C4  67668B5004        mov edx,[eax+0x4]
000017C9  67668B4508        mov eax,[ebp+0x8]
000017CE  67668B00          mov eax,[eax]
000017D2  6656              push esi
000017D4  6653              push ebx
000017D6  6651              push ecx
000017D8  6652              push edx
000017DA  6650              push eax
000017DC  6668681B0000      push dword 0x1b68
000017E2  66E811EDFFFF      call dword 0x4f9
000017E8  6683C418          add esp,byte +0x18
000017EC  67668B4508        mov eax,[ebp+0x8]
000017F1  67668B5820        mov ebx,[eax+0x20]
000017F6  67668B4508        mov eax,[ebp+0x8]
000017FB  67668B481C        mov ecx,[eax+0x1c]
00001800  67668B4508        mov eax,[ebp+0x8]
00001805  67668B5018        mov edx,[eax+0x18]
0000180A  67668B4508        mov eax,[ebp+0x8]
0000180F  67668B4014        mov eax,[eax+0x14]
00001814  6653              push ebx
00001816  6651              push ecx
00001818  6652              push edx
0000181A  6650              push eax
0000181C  6668941B0000      push dword 0x1b94
00001822  66E8D1ECFFFF      call dword 0x4f9
00001828  6683C414          add esp,byte +0x14
0000182C  67668B4508        mov eax,[ebp+0x8]
00001831  67668B5828        mov ebx,[eax+0x28]
00001836  67668B4508        mov eax,[ebp+0x8]
0000183B  67668B482C        mov ecx,[eax+0x2c]
00001840  67668B4508        mov eax,[ebp+0x8]
00001845  67668B5024        mov edx,[eax+0x24]
0000184A  67668B4508        mov eax,[ebp+0x8]
0000184F  67668B4030        mov eax,[eax+0x30]
00001854  6653              push ebx
00001856  6651              push ecx
00001858  6652              push edx
0000185A  6650              push eax
0000185C  6668B81B0000      push dword 0x1bb8
00001862  66E891ECFFFF      call dword 0x4f9
00001868  6683C414          add esp,byte +0x14
0000186C  67668B4508        mov eax,[ebp+0x8]
00001871  67668B585C        mov ebx,[eax+0x5c]
00001876  67668B4508        mov eax,[ebp+0x8]
0000187B  67668B483C        mov ecx,[eax+0x3c]
00001880  67668B4508        mov eax,[ebp+0x8]
00001885  67668B5034        mov edx,[eax+0x34]
0000188A  67668B4508        mov eax,[ebp+0x8]
0000188F  67668B4038        mov eax,[eax+0x38]
00001894  6653              push ebx
00001896  6651              push ecx
00001898  6652              push edx
0000189A  6650              push eax
0000189C  6668DC1B0000      push dword 0x1bdc
000018A2  66E851ECFFFF      call dword 0x4f9
000018A8  6683C414          add esp,byte +0x14
000018AC  6668141B0000      push dword 0x1b14
000018B2  66E841ECFFFF      call dword 0x4f9
000018B8  6683C404          add esp,byte +0x4
000018BC  67668D65F8        lea esp,[ebp-0x8]
000018C1  665B              pop ebx
000018C3  665E              pop esi
000018C5  665D              pop ebp
000018C7  66C3              o32 ret
000018C9  6655              push ebp
000018CB  6689E5            mov ebp,esp
000018CE  6653              push ebx
000018D0  6683EC04          sub esp,byte +0x4
000018D4  67668B4508        mov eax,[ebp+0x8]
000018D9  678845F8          mov [ebp-0x8],al
000018DD  67660FBE45F8      movsx eax,byte [ebp-0x8]
000018E3  6605000E0000      add eax,0xe00
000018E9  66BA00000000      mov edx,0x0
000018EF  6689D3            mov ebx,edx
000018F2  CD10              int 0x10
000018F4  6683C404          add esp,byte +0x4
000018F8  665B              pop ebx
000018FA  665D              pop ebp
000018FC  66C3              o32 ret
000018FE  6655              push ebp
00001900  6689E5            mov ebp,esp
00001903  666A4F            o32 push byte +0x4f
00001906  66E8BDFFFFFF      call dword 0x18c9
0000190C  6683C404          add esp,byte +0x4
00001910  666A55            o32 push byte +0x55
00001913  66E8B0FFFFFF      call dword 0x18c9
00001919  6683C404          add esp,byte +0x4
0000191D  666A43            o32 push byte +0x43
00001920  66E8A3FFFFFF      call dword 0x18c9
00001926  6683C404          add esp,byte +0x4
0000192A  666A48            o32 push byte +0x48
0000192D  66E896FFFFFF      call dword 0x18c9
00001933  6683C404          add esp,byte +0x4
00001937  666A21            o32 push byte +0x21
0000193A  66E889FFFFFF      call dword 0x18c9
00001940  6683C404          add esp,byte +0x4
00001944  666A0D            o32 push byte +0xd
00001947  66E87CFFFFFF      call dword 0x18c9
0000194D  6683C404          add esp,byte +0x4
00001951  666A0A            o32 push byte +0xa
00001954  66E86FFFFFFF      call dword 0x18c9
0000195A  6683C404          add esp,byte +0x4
0000195E  66C9              o32 leave
00001960  66C3              o32 ret
00001962  6655              push ebp
00001964  6689E5            mov ebp,esp
00001967  6683EC04          sub esp,byte +0x4
0000196B  67668B4508        mov eax,[ebp+0x8]
00001970  678845FC          mov [ebp-0x4],al
00001974  67660FB645FC      movzx eax,byte [ebp-0x4]
0000197A  6683E830          sub eax,byte +0x30
0000197E  66C9              o32 leave
00001980  66C3              o32 ret
00001982  6655              push ebp
00001984  6689E5            mov ebp,esp
00001987  6683EC08          sub esp,byte +0x8
0000198B  67668B450C        mov eax,[ebp+0xc]
00001990  678945F8          mov [ebp-0x8],ax
00001994  67C745FE0000      mov word [ebp-0x2],0x0
0000199A  EB40              jmp short 0x19dc
0000199C  67668B4508        mov eax,[ebp+0x8]
000019A1  67660FB600        movzx eax,byte [eax]
000019A6  3C60              cmp al,0x60
000019A8  7E27              jng 0x19d1
000019AA  67668B4508        mov eax,[ebp+0x8]
000019AF  67660FB600        movzx eax,byte [eax]
000019B4  3C7A              cmp al,0x7a
000019B6  7F19              jg 0x19d1
000019B8  67668B4508        mov eax,[ebp+0x8]
000019BD  67660FB600        movzx eax,byte [eax]
000019C2  6683E820          sub eax,byte +0x20
000019C6  6689C2            mov edx,eax
000019C9  67668B4508        mov eax,[ebp+0x8]
000019CE  678810            mov [eax],dl
000019D1  676683450801      add dword [ebp+0x8],byte +0x1
000019D7  678345FE01        add word [ebp-0x2],byte +0x1
000019DC  67660FB745FE      movzx eax,word [ebp-0x2]
000019E2  673B45F8          cmp ax,[ebp-0x8]
000019E6  72B4              jc 0x199c
000019E8  66C9              o32 leave
000019EA  66C3              o32 ret
000019EC  6655              push ebp
000019EE  6689E5            mov ebp,esp
000019F1  6683EC08          sub esp,byte +0x8
000019F5  67668B450C        mov eax,[ebp+0xc]
000019FA  678945F8          mov [ebp-0x8],ax
000019FE  67C745FE0000      mov word [ebp-0x2],0x0
00001A04  EB40              jmp short 0x1a46
00001A06  67668B4508        mov eax,[ebp+0x8]
00001A0B  67660FB600        movzx eax,byte [eax]
00001A10  3C40              cmp al,0x40
00001A12  7E27              jng 0x1a3b
00001A14  67668B4508        mov eax,[ebp+0x8]
00001A19  67660FB600        movzx eax,byte [eax]
00001A1E  3C5A              cmp al,0x5a
00001A20  7F19              jg 0x1a3b
00001A22  67668B4508        mov eax,[ebp+0x8]
00001A27  67660FB600        movzx eax,byte [eax]
00001A2C  6683C020          add eax,byte +0x20
00001A30  6689C2            mov edx,eax
00001A33  67668B4508        mov eax,[ebp+0x8]
00001A38  678810            mov [eax],dl
00001A3B  676683450801      add dword [ebp+0x8],byte +0x1
00001A41  678345FE01        add word [ebp-0x2],byte +0x1
00001A46  67660FB745FE      movzx eax,word [ebp-0x2]
00001A4C  673B45F8          cmp ax,[ebp-0x8]
00001A50  72B4              jc 0x1a06
00001A52  66C9              o32 leave
00001A54  66C3              o32 ret
00001A56  6655              push ebp
00001A58  6689E5            mov ebp,esp
00001A5B  6683EC04          sub esp,byte +0x4
00001A5F  67668B4508        mov eax,[ebp+0x8]
00001A64  678845FC          mov [ebp-0x4],al
00001A68  67660FB645FC      movzx eax,byte [ebp-0x4]
00001A6E  6683C030          add eax,byte +0x30
00001A72  66C9              o32 leave
00001A74  66C3              o32 ret
00001A76  6655              push ebp
00001A78  6689E5            mov ebp,esp
00001A7B  EB20              jmp short 0x1a9d
00001A7D  67668B4508        mov eax,[ebp+0x8]
00001A82  67660FB600        movzx eax,byte [eax]
00001A87  660FBEC0          movsx eax,al
00001A8B  6650              push eax
00001A8D  66E836FEFFFF      call dword 0x18c9
00001A93  6683C404          add esp,byte +0x4
00001A97  676683450801      add dword [ebp+0x8],byte +0x1
00001A9D  67668B4508        mov eax,[ebp+0x8]
00001AA2  67660FB600        movzx eax,byte [eax]
00001AA7  84C0              test al,al
00001AA9  75D2              jnz 0x1a7d
00001AAB  66C9              o32 leave
00001AAD  66C3              o32 ret
00001AAF  005374            add [bp+di+0x74],dl
00001AB2  6561              gs popaw
00001AB4  6D                insw
00001AB5  204F53            and [bx+0x53],cl
00001AB8  207634            and [bp+0x34],dh
00001ABB  2E300A            xor [cs:bp+si],cl
00001ABE  43                inc bx
00001ABF  6F                outsw
00001AC0  7079              jo 0x1b3b
00001AC2  7269              jc 0x1b2d
00001AC4  67687420          push word 0x2074
00001AC8  286329            sub [bp+di+0x29],ah
00001ACB  2032              and [bp+si],dh
00001ACD  3031              xor [bx+di],dh
00001ACF  352047            xor ax,0x4720
00001AD2  61                popaw
00001AD3  6F                outsw
00001AD4  7962              jns 0x1b38
00001AD6  37                aaa
00001AD7  2E0A5479          or dl,[cs:si+0x79]
00001ADB  7065              jo 0x1b42
00001ADD  2027              and [bx],ah
00001ADF  68656C            push word 0x6c65
00001AE2  7027              jo 0x1b0b
00001AE4  20666F            and [bp+0x6f],ah
00001AE7  7220              jc 0x1b09
00001AE9  6D                insw
00001AEA  6F                outsw
00001AEB  7265              jc 0x1b52
00001AED  20696E            and [bx+di+0x6e],ch
00001AF0  666F              outsd
00001AF2  726D              jc 0x1b61
00001AF4  61                popaw
00001AF5  7469              jz 0x1b60
00001AF7  6F                outsw
00001AF8  6E                outsb
00001AF9  2E0A0A            or cl,[cs:bp+si]
00001AFC  007368            add [bp+di+0x68],dh
00001AFF  0008              add [bx+si],cl
00001B01  2008              and [bx+si],cl
00001B03  000A              add [bp+si],cl
00001B05  007C2F            add [si+0x2f],bh
00001B08  2D5C00            sub ax,0x5c
00001B0B  003D              add [di],bh
00001B0D  203D              and [di],bh
00001B0F  210A              and [bp+si],cx
00001B11  0000              add [bx+si],al
00001B13  003D              add [di],bh
00001B15  3D3D3D            cmp ax,0x3d3d
00001B18  3D3D3D            cmp ax,0x3d3d
00001B1B  3D3D3D            cmp ax,0x3d3d
00001B1E  3D3D3D            cmp ax,0x3d3d
00001B21  3D3D3D            cmp ax,0x3d3d
00001B24  3D3D3D            cmp ax,0x3d3d
00001B27  3D3D3D            cmp ax,0x3d3d
00001B2A  3D3D3D            cmp ax,0x3d3d
00001B2D  3D3D3D            cmp ax,0x3d3d
00001B30  3D3D3D            cmp ax,0x3d3d
00001B33  3D3D3D            cmp ax,0x3d3d
00001B36  3D3D3D            cmp ax,0x3d3d
00001B39  3D3D3D            cmp ax,0x3d3d
00001B3C  3D3D3D            cmp ax,0x3d3d
00001B3F  3D3D3D            cmp ax,0x3d3d
00001B42  3D3D3D            cmp ax,0x3d3d
00001B45  3D0A00            cmp ax,0xa
00001B48  7069              jo 0x1bb3
00001B4A  643A20            cmp ah,[fs:bx+si]
00001B4D  256420            and ax,0x2064
00001B50  7C20              jl 0x1b72
00001B52  6E                outsb
00001B53  61                popaw
00001B54  6D                insw
00001B55  653A20            cmp ah,[gs:bx+si]
00001B58  257320            and ax,0x2073
00001B5B  7C20              jl 0x1b7d
00001B5D  7374              jnc 0x1bd3
00001B5F  61                popaw
00001B60  743A              jz 0x1b9c
00001B62  2025              and [di],ah
00001B64  64200A            and [fs:bp+si],cl
00001B67  007373            add [bp+di+0x73],dh
00001B6A  3A20              cmp ah,[bx+si]
00001B6C  257820            and ax,0x2078
00001B6F  7C20              jl 0x1b91
00001B71  67733A            jnc 0x1bae
00001B74  2025              and [di],ah
00001B76  7820              js 0x1b98
00001B78  7C20              jl 0x1b9a
00001B7A  66733A            o32 jnc 0x1bb7
00001B7D  2025              and [di],ah
00001B7F  7820              js 0x1ba1
00001B81  7C20              jl 0x1ba3
00001B83  65733A            gs jnc 0x1bc0
00001B86  2025              and [di],ah
00001B88  7820              js 0x1baa
00001B8A  7C20              jl 0x1bac
00001B8C  64733A            fs jnc 0x1bc9
00001B8F  2025              and [di],ah
00001B91  780A              js 0x1b9d
00001B93  006469            add [si+0x69],ah
00001B96  3A20              cmp ah,[bx+si]
00001B98  257820            and ax,0x2078
00001B9B  7C20              jl 0x1bbd
00001B9D  7369              jnc 0x1c08
00001B9F  3A20              cmp ah,[bx+si]
00001BA1  257820            and ax,0x2078
00001BA4  7C20              jl 0x1bc6
00001BA6  62703A            bound si,[bx+si+0x3a]
00001BA9  2025              and [di],ah
00001BAB  7820              js 0x1bcd
00001BAD  7C20              jl 0x1bcf
00001BAF  7370              jnc 0x1c21
00001BB1  3A20              cmp ah,[bx+si]
00001BB3  25780A            and ax,0xa78
00001BB6  0000              add [bx+si],al
00001BB8  61                popaw
00001BB9  783A              js 0x1bf5
00001BBB  2025              and [di],ah
00001BBD  7820              js 0x1bdf
00001BBF  7C20              jl 0x1be1
00001BC1  62783A            bound di,[bx+si+0x3a]
00001BC4  2025              and [di],ah
00001BC6  7820              js 0x1be8
00001BC8  7C20              jl 0x1bea
00001BCA  63783A            arpl [bx+si+0x3a],di
00001BCD  2025              and [di],ah
00001BCF  7820              js 0x1bf1
00001BD1  7C20              jl 0x1bf3
00001BD3  64783A            fs js 0x1c10
00001BD6  2025              and [di],ah
00001BD8  780A              js 0x1be4
00001BDA  0000              add [bx+si],al
00001BDC  63733A            arpl [bp+di+0x3a],si
00001BDF  2025              and [di],ah
00001BE1  7820              js 0x1c03
00001BE3  7C20              jl 0x1c05
00001BE5  69703A2025        imul si,[bx+si+0x3a],word 0x2520
00001BEA  7820              js 0x1c0c
00001BEC  7C20              jl 0x1c0e
00001BEE  666C              o32 insb
00001BF0  61                popaw
00001BF1  67733A            jnc 0x1c2e
00001BF4  2025              and [di],ah
00001BF6  7820              js 0x1c18
00001BF8  7C20              jl 0x1c1a
00001BFA  7761              ja 0x1c5d
00001BFC  69743A2025        imul si,[si+0x3a],word 0x2520
00001C01  640A00            or al,[fs:bx+si]
00001C04  1400              adc al,0x0
00001C06  0000              add [bx+si],al
00001C08  0000              add [bx+si],al
00001C0A  0000              add [bx+si],al
00001C0C  017A52            add [bp+si+0x52],di
00001C0F  0001              add [bx+di],al
00001C11  7C08              jl 0x1c1b
00001C13  011B              add [bp+di],bx
00001C15  0C04              or al,0x4
00001C17  0488              add al,0x88
00001C19  0100              add [bx+si],ax
00001C1B  001C              add [si],bl
00001C1D  0000              add [bx+si],al
00001C1F  001C              add [si],bl
00001C21  0000              add [bx+si],al
00001C23  00E7              add bh,ah
00001C25  E3FF              jcxz 0x1c26
00001C27  FF34              push word [si]
00001C29  0000              add [bx+si],al
00001C2B  0000              add [bx+si],al
00001C2D  42                inc dx
00001C2E  0E                push cs
00001C2F  08850243          or [di+0x4302],al
00001C33  0D056D            or ax,0x6d05
00001C36  C50C              lds cx,[si]
00001C38  0404              add al,0x4
00001C3A  0000              add [bx+si],al
00001C3C  1C00              sbb al,0x0
00001C3E  0000              add [bx+si],al
00001C40  3C00              cmp al,0x0
00001C42  0000              add [bx+si],al
00001C44  FB                sti
00001C45  E3FF              jcxz 0x1c46
00001C47  FF1F              call word far [bx]
00001C49  0000              add [bx+si],al
00001C4B  0000              add [bx+si],al
00001C4D  42                inc dx
00001C4E  0E                push cs
00001C4F  08850243          or [di+0x4302],al
00001C53  0D0558            or ax,0x5805
00001C56  C50C              lds cx,[si]
00001C58  0404              add al,0x4
00001C5A  0000              add [bx+si],al
00001C5C  1C00              sbb al,0x0
00001C5E  0000              add [bx+si],al
00001C60  5C                pop sp
00001C61  0000              add [bx+si],al
00001C63  00FA              add dl,bh
00001C65  E3FF              jcxz 0x1c66
00001C67  FFA10000          jmp word [bx+di+0x0]
00001C6B  0000              add [bx+si],al
00001C6D  42                inc dx
00001C6E  0E                push cs
00001C6F  08850243          or [di+0x4302],al
00001C73  0D0502            or ax,0x205
00001C76  9AC50C0404        call word 0x404:0xcc5
00001C7B  0014              add [si],dl
00001C7D  0000              add [bx+si],al
00001C7F  0000              add [bx+si],al
00001C81  0000              add [bx+si],al
00001C83  0001              add [bx+di],al
00001C85  7A52              jpe 0x1cd9
00001C87  0001              add [bx+di],al
00001C89  7C08              jl 0x1c93
00001C8B  011B              add [bp+di],bx
00001C8D  0C04              or al,0x4
00001C8F  0488              add al,0x88
00001C91  0100              add [bx+si],ax
00001C93  001C              add [si],bl
00001C95  0000              add [bx+si],al
00001C97  001C              add [si],bl
00001C99  0000              add [bx+si],al
00001C9B  0093E5FF          add [bp+di-0x1b],dl
00001C9F  FF1F              call word far [bx]
00001CA1  0000              add [bx+si],al
00001CA3  0000              add [bx+si],al
00001CA5  42                inc dx
00001CA6  0E                push cs
00001CA7  08850243          or [di+0x4302],al
00001CAB  0D0558            or ax,0x5805
00001CAE  C50C              lds cx,[si]
00001CB0  0404              add al,0x4
00001CB2  0000              add [bx+si],al
00001CB4  2000              and [bx+si],al
00001CB6  0000              add [bx+si],al
00001CB8  3C00              cmp al,0x0
00001CBA  0000              add [bx+si],al
00001CBC  92                xchg ax,dx
00001CBD  E5FF              in ax,0xff
00001CBF  FF35              push word [di]
00001CC1  0000              add [bx+si],al
00001CC3  0000              add [bx+si],al
00001CC5  42                inc dx
00001CC6  0E                push cs
00001CC7  08850243          or [di+0x4302],al
00001CCB  0D0546            or ax,0x4605
00001CCE  830366            add word [bp+di],byte +0x66
00001CD1  C3                ret
00001CD2  42                inc dx
00001CD3  C50C              lds cx,[si]
00001CD5  0404              add al,0x4
00001CD7  001C              add [si],bl
00001CD9  0000              add [bx+si],al
00001CDB  006000            add [bx+si+0x0],ah
00001CDE  0000              add [bx+si],al
00001CE0  A3E5FF            mov [0xffe5],ax
00001CE3  FF5400            call word [si+0x0]
00001CE6  0000              add [bx+si],al
00001CE8  00420E            add [bp+si+0xe],al
00001CEB  08850243          or [di+0x4302],al
00001CEF  0D0502            or ax,0x205
00001CF2  4D                dec bp
00001CF3  C50C              lds cx,[si]
00001CF5  0404              add al,0x4
00001CF7  001C              add [si],bl
00001CF9  0000              add [bx+si],al
00001CFB  00800000          add [bx+si+0x0],al
00001CFF  00D7              add bh,dl
00001D01  E5FF              in ax,0xff
00001D03  FFB10000          push word [bx+di+0x0]
00001D07  0000              add [bx+si],al
00001D09  42                inc dx
00001D0A  0E                push cs
00001D0B  08850243          or [di+0x4302],al
00001D0F  0D0502            or ax,0x205
00001D12  AA                stosb
00001D13  C50C              lds cx,[si]
00001D15  0404              add al,0x4
00001D17  001C              add [si],bl
00001D19  0000              add [bx+si],al
00001D1B  00A00000          add [bx+si+0x0],ah
00001D1F  0068E6            add [bx+si-0x1a],ch
00001D22  FF                db 0xff
00001D23  FF6A00            jmp word far [bp+si+0x0]
00001D26  0000              add [bx+si],al
00001D28  00420E            add [bp+si+0xe],al
00001D2B  08850243          or [di+0x4302],al
00001D2F  0D0502            or ax,0x205
00001D32  63C5              arpl bp,ax
00001D34  0C04              or al,0x4
00001D36  0400              add al,0x0
00001D38  1C00              sbb al,0x0
00001D3A  0000              add [bx+si],al
00001D3C  C00000            rol byte [bx+si],byte 0x0
00001D3F  00B2E6FF          add [bp+si-0x1a],dh
00001D43  FF07              inc word [bx]
00001D45  0100              add [bx+si],ax
00001D47  0000              add [bx+si],al
00001D49  42                inc dx
00001D4A  0E                push cs
00001D4B  08850243          or [di+0x4302],al
00001D4F  0D0503            or ax,0x305
00001D52  0001              add [bx+di],al
00001D54  C50C              lds cx,[si]
00001D56  0404              add al,0x4
00001D58  2000              and [bx+si],al
00001D5A  0000              add [bx+si],al
00001D5C  E000              loopne 0x1d5e
00001D5E  0000              add [bx+si],al
00001D60  99                cwd
00001D61  E7FF              out 0xff,ax
00001D63  FF2F              jmp word far [bx]
00001D65  0100              add [bx+si],ax
00001D67  0000              add [bx+si],al
00001D69  42                inc dx
00001D6A  0E                push cs
00001D6B  08850243          or [di+0x4302],al
00001D6F  0D0546            or ax,0x4605
00001D72  830303            add word [bp+di],byte +0x3
00001D75  2201              and al,[bx+di]
00001D77  C5                db 0xc5
00001D78  C3                ret
00001D79  0C04              or al,0x4
00001D7B  0424              add al,0x24
00001D7D  0000              add [bx+si],al
00001D7F  0004              add [si],al
00001D81  0100              add [bx+si],ax
00001D83  00A4E8FF          add [si-0x18],ah
00001D87  FF                db 0xff
00001D88  DF01              fild word [bx+di]
00001D8A  0000              add [bx+si],al
00001D8C  00420E            add [bp+si+0xe],al
00001D8F  08850243          or [di+0x4302],al
00001D93  0D0546            or ax,0x4605
00001D96  830303            add word [bp+di],byte +0x3
00001D99  D001              rol byte [bx+di],1
00001D9B  C3                ret
00001D9C  42                inc dx
00001D9D  C50C              lds cx,[si]
00001D9F  0404              add al,0x4
00001DA1  0000              add [bx+si],al
00001DA3  0014              add [si],dl
00001DA5  0000              add [bx+si],al
00001DA7  0000              add [bx+si],al
00001DA9  0000              add [bx+si],al
00001DAB  0001              add [bx+di],al
00001DAD  7A52              jpe 0x1e01
00001DAF  0001              add [bx+di],al
00001DB1  7C08              jl 0x1dbb
00001DB3  011B              add [bp+di],bx
00001DB5  0C04              or al,0x4
00001DB7  0488              add al,0x88
00001DB9  0100              add [bx+si],ax
00001DBB  001C              add [si],bl
00001DBD  0000              add [bx+si],al
00001DBF  001C              add [si],bl
00001DC1  0000              add [bx+si],al
00001DC3  0043EA            add [bp+di-0x16],al
00001DC6  FF                db 0xff
00001DC7  FF11              call word [bx+di]
00001DC9  0000              add [bx+si],al
00001DCB  0000              add [bx+si],al
00001DCD  42                inc dx
00001DCE  0E                push cs
00001DCF  08850243          or [di+0x4302],al
00001DD3  0D054A            or ax,0x4a05
00001DD6  C50C              lds cx,[si]
00001DD8  0404              add al,0x4
00001DDA  0000              add [bx+si],al
00001DDC  2000              and [bx+si],al
00001DDE  0000              add [bx+si],al
00001DE0  3C00              cmp al,0x0
00001DE2  0000              add [bx+si],al
00001DE4  34EA              xor al,0xea
00001DE6  FF                db 0xff
00001DE7  FF30              push word [bx+si]
00001DE9  0000              add [bx+si],al
00001DEB  0000              add [bx+si],al
00001DED  42                inc dx
00001DEE  0E                push cs
00001DEF  08850243          or [di+0x4302],al
00001DF3  0D0546            or ax,0x4605
00001DF6  830361            add word [bp+di],byte +0x61
00001DF9  C3                ret
00001DFA  42                inc dx
00001DFB  C50C              lds cx,[si]
00001DFD  0404              add al,0x4
00001DFF  0020              add [bx+si],ah
00001E01  0000              add [bx+si],al
00001E03  006000            add [bx+si+0x0],ah
00001E06  0000              add [bx+si],al
00001E08  40                inc ax
00001E09  EAFFFF3B00        jmp word 0x3b:0xffff
00001E0E  0000              add [bx+si],al
00001E10  00420E            add [bp+si+0xe],al
00001E13  08850243          or [di+0x4302],al
00001E17  0D0546            or ax,0x4605
00001E1A  83036C            add word [bp+di],byte +0x6c
00001E1D  C3                ret
00001E1E  42                inc dx
00001E1F  C50C              lds cx,[si]
00001E21  0404              add al,0x4
00001E23  0020              add [bx+si],ah
00001E25  0000              add [bx+si],al
00001E27  00840000          add [si+0x0],al
00001E2B  0057EA            add [bx-0x16],dl
00001E2E  FF                db 0xff
00001E2F  FF33              push word [bp+di]
00001E31  0000              add [bx+si],al
00001E33  0000              add [bx+si],al
00001E35  42                inc dx
00001E36  0E                push cs
00001E37  08850243          or [di+0x4302],al
00001E3B  0D0546            or ax,0x4605
00001E3E  830364            add word [bp+di],byte +0x64
00001E41  C3                ret
00001E42  42                inc dx
00001E43  C50C              lds cx,[si]
00001E45  0404              add al,0x4
00001E47  0020              add [bx+si],ah
00001E49  0000              add [bx+si],al
00001E4B  00A80000          add [bx+si+0x0],ch
00001E4F  0066EA            add [bp-0x16],ah
00001E52  FF                db 0xff
00001E53  FF35              push word [di]
00001E55  0000              add [bx+si],al
00001E57  0000              add [bx+si],al
00001E59  42                inc dx
00001E5A  0E                push cs
00001E5B  08850243          or [di+0x4302],al
00001E5F  0D0546            or ax,0x4605
00001E62  830366            add word [bp+di],byte +0x66
00001E65  C3                ret
00001E66  42                inc dx
00001E67  C50C              lds cx,[si]
00001E69  0404              add al,0x4
00001E6B  001C              add [si],bl
00001E6D  0000              add [bx+si],al
00001E6F  00CC              add ah,cl
00001E71  0000              add [bx+si],al
00001E73  0077EA            add [bx-0x16],dh
00001E76  FF                db 0xff
00001E77  FF2A              jmp word far [bp+si]
00001E79  0000              add [bx+si],al
00001E7B  0000              add [bx+si],al
00001E7D  42                inc dx
00001E7E  0E                push cs
00001E7F  08850243          or [di+0x4302],al
00001E83  0D0563            or ax,0x6305
00001E86  C50C              lds cx,[si]
00001E88  0404              add al,0x4
00001E8A  0000              add [bx+si],al
00001E8C  2000              and [bx+si],al
00001E8E  0000              add [bx+si],al
00001E90  EC                in al,dx
00001E91  0000              add [bx+si],al
00001E93  0081EAFF          add [bx+di-0x16],al
00001E97  FF35              push word [di]
00001E99  0000              add [bx+si],al
00001E9B  0000              add [bx+si],al
00001E9D  42                inc dx
00001E9E  0E                push cs
00001E9F  08850243          or [di+0x4302],al
00001EA3  0D0546            or ax,0x4605
00001EA6  830366            add word [bp+di],byte +0x66
00001EA9  C3                ret
00001EAA  42                inc dx
00001EAB  C50C              lds cx,[si]
00001EAD  0404              add al,0x4
00001EAF  002C              add [si],ch
00001EB1  0000              add [bx+si],al
00001EB3  0010              add [bx+si],dl
00001EB5  0100              add [bx+si],ax
00001EB7  0092EAFF          add [bp+si-0x16],dl
00001EBB  FF29              jmp word far [bx+di]
00001EBD  0100              add [bx+si],ax
00001EBF  0000              add [bx+si],al
00001EC1  42                inc dx
00001EC2  0E                push cs
00001EC3  08850243          or [di+0x4302],al
00001EC7  0D054A            or ax,0x4a05
00001ECA  8703              xchg ax,[bp+di]
00001ECC  8604              xchg al,[si]
00001ECE  830503            add word [di],byte +0x3
00001ED1  1201              adc al,[bx+di]
00001ED3  C3                ret
00001ED4  42                inc dx
00001ED5  C642C742          mov byte [bp+si-0x39],0x42
00001ED9  C50C              lds cx,[si]
00001EDB  0404              add al,0x4
00001EDD  0000              add [bx+si],al
00001EDF  001C              add [si],bl
00001EE1  0000              add [bx+si],al
00001EE3  004001            add [bx+si+0x1],al
00001EE6  0000              add [bx+si],al
00001EE8  8BEB              mov bp,bx
00001EEA  FF                db 0xff
00001EEB  FF7600            push word [bp+0x0]
00001EEE  0000              add [bx+si],al
00001EF0  00420E            add [bp+si+0xe],al
00001EF3  08850243          or [di+0x4302],al
00001EF7  0D0502            or ax,0x205
00001EFA  6F                outsw
00001EFB  C50C              lds cx,[si]
00001EFD  0404              add al,0x4
00001EFF  001C              add [si],bl
00001F01  0000              add [bx+si],al
00001F03  006001            add [bx+si+0x1],ah
00001F06  0000              add [bx+si],al
00001F08  E1EB              loope 0x1ef5
00001F0A  FF                db 0xff
00001F0B  FF4500            inc word [di+0x0]
00001F0E  0000              add [bx+si],al
00001F10  00420E            add [bp+si+0xe],al
00001F13  08850243          or [di+0x4302],al
00001F17  0D057E            or ax,0x7e05
00001F1A  C50C              lds cx,[si]
00001F1C  0404              add al,0x4
00001F1E  0000              add [bx+si],al
00001F20  1400              adc al,0x0
00001F22  0000              add [bx+si],al
00001F24  0000              add [bx+si],al
00001F26  0000              add [bx+si],al
00001F28  017A52            add [bp+si+0x52],di
00001F2B  0001              add [bx+di],al
00001F2D  7C08              jl 0x1f37
00001F2F  011B              add [bp+di],bx
00001F31  0C04              or al,0x4
00001F33  0488              add al,0x88
00001F35  0100              add [bx+si],ax
00001F37  001C              add [si],bl
00001F39  0000              add [bx+si],al
00001F3B  001C              add [si],bl
00001F3D  0000              add [bx+si],al
00001F3F  00EE              add dh,ch
00001F41  EBFF              jmp short 0x1f42
00001F43  FF                db 0xff
00001F44  BB0000            mov bx,0x0
00001F47  0000              add [bx+si],al
00001F49  42                inc dx
00001F4A  0E                push cs
00001F4B  08850243          or [di+0x4302],al
00001F4F  0D0502            or ax,0x205
00001F52  B4C5              mov ah,0xc5
00001F54  0C04              or al,0x4
00001F56  0400              add al,0x0
00001F58  1C00              sbb al,0x0
00001F5A  0000              add [bx+si],al
00001F5C  3C00              cmp al,0x0
00001F5E  0000              add [bx+si],al
00001F60  89EC              mov sp,bp
00001F62  FF                db 0xff
00001F63  FFA30000          jmp word [bp+di+0x0]
00001F67  0000              add [bx+si],al
00001F69  42                inc dx
00001F6A  0E                push cs
00001F6B  08850243          or [di+0x4302],al
00001F6F  0D0502            or ax,0x205
00001F72  9C                pushfw
00001F73  C50C              lds cx,[si]
00001F75  0404              add al,0x4
00001F77  001C              add [si],bl
00001F79  0000              add [bx+si],al
00001F7B  005C00            add [si+0x0],bl
00001F7E  0000              add [bx+si],al
00001F80  0CED              or al,0xed
00001F82  FF                db 0xff
00001F83  FF                db 0xff
00001F84  3F                aas
00001F85  0100              add [bx+si],ax
00001F87  0000              add [bx+si],al
00001F89  42                inc dx
00001F8A  0E                push cs
00001F8B  08850243          or [di+0x4302],al
00001F8F  0D0503            or ax,0x305
00001F92  3801              cmp [bx+di],al
00001F94  C50C              lds cx,[si]
00001F96  0404              add al,0x4
00001F98  1C00              sbb al,0x0
00001F9A  0000              add [bx+si],al
00001F9C  7C00              jl 0x1f9e
00001F9E  0000              add [bx+si],al
00001FA0  2BEE              sub bp,si
00001FA2  FF                db 0xff
00001FA3  FF                db 0xff
00001FA4  3E0000            add [ds:bx+si],al
00001FA7  0000              add [bx+si],al
00001FA9  42                inc dx
00001FAA  0E                push cs
00001FAB  08850243          or [di+0x4302],al
00001FAF  0D0577            or ax,0x7705
00001FB2  C50C              lds cx,[si]
00001FB4  0404              add al,0x4
00001FB6  0000              add [bx+si],al
00001FB8  1C00              sbb al,0x0
00001FBA  0000              add [bx+si],al
00001FBC  9C                pushfw
00001FBD  0000              add [bx+si],al
00001FBF  0049EE            add [bx+di-0x12],cl
00001FC2  FF                db 0xff
00001FC3  FF870000          inc word [bx+0x0]
00001FC7  0000              add [bx+si],al
00001FC9  42                inc dx
00001FCA  0E                push cs
00001FCB  08850243          or [di+0x4302],al
00001FCF  0D0502            or ax,0x205
00001FD2  80C50C            add ch,0xc
00001FD5  0404              add al,0x4
00001FD7  001C              add [si],bl
00001FD9  0000              add [bx+si],al
00001FDB  00BC0000          add [si+0x0],bh
00001FDF  00B0EEFF          add [bx+si-0x12],dh
00001FE3  FF21              jmp word [bx+di]
00001FE5  0200              add al,[bx+si]
00001FE7  0000              add [bx+si],al
00001FE9  42                inc dx
00001FEA  0E                push cs
00001FEB  08850243          or [di+0x4302],al
00001FEF  0D0503            or ax,0x305
00001FF2  1A02              sbb al,[bp+si]
00001FF4  C50C              lds cx,[si]
00001FF6  0404              add al,0x4
00001FF8  1C00              sbb al,0x0
00001FFA  0000              add [bx+si],al
00001FFC  DC00              fadd qword [bx+si]
00001FFE  0000              add [bx+si],al
00002000  B1F0              mov cl,0xf0
00002002  FF                db 0xff
00002003  FF1E0200          call word far [0x2]
00002007  0000              add [bx+si],al
00002009  42                inc dx
0000200A  0E                push cs
0000200B  08850243          or [di+0x4302],al
0000200F  0D0503            or ax,0x305
00002012  17                pop ss
00002013  02C5              add al,ch
00002015  0C04              or al,0x4
00002017  041C              add al,0x1c
00002019  0000              add [bx+si],al
0000201B  00FC              add ah,bh
0000201D  0000              add [bx+si],al
0000201F  00AFF2FF          add [bx-0xe],ch
00002023  FF03              inc word [bp+di]
00002025  0100              add [bx+si],ax
00002027  0000              add [bx+si],al
00002029  42                inc dx
0000202A  0E                push cs
0000202B  08850243          or [di+0x4302],al
0000202F  0D0502            or ax,0x205
00002032  FC                cld
00002033  C50C              lds cx,[si]
00002035  0404              add al,0x4
00002037  0014              add [si],dl
00002039  0000              add [bx+si],al
0000203B  0000              add [bx+si],al
0000203D  0000              add [bx+si],al
0000203F  0001              add [bx+di],al
00002041  7A52              jpe 0x2095
00002043  0001              add [bx+di],al
00002045  7C08              jl 0x204f
00002047  011B              add [bp+di],bx
00002049  0C04              or al,0x4
0000204B  0488              add al,0x88
0000204D  0100              add [bx+si],ax
0000204F  001C              add [si],bl
00002051  0000              add [bx+si],al
00002053  001C              add [si],bl
00002055  0000              add [bx+si],al
00002057  0012              add [bp+si],dl
00002059  F4                hlt
0000205A  FF                db 0xff
0000205B  FF35              push word [di]
0000205D  0000              add [bx+si],al
0000205F  0000              add [bx+si],al
00002061  42                inc dx
00002062  0E                push cs
00002063  08850243          or [di+0x4302],al
00002067  0D056E            or ax,0x6e05
0000206A  C50C              lds cx,[si]
0000206C  0404              add al,0x4
0000206E  0000              add [bx+si],al
00002070  1C00              sbb al,0x0
00002072  0000              add [bx+si],al
00002074  3C00              cmp al,0x0
00002076  0000              add [bx+si],al
00002078  27                daa
00002079  F4                hlt
0000207A  FF                db 0xff
0000207B  FF35              push word [di]
0000207D  0000              add [bx+si],al
0000207F  0000              add [bx+si],al
00002081  42                inc dx
00002082  0E                push cs
00002083  08850243          or [di+0x4302],al
00002087  0D056E            or ax,0x6e05
0000208A  C50C              lds cx,[si]
0000208C  0404              add al,0x4
0000208E  0000              add [bx+si],al
00002090  1C00              sbb al,0x0
00002092  0000              add [bx+si],al
00002094  5C                pop sp
00002095  0000              add [bx+si],al
00002097  003C              add [si],bh
00002099  F4                hlt
0000209A  FF                db 0xff
0000209B  FF5700            call word [bx+0x0]
0000209E  0000              add [bx+si],al
000020A0  00420E            add [bp+si+0xe],al
000020A3  08850243          or [di+0x4302],al
000020A7  0D0502            or ax,0x205
000020AA  50                push ax
000020AB  C50C              lds cx,[si]
000020AD  0404              add al,0x4
000020AF  001C              add [si],bl
000020B1  0000              add [bx+si],al
000020B3  007C00            add [si+0x0],bh
000020B6  0000              add [bx+si],al
000020B8  73F4              jnc 0x20ae
000020BA  FF                db 0xff
000020BB  FF6700            jmp word [bx+0x0]
000020BE  0000              add [bx+si],al
000020C0  00420E            add [bp+si+0xe],al
000020C3  08850243          or [di+0x4302],al
000020C7  0D0502            or ax,0x205
000020CA  60                pushaw
000020CB  C50C              lds cx,[si]
000020CD  0404              add al,0x4
000020CF  001C              add [si],bl
000020D1  0000              add [bx+si],al
000020D3  009C0000          add [si+0x0],bl
000020D7  00BAF4FF          add [bp+si-0xc],bh
000020DB  FF0D              dec word [di]
000020DD  0000              add [bx+si],al
000020DF  0000              add [bx+si],al
000020E1  42                inc dx
000020E2  0E                push cs
000020E3  08850243          or [di+0x4302],al
000020E7  0D0546            or ax,0x4605
000020EA  C50C              lds cx,[si]
000020EC  0404              add al,0x4
000020EE  0000              add [bx+si],al
000020F0  1C00              sbb al,0x0
000020F2  0000              add [bx+si],al
000020F4  BC0000            mov sp,0x0
000020F7  00A7F4FF          add [bx-0xc],ah
000020FB  FF0B              dec word [bp+di]
000020FD  0000              add [bx+si],al
000020FF  0000              add [bx+si],al
00002101  42                inc dx
00002102  0E                push cs
00002103  08850243          or [di+0x4302],al
00002107  0D0544            or ax,0x4405
0000210A  C50C              lds cx,[si]
0000210C  0404              add al,0x4
0000210E  0000              add [bx+si],al
00002110  2000              and [bx+si],al
00002112  0000              add [bx+si],al
00002114  DC00              fadd qword [bx+si]
00002116  0000              add [bx+si],al
00002118  92                xchg ax,dx
00002119  F4                hlt
0000211A  FF                db 0xff
0000211B  FFAA0100          jmp word far [bp+si+0x1]
0000211F  0000              add [bx+si],al
00002121  42                inc dx
00002122  0E                push cs
00002123  08850243          or [di+0x4302],al
00002127  0D0546            or ax,0x4605
0000212A  830303            add word [bp+di],byte +0x3
0000212D  9D                popfw
0000212E  01C5              add bp,ax
00002130  C3                ret
00002131  0C04              or al,0x4
00002133  0428              add al,0x28
00002135  0000              add [bx+si],al
00002137  0000              add [bx+si],al
00002139  0100              add [bx+si],ax
0000213B  0018              add [bx+si],bl
0000213D  F6FF              idiv bh
0000213F  FF7501            push word [di+0x1]
00002142  0000              add [bx+si],al
00002144  00420E            add [bp+si+0xe],al
00002147  08850243          or [di+0x4302],al
0000214B  0D0544            or ax,0x4405
0000214E  8603              xchg al,[bp+di]
00002150  830403            add word [si],byte +0x3
00002153  6601C3            add ebx,eax
00002156  42                inc dx
00002157  C642C50C          mov byte [bp+si-0x3b],0xc
0000215B  0404              add al,0x4
0000215D  0000              add [bx+si],al
0000215F  0014              add [si],dl
00002161  0000              add [bx+si],al
00002163  0000              add [bx+si],al
00002165  0000              add [bx+si],al
00002167  0001              add [bx+di],al
00002169  7A52              jpe 0x21bd
0000216B  0001              add [bx+di],al
0000216D  7C08              jl 0x2177
0000216F  011B              add [bp+di],bx
00002171  0C04              or al,0x4
00002173  0488              add al,0x88
00002175  0100              add [bx+si],ax
00002177  0020              add [bx+si],ah
00002179  0000              add [bx+si],al
0000217B  001C              add [si],bl
0000217D  0000              add [bx+si],al
0000217F  0049F7            add [bx+di-0x9],cl
00002182  FF                db 0xff
00002183  FF35              push word [di]
00002185  0000              add [bx+si],al
00002187  0000              add [bx+si],al
00002189  42                inc dx
0000218A  0E                push cs
0000218B  08850243          or [di+0x4302],al
0000218F  0D0546            or ax,0x4605
00002192  830366            add word [bp+di],byte +0x66
00002195  C3                ret
00002196  42                inc dx
00002197  C50C              lds cx,[si]
00002199  0404              add al,0x4
0000219B  001C              add [si],bl
0000219D  0000              add [bx+si],al
0000219F  004000            add [bx+si+0x0],al
000021A2  0000              add [bx+si],al
000021A4  5A                pop dx
000021A5  F7FF              idiv di
000021A7  FF6400            jmp word [si+0x0]
000021AA  0000              add [bx+si],al
000021AC  00420E            add [bp+si+0xe],al
000021AF  08850243          or [di+0x4302],al
000021B3  0D0502            or ax,0x205
000021B6  5D                pop bp
000021B7  C50C              lds cx,[si]
000021B9  0404              add al,0x4
000021BB  001C              add [si],bl
000021BD  0000              add [bx+si],al
000021BF  006000            add [bx+si+0x0],ah
000021C2  0000              add [bx+si],al
000021C4  9E                sahf
000021C5  F7FF              idiv di
000021C7  FF20              jmp word [bx+si]
000021C9  0000              add [bx+si],al
000021CB  0000              add [bx+si],al
000021CD  42                inc dx
000021CE  0E                push cs
000021CF  08850243          or [di+0x4302],al
000021D3  0D0559            or ax,0x5905
000021D6  C50C              lds cx,[si]
000021D8  0404              add al,0x4
000021DA  0000              add [bx+si],al
000021DC  1C00              sbb al,0x0
000021DE  0000              add [bx+si],al
000021E0  800000            add byte [bx+si],0x0
000021E3  009EF7FF          add [bp-0x9],bl
000021E7  FF6A00            jmp word far [bp+si+0x0]
000021EA  0000              add [bx+si],al
000021EC  00420E            add [bp+si+0xe],al
000021EF  08850243          or [di+0x4302],al
000021F3  0D0502            or ax,0x205
000021F6  63C5              arpl bp,ax
000021F8  0C04              or al,0x4
000021FA  0400              add al,0x0
000021FC  1C00              sbb al,0x0
000021FE  0000              add [bx+si],al
00002200  A00000            mov al,[0x0]
00002203  00E8              add al,ch
00002205  F7FF              idiv di
00002207  FF6A00            jmp word far [bp+si+0x0]
0000220A  0000              add [bx+si],al
0000220C  00420E            add [bp+si+0xe],al
0000220F  08850243          or [di+0x4302],al
00002213  0D0502            or ax,0x205
00002216  63C5              arpl bp,ax
00002218  0C04              or al,0x4
0000221A  0400              add al,0x0
0000221C  1C00              sbb al,0x0
0000221E  0000              add [bx+si],al
00002220  C00000            rol byte [bx+si],byte 0x0
00002223  0032              add [bp+si],dh
00002225  F8                clc
00002226  FF                db 0xff
00002227  FF20              jmp word [bx+si]
00002229  0000              add [bx+si],al
0000222B  0000              add [bx+si],al
0000222D  42                inc dx
0000222E  0E                push cs
0000222F  08850243          or [di+0x4302],al
00002233  0D0559            or ax,0x5905
00002236  C50C              lds cx,[si]
00002238  0404              add al,0x4
0000223A  0000              add [bx+si],al
0000223C  1C00              sbb al,0x0
0000223E  0000              add [bx+si],al
00002240  E000              loopne 0x2242
00002242  0000              add [bx+si],al
00002244  32F8              xor bh,al
00002246  FF                db 0xff
00002247  FF                db 0xff
00002248  3900              cmp [bx+si],ax
0000224A  0000              add [bx+si],al
0000224C  00420E            add [bp+si+0xe],al
0000224F  08850243          or [di+0x4302],al
00002253  0D0572            or ax,0x7205
00002256  C50C              lds cx,[si]
00002258  0404              add al,0x4
0000225A  0000              add [bx+si],al
0000225C  0100              add [bx+si],ax
0000225E  0000              add [bx+si],al
00002260  B01A              mov al,0x1a
00002262  0000              add [bx+si],al
00002264  0100              add [bx+si],ax
00002266  0000              add [bx+si],al
00002268  05                db 0x05
00002269  07                pop es
