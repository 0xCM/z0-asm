------------------------------------------------------------------------------------------------------------------------
; bit f11(bit a, bit b, bit c)
; f11_bit_bit_bit[20] = {0f 1f 44 00 00 89 4c 24 08 41 0b d0 8b c2 f7 d0 83 e0 01 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
000ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
