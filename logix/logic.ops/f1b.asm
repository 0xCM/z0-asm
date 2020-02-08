------------------------------------------------------------------------------------------------------------------------
; bit f1b(bit a, bit b, bit c)
; f1b_(1u,1u,1u)[33] = {0f 1f 44 00 00 8b c1 f7 d0 83 e0 01 f7 d2 83 e2 01 41 23 c0 41 8b c8 f7 d1 23 d1 0b c2 83 e0 01 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000ch not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000eh and edx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 01}
0011h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0014h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0017h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0019h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
001bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001dh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
