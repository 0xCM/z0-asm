; int f0f<int>(int a, int b, int c)
; X0F_g32i[7ff7c6cc58a0h, 7ff7c6cc58aah][10] = {0f 1f 44 00 00 8b c1 f7 d0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:42:829
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
