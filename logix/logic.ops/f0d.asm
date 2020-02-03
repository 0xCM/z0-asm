------------------------------------------------------------------------------------------------------------------------
; bit f0d(bit a, bit b, bit c)
; f0d_[25] = {0f 1f 44 00 00 8b c1 f7 d0 83 e0 01 41 8b c8 f7 d1 83 e1 01 0b d1 23 c2 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000ch mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
000fh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0011h and ecx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 01}
0014h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0016h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0018h ret                                     ; RET || C3 || encoded[1]{c3}