; int left<int>(int a, int b)
; left_g32i[7ff7c7191a10h, 7ff7c7191a18h][8] = {0f 1f 44 00 00 8b c1 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:38:971
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
