; byte right<byte>(byte a, byte b)
; right_g8u[7ff7c7191a70h, 7ff7c7191a79h][9] = {0f 1f 44 00 00 0f b6 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:38:975
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
