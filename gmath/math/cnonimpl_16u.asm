; ushort cnonimpl(ushort a, ushort b)
; cnonimpl_16u[7ff7c71880c0h, 7ff7c71880d4h][20] = {0f 1f 44 00 00 0f b7 c2 0f b7 d1 c4 e2 78 f2 c2 0f b7 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:37:268
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
