; uint cimpl<uint>(uint a, uint b)
; cimpl_g32u[7ff7c6ca1460h, 7ff7c6ca146ch][12] = {0f 1f 44 00 00 8b c1 f7 d0 0b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:49:520
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
