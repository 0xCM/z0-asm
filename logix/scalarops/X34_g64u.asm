; ulong f34<ulong>(ulong a, ulong b, ulong c)
; X34_g64u[7ff7c6ba1aa0h, 7ff7c6ba1ab5h][21] = {0f 1f 44 00 00 4c 23 c2 49 8b c0 48 f7 d0 48 33 d1 48 23 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:41:404
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and r8,rdx                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c2}
0008h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0011h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
