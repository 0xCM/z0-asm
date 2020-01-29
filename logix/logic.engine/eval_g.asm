------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(ILogicExpr<byte> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 40 e6 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71ae640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(ILogicExpr<sbyte> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 40 e6 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71ae640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(ILogicExpr<ushort> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 40 e6 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71ae640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(ILogicExpr<short> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 40 e6 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71ae640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(ILogicExpr<uint> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 40 e6 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71ae640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(ILogicExpr<int> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 40 e6 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71ae640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ulong>(ILogicExpr<ulong> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 40 e6 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71ae640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(ILogicExpr<long> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 40 e6 1a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c71ae640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 1a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IExpr<byte> expr)
; eval_g8u[18] = {0f 1f 44 00 00 48 b8 b8 69 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72269b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 69 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IExpr<sbyte> expr)
; eval_g8i[18] = {0f 1f 44 00 00 48 b8 58 6a 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7226a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 6a 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IExpr<ushort> expr)
; eval_g16u[18] = {0f 1f 44 00 00 48 b8 e8 6a 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7226ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 6a 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IExpr<short> expr)
; eval_g16i[18] = {0f 1f 44 00 00 48 b8 18 6b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7226b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 6b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IExpr<uint> expr)
; eval_g32u[18] = {0f 1f 44 00 00 48 b8 08 7a 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7227a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 7a 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IExpr<int> expr)
; eval_g32i[18] = {0f 1f 44 00 00 48 b8 98 7a 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7227a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 7a 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IExpr<ulong> expr)
; eval_g64u[18] = {0f 1f 44 00 00 48 b8 28 7b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7227b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 7b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IExpr<long> expr)
; eval_g64i[18] = {0f 1f 44 00 00 48 b8 b8 7b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7227bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 7b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr)
; eval_g8u[18] = {0f 1f 44 00 00 48 b8 98 7c 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7227c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 7c 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr)
; eval_g8i[18] = {0f 1f 44 00 00 48 b8 f0 7c 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7227cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 7c 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr)
; eval_g16u[18] = {0f 1f 44 00 00 48 b8 38 7d 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7227d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 7d 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr)
; eval_g16i[18] = {0f 1f 44 00 00 48 b8 00 7f 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7227f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 7f 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr)
; eval_g32u[18] = {0f 1f 44 00 00 48 b8 48 7f 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7227f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 7f 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr)
; eval_g32i[18] = {0f 1f 44 00 00 48 b8 90 7f 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7227f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 7f 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr)
; eval_g64i[18] = {0f 1f 44 00 00 48 b8 d8 7f 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7227fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 7f 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 a8 81 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72281a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 81 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 70 82 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 82 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 48 84 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 84 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 00 85 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 85 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 b8 85 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72285b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 85 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 70 86 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 86 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 28 87 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 87 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 e8 89 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72289e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 89 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IComparisonExpr<Vector256<sbyte>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 b0 8a 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 8a 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IComparisonExpr<Vector256<ushort>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 68 8b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 8b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IComparisonExpr<Vector256<short>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 20 8c 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 8c 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IComparisonExpr<Vector256<uint>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 98 8d 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 8d 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IComparisonExpr<Vector256<int>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 50 8e 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 8e 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IComparisonExpr<Vector256<long>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 08 8f 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 8f 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(IComparisonPred<byte> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 50 8f 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 8f 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(IComparisonPred<sbyte> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 80 8f 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 8f 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(IComparisonPred<ushort> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 a0 8f 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 8f 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(IComparisonPred<short> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 c0 8f 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 8f 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(IComparisonPred<uint> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 e0 8f 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7228fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 8f 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(IComparisonPred<int> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 00 90 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 90 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(IComparisonPred<long> expr)
; eval_g[18] = {0f 1f 44 00 00 48 b8 20 90 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 90 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IArithmeticExpr<byte> expr)
; eval_g8u[18] = {0f 1f 44 00 00 48 b8 b0 90 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72290b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 90 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IArithmeticExpr<sbyte> expr)
; eval_g8i[18] = {0f 1f 44 00 00 48 b8 00 91 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 91 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IArithmeticExpr<ushort> expr)
; eval_g16u[18] = {0f 1f 44 00 00 48 b8 40 91 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 91 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IArithmeticExpr<short> expr)
; eval_g16i[18] = {0f 1f 44 00 00 48 b8 80 91 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 91 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IArithmeticExpr<uint> expr)
; eval_g32u[18] = {0f 1f 44 00 00 48 b8 38 94 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 94 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IArithmeticExpr<int> expr)
; eval_g32i[18] = {0f 1f 44 00 00 48 b8 78 94 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 94 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IArithmeticExpr<ulong> expr)
; eval_g64u[18] = {0f 1f 44 00 00 48 b8 b8 94 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72294b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 94 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IArithmeticExpr<long> expr)
; eval_g64i[18] = {0f 1f 44 00 00 48 b8 f8 94 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72294f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 94 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 28 96 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 96 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 58 96 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 96 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 78 96 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 96 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 98 96 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 96 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 b8 96 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72296b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 96 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 d8 96 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72296d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 96 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 68 97 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 97 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 88 97 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 97 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 08 9b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 9b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 38 9b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 9b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 58 9b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 9b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 78 9b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 9b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 98 9b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 9b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 b8 9b 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 9b 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 48 9c 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 9c 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_gVector256`1[18] = {0f 1f 44 00 00 48 b8 68 9c 22 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7229c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 9c 22 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
