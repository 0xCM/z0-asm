; byte f03<byte>(byte a, byte b, byte c)
; X03_g8u[7ff7c6ca5890h, 7ff7c6ca58a3h][19] = {0f 1f 44 00 00 0f b6 c2 0f b6 d1 0b c2 f7 d0 0f b6 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:50:152
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
000bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000dh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
