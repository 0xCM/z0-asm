------------------------------------------------------------------------------------------------------------------------
; bit f5b(bit a, bit b, bit c)
; f5b_(1u,1u,1u)[19] = {0f 1f 44 00 00 44 33 c1 0b d1 83 f2 01 41 8b c0 0b c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor r8d,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{44 33 c1}
0008h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
000ah xor edx,1                               ; XOR r/m32, imm8 || o32 83 /6 ib || encoded[3]{83 f2 01}
000dh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0010h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
