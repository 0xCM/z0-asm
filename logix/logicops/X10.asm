------------------------------------------------------------------------------------------------------------------------
; bit f10(bit a, bit b, bit c)
; X10[18] = {0f 1f 44 00 00 41 0b d0 8b c2 f7 d0 83 e0 01 23 c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0008h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000fh and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
