------------------------------------------------------------------------------------------------------------------------
; bit f35(bit a, bit b, bit c)
; f35_1u_1u_1u[32] = {0f 1f 44 00 00 8b c2 f7 d0 83 e0 01 41 8b d0 f7 d2 83 e2 01 23 c1 f7 d1 23 d1 0b c2 83 e0 01 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
000fh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0011h and edx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 01}
0014h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0016h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0018h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
001ah or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
