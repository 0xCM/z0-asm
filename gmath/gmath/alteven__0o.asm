; ulong alteven<ulong>()
; alteven__0o[7ff7c71a6a90h, 7ff7c71a6aa0h][16] = {0f 1f 44 00 00 48 b8 aa aa aa aa aa aa aa aa c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:58:206
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0aaaaaaaaaaaaaaaah              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 aa aa aa aa aa aa aa aa}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
