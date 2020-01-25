; ulong altodd<ulong>()
; altodd__0o[7ff7c71a6a10h, 7ff7c71a6a20h][16] = {0f 1f 44 00 00 48 b8 55 55 55 55 55 55 55 55 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:58:201
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
