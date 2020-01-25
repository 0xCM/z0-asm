; ulong f09<ulong>(ulong a, ulong b, ulong c)
; X09_g64u[7ff7c6ca61f0h, 7ff7c6ca6202h][18] = {0f 1f 44 00 00 49 33 d0 48 0b d1 48 8b c2 48 f7 d0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:50:243
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
0008h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
000bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000eh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
