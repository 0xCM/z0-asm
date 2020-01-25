; uint f33<uint>(uint a, uint b, uint c)
; X33_g32u[7ff7c6ba18a0h, 7ff7c6ba18aah][10] = {0f 1f 44 00 00 8b c2 f7 d0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:41:381
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
