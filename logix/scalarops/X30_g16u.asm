; ushort f30<ushort>(ushort a, ushort b, ushort c)
; X30_g16u[7ff7c6ba13e0h, 7ff7c6ba13f4h][20] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 c4 e2 68 f2 c0 0f b7 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:41:326
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh andn eax,edx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 68 f2 c0}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
