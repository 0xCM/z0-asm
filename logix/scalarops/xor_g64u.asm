; ulong xor<ulong>(ulong a, ulong b)
; xor_g64u[7ff7c6ca0ba0h, 7ff7c6ca0bach][12] = {0f 1f 44 00 00 48 33 d1 48 8b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:49:445
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
