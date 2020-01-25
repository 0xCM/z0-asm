; uint pop(byte src)
; pop_8u[7ff7c6e81c00h, 7ff7c6e81c0dh][13] = {0f 1f 44 00 00 0f b6 c1 f3 0f b8 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:52:048
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
