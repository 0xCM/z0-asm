; ulong xor(ulong a, ulong b)
; xor_64u[7ff7c71865c0h, 7ff7c71865cch][12] = {0f 1f 44 00 00 48 8b c1 48 33 c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:37:098
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
