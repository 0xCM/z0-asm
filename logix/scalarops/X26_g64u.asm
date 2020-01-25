; ulong f26<ulong>(ulong a, ulong b, ulong c)
; X26_g64u[7ff7c6b903f0h, 7ff7c6b90405h][21] = {0f 1f 44 00 00 48 23 ca 48 8b c1 48 f7 d0 49 33 d0 48 23 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:355
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rcx,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 ca}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
0011h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
