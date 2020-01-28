------------------------------------------------------------------------------------------------------------------------
; bit f51(bit a, bit b, bit c)
; X51[23] = {0f 1f 44 00 00 41 8b c0 f7 d0 83 e0 01 f7 d2 83 e2 01 0b d1 23 c2 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000dh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000fh and edx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 01}
0012h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0014h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
