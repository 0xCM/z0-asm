; byte xnor<byte>(byte a, byte b)
; xnor_g8u[7ff7c6ca0be0h, 7ff7c6ca0bf3h][19] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 33 c2 f7 d0 0f b6 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:49:447
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
