------------------------------------------------------------------------------------------------------------------------
; bit f42(bit a, bit b, bit c)
; X42[16] = {0f 1f 44 00 00 41 33 c8 41 33 d0 8b c1 23 c2 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor ecx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c8}
0008h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
000bh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
