; byte lo(ushort src)
; lo_16u[7ff7c6e85850h, 7ff7c6e8585ch][12] = {0f 1f 44 00 00 0f b7 c1 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:52:327
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
