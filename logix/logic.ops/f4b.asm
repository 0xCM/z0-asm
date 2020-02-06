------------------------------------------------------------------------------------------------------------------------
; bit f4b(bit a, bit b, bit c)
; f4b_1u_1u_1u[18] = {0f 1f 44 00 00 8b c2 f7 d0 83 e0 01 41 0b c0 33 c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000ch or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
000fh xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
