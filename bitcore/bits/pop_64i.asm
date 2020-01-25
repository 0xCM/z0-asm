; uint pop(long src)
; pop_64i[7ff7c6e6d040h, 7ff7c6e6d04dh][13] = {0f 1f 44 00 00 33 c0 f3 48 0f b8 c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:32:500
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt rax,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
