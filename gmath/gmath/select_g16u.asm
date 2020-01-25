; ushort select<ushort>(ushort a, ushort b, ushort c)
; select_g16u[7ff7c7191ef0h, 7ff7c7191f12h][34] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 41 0f b7 c8 0f b7 c0 0f b7 d2 23 d0 c4 e2 78 f2 c1 0b c2 0f b7 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:021
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
000fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0012h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0015h and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
0017h andn eax,eax,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c1}
001ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
