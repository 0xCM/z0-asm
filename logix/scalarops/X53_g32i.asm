; int f53<int>(int a, int b, int c)
; X53_g32i[7ff7c6b8c560h, 7ff7c6b8c576h][22] = {0f 1f 44 00 00 41 8b c0 f7 d0 f7 d2 23 c1 c4 e2 70 f2 d2 0b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:47:411
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000ch and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
000eh andn edx,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 d2}
0013h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
