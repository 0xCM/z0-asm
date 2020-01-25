; ulong f0b<ulong>(ulong a, ulong b, ulong c)
; X0B_g64u[7ff7c6ca6550h, 7ff7c6ca6565h][21] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 48 f7 d2 49 0b d0 48 23 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:50:266
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
000eh or rdx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d0}
0011h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
