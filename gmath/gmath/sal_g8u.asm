; byte sal<byte>(byte src, byte offset)
; sal_g8u[7ff7c71a5580h, 7ff7c71a5591h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 ca d3 e0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:58:080
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
