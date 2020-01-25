; ulong fma(ulong x, ulong y, ulong z)
; fma_64u[7ff7c719c0a0h, 7ff7c719c0b0h][16] = {0f 1f 44 00 00 48 8b c1 48 0f af c2 49 03 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:56:661
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
