------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr)
; eval_vcmp_expr128_g[8u]()[18] = {0f 1f 44 00 00 48 b8 c8 6d 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e6dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 6d 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr)
; eval_vcmp_expr128_g[8i]()[18] = {0f 1f 44 00 00 48 b8 90 6e 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e6e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 6e 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr)
; eval_vcmp_expr128_g[16u]()[18] = {0f 1f 44 00 00 48 b8 70 70 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e7070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 70 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr)
; eval_vcmp_expr128_g[16i]()[18] = {0f 1f 44 00 00 48 b8 28 71 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e7128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 71 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr)
; eval_vcmp_expr128_g[32u]()[18] = {0f 1f 44 00 00 48 b8 e0 71 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e71e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 71 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr)
; eval_vcmp_expr128_g[32i]()[18] = {0f 1f 44 00 00 48 b8 98 72 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e7298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 72 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr)
; eval_vcmp_expr128_g[64i]()[18] = {0f 1f 44 00 00 48 b8 50 73 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e7350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 73 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
