; LiteralExpr<byte> eval<byte>(IExpr<byte> expr)
; scalar~eval__g8u_8u[7ff7c6d0f890h, 7ff7c6d0f8a2h][18] = {0f 1f 44 00 00 48 b8 f8 f4 d0 c6 f7 7f 00 00 48 ff e0}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:51:319
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6d0f4f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 f4 d0 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
