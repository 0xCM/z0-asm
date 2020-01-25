; byte split(ushort src, out byte x0)
; split_16u[7ff7c6e6f1a0h, 7ff7c6e6f1b1h][17] = {0f 1f 44 00 00 88 0a 0f b7 c1 c1 f8 08 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:32:612
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
0007h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000ah sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
