; byte f1d<byte>(byte a, byte b, byte c)
; X1D_g8u[7ff7c6b8f490h, 7ff7c6b8f4bfh][47] = {0f 1f 44 00 00 0f b6 c1 f7 d0 0f b6 c0 41 0f b6 c8 f7 d1 0f b6 c9 0f b6 d2 0f b6 c0 0f b6 d2 0f b6 c0 23 c2 c4 e2 68 f2 d1 0b c2 0f b6 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:207
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0011h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0013h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0016h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0022h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0024h andn edx,edx,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 68 f2 d1}
0029h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
