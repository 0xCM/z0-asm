; byte nonimpl<byte>(byte a, byte b)
; nonimpl_g8u[7ff7c6a3a1f0h, 7ff7c6a3a204h][20] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 c4 e2 78 f2 c2 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:42:318
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
