; byte xor<byte>(byte a, byte b)
; xor_g8u[7ff7c63c8a60h, 7ff7c63c8a71h][17] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 33 c2 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:42:238
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
