; int f5d<int>(int a, int b, int c)
; X5D_g32i[7ff7c6b8d8a0h, 7ff7c6b8d8b1h][17] = {0f 1f 44 00 00 41 8b c0 f7 d0 f7 d1 23 d1 0b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:47:934
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
000ch and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
