; int f0a<int>(int a, int b, int c)
; X0A_g32i[7ff7c6cc5060h, 7ff7c6cc506dh][13] = {0f 1f 44 00 00 8b c1 f7 d0 41 23 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:42:754
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
