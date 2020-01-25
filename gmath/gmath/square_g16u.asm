; ushort square<ushort>(ushort a)
; square_g16u[7ff7c7190460h, 7ff7c719046fh][15] = {0f 1f 44 00 00 0f b7 c1 0f af c0 0f b7 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:38:528
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
