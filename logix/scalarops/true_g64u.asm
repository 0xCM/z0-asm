; ulong true<ulong>(ulong a, ulong b, ulong c)
; true_g64u[7ff7c6b95e60h, 7ff7c6b95e70h][16] = {0f 1f 44 00 00 48 b8 ff ff ff ff ff ff ff ff c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:49:341
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
