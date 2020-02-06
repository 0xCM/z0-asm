------------------------------------------------------------------------------------------------------------------------
; bit f5a(bit a, bit b, bit c)
; f5a_1u_1u_1u[15] = {0f 1f 44 00 00 89 54 24 10 41 8b c0 33 c1 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
0009h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
000ch xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
