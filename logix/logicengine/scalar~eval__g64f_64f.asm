; LiteralExpr<double> eval<double>(IExpr<double> expr)
; scalar~eval__g64f_64f[7ff7c6d0fd80h, 7ff7c6d0fd92h][18] = {0f 1f 44 00 00 48 b8 88 f9 d0 c6 f7 7f 00 00 48 ff e0}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:51:334
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6d0f988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 f9 d0 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
