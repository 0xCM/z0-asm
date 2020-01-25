; ushort bitslice<ushort>(ushort a, byte start, byte length)
; bitslice_g16u[7ff7c6e82e20h, 7ff7c6e82e40h][32] = {0f 1f 44 00 00 0f b7 c1 0f b6 d2 41 0f b6 c8 c1 e1 08 0b d1 0f b7 d2 c4 e2 68 f7 c0 0f b7 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:34:139
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000fh shl ecx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 08}
0012h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0014h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0017h bextr eax,eax,edx                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 68 f7 c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
