; ushort inc<ushort>(ushort a)
; inc_g16u[7ff7c6ca4d60h, 7ff7c6ca4d6eh][14] = {0f 1f 44 00 00 0f b7 c1 ff c0 0f b7 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:50:082
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
