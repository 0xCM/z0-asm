; ushort f5b<ushort>(ushort a, ushort b, ushort c)
; X5B_g16u[7ff7c6b8d030h, 7ff7c6b8d062h][50] = {0f 1f 44 00 00 0f b7 c1 45 0f b7 c0 41 33 c0 0f b7 c0 0f b7 c9 0f b7 d2 0b d1 0f b7 d2 0f b7 d2 81 f2 ff ff 00 00 0f b7 d2 0f b7 c0 0b c2 0f b7 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:47:556
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
000ch xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
000fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0012h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0015h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0018h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
001ah movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
001dh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0020h xor edx,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f2 ff ff 00 00}
0026h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0029h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
