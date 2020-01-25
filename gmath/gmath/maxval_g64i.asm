; long maxval<long>(long t)
; maxval_g64i[7ff7c7193b70h, 7ff7c7193b80h][16] = {0f 1f 44 00 00 48 b8 ff ff ff ff ff ff ff 7f c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:39:171
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
