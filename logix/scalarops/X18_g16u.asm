; ushort f18<ushort>(ushort a, ushort b, ushort c)
; X18_g16u[7ff7c6b8ebd0h, 7ff7c6b8ebf5h][37] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 33 c2 0f b7 c0 0f b7 d1 41 0f b7 c8 33 d1 0f b7 d2 0f b7 c0 23 c2 0f b7 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:132
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0013h movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
0017h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0019h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0021h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
