------------------------------------------------------------------------------------------------------------------------
; bit f43(bit a, bit b, bit c)
; f43_1u_1u_1u[26] = {0f 1f 44 00 00 44 23 c1 41 8b c0 f7 d0 83 e0 01 f7 d2 83 e2 01 33 d1 23 c2 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and r8d,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{44 23 c1}
0008h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
000bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000dh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0010h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0012h and edx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 01}
0015h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0017h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
