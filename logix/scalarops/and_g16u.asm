; ushort and<ushort>(ushort a, ushort b)
; and_g16u[7ff7c6ca0600h, 7ff7c6ca0611h][17] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 23 c2 0f b7 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:49:390
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
