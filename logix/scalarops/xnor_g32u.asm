; uint xnor<uint>(uint a, uint b)
; xnor_g32u[7ff7c6a39c30h, 7ff7c6a39c3ch][12] = {0f 1f 44 00 00 33 d1 8b c2 f7 d0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:42:258
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
