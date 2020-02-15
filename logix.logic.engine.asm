------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(ILogicExpr<byte> expr)
; eval_logic_expr_g[8u]()[18] = {0f 1f 44 00 00 48 b8 00 23 51 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8512300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 23 51 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(ILogicExpr<sbyte> expr)
; eval_logic_expr_g[8i]()[18] = {0f 1f 44 00 00 48 b8 00 23 51 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8512300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 23 51 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(ILogicExpr<ushort> expr)
; eval_logic_expr_g[16u]()[18] = {0f 1f 44 00 00 48 b8 00 23 51 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8512300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 23 51 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(ILogicExpr<short> expr)
; eval_logic_expr_g[16i]()[18] = {0f 1f 44 00 00 48 b8 00 23 51 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8512300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 23 51 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(ILogicExpr<uint> expr)
; eval_logic_expr_g[32u]()[18] = {0f 1f 44 00 00 48 b8 00 23 51 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8512300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 23 51 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(ILogicExpr<int> expr)
; eval_logic_expr_g[32i]()[18] = {0f 1f 44 00 00 48 b8 00 23 51 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8512300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 23 51 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ulong>(ILogicExpr<ulong> expr)
; eval_logic_expr_g[64u]()[18] = {0f 1f 44 00 00 48 b8 00 23 51 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8512300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 23 51 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(ILogicExpr<long> expr)
; eval_logic_expr_g[64i]()[18] = {0f 1f 44 00 00 48 b8 00 23 51 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8512300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 23 51 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IExpr<byte> expr)
; eval_scalar_expr_g[8u]()[18] = {0f 1f 44 00 00 48 b8 58 6f 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8586f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 6f 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IExpr<sbyte> expr)
; eval_scalar_expr_g[8i]()[18] = {0f 1f 44 00 00 48 b8 98 6f 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8586f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 6f 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IExpr<ushort> expr)
; eval_scalar_expr_g[16u]()[18] = {0f 1f 44 00 00 48 b8 c8 85 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c85885c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 85 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IExpr<short> expr)
; eval_scalar_expr_g[16i]()[18] = {0f 1f 44 00 00 48 b8 58 86 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8588658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 86 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IExpr<uint> expr)
; eval_scalar_expr_g[32u]()[18] = {0f 1f 44 00 00 48 b8 e8 86 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c85886e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 86 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IExpr<int> expr)
; eval_scalar_expr_g[32i]()[18] = {0f 1f 44 00 00 48 b8 78 87 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8588778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 87 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IExpr<ulong> expr)
; eval_scalar_expr_g[64u]()[18] = {0f 1f 44 00 00 48 b8 08 88 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8588808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 88 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IExpr<long> expr)
; eval_scalar_expr_g[64i]()[18] = {0f 1f 44 00 00 48 b8 98 88 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8588898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 88 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_cmp_expr_g[8u]()[18] = {0f 1f 44 00 00 48 b8 f0 8a 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8588af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 8a 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_cmp_expr_g[8i]()[18] = {0f 1f 44 00 00 48 b8 48 8b 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8588b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 8b 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_cmp_expr_g[16u]()[18] = {0f 1f 44 00 00 48 b8 90 8b 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8588b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 8b 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_cmp_expr_g[16i]()[18] = {0f 1f 44 00 00 48 b8 d8 8b 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8588bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 8b 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_cmp_expr_g[32u]()[18] = {0f 1f 44 00 00 48 b8 20 8c 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8588c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 8c 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_cmp_expr_g[32i]()[18] = {0f 1f 44 00 00 48 b8 68 8c 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8588c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 8c 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_cmp_expr_g[64i]()[18] = {0f 1f 44 00 00 48 b8 b0 8c 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8588cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 8c 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr)
; eval_vcmp_expr128_g[8u]()[18] = {0f 1f 44 00 00 48 b8 d0 8f 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8588fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 8f 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr)
; eval_vcmp_expr128_g[8i]()[18] = {0f 1f 44 00 00 48 b8 98 90 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 90 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr)
; eval_vcmp_expr128_g[16u]()[18] = {0f 1f 44 00 00 48 b8 50 91 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 91 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr)
; eval_vcmp_expr128_g[16i]()[18] = {0f 1f 44 00 00 48 b8 08 92 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 92 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr)
; eval_vcmp_expr128_g[32u]()[18] = {0f 1f 44 00 00 48 b8 c0 92 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c85892c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 92 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr)
; eval_vcmp_expr128_g[32i]()[18] = {0f 1f 44 00 00 48 b8 78 93 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 93 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr)
; eval_vcmp_expr128_g[64i]()[18] = {0f 1f 44 00 00 48 b8 50 95 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 95 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr)
; eval_vcmp_expr256_g[8u]()[18] = {0f 1f 44 00 00 48 b8 20 97 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 97 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IComparisonExpr<Vector256<sbyte>> expr)
; eval_vcmp_expr256_g[8i]()[18] = {0f 1f 44 00 00 48 b8 e8 97 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c85897e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 97 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IComparisonExpr<Vector256<ushort>> expr)
; eval_vcmp_expr256_g[16u]()[18] = {0f 1f 44 00 00 48 b8 a0 98 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c85898a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 98 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IComparisonExpr<Vector256<short>> expr)
; eval_vcmp_expr256_g[16i]()[18] = {0f 1f 44 00 00 48 b8 20 9a 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 9a 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IComparisonExpr<Vector256<uint>> expr)
; eval_vcmp_expr256_g[32u]()[18] = {0f 1f 44 00 00 48 b8 d8 9a 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 9a 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IComparisonExpr<Vector256<int>> expr)
; eval_vcmp_expr256_g[32i]()[18] = {0f 1f 44 00 00 48 b8 90 9b 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 9b 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IComparisonExpr<Vector256<long>> expr)
; eval_vcmp_expr256_g[64i]()[18] = {0f 1f 44 00 00 48 b8 48 9c 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 9c 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(IComparisonPred<byte> expr)
; eval_cmp_pred_g[8u]()[18] = {0f 1f 44 00 00 48 b8 b8 9c 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 9c 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(IComparisonPred<sbyte> expr)
; eval_cmp_pred_g[8i]()[18] = {0f 1f 44 00 00 48 b8 e8 9c 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 9c 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(IComparisonPred<ushort> expr)
; eval_cmp_pred_g[16u]()[18] = {0f 1f 44 00 00 48 b8 08 9d 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 9d 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(IComparisonPred<short> expr)
; eval_cmp_pred_g[16i]()[18] = {0f 1f 44 00 00 48 b8 28 9d 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 9d 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(IComparisonPred<uint> expr)
; eval_cmp_pred_g[32u]()[18] = {0f 1f 44 00 00 48 b8 48 9d 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 9d 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(IComparisonPred<int> expr)
; eval_cmp_pred_g[32i]()[18] = {0f 1f 44 00 00 48 b8 68 9d 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 9d 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(IComparisonPred<long> expr)
; eval_cmp_pred_g[64i]()[18] = {0f 1f 44 00 00 48 b8 68 9f 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 9f 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IArithmeticExpr<byte> expr)
; eval_arith_expr_g[8u]()[18] = {0f 1f 44 00 00 48 b8 f8 9f 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8589ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 9f 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IArithmeticExpr<sbyte> expr)
; eval_arith_expr_g[8i]()[18] = {0f 1f 44 00 00 48 b8 68 a0 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 a0 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IArithmeticExpr<ushort> expr)
; eval_arith_expr_g[16u]()[18] = {0f 1f 44 00 00 48 b8 a8 a0 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 a0 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IArithmeticExpr<short> expr)
; eval_arith_expr_g[16i]()[18] = {0f 1f 44 00 00 48 b8 e8 a0 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 a0 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IArithmeticExpr<uint> expr)
; eval_arith_expr_g[32u]()[18] = {0f 1f 44 00 00 48 b8 28 a1 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 a1 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IArithmeticExpr<int> expr)
; eval_arith_expr_g[32i]()[18] = {0f 1f 44 00 00 48 b8 68 a1 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 a1 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IArithmeticExpr<ulong> expr)
; eval_arith_expr_g[64u]()[18] = {0f 1f 44 00 00 48 b8 a8 a1 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 a1 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IArithmeticExpr<long> expr)
; eval_arith_expr_g[64i]()[18] = {0f 1f 44 00 00 48 b8 e8 a1 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a1e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 a1 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_vector_expr128_g[8u]()[18] = {0f 1f 44 00 00 48 b8 18 a3 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 a3 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_vector_expr128_g[8i]()[18] = {0f 1f 44 00 00 48 b8 48 a3 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 a3 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_vector_expr128_g[16u]()[18] = {0f 1f 44 00 00 48 b8 78 a5 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 a5 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_vector_expr128_g[16i]()[18] = {0f 1f 44 00 00 48 b8 98 a5 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 a5 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_vector_expr128_g[32u]()[18] = {0f 1f 44 00 00 48 b8 b8 a5 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a5b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 a5 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_vector_expr128_g[32i]()[18] = {0f 1f 44 00 00 48 b8 d8 a5 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 a5 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr)
; eval_vector_expr128_g[64u]()[18] = {0f 1f 44 00 00 48 b8 68 a6 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 a6 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_vector_expr128_g[64i]()[18] = {0f 1f 44 00 00 48 b8 88 a6 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 a6 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_vector_expr256_g[8u]()[18] = {0f 1f 44 00 00 48 b8 98 a7 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 a7 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_vector_expr256_g[8i]()[18] = {0f 1f 44 00 00 48 b8 c8 a7 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 a7 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_vector_expr256_g[16u]()[18] = {0f 1f 44 00 00 48 b8 e8 a7 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 a7 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_vector_expr256_g[16i]()[18] = {0f 1f 44 00 00 48 b8 08 a8 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 a8 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_vector_expr256_g[32u]()[18] = {0f 1f 44 00 00 48 b8 28 a8 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 a8 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_vector_expr256_g[32i]()[18] = {0f 1f 44 00 00 48 b8 48 a8 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 a8 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr)
; eval_vector_expr256_g[64u]()[18] = {0f 1f 44 00 00 48 b8 d8 a8 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 a8 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_vector_expr256_g[64i]()[18] = {0f 1f 44 00 00 48 b8 f8 a8 58 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c858a8f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 a8 58 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<byte>(ComparisonExpr<byte> expr, byte a, byte b)
; satisfied_g[8u](8u,8u)[86] = {57 56 53 48 83 ec 20 48 8b f1 8b fa 41 8b d8 48 b9 10 ea 73 c7 f7 7f 00 00 ba 02 00 00 00 e8 9d bd cd 5e 40 88 78 10 88 58 11 48 8b ce 48 8b d0 39 09 e8 99 fc ff ff 48 8b ce e8 91 da ff ff 0f b6 40 08 0f b6 c0 3c ff 0f 94 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c773ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 73 c7 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d bd cd 5e}
0023h mov [rax+10h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 10}
0027h mov [rax+11h],bl                        ; MOV r/m8, r8 || 88 /r || encoded[3]{88 58 11}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0030h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0032h call 7ff7c858acf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 fc ff ff}
0037h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ah call 7ff7c8588af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 da ff ff}
003fh movzx eax,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 40 08}
0043h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0046h cmp al,0ffh                             ; CMP AL, imm8 || 3C ib || encoded[2]{3c ff}
0048h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
004bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004eh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<sbyte>(ComparisonExpr<sbyte> expr, sbyte a, sbyte b)
; satisfied_g[8i](8i,8i)[93] = {57 56 53 48 83 ec 20 48 8b f1 8b fa 41 8b d8 48 b9 98 f0 73 c7 f7 7f 00 00 ba 02 00 00 00 e8 2d bd cd 5e 40 88 78 10 88 58 11 48 8b ce 48 8b d0 39 09 e8 31 fd ff ff 48 8b ce e8 79 da ff ff 48 0f be 40 08 48 0f be c0 48 0f be c0 83 f8 7f 0f 94 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c773f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 73 c7 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d bd cd 5e}
0023h mov [rax+10h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 10}
0027h mov [rax+11h],bl                        ; MOV r/m8, r8 || 88 /r || encoded[3]{88 58 11}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0030h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0032h call 7ff7c858adf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 fd ff ff}
0037h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ah call 7ff7c8588b48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 da ff ff}
003fh movsx rax,byte ptr [rax+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 40 08}
0044h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0048h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
004ch cmp eax,7fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 7f}
004fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0052h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0055h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0059h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<ushort>(ComparisonExpr<ushort> expr, ushort a, ushort b)
; satisfied_g[16u](16u,16u)[93] = {57 56 53 48 83 ec 20 48 8b f1 8b fa 41 8b d8 48 b9 c8 5a cf c7 f7 7f 00 00 ba 02 00 00 00 e8 ad bc cd 5e 66 89 78 10 66 89 58 12 48 8b ce 48 8b d0 39 09 e8 18 fd ff ff 48 8b ce e8 40 da ff ff 0f b7 40 08 0f b7 c0 0f b7 c0 3d ff ff 00 00 0f 94 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c7cf5ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 5a cf c7 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad bc cd 5e}
0023h mov [rax+10h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 10}
0027h mov [rax+12h],bx                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 58 12}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0031h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0033h call 7ff7c858ae60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 fd ff ff}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh call 7ff7c8588b90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 da ff ff}
0040h movzx eax,word ptr [rax+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 40 08}
0044h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0047h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
004ah cmp eax,0ffffh                          ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d ff ff 00 00}
004fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0052h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0055h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0059h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<short>(ComparisonExpr<short> expr, short a, short b)
; satisfied_g[16i](16i,16i)[96] = {57 56 53 48 83 ec 20 48 8b f1 8b fa 41 8b d8 48 b9 70 df a0 c7 f7 7f 00 00 ba 02 00 00 00 e8 2d bc cd 5e 66 89 78 10 66 89 58 12 48 8b ce 48 8b d0 39 09 e8 00 fd ff ff 48 8b ce e8 08 da ff ff 48 0f bf 40 08 48 0f bf c0 48 0f bf c0 3d ff 7f 00 00 0f 94 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c7a0df70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 df a0 c7 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d bc cd 5e}
0023h mov [rax+10h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 10}
0027h mov [rax+12h],bx                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 58 12}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0031h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0033h call 7ff7c858aec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 fd ff ff}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh call 7ff7c8588bd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 da ff ff}
0040h movsx rax,word ptr [rax+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 40 08}
0045h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0049h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
004dh cmp eax,7fffh                           ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d ff 7f 00 00}
0052h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0055h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0058h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<uint>(ComparisonExpr<uint> expr, uint a, uint b)
; satisfied_g[32u](32u,32u)[82] = {57 56 53 48 83 ec 20 48 8b f1 8b fa 41 8b d8 48 b9 80 e3 a0 c7 f7 7f 00 00 ba 02 00 00 00 e8 ad bb cd 5e 89 78 10 89 58 14 48 8b ce 48 8b d0 39 09 e8 ea fc ff ff 48 8b ce e8 d2 d9 ff ff 8b 40 08 83 f8 ff 0f 94 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c7a0e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 a0 c7 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad bb cd 5e}
0023h mov [rax+10h],edi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 10}
0026h mov [rax+14h],ebx                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 58 14}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
002fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0031h call 7ff7c858af30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea fc ff ff}
0036h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0039h call 7ff7c8588c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 d9 ff ff}
003eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0041h cmp eax,0ffffffffh                      ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 ff}
0044h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0047h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<int>(ComparisonExpr<int> expr, int a, int b)
; satisfied_g[32i](32i,32i)[84] = {57 56 53 48 83 ec 20 48 8b f1 8b fa 41 8b d8 48 b9 48 5f 80 c7 f7 7f 00 00 ba 02 00 00 00 e8 3d bb cd 5e 89 78 10 89 58 14 48 8b ce 48 8b d0 39 09 e8 e2 fc ff ff 48 8b ce e8 aa d9 ff ff 8b 40 08 3d ff ff ff 7f 0f 94 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c7805f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 80 c7 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d bb cd 5e}
0023h mov [rax+10h],edi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 10}
0026h mov [rax+14h],ebx                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 58 14}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
002fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0031h call 7ff7c858af98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fc ff ff}
0036h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0039h call 7ff7c8588c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa d9 ff ff}
003eh mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0041h cmp eax,7fffffffh                       ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d ff ff ff 7f}
0046h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0049h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<ulong>(ComparisonExpr<ulong> expr, ulong a, ulong b)
; satisfied_g[64u](64u,64u)[87] = {57 56 53 48 83 ec 20 48 8b f1 48 8b fa 49 8b d8 48 b9 78 e1 a0 c7 f7 7f 00 00 ba 02 00 00 00 e8 bc b6 cd 5e 48 89 78 10 48 89 58 18 48 8b ce 48 8b d0 39 09 e8 e7 fb ff ff 48 8b ce e8 c7 f8 ff ff 48 8b 40 08 48 83 f8 ff 0f 94 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000dh mov rbx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d8}
0010h mov rcx,7ff7c7a0e178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e1 a0 c7 f7 7f 00 00}
001ah mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001fh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc b6 cd 5e}
0024h mov [rax+10h],rdi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 10}
0028h mov [rax+18h],rbx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 58 18}
002ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0032h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0034h call 7ff7c858b320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 fb ff ff}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch call 7ff7c858b008h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 f8 ff ff}
0041h mov rax,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 40 08}
0045h cmp rax,0ffffffffffffffffh              ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 ff}
0049h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
004ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<long>(ComparisonExpr<long> expr, long a, long b)
; satisfied_g[64i](64i,64i)[96] = {57 56 53 48 83 ec 20 48 8b f1 48 8b fa 49 8b d8 48 b9 b8 59 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 4c b6 cd 5e 48 89 78 10 48 89 58 18 48 8b ce 48 8b d0 39 09 e8 df fb ff ff 48 8b ce e8 ff d4 ff ff 48 8b 40 08 48 ba ff ff ff ff ff ff ff 7f 48 3b c2 0f 94 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000dh mov rbx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d8}
0010h mov rcx,7ff7c88659b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 59 86 c8 f7 7f 00 00}
001ah mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001fh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c b6 cd 5e}
0024h mov [rax+10h],rdi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 10}
0028h mov [rax+18h],rbx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 58 18}
002ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0032h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0034h call 7ff7c858b388h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df fb ff ff}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch call 7ff7c8588cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff d4 ff ff}
0041h mov rax,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 40 08}
0045h mov rdx,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff 7f}
004fh cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0052h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0055h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0058h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<byte>(ComparisonExpr<Vector128<byte>> expr, Vector128<byte> a, Vector128<byte> b)
; satisfied_g[8u](v128x8u,v128x8u)[114] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 78 63 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 c9 b5 cd 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 e2 fc ff ff 48 8b cb e8 92 d7 ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c5 f1 74 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8866378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 63 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 b5 cd 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858b518h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8588fd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 d7 ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqb xmm1,xmm1,xmm2                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f1 74 ca}
005fh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0070h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<sbyte>(ComparisonExpr<Vector128<sbyte>> expr, Vector128<sbyte> a, Vector128<sbyte> b)
; satisfied_g[8i](v128x8i,v128x8i)[114] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 28 6b 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 29 b5 cd 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 72 fd ff ff 48 8b cb e8 ba d7 ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c5 f1 74 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8866b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 6b 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 b5 cd 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858b648h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 fd ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8589098h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba d7 ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqb xmm1,xmm1,xmm2                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f1 74 ca}
005fh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0070h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<ushort>(ComparisonExpr<Vector128<ushort>> expr, Vector128<ushort> a, Vector128<ushort> b)
; satisfied_g[16u](v128x16u,v128x16u)[114] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 68 6f 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 89 b0 cd 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 e2 fb ff ff 48 8b cb e8 d2 d3 ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c5 f1 75 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8866f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 b0 cd 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858b958h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8589150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 d3 ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqw xmm1,xmm1,xmm2                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f1 75 ca}
005fh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0070h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<short>(ComparisonExpr<Vector128<short>> expr, Vector128<short> a, Vector128<short> b)
; satisfied_g[16i](v128x16i,v128x16i)[114] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 a8 73 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 e9 af cd 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 9a fb ff ff 48 8b cb e8 ea d3 ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c5 f1 75 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c88673a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 73 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 af cd 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858b9b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8589208h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea d3 ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqw xmm1,xmm1,xmm2                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f1 75 ca}
005fh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0070h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<uint>(ComparisonExpr<Vector128<uint>> expr, Vector128<uint> a, Vector128<uint> b)
; satisfied_g[32u](v128x32u,v128x32u)[114] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 e8 77 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 49 af cd 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 7a fb ff ff 48 8b cb e8 02 d4 ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c5 f1 76 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c88677e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 77 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 af cd 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858ba30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c85892c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 d4 ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqd xmm1,xmm1,xmm2                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 ca}
005fh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0070h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<int>(ComparisonExpr<Vector128<int>> expr, Vector128<int> a, Vector128<int> b)
; satisfied_g[32i](v128x32i,v128x32i)[114] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 28 7c 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 a9 ae cd 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 6a fb ff ff 48 8b cb e8 1a d4 ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c5 f1 76 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8867c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 7c 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 ae cd 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858bac0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8589378h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a d4 ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqd xmm1,xmm1,xmm2                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 ca}
005fh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0070h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<ulong>(ComparisonExpr<Vector128<ulong>> expr, Vector128<ulong> a, Vector128<ulong> b)
; satisfied_g[64u](v128x64u,v128x64u)[115] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 50 81 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 09 ae cd 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 5a fb ff ff 48 8b cb e8 da fb ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c4 e2 71 29 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8868150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 81 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 ae cd 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858bb50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c858bbd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da fb ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqq xmm1,xmm1,xmm2                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 71 29 ca}
0060h vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0065h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0068h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006bh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0070h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0071h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0072h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<long>(ComparisonExpr<Vector128<long>> expr, Vector128<long> a, Vector128<long> b)
; satisfied_g[64i](v128x64i,v128x64i)[115] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 50 86 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 69 ad cd 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 92 fb ff ff 48 8b cb e8 b2 d4 ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c4 e2 71 29 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8868650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 86 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 ad cd 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858bc28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8589550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 d4 ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqq xmm1,xmm1,xmm2                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 71 29 ca}
0060h vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0065h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0068h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006bh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0070h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0071h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0072h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<byte>(ComparisonExpr<Vector256<byte>> expr, Vector256<byte> a, Vector256<byte> b)
; satisfied_g[8u](v256x8u,v256x8u)[117] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 30 90 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 c9 a8 cd 5e c5 fd 10 06 c5 fd 11 40 10 c5 fd 10 07 c5 fd 11 40 30 48 8b cb 48 8b d0 39 09 e8 4a fc ff ff 48 8b cb e8 e2 d1 ff ff c5 fd 10 40 08 c5 f4 57 c9 c5 ec 57 d2 c5 f5 74 ca c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8869030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 a8 cd 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858c180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8589720h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 d1 ff ff}
004eh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0053h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0057h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
005bh vpcmpeqb ymm1,ymm1,ymm2                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 f5 74 ca}
005fh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<sbyte>(ComparisonExpr<Vector256<sbyte>> expr, Vector256<sbyte> a, Vector256<sbyte> b)
; satisfied_g[8i](v256x8i,v256x8i)[117] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 e0 97 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 29 a8 cd 5e c5 fd 10 06 c5 fd 11 40 10 c5 fd 10 07 c5 fd 11 40 30 48 8b cb 48 8b d0 39 09 e8 da fc ff ff 48 8b cb e8 0a d2 ff ff c5 fd 10 40 08 c5 f4 57 c9 c5 ec 57 d2 c5 f5 74 ca c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c88697e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 97 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 a8 cd 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858c2b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c85897e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a d2 ff ff}
004eh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0053h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0057h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
005bh vpcmpeqb ymm1,ymm1,ymm2                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 f5 74 ca}
005fh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<ushort>(ComparisonExpr<Vector256<ushort>> expr, Vector256<ushort> a, Vector256<ushort> b)
; satisfied_g[16u](v256x16u,v256x16u)[117] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 20 9c 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 89 a7 cd 5e c5 fd 10 06 c5 fd 11 40 10 c5 fd 10 07 c5 fd 11 40 30 48 8b cb 48 8b d0 39 09 e8 ca fc ff ff 48 8b cb e8 22 d2 ff ff c5 fd 10 40 08 c5 f4 57 c9 c5 ec 57 d2 c5 f5 75 ca c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8869c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 9c 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 a7 cd 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858c340h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c85898a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 d2 ff ff}
004eh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0053h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0057h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
005bh vpcmpeqw ymm1,ymm1,ymm2                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 ca}
005fh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<short>(ComparisonExpr<Vector256<short>> expr, Vector256<short> a, Vector256<short> b)
; satisfied_g[16i](v256x16i,v256x16i)[117] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 60 a0 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 e9 a6 cd 5e c5 fd 10 06 c5 fd 11 40 10 c5 fd 10 07 c5 fd 11 40 30 48 8b cb 48 8b d0 39 09 e8 ba fc ff ff 48 8b cb e8 02 d3 ff ff c5 fd 10 40 08 c5 f4 57 c9 c5 ec 57 d2 c5 f5 75 ca c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c886a060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 a0 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 a6 cd 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858c3d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8589a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 d3 ff ff}
004eh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0053h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0057h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
005bh vpcmpeqw ymm1,ymm1,ymm2                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 ca}
005fh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<uint>(ComparisonExpr<Vector256<uint>> expr, Vector256<uint> a, Vector256<uint> b)
; satisfied_g[32u](v256x32u,v256x32u)[117] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 a0 a4 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 49 a6 cd 5e c5 fd 10 06 c5 fd 11 40 10 c5 fd 10 07 c5 fd 11 40 30 48 8b cb 48 8b d0 39 09 e8 aa fc ff ff 48 8b cb e8 1a d3 ff ff c5 fd 10 40 08 c5 f4 57 c9 c5 ec 57 d2 c5 f5 76 ca c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c886a4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 a4 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 a6 cd 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858c460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8589ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a d3 ff ff}
004eh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0053h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0057h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
005bh vpcmpeqd ymm1,ymm1,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 ca}
005fh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<int>(ComparisonExpr<Vector256<int>> expr, Vector256<int> a, Vector256<int> b)
; satisfied_g[32i](v256x32i,v256x32i)[117] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 e0 a8 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 a9 a1 cd 5e c5 fd 10 06 c5 fd 11 40 10 c5 fd 10 07 c5 fd 11 40 30 48 8b cb 48 8b d0 39 09 e8 e2 fb ff ff 48 8b cb e8 32 cf ff ff c5 fd 10 40 08 c5 f4 57 c9 c5 ec 57 d2 c5 f5 76 ca c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c886a8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a8 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 a1 cd 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858c838h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8589b90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 cf ff ff}
004eh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0053h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0057h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
005bh vpcmpeqd ymm1,ymm1,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 ca}
005fh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<ulong>(ComparisonExpr<Vector256<ulong>> expr, Vector256<ulong> a, Vector256<ulong> b)
; satisfied_g[64u](v256x64u,v256x64u)[118] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 08 ae 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 09 a1 cd 5e c5 fd 10 06 c5 fd 11 40 10 c5 fd 10 07 c5 fd 11 40 30 48 8b cb 48 8b d0 39 09 e8 aa fb ff ff 48 8b cb e8 2a fc ff ff c5 fd 10 40 08 c5 f4 57 c9 c5 ec 57 d2 c4 e2 75 29 ca c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c886ae08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ae 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 a1 cd 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858c8a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c858c928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a fc ff ff}
004eh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0053h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0057h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
005bh vpcmpeqq ymm1,ymm1,ymm2                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 ca}
0060h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0065h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0068h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006eh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<long>(ComparisonExpr<Vector256<long>> expr, Vector256<long> a, Vector256<long> b)
; satisfied_g[64i](v256x64i,v256x64i)[118] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 08 b3 86 c8 f7 7f 00 00 ba 02 00 00 00 e8 69 a0 cd 5e c5 fd 10 06 c5 fd 11 40 10 c5 fd 10 07 c5 fd 11 40 30 48 8b cb 48 8b d0 39 09 e8 e2 fb ff ff 48 8b cb e8 aa ce ff ff c5 fd 10 40 08 c5 f4 57 c9 c5 ec 57 d2 c4 e2 75 29 ca c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c886b308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b3 86 c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 a0 cd 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c858c978h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8589c48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa ce ff ff}
004eh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0053h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0057h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
005bh vpcmpeqq ymm1,ymm1,ymm2                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 ca}
0060h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0065h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0068h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006eh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eval(ILogicExpr expr)
; eval_()[18] = {0f 1f 44 00 00 48 b8 00 23 51 c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8512300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 23 51 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied(ComparisonExpr expr, bit a, bit b)
; satisfied_(1u,1u)[121] = {57 56 48 83 ec 28 48 8b f1 41 8b f8 8b 0e 48 8b 4e 18 83 79 08 00 76 48 48 8b 49 10 49 bb 20 09 64 c7 f7 7f 00 00 39 09 ff 15 d2 3a 0b ff 48 8b 4e 18 83 79 08 01 76 28 48 8b 49 18 8b d7 49 bb 28 09 64 c7 f7 7f 00 00 39 09 ff 15 b8 3a 0b ff 48 8b ce e8 88 54 f8 ff 90 48 83 c4 28 5e 5f c3 e8 4b 2f e0 5e cc 00 00 19 06 03 00 06 42 02 60 01 70 00 00 40 00 00 00 02}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
000ch mov ecx,[rsi]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 0e}
000eh mov rcx,[rsi+18h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4e 18}
0012h cmp dword ptr [rcx+8],0                 ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{83 79 08 00}
0016h jbe short 0060h                         ; JBE rel8 || 76 cb || encoded[2]{76 48}
0018h mov rcx,[rcx+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 49 10}
001ch mov r11,7ff7c7640920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 09 64 c7 f7 7f 00 00}
0026h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0028h call qword ptr [rip-0f4c52eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 3a 0b ff}
002eh mov rcx,[rsi+18h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4e 18}
0032h cmp dword ptr [rcx+8],1                 ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{83 79 08 01}
0036h jbe short 0060h                         ; JBE rel8 || 76 cb || encoded[2]{76 28}
0038h mov rcx,[rcx+18h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 49 18}
003ch mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
003eh mov r11,7ff7c7640928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 09 64 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rip-0f4c548h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 3a 0b ff}
0050h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0053h call 7ff7c8512300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 54 f8 ff}
0058h nop                                     ; NOP || o32 90 || encoded[1]{90}
0059h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
0060h call 7ff82738fdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 2f e0 5e}
0065h int 3                                   ; INT3 || CC || encoded[1]{cc}
0066h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0068h sbb [rsi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 06}
006ah add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
006ch (bad)                                   ; <invalid> || <invalid> || encoded[2]{06 42}
006eh add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0071h jo short 0073h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0073h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 40 00}
0076h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0078h (bad)                                   ; <invalid> || <invalid> || encoded[1]{02}
------------------------------------------------------------------------------------------------------------------------
; bit equal(VariedLogicExpr a, VariedLogicExpr b)
; equal_()[422] = {55 41 57 41 56 57 56 53 48 83 ec 48 48 8d 6c 24 70 48 89 65 b8 48 8b f1 48 8b fa 48 8b 4e 10 48 8b 5f 10 41 be ac 00 00 00 41 bf 01 00 00 00 8b 49 08 3b 4b 08 0f 85 cb 00 00 00 e8 68 fe ff ff 48 8b c8 49 bb 30 09 64 c7 f7 7f 00 00 39 09 ff 15 2b 36 0b ff 48 89 45 c8 48 8b 4d c8 49 bb 38 09 64 c7 f7 7f 00 00 39 09 ff 15 19 36 0b ff 85 c0 74 51 48 8b 4d c8 49 bb 40 09 64 c7 f7 7f 00 00 39 09 ff 15 07 36 0b ff 48 8b d0 48 8b ce e8 24 f7 ff ff 48 8b ce e8 b4 4f f8 ff 8b d8 48 8b cf e8 aa 4f f8 ff 3b d8 75 32 48 8b 4d c8 49 bb 38 09 64 c7 f7 7f 00 00 39 09 ff 15 c8 35 0b ff 85 c0 75 af 48 8b 4d c8 49 bb 48 09 64 c7 f7 7f 00 00 39 09 ff 15 be 35 0b ff eb 18 48 8b cc e8 7e 00 00 00 90 33 c0 48 8d 65 d8 5b 5e 5f 41 5e 41 5f 5d c3 b8 01 00 00 00 48 8d 65 d8 5b 5e 5f 41 5e 41 5f 5d c3 8b f1 8b 7b 08 b9 19 02 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 e1 31 e0 5e 48 8b d8 b9 25 02 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 ca 31 e0 5e 4c 8b c8 4c 8d 45 d0 45 88 38 45 89 70 04 4c 8b c3 8b ce 8b d7 48 8b 45 d0 48 89 44 24 20 e8 2f 80 1e ff 48 8b c8 e8 ef e4 c4 5e cc 55 41 57 41 56 57 56 53 48 83 ec 38 48 8b 69 28 48 89 6c 24 28 48 8d 6d 70 48 83 7d c8 00 74 16 48 8b 4d c8 49 bb 48 09 64 c7 f7 7f 00 00 39 09 ff 15 00 35 0b ff 90 48 83 c4 38 5b 5e 5f 41 5e 41 5f 5d c3}
; TermCode = CTC_RET_Zx3
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0006h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
000ch lea rbp,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 6c 24 70}
0011h mov [rbp-48h],rsp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 65 b8}
0015h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0018h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
001bh mov rcx,[rsi+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4e 10}
001fh mov rbx,[rdi+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 5f 10}
0023h mov r14d,0ach                           ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 be ac 00 00 00}
0029h mov r15d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bf 01 00 00 00}
002fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0032h cmp ecx,[rbx+8]                         ; CMP r32, r/m32 || o32 3B /r || encoded[3]{3b 4b 08}
0035h jne near ptr 0106h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 cb 00 00 00}
003bh call 7ff7c858d158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 fe ff ff}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h mov r11,7ff7c7640930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 09 64 c7 f7 7f 00 00}
004dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004fh call qword ptr [rip-0f4c9d5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2b 36 0b ff}
0055h mov [rbp-38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 c8}
0059h mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
005dh mov r11,7ff7c7640938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 09 64 c7 f7 7f 00 00}
0067h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0069h call qword ptr [rip-0f4c9e7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 36 0b ff}
006fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0071h je short 00c4h                          ; JE rel8 || 74 cb || encoded[2]{74 51}
0073h mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
0077h mov r11,7ff7c7640940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 09 64 c7 f7 7f 00 00}
0081h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0083h call qword ptr [rip-0f4c9f9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 07 36 0b ff}
0089h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
008ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
008fh call 7ff7c858ca68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 f7 ff ff}
0094h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0097h call 7ff7c8512300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 4f f8 ff}
009ch mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
009eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a1h call 7ff7c8512300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 4f f8 ff}
00a6h cmp ebx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d8}
00a8h jne short 00dch                         ; JNE rel8 || 75 cb || encoded[2]{75 32}
00aah mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
00aeh mov r11,7ff7c7640938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 09 64 c7 f7 7f 00 00}
00b8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bah call qword ptr [rip-0f4ca38h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c8 35 0b ff}
00c0h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00c2h jne short 0073h                         ; JNE rel8 || 75 cb || encoded[2]{75 af}
00c4h mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
00c8h mov r11,7ff7c7640948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 09 64 c7 f7 7f 00 00}
00d2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d4h call qword ptr [rip-0f4ca42h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 be 35 0b ff}
00dah jmp short 00f4h                         ; JMP rel8 || EB cb || encoded[2]{eb 18}
00dch mov rcx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cc}
00dfh call 7ff7c858d412h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 00 00 00}
00e4h nop                                     ; NOP || o32 90 || encoded[1]{90}
00e5h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00e7h lea rsp,[rbp-28h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 d8}
00ebh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00ech pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00edh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00eeh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00f0h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00f2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00f3h ret                                     ; RET || C3 || encoded[1]{c3}
00f4h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
00f9h lea rsp,[rbp-28h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 d8}
00fdh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00feh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00ffh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0100h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0102h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0104h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0105h ret                                     ; RET || C3 || encoded[1]{c3}
0106h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0108h mov edi,[rbx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 7b 08}
010bh mov ecx,219h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 19 02 00 00}
0110h mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
011ah call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 31 e0 5e}
011fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0122h mov ecx,225h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 25 02 00 00}
0127h mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
0131h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 31 e0 5e}
0136h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
0139h lea r8,[rbp-30h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 45 d0}
013dh mov [r8],r15b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 38}
0140h mov [r8+4],r14d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 70 04}
0144h mov r8,rbx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c3}
0147h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0149h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
014bh mov rax,[rbp-30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 d0}
014fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0154h call 7ff7c7775438h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 80 1e ff}
0159h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef e4 c4 5e}
0161h int 3                                   ; INT3 || CC || encoded[1]{cc}
0162h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0163h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0165h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0167h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0168h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0169h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
016ah sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
016eh mov rbp,[rcx+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 69 28}
0172h mov [rsp+28h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 28}
0177h lea rbp,[rbp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 6d 70}
017bh cmp qword ptr [rbp-38h],0               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[5]{48 83 7d c8 00}
0180h je short 0198h                          ; JE rel8 || 74 cb || encoded[2]{74 16}
0182h mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
0186h mov r11,7ff7c7640948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 09 64 c7 f7 7f 00 00}
0190h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0192h call qword ptr [rip-0f4cb00h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 00 35 0b ff}
0198h nop                                     ; NOP || o32 90 || encoded[1]{90}
0199h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
019dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
019eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
019fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a0h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
01a2h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
01a4h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a5h ret                                     ; RET || C3 || encoded[1]{c3}
