; byte inc<byte>(byte a)
; inc_g8u[7ff7c71a82d0h, 7ff7c71a82deh][14] = {0f 1f 44 00 00 0f b6 c1 ff c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:58:319
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
