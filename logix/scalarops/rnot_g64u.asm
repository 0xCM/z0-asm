; ulong rnot<ulong>(ulong a, ulong b)
; rnot_g64u[7ff7c6ca10e0h, 7ff7c6ca10ech][12] = {0f 1f 44 00 00 48 8b c2 48 f7 d0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:49:493
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
