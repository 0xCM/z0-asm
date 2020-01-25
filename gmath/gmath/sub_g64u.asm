; ulong sub<ulong>(ulong a, ulong b)
; sub_g64u[7ff7c71a37e0h, 7ff7c71a37ech][12] = {0f 1f 44 00 00 48 2b ca 48 8b c1 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:57:584
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h sub rcx,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b ca}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
