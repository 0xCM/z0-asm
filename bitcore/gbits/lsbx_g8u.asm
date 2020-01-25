; byte lsbx<byte>(byte src)
; lsbx_g8u[7ff7c6e84c90h, 7ff7c6e84ca1h][17] = {0f 1f 44 00 00 0f b6 c1 c4 e2 78 f3 d8 0f b6 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:34:237
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h blsi eax,eax                            ; BLSI r32, r/m32 || VEX.LZ.0F38.W0 F3 /3 || encoded[5]{c4 e2 78 f3 d8}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
