; long fma<long>(long x, long y, long z)
; fma_g64i[7ff7c7194ea0h, 7ff7c7194eb0h][16] = {0f 1f 44 00 00 48 0f af d1 49 03 d0 48 8b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:39:258
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul rdx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af d1}
0009h add rdx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d0}
000ch mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
