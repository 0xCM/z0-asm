; ulong f52<ulong>(ulong a, ulong b, ulong c)
; X52_g64u[7ff7c6b8c3b0h, 7ff7c6b8c3c5h][21] = {0f 1f 44 00 00 49 23 d0 48 8b c2 48 f7 d0 49 33 c8 48 23 c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:47:394
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh xor rcx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c8}
0011h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
