; byte or<byte>(byte a, byte b)
; or_g8u[7ff7c6ca0820h, 7ff7c6ca0831h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0b c2 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:49:418
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
