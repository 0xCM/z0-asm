; ushort f40<ushort>(ushort a, ushort b, ushort c)
; X40_g16u[7ff7c6ba2d10h, 7ff7c6ba2d2fh][31] = {0f 1f 44 00 00 41 0f b7 c0 f7 d0 0f b7 c0 0f b7 c9 23 c1 0f b7 c0 0f b7 d2 23 c2 0f b7 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:41:603
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0011h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0013h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0016h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0019h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
