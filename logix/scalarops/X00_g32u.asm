; uint f00<uint>(uint a, uint b, uint c)
; X00_g32u[7ff7c6ca5550h, 7ff7c6ca5558h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:50:118
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
