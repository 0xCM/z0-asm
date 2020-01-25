; uint pack(bit b0, bit b1, bit b2, bit b3, bit b4, bit b5, bit b6, bit b7)
; pack_bit_0o[7ff7c6e7c910h, 7ff7c6e7c949h][57] = {0f 1f 44 00 00 d1 e2 0b d1 41 c1 e0 02 41 0b d0 41 c1 e1 03 41 0b d1 8b 44 24 30 d1 e0 0b 44 24 28 8b 4c 24 38 c1 e1 02 0b c1 8b 4c 24 40 c1 e1 03 0b c1 c1 e0 04 0b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:51:958
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
0007h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0009h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
000dh or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0010h shl r9d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e1 03}
0014h or edx,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d1}
0017h mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
001bh shl eax,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e0}
001dh or eax,[rsp+28h]                        ; OR r32, r/m32 || o32 0B /r || encoded[4]{0b 44 24 28}
0021h mov ecx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 38}
0025h shl ecx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 02}
0028h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
002ah mov ecx,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 40}
002eh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0031h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
0033h shl eax,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 04}
0036h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
