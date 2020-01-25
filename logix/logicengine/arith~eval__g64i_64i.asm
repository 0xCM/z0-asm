; LiteralExpr<long> eval<long>(IArithmeticExpr<long> expr)
; arith~eval__g64i_64i[7ff7c6cf1f10h, 7ff7c6cf1f22h][18] = {0f 1f 44 00 00 48 b8 28 1b cf c6 f7 7f 00 00 48 ff e0}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 02:54:57:133
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6cf1b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1b cf c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
