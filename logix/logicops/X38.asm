; bit f38(bit a, bit b, bit c)
; X38[7ff7c6a1fbd0h, 7ff7c6a1fbe0h][16] = {0f 1f 44 00 00 44 0b c1 33 d1 41 8b c0 23 c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:42:891
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or r8d,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b c1}
0008h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
000ah mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
000dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
