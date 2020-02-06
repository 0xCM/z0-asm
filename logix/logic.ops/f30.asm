------------------------------------------------------------------------------------------------------------------------
; bit f30(bit a, bit b, bit c)
; f30_1u_1u_1u[20] = {0f 1f 44 00 00 44 89 44 24 18 8b c2 f7 d0 83 e0 01 23 c1 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0011h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
