; int right<int>(int a, int b)
; rproject_g32i[7ff7c6a39e50h, 7ff7c6a39e58h][8] = {0f 1f 44 00 00 8b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:42:281
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
