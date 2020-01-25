; byte zero<byte>(byte t)
; zero_g8u[7ff7c71931a0h, 7ff7c71931a8h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:39:118
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
