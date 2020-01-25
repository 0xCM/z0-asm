; ushort cimpl<ushort>(ushort a, ushort b)
; cimpl_g16u[7ff7c6ca1400h, 7ff7c6ca1413h][19] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 f7 d0 0b c2 0f b7 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:49:517
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
