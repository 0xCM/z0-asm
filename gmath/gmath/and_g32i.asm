; int and<int>(int a, int b)
; and_g32i[7ff7c7190750h, 7ff7c719075ah][10] = {0f 1f 44 00 00 23 d1 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:38:560
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
