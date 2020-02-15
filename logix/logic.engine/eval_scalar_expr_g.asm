------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IExpr<byte> expr)
; eval_scalar_expr_g[8u]()[18] = {0f 1f 44 00 00 48 b8 08 58 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e5808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 58 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IExpr<sbyte> expr)
; eval_scalar_expr_g[8i]()[18] = {0f 1f 44 00 00 48 b8 a8 58 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e58a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 58 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IExpr<ushort> expr)
; eval_scalar_expr_g[16u]()[18] = {0f 1f 44 00 00 48 b8 38 59 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e5938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 59 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IExpr<short> expr)
; eval_scalar_expr_g[16i]()[18] = {0f 1f 44 00 00 48 b8 98 65 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e6598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 65 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IExpr<uint> expr)
; eval_scalar_expr_g[32u]()[18] = {0f 1f 44 00 00 48 b8 28 66 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e6628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 66 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IExpr<int> expr)
; eval_scalar_expr_g[32i]()[18] = {0f 1f 44 00 00 48 b8 b8 66 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e66b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 66 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IExpr<ulong> expr)
; eval_scalar_expr_g[64u]()[18] = {0f 1f 44 00 00 48 b8 48 67 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e6748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 67 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IExpr<long> expr)
; eval_scalar_expr_g[64i]()[18] = {0f 1f 44 00 00 48 b8 d8 67 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e67d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 67 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
