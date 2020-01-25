; ulong add<ulong>(ulong a, ulong b)
; add_g64u[7ff7c7193000h, 7ff7c719300ch][12] = {0f 1f 44 00 00 48 03 d1 48 8b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:39:104
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
