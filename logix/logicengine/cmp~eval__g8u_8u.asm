; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; cmp~eval__g8u_8u[7ff7c6d0fdb0h, 7ff7c6d0fdc2h][18] = {0f 1f 44 00 00 48 b8 68 fa d0 c6 f7 7f 00 00 48 ff e0}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:51:336
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6d0fa68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 fa d0 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
