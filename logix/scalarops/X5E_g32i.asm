; int f5e<int>(int a, int b, int c)
; X5E_g32i[7ff7c6b9d660h, 7ff7c6b9d672h][18] = {0f 1f 44 00 00 41 8b c0 f7 d0 23 c2 41 33 c8 0b c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:40:494
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000ch xor ecx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c8}
000fh or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
