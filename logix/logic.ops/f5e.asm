------------------------------------------------------------------------------------------------------------------------
; bit f5e(bit a, bit b, bit c)
; f5e_1u_1u_1u[21] = {0f 1f 44 00 00 41 8b c0 f7 d0 83 e0 01 23 c2 41 33 c8 0b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000fh xor ecx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c8}
0012h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
