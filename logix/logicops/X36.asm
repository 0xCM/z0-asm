------------------------------------------------------------------------------------------------------------------------
; bit f36(bit a, bit b, bit c)
; X36[13] = {0f 1f 44 00 00 41 0b c8 8b c2 33 c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or ecx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c8}
0008h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ah xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
