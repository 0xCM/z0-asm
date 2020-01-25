; ulong f55<ulong>(ulong a, ulong b, ulong c)
; X55_g64u[7ff7c6b8c850h, 7ff7c6b8c85ch][12] = {0f 1f 44 00 00 49 8b c0 48 f7 d0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:47:453
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
