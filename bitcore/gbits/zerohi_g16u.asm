; ushort zerohi<ushort>(ushort src, int index)
; zerohi_g16u[7ff7c6e8d6e0h, 7ff7c6e8d6f1h][17] = {0f 1f 44 00 00 0f b7 c1 c4 e2 68 f5 c0 0f b7 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:53:320
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h bzhi eax,eax,edx                        ; BZHI r32a, r/m32, r32b || VEX.LZ.0F38.W0 F5 /r || encoded[5]{c4 e2 68 f5 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
