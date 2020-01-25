; bit f56(bit a, bit b, bit c)
; X56[7ff7c6a20130h, 7ff7c6a2013dh][13] = {0f 1f 44 00 00 0b d1 41 8b c0 33 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:43:160
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0007h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
000ah xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
