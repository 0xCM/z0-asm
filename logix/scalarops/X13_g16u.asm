; ushort f13<ushort>(ushort a, ushort b, ushort c)
; X13_g16u[7ff7c6b8e310h, 7ff7c6b8e32ch][28] = {0f 1f 44 00 00 0f b7 c1 41 0f b7 c8 23 c1 0f b7 c0 0f b7 d2 0b c2 f7 d0 0f b7 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:48:058
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
000ch and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
000eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0011h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0014h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0016h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
