; bit lt<ushort>(ushort a, ushort b)
; lt_g16u[7ff7c71a07e0h, 7ff7c71a07f4h][20] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 0f 92 c0 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:57:386
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
