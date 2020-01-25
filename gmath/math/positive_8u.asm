; bit positive(byte a)
; positive_8u[7ff7c71856f0h, 7ff7c71856feh][14] = {0f 1f 44 00 00 84 c9 0f 97 c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:36:995
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,cl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c9}
0007h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
