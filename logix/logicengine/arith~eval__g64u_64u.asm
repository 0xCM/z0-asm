; LiteralExpr<ulong> eval<ulong>(IArithmeticExpr<ulong> expr)
; arith~eval__g64u_64u[7ff7c6d10ec0h, 7ff7c6d10ed2h][18] = {0f 1f 44 00 00 48 b8 60 0c d1 c6 f7 7f 00 00 48 ff e0}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:51:396
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6d10c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 0c d1 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
