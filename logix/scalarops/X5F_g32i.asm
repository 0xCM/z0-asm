; int f5f<int>(int a, int b, int c)
; X5F_g32i[7ff7c6b9d7d0h, 7ff7c6b9d7ddh][13] = {0f 1f 44 00 00 41 23 c8 8b c1 f7 d0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:40:509
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and ecx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c8}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
