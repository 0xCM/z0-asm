; int f2d<int>(int a, int b, int c)
; X2D_g32i[7ff7c6b90fb0h, 7ff7c6b90fbfh][15] = {0f 1f 44 00 00 41 8b c0 f7 d0 0b c2 33 c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:531
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000ch xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
