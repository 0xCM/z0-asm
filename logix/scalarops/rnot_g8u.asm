; byte rnot<byte>(byte a, byte b)
; rnot_g8u[7ff7c6ca1020h, 7ff7c6ca102eh][14] = {0f 1f 44 00 00 0f b6 c2 f7 d0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:49:487
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
