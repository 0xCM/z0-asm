; bit lt(ushort a, ushort b)
; lt_16u[7ff7c7197a60h, 7ff7c7197a74h][20] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 0f 9c c0 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:56:068
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
