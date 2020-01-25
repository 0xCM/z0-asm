; byte f50<byte>(byte a, byte b, byte c)
; X50_g8u[7ff7c6b8bec0h, 7ff7c6b8bed5h][21] = {0f 1f 44 00 00 0f b6 c1 41 0f b6 d0 c4 e2 68 f2 c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:47:349
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
000ch andn eax,edx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 68 f2 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
