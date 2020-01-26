------------------------------------------------------------------------------------------------------------------------
; bit f28(bit a, bit b, bit c)
; X28[13] = {0f 1f 44 00 00 33 d1 41 8b c0 23 c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
000ah and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
