; byte zerohi(byte src, int index)
; zerohi_8u[7ff7c6e7c560h, 7ff7c6e7c571h][17] = {0f 1f 44 00 00 0f b6 c1 c4 e2 68 f5 c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:51:926
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h bzhi eax,eax,edx                        ; BZHI r32a, r/m32, r32b || VEX.LZ.0F38.W0 F5 /r || encoded[5]{c4 e2 68 f5 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
