; int xor(int a, int b)
; xor_32i[7ff7c7199300h, 7ff7c719930ah][10] = {0f 1f 44 00 00 8b c1 33 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:251
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
