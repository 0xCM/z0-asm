------------------------------------------------------------------------------------------------------------------------
; bit f3b(bit a, bit b, bit c)
; f3b_[23] = {0f 1f 44 00 00 8b c1 f7 d0 83 e0 01 41 23 c0 f7 d2 83 e2 01 0b c2 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000ch and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
000fh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0011h and edx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 01}
0014h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0016h ret                                     ; RET || C3 || encoded[1]{c3}