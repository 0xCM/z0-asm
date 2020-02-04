------------------------------------------------------------------------------------------------------------------------
; bit f1a(bit a, bit b, bit c)
; f1a_1u_1u_1u[20] = {0f 1f 44 00 00 23 d1 8b c2 f7 d0 83 e0 01 41 33 c8 23 c1 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000eh xor ecx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c8}
0011h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
