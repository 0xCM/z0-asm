; ushort f5c<ushort>(ushort a, ushort b, ushort c)
; X5C_g16u[7ff7c6b8d220h, 7ff7c6b8d247h][39] = {0f 1f 44 00 00 41 0f b7 c0 f7 d0 0f b7 c0 0f b7 c9 0f b7 d2 0f b7 c9 0f b7 c0 23 c1 c4 e2 70 f2 d2 0b c2 0f b7 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:47:570
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0011h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0014h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0017h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001ah and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
001ch andn edx,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 d2}
0021h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0023h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
