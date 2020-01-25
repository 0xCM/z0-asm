; byte identity<byte>(byte a)
; identity_g8u[7ff7c6ba4c90h, 7ff7c6ba4c99h][9] = {0f 1f 44 00 00 0f b6 c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:42:024
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
