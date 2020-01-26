------------------------------------------------------------------------------------------------------------------------
; bit f1e(bit a, bit b, bit c)
; X1E[13] = {0f 1f 44 00 00 41 0b d0 8b c1 33 c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
