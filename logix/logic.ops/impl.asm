------------------------------------------------------------------------------------------------------------------------
; bit impl(bit a, bit b)
; impl_1u_1u[15] = {0f 1f 44 00 00 8b c2 f7 d0 83 e0 01 0b c1 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000ch or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
