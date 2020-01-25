; uint pop(Int16 src)
; pop_16i[7ff7c6e6cfc0h, 7ff7c6e6cfceh][14] = {0f 1f 44 00 00 48 0f bf c1 f3 0f b8 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:32:489
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
