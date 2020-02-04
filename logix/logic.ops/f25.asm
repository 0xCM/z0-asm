------------------------------------------------------------------------------------------------------------------------
; bit f25(bit a, bit b, bit c)
; f25_1u_1u_1u[27] = {0f 1f 44 00 00 23 d1 8b c2 f7 d0 83 e0 01 41 8b d0 f7 d2 83 e2 01 33 d1 23 c2 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000eh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0011h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0013h and edx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 01}
0016h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0018h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
