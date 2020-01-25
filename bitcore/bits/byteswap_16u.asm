; ushort byteswap(ushort src)
; byteswap_16u[7ff7c6e70830h, 7ff7c6e7084bh][27] = {0f 1f 44 00 00 0f b7 c1 8b d0 c1 fa 08 25 ff 00 00 00 c1 e0 08 0b d0 0f b7 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:32:822
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
000dh and eax,0ffh                            ; AND EAX, imm32 || o32 25 id || encoded[5]{25 ff 00 00 00}
0012h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0015h or edx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d0}
0017h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
