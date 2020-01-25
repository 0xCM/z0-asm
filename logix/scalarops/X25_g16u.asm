; ushort f25<ushort>(ushort a, ushort b, ushort c)
; X25_g16u[7ff7c6b90120h, 7ff7c6b9014fh][47] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 23 c2 0f b7 c0 f7 d0 0f b7 c0 41 0f b7 d0 f7 d2 0f b7 d2 0f b7 c9 33 d1 0f b7 d2 0f b7 c0 23 c2 0f b7 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:327
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0019h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
001bh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
001eh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0021h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0023h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0026h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0029h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
002bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
