------------------------------------------------------------------------------------------------------------------------
; bit f03(bit a, bit b, bit c)
; f03_1u_1u_1u[20] = {0f 1f 44 00 00 44 89 44 24 18 0b d1 8b c2 f7 d0 83 e0 01 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000ah or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
000ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
