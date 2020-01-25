; ushort impl(ushort a, ushort b)
; impl_16u[7ff7c7188200h, 7ff7c7188213h][19] = {0f 1f 44 00 00 0f b7 c2 f7 d0 0f b7 d1 0b c2 0f b7 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:37:278
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
