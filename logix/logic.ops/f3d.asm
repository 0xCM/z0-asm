------------------------------------------------------------------------------------------------------------------------
; bit f3d(bit a, bit b, bit c)
; f3d_1u_1u_1u[20] = {0f 1f 44 00 00 33 d1 41 0b c8 8b c1 f7 d0 83 e0 01 0b c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h or ecx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c8}
000ah mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0011h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
