; int bitslice<int>(int a, byte start, byte length)
; bitslice_g32i[7ff7c6e82ec0h, 7ff7c6e82edah][26] = {0f 1f 44 00 00 0f b6 c2 41 0f b6 d0 c1 e2 08 0b c2 0f b7 c0 c4 e2 78 f7 c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:34:144
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
000ch shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0014h bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
