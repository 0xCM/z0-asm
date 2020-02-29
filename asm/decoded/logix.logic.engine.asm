------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(ILogicExpr<byte> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[8u]()
; eval_logic_expr_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x31,0xdd,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dd3170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 31 dd c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(ILogicExpr<sbyte> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[8i]()
; eval_logic_expr_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x31,0xdd,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dd3170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 31 dd c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(ILogicExpr<ushort> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[16u]()
; eval_logic_expr_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x31,0xdd,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dd3170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 31 dd c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(ILogicExpr<short> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[16i]()
; eval_logic_expr_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x31,0xdd,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dd3170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 31 dd c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(ILogicExpr<uint> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[32u]()
; eval_logic_expr_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x31,0xdd,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dd3170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 31 dd c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(ILogicExpr<int> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[32i]()
; eval_logic_expr_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x31,0xdd,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dd3170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 31 dd c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ulong>(ILogicExpr<ulong> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[64u]()
; eval_logic_expr_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x31,0xdd,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dd3170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 31 dd c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(ILogicExpr<long> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[64i]()
; eval_logic_expr_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x31,0xdd,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dd3170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 31 dd c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IExpr<byte> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[8u]()
; eval_scalar_expr_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xf8,0x81,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86481f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 81 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IExpr<sbyte> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[8i]()
; eval_scalar_expr_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x28,0x82,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8648228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 82 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IExpr<ushort> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[16u]()
; eval_scalar_expr_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x48,0x82,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8648248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 82 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IExpr<short> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[16i]()
; eval_scalar_expr_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x68,0x82,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8648268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 82 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IExpr<uint> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[32u]()
; eval_scalar_expr_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x88,0x82,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8648288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 82 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IExpr<int> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[32i]()
; eval_scalar_expr_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xa8,0x82,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86482a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 82 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IExpr<ulong> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[64u]()
; eval_scalar_expr_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xc8,0x82,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86482c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 82 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IExpr<long> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[64i]()
; eval_scalar_expr_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0x82,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86482e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 82 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[8u]()
; eval_cmp_expr_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x20,0x5a,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8645a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 5a 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[8i]()
; eval_cmp_expr_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x00,0x5b,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8645b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 5b 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[16u]()
; eval_cmp_expr_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xb0,0x5b,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8645bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 5b 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[16i]()
; eval_cmp_expr_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x60,0x5c,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8645c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 5c 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[32u]()
; eval_cmp_expr_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x10,0x5d,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8645d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 5d 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[32i]()
; eval_cmp_expr_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xb0,0x5d,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8645db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 5d 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[64i]()
; eval_cmp_expr_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x50,0x5e,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8645e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 5e 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[8u]()
; eval_vcmp_expr128_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x60,0x67,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8646760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 67 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[8i]()
; eval_vcmp_expr128_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x50,0x6c,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8646c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 6c 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[16u]()
; eval_vcmp_expr128_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x30,0x6d,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8646d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 6d 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[16i]()
; eval_vcmp_expr128_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x10,0x6e,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8646e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 6e 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[32u]()
; eval_vcmp_expr128_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xf0,0x6e,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8646ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 6e 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[32i]()
; eval_vcmp_expr128_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe0,0x73,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86473e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 73 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[64i]()
; eval_vcmp_expr128_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xc0,0x74,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86474c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 74 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[8u]()
; eval_vcmp_expr256_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xa0,0x75,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86475a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 75 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IComparisonExpr<Vector256<sbyte>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[8i]()
; eval_vcmp_expr256_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xc0,0x7a,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8647ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 7a 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IComparisonExpr<Vector256<ushort>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[16u]()
; eval_vcmp_expr256_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xd0,0x7b,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8647bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 7b 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IComparisonExpr<Vector256<short>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[16i]()
; eval_vcmp_expr256_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe0,0x7c,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8647ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 7c 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IComparisonExpr<Vector256<uint>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[32u]()
; eval_vcmp_expr256_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xf0,0x7d,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8647df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 7d 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IComparisonExpr<Vector256<int>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[32i]()
; eval_vcmp_expr256_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x00,0x7f,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8647f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 7f 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IComparisonExpr<Vector256<long>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[64i]()
; eval_vcmp_expr256_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x20,0x84,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8648420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 84 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(IComparisonPred<byte> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[8u]()
; eval_cmp_pred_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x00,0x63,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8646300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 63 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(IComparisonPred<sbyte> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[8i]()
; eval_cmp_pred_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xa0,0x63,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86463a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 63 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(IComparisonPred<ushort> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[16u]()
; eval_cmp_pred_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x40,0x64,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8646440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 64 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(IComparisonPred<short> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[16i]()
; eval_cmp_pred_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe0,0x64,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86464e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 64 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(IComparisonPred<uint> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[32u]()
; eval_cmp_pred_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x80,0x65,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8646580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 65 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(IComparisonPred<int> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[32i]()
; eval_cmp_pred_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x20,0x66,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8646620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 66 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(IComparisonPred<long> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[64i]()
; eval_cmp_pred_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xc0,0x66,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86466c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 66 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IArithmeticExpr<byte> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[8u]()
; eval_arith_expr_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xc8,0x91,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86491c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 91 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IArithmeticExpr<sbyte> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[8i]()
; eval_arith_expr_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x18,0x92,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8649218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 92 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IArithmeticExpr<ushort> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[16u]()
; eval_arith_expr_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x58,0x92,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8649258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 92 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IArithmeticExpr<short> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[16i]()
; eval_arith_expr_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x98,0x92,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8649298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 92 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IArithmeticExpr<uint> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[32u]()
; eval_arith_expr_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xd8,0x92,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86492d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 92 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IArithmeticExpr<int> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[32i]()
; eval_arith_expr_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x18,0x93,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8649318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 93 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IArithmeticExpr<ulong> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[64u]()
; eval_arith_expr_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x58,0x93,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8649358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 93 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IArithmeticExpr<long> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[64i]()
; eval_arith_expr_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x98,0x93,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8649398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 93 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[8u]()
; eval_vector_expr128_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x90,0x62,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8646290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 62 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[8i]()
; eval_vector_expr128_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xd0,0x68,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86468d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 68 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[16u]()
; eval_vector_expr128_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xb8,0x69,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86469b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 69 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[16i]()
; eval_vector_expr128_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xa0,0x6a,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8646aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 6a 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[32u]()
; eval_vector_expr128_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x88,0x6b,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8646b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 6b 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[32i]()
; eval_vector_expr128_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x00,0x70,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8647000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 70 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[64u]()
; eval_vector_expr128_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x38,0x95,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8649538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 95 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[64i]()
; eval_vector_expr128_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0x70,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86470e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 70 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[8u]()
; eval_vector_expr256_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x18,0x73,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8647318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 73 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[8i]()
; eval_vector_expr256_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xf8,0x76,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86476f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 76 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[16u]()
; eval_vector_expr256_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe0,0x77,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86477e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 77 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[16i]()
; eval_vector_expr256_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xc8,0x78,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86478c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 78 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[32u]()
; eval_vector_expr256_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xb0,0x79,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86479b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 79 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[32i]()
; eval_vector_expr256_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x98,0x7a,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8647a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 7a 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[64u]()
; eval_vector_expr256_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xb8,0x99,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86499b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 99 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[64i]()
; eval_vector_expr256_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0x80,0x64,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86480e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 80 64 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<byte>(ComparisonExpr<byte> expr, byte a, byte b), hex://logix/logic.engine?satisfied#satisfied_g[8u](8u,8u)
; satisfied_g[8u](8u,8u)[86] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0x10,0xea,0x72,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xcd,0xcf,0xc1,0x5e,0x40,0x88,0x78,0x10,0x88,0x58,0x11,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x61,0xfc,0xff,0xff,0x48,0x8b,0xce,0xe8,0xf1,0xbb,0xff,0xff,0x0f,0xb6,0x40,0x08,0x0f,0xb6,0xc0,0x3c,0xff,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c772ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 72 c7 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd cf c1 5e}
0023h mov [rax+10h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 10}
0027h mov [rax+11h],bl                        ; MOV r/m8, r8 || 88 /r || encoded[3]{88 58 11}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0030h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0032h call 7ff7c8649a88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 fc ff ff}
0037h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ah call 7ff7c8645a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 bb ff ff}
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
; bit satisfied<sbyte>(ComparisonExpr<sbyte> expr, sbyte a, sbyte b), hex://logix/logic.engine?satisfied#satisfied_g[8i](8i,8i)
; satisfied_g[8i](8i,8i)[93] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0x98,0xf0,0x72,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x5d,0xcf,0xc1,0x5e,0x40,0x88,0x78,0x10,0x88,0x58,0x11,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xf9,0xfc,0xff,0xff,0x48,0x8b,0xce,0xe8,0x61,0xbc,0xff,0xff,0x48,0x0f,0xbe,0x40,0x08,0x48,0x0f,0xbe,0xc0,0x48,0x0f,0xbe,0xc0,0x83,0xf8,0x7f,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c772f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 72 c7 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d cf c1 5e}
0023h mov [rax+10h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 10}
0027h mov [rax+11h],bl                        ; MOV r/m8, r8 || 88 /r || encoded[3]{88 58 11}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0030h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0032h call 7ff7c8649b90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 fc ff ff}
0037h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ah call 7ff7c8645b00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 bc ff ff}
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
; bit satisfied<ushort>(ComparisonExpr<ushort> expr, ushort a, ushort b), hex://logix/logic.engine?satisfied#satisfied_g[16u](16u,16u)
; satisfied_g[16u](16u,16u)[93] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0xe0,0x35,0x1b,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xdd,0xce,0xc1,0x5e,0x66,0x89,0x78,0x10,0x66,0x89,0x58,0x12,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xe0,0xfc,0xff,0xff,0x48,0x8b,0xce,0xe8,0x90,0xbc,0xff,0xff,0x0f,0xb7,0x40,0x08,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0x3d,0xff,0xff,0x00,0x00,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c81b35e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 35 1b c8 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd ce c1 5e}
0023h mov [rax+10h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 10}
0027h mov [rax+12h],bx                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 58 12}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0031h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0033h call 7ff7c8649bf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 fc ff ff}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh call 7ff7c8645bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 bc ff ff}
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
; bit satisfied<short>(ComparisonExpr<short> expr, short a, short b), hex://logix/logic.engine?satisfied#satisfied_g[16i](16i,16i)
; satisfied_g[16i](16i,16i)[96] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0xd0,0xb5,0x3b,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x5d,0xca,0xc1,0x5e,0x66,0x89,0x78,0x10,0x66,0x89,0x58,0x12,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xf0,0xfb,0xff,0xff,0x48,0x8b,0xce,0xe8,0xc0,0xb8,0xff,0xff,0x48,0x0f,0xbf,0x40,0x08,0x48,0x0f,0xbf,0xc0,0x48,0x0f,0xbf,0xc0,0x3d,0xff,0x7f,0x00,0x00,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c83bb5d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 b5 3b c8 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d ca c1 5e}
0023h mov [rax+10h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 10}
0027h mov [rax+12h],bx                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 58 12}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0031h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0033h call 7ff7c8649f88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 fb ff ff}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh call 7ff7c8645c60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 b8 ff ff}
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
; bit satisfied<uint>(ComparisonExpr<uint> expr, uint a, uint b), hex://logix/logic.engine?satisfied#satisfied_g[32u](32u,32u)
; satisfied_g[32u](32u,32u)[82] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0x78,0x25,0x1b,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xdd,0xc9,0xc1,0x5e,0x89,0x78,0x10,0x89,0x58,0x14,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xca,0xfb,0xff,0xff,0x48,0x8b,0xce,0xe8,0xf2,0xb8,0xff,0xff,0x8b,0x40,0x08,0x83,0xf8,0xff,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c81b2578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 25 1b c8 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd c9 c1 5e}
0023h mov [rax+10h],edi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 10}
0026h mov [rax+14h],ebx                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 58 14}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
002fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0031h call 7ff7c8649fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fb ff ff}
0036h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0039h call 7ff7c8645d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 b8 ff ff}
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
; bit satisfied<int>(ComparisonExpr<int> expr, int a, int b), hex://logix/logic.engine?satisfied#satisfied_g[32i](32i,32i)
; satisfied_g[32i](32i,32i)[84] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0x48,0x5f,0x7f,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x6d,0xc9,0xc1,0x5e,0x89,0x78,0x10,0x89,0x58,0x14,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xb2,0xfb,0xff,0xff,0x48,0x8b,0xce,0xe8,0x22,0xb9,0xff,0xff,0x8b,0x40,0x08,0x3d,0xff,0xff,0xff,0x7f,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c77f5f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 7f c7 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d c9 c1 5e}
0023h mov [rax+10h],edi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 10}
0026h mov [rax+14h],ebx                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 58 14}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
002fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0031h call 7ff7c864a038h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 fb ff ff}
0036h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0039h call 7ff7c8645db0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 b9 ff ff}
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
; bit satisfied<ulong>(ComparisonExpr<ulong> expr, ulong a, ulong b), hex://logix/logic.engine?satisfied#satisfied_g[64u](64u,64u)
; satisfied_g[64u](64u,64u)[87] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x49,0x8b,0xd8,0x48,0xb9,0xd0,0x6e,0xac,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xfc,0xc8,0xc1,0x5e,0x48,0x89,0x78,0x10,0x48,0x89,0x58,0x18,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x97,0xfb,0xff,0xff,0x48,0x8b,0xce,0xe8,0xc7,0xfb,0xff,0xff,0x48,0x8b,0x40,0x08,0x48,0x83,0xf8,0xff,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000dh mov rbx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d8}
0010h mov rcx,7ff7c7ac6ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 6e ac c7 f7 7f 00 00}
001ah mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001fh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc c8 c1 5e}
0024h mov [rax+10h],rdi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 10}
0028h mov [rax+18h],rbx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 58 18}
002ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0032h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0034h call 7ff7c864a090h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 fb ff ff}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch call 7ff7c864a0c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 fb ff ff}
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
; bit satisfied<long>(ComparisonExpr<long> expr, long a, long b), hex://logix/logic.engine?satisfied#satisfied_g[64i](64i,64i)
; satisfied_g[64i](64i,64i)[96] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x49,0x8b,0xd8,0x48,0xb9,0x38,0xc4,0x3b,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x8c,0xc8,0xc1,0x5e,0x48,0x89,0x78,0x10,0x48,0x89,0x58,0x18,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xaf,0xfb,0xff,0xff,0x48,0x8b,0xce,0xe8,0xdf,0xb8,0xff,0xff,0x48,0x8b,0x40,0x08,0x48,0xba,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x7f,0x48,0x3b,0xc2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000dh mov rbx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d8}
0010h mov rcx,7ff7c83bc438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 c4 3b c8 f7 7f 00 00}
001ah mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001fh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c c8 c1 5e}
0024h mov [rax+10h],rdi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 10}
0028h mov [rax+18h],rbx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 58 18}
002ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0032h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0034h call 7ff7c864a118h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af fb ff ff}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch call 7ff7c8645e50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df b8 ff ff}
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
; bit satisfied<byte>(ComparisonExpr<Vector128<byte>> expr, Vector128<byte> a, Vector128<byte> b), hex://logix/logic.engine?satisfied#satisfied_g[8u](v128x8u,v128x8u)
; satisfied_g[8u](v128x8u,v128x8u)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0xa0,0x00,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x09,0xc4,0xc1,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x8a,0xf8,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x62,0xbd,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x74,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac00a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 00 ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 c4 c1 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864a280h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a f8 ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8646760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 bd ff ff}
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
; bit satisfied<sbyte>(ComparisonExpr<Vector128<sbyte>> expr, Vector128<sbyte> a, Vector128<sbyte> b), hex://logix/logic.engine?satisfied#satisfied_g[8i](v128x8i,v128x8i)
; satisfied_g[8i](v128x8i,v128x8i)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x50,0x08,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x69,0xc3,0xc1,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x72,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xb2,0xc1,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x74,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac0850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 08 ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 c3 c1 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864a608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8646c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 c1 ff ff}
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
; bit satisfied<ushort>(ComparisonExpr<Vector128<ushort>> expr, Vector128<ushort> a, Vector128<ushort> b), hex://logix/logic.engine?satisfied#satisfied_g[16u](v128x16u,v128x16u)
; satisfied_g[16u](v128x16u,v128x16u)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x90,0x0c,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xc9,0xc2,0xc1,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x62,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xf2,0xc1,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x75,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac0c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0c ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 c2 c1 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864a698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8646d30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 c1 ff ff}
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
; bit satisfied<short>(ComparisonExpr<Vector128<short>> expr, Vector128<short> a, Vector128<short> b), hex://logix/logic.engine?satisfied#satisfied_g[16i](v128x16i,v128x16i)
; satisfied_g[16i](v128x16i,v128x16i)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0xd0,0x10,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x29,0xc2,0xc1,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x52,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x32,0xc2,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x75,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac10d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 10 ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 c2 c1 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864a728h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8646e10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 c2 ff ff}
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
; bit satisfied<uint>(ComparisonExpr<Vector128<uint>> expr, Vector128<uint> a, Vector128<uint> b), hex://logix/logic.engine?satisfied#satisfied_g[32u](v128x32u,v128x32u)
; satisfied_g[32u](v128x32u,v128x32u)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x10,0x15,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x89,0xc1,0xc1,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x42,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x72,0xc2,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x76,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac1510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 15 ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 c1 c1 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864a7b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8646ef0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 c2 ff ff}
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
; bit satisfied<int>(ComparisonExpr<Vector128<int>> expr, Vector128<int> a, Vector128<int> b), hex://logix/logic.engine?satisfied#satisfied_g[32i](v128x32i,v128x32i)
; satisfied_g[32i](v128x32i,v128x32i)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x50,0x19,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xe9,0xc0,0xc1,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x32,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xc2,0xc6,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x76,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac1950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 19 ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 c0 c1 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864a848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c86473e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 c6 ff ff}
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
; bit satisfied<ulong>(ComparisonExpr<Vector128<ulong>> expr, Vector128<ulong> a, Vector128<ulong> b), hex://logix/logic.engine?satisfied#satisfied_g[64u](v128x64u,v128x64u)
; satisfied_g[64u](v128x64u,v128x64u)[115] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x78,0x1e,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x49,0xc0,0xc1,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x22,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xa2,0xfb,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc4,0xe2,0x71,0x29,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac1e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1e ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 c0 c1 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864a8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c864a960h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 fb ff ff}
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
; bit satisfied<long>(ComparisonExpr<Vector128<long>> expr, Vector128<long> a, Vector128<long> b), hex://logix/logic.engine?satisfied#satisfied_g[64i](v128x64i,v128x64i)
; satisfied_g[64i](v128x64i,v128x64i)[115] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x78,0x23,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xa9,0xbb,0xc1,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xe2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x62,0xc2,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc4,0xe2,0x71,0x29,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac2378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 23 ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 bb c1 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864ae38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c86474c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 c2 ff ff}
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
; bit satisfied<byte>(ComparisonExpr<Vector256<byte>> expr, Vector256<byte> a, Vector256<byte> b), hex://logix/logic.engine?satisfied#satisfied_g[8u](v256x8u,v256x8u)
; satisfied_g[8u](v256x8u,v256x8u)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x58,0x2d,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x09,0xbb,0xc1,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xaa,0xfc,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xa2,0xc2,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x74,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac2d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 2d ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 bb c1 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864afa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c86475a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 c2 ff ff}
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
; bit satisfied<sbyte>(ComparisonExpr<Vector256<sbyte>> expr, Vector256<sbyte> a, Vector256<sbyte> b), hex://logix/logic.engine?satisfied#satisfied_g[8i](v256x8i,v256x8i)
; satisfied_g[8i](v256x8i,v256x8i)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x08,0x35,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x69,0xba,0xc1,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x3a,0xfd,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x22,0xc7,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x74,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac3508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 35 ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 ba c1 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864b0d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a fd ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8647ac0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 c7 ff ff}
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
; bit satisfied<ushort>(ComparisonExpr<Vector256<ushort>> expr, Vector256<ushort> a, Vector256<ushort> b), hex://logix/logic.engine?satisfied#satisfied_g[16u](v256x16u,v256x16u)
; satisfied_g[16u](v256x16u,v256x16u)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x48,0x39,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xc9,0xb9,0xc1,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x2a,0xfd,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x92,0xc7,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x75,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac3948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 39 ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 b9 c1 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864b160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a fd ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8647bd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 c7 ff ff}
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
; bit satisfied<short>(ComparisonExpr<Vector256<short>> expr, Vector256<short> a, Vector256<short> b), hex://logix/logic.engine?satisfied#satisfied_g[16i](v256x16i,v256x16i)
; satisfied_g[16i](v256x16i,v256x16i)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x88,0x3d,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x29,0xb5,0xc1,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xe2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x02,0xc4,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x75,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac3d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 3d ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 b5 c1 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864b4b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8647ce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 c4 ff ff}
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
; bit satisfied<uint>(ComparisonExpr<Vector256<uint>> expr, Vector256<uint> a, Vector256<uint> b), hex://logix/logic.engine?satisfied#satisfied_g[32u](v256x32u,v256x32u)
; satisfied_g[32u](v256x32u,v256x32u)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0xc8,0x41,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x89,0xb4,0xc1,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x9a,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x72,0xc4,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x76,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac41c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 41 ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 b4 c1 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8647df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 c4 ff ff}
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
; bit satisfied<int>(ComparisonExpr<Vector256<int>> expr, Vector256<int> a, Vector256<int> b), hex://logix/logic.engine?satisfied#satisfied_g[32i](v256x32i,v256x32i)
; satisfied_g[32i](v256x32i,v256x32i)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x08,0x46,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xe9,0xb3,0xc1,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x7a,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xe2,0xc4,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x76,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac4608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 46 ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 b3 c1 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864b590h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8647f00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 c4 ff ff}
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
; bit satisfied<ulong>(ComparisonExpr<Vector256<ulong>> expr, Vector256<ulong> a, Vector256<ulong> b), hex://logix/logic.engine?satisfied#satisfied_g[64u](v256x64u,v256x64u)
; satisfied_g[64u](v256x64u,v256x64u)[118] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x30,0x4b,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x49,0xb3,0xc1,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x6a,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xea,0xfb,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc4,0xe2,0x75,0x29,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac4b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 4b ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 b3 c1 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864b620h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c864b6a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea fb ff ff}
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
; bit satisfied<long>(ComparisonExpr<Vector256<long>> expr, Vector256<long> a, Vector256<long> b), hex://logix/logic.engine?satisfied#satisfied_g[64i](v256x64i,v256x64i)
; satisfied_g[64i](v256x64i,v256x64i)[118] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x30,0x50,0xac,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xa9,0xb2,0xc1,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xa2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xc2,0xc8,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc4,0xe2,0x75,0x29,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8ac5030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 50 ac c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 b2 c1 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c864b6f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8648420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 c8 ff ff}
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
; bit eval(ILogicExpr expr), hex://logix/logic.engine?eval#eval_()
; eval_()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x31,0xdd,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dd3170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 31 dd c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied(ComparisonExpr expr, bit a, bit b), hex://logix/logic.engine?satisfied#satisfied_(1u,1u)
; satisfied_(1u,1u)[550] = {0x57,0x56,0x48,0x83,0xec,0x28,0x48,0x8b,0xf1,0x41,0x8b,0xf8,0x8b,0x0e,0x48,0x8b,0x4e,0x18,0x83,0x79,0x08,0x00,0x76,0x48,0x48,0x8b,0x49,0x10,0x49,0xbb,0x20,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x12,0x51,0xfe,0xfe,0x48,0x8b,0x4e,0x18,0x83,0x79,0x08,0x01,0x76,0x28,0x48,0x8b,0x49,0x18,0x8b,0xd7,0x49,0xbb,0x28,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0xf8,0x50,0xfe,0xfe,0x48,0x8b,0xce,0xe8,0x38,0x75,0x78,0xff,0x90,0x48,0x83,0xc4,0x28,0x5e,0x5f,0xc3,0xe8,0x8b,0x41,0xd4,0x5e,0xcc,0x00,0x00,0x19,0x06,0x03,0x00,0x06,0x42,0x02,0x60,0x01,0x70,0x00,0x00,0x40,0x00,0x00,0x00,0x20,0x29,0xab,0xc8,0xf7,0x7f,0x00,0x00,0x55,0x41,0x57,0x41,0x56,0x57,0x56,0x53,0x48,0x83,0xec,0x48,0x48,0x8d,0x6c,0x24,0x70,0x48,0x89,0x65,0xb8,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x48,0x8b,0x4e,0x10,0x48,0x8b,0x5f,0x10,0x41,0xbe,0xb6,0x00,0x00,0x00,0x41,0xbf,0x01,0x00,0x00,0x00,0x8b,0x49,0x08,0x3b,0x4b,0x08,0x0f,0x85,0xcb,0x00,0x00,0x00,0xe8,0x40,0x7d,0x78,0xff,0x48,0x8b,0xc8,0x49,0xbb,0x30,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x7b,0x50,0xfe,0xfe,0x48,0x89,0x45,0xc8,0x48,0x8b,0x4d,0xc8,0x49,0xbb,0x38,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x69,0x50,0xfe,0xfe,0x85,0xc0,0x74,0x51,0x48,0x8b,0x4d,0xc8,0x49,0xbb,0x40,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x57,0x50,0xfe,0xfe,0x48,0x8b,0xd0,0x48,0x8b,0xce,0xe8,0xcc,0x8a,0x78,0xff,0x48,0x8b,0xce,0xe8,0x74,0x74,0x78,0xff,0x8b,0xd8,0x48,0x8b,0xcf,0xe8,0x6a,0x74,0x78,0xff,0x3b,0xd8,0x75,0x32,0x48,0x8b,0x4d,0xc8,0x49,0xbb,0x38,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x18,0x50,0xfe,0xfe,0x85,0xc0,0x75,0xaf,0x48,0x8b,0x4d,0xc8,0x49,0xbb,0x48,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x0e,0x50,0xfe,0xfe,0xeb,0x18,0x48,0x8b,0xcc,0xe8,0x7e,0x00,0x00,0x00,0x90,0x33,0xc0,0x48,0x8d,0x65,0xd8,0x5b,0x5e,0x5f,0x41,0x5e,0x41,0x5f,0x5d,0xc3,0xb8,0x01,0x00,0x00,0x00,0x48,0x8d,0x65,0xd8,0x5b,0x5e,0x5f,0x41,0x5e,0x41,0x5f,0x5d,0xc3,0x8b,0xf1,0x8b,0x7b,0x08,0xb9,0x19,0x02,0x00,0x00,0x48,0xba,0xe8,0xb7,0xad,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x31,0x48,0xd4,0x5e,0x48,0x8b,0xd8,0xb9,0x25,0x02,0x00,0x00,0x48,0xba,0xe8,0xb7,0xad,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x1a,0x48,0xd4,0x5e,0x4c,0x8b,0xc8,0x4c,0x8d,0x45,0xd0,0x45,0x88,0x38,0x45,0x89,0x70,0x04,0x4c,0x8b,0xc3,0x8b,0xce,0x8b,0xd7,0x48,0x8b,0x45,0xd0,0x48,0x89,0x44,0x24,0x20,0xe8,0xc7,0x90,0x11,0xff,0x48,0x8b,0xc8,0xe8,0x3f,0xfb,0xb8,0x5e,0xcc,0x55,0x41,0x57,0x41,0x56,0x57,0x56,0x53,0x48,0x83,0xec,0x38,0x48,0x8b,0x69,0x28,0x48,0x89,0x6c,0x24,0x28,0x48,0x8d,0x6d,0x70,0x48,0x83,0x7d,0xc8,0x00,0x74,0x16,0x48,0x8b,0x4d,0xc8,0x49,0xbb,0x48,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x50,0x4f,0xfe,0xfe,0x90,0x48,0x83,0xc4,0x38,0x5b,0x5e,0x5f,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_Zx3
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
001ch mov r11,7ff7c7630d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0d 63 c7 f7 7f 00 00}
0026h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0028h call qword ptr [rip-101aeeeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 12 51 fe fe}
002eh mov rcx,[rsi+18h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4e 18}
0032h cmp dword ptr [rcx+8],1                 ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{83 79 08 01}
0036h jbe short 0060h                         ; JBE rel8 || 76 cb || encoded[2]{76 28}
0038h mov rcx,[rcx+18h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 49 18}
003ch mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
003eh mov r11,7ff7c7630d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0d 63 c7 f7 7f 00 00}
0048h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004ah call qword ptr [rip-101af08h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f8 50 fe fe}
0050h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0053h call 7ff7c7dd3170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 75 78 ff}
0058h nop                                     ; NOP || o32 90 || encoded[1]{90}
0059h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
0060h call 7ff82738fdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 41 d4 5e}
0065h int 3                                   ; INT3 || CC || encoded[1]{cc}
0066h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0068h sbb [rsi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 06}
006ah add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
006ch (bad)                                   ; <invalid> || <invalid> || encoded[2]{06 42}
006eh add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0071h jo short 0073h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0073h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 40 00}
0076h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0078h and [rcx],ch                            ; AND r/m8, r8 || 20 /r || encoded[2]{20 29}
007ah stosd                                   ; STOSD || o32 AB || encoded[1]{ab}
007bh enter 7ff7h,0                           ; ENTER imm16, imm8 || C8 iw ib || encoded[4]{c8 f7 7f 00}
007fh add [rbp+41h],dl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 55 41}
0082h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0083h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0085h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0086h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0087h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0088h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
008ch lea rbp,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 6c 24 70}
0091h mov [rbp-48h],rsp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 65 b8}
0095h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0098h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
009bh mov rcx,[rsi+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4e 10}
009fh mov rbx,[rdi+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 5f 10}
00a3h mov r14d,0b6h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 be b6 00 00 00}
00a9h mov r15d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bf 01 00 00 00}
00afh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
00b2h cmp ecx,[rbx+8]                         ; CMP r32, r/m32 || o32 3B /r || encoded[3]{3b 4b 08}
00b5h jne near ptr 0186h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 cb 00 00 00}
00bbh call 7ff7c7dd39e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 7d 78 ff}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h mov r11,7ff7c7630d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0d 63 c7 f7 7f 00 00}
00cdh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cfh call qword ptr [rip-101af85h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7b 50 fe fe}
00d5h mov [rbp-38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 c8}
00d9h mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
00ddh mov r11,7ff7c7630d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0d 63 c7 f7 7f 00 00}
00e7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e9h call qword ptr [rip-101af97h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 69 50 fe fe}
00efh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00f1h je short 0144h                          ; JE rel8 || 74 cb || encoded[2]{74 51}
00f3h mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
00f7h mov r11,7ff7c7630d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0d 63 c7 f7 7f 00 00}
0101h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0103h call qword ptr [rip-101afa9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 57 50 fe fe}
0109h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
010ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010fh call 7ff7c7dd47c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 8a 78 ff}
0114h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0117h call 7ff7c7dd3170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 74 78 ff}
011ch mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
011eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0121h call 7ff7c7dd3170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 74 78 ff}
0126h cmp ebx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d8}
0128h jne short 015ch                         ; JNE rel8 || 75 cb || encoded[2]{75 32}
012ah mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
012eh mov r11,7ff7c7630d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0d 63 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-101afe8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 18 50 fe fe}
0140h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0142h jne short 00f3h                         ; JNE rel8 || 75 cb || encoded[2]{75 af}
0144h mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
0148h mov r11,7ff7c7630d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0d 63 c7 f7 7f 00 00}
0152h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0154h call qword ptr [rip-101aff2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0e 50 fe fe}
015ah jmp short 0174h                         ; JMP rel8 || EB cb || encoded[2]{eb 18}
015ch mov rcx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cc}
015fh call 7ff7c864bdc2h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 00 00 00}
0164h nop                                     ; NOP || o32 90 || encoded[1]{90}
0165h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0167h lea rsp,[rbp-28h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 d8}
016bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
016ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
016dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
016eh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0170h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0172h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0173h ret                                     ; RET || C3 || encoded[1]{c3}
0174h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0179h lea rsp,[rbp-28h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 d8}
017dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
017eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
017fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0180h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0182h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0184h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0185h ret                                     ; RET || C3 || encoded[1]{c3}
0186h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0188h mov edi,[rbx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 7b 08}
018bh mov ecx,219h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 19 02 00 00}
0190h mov rdx,7ff7c7adb7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba e8 b7 ad c7 f7 7f 00 00}
019ah call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 48 d4 5e}
019fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01a2h mov ecx,225h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 25 02 00 00}
01a7h mov rdx,7ff7c7adb7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba e8 b7 ad c7 f7 7f 00 00}
01b1h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 48 d4 5e}
01b6h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
01b9h lea r8,[rbp-30h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 45 d0}
01bdh mov [r8],r15b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 38}
01c0h mov [r8+4],r14d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 70 04}
01c4h mov r8,rbx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c3}
01c7h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
01c9h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
01cbh mov rax,[rbp-30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 d0}
01cfh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
01d4h call 7ff7c7764e80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 90 11 ff}
01d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01dch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f fb b8 5e}
01e1h int 3                                   ; INT3 || CC || encoded[1]{cc}
01e2h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
01e3h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
01e5h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
01e7h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
01e8h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
01e9h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
01eah sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
01eeh mov rbp,[rcx+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 69 28}
01f2h mov [rsp+28h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 28}
01f7h lea rbp,[rbp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 6d 70}
01fbh cmp qword ptr [rbp-38h],0               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[5]{48 83 7d c8 00}
0200h je short 0218h                          ; JE rel8 || 74 cb || encoded[2]{74 16}
0202h mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
0206h mov r11,7ff7c7630d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0d 63 c7 f7 7f 00 00}
0210h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0212h call qword ptr [rip-101b0b0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 4f fe fe}
0218h nop                                     ; NOP || o32 90 || encoded[1]{90}
0219h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
021dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
021eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
021fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0220h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0222h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0224h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0225h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit equal(VariedLogicExpr a, VariedLogicExpr b), hex://logix/logic.engine?equal#equal_()
; equal_()[422] = {0x55,0x41,0x57,0x41,0x56,0x57,0x56,0x53,0x48,0x83,0xec,0x48,0x48,0x8d,0x6c,0x24,0x70,0x48,0x89,0x65,0xb8,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x48,0x8b,0x4e,0x10,0x48,0x8b,0x5f,0x10,0x41,0xbe,0xb6,0x00,0x00,0x00,0x41,0xbf,0x01,0x00,0x00,0x00,0x8b,0x49,0x08,0x3b,0x4b,0x08,0x0f,0x85,0xcb,0x00,0x00,0x00,0xe8,0x40,0x7d,0x78,0xff,0x48,0x8b,0xc8,0x49,0xbb,0x30,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x7b,0x50,0xfe,0xfe,0x48,0x89,0x45,0xc8,0x48,0x8b,0x4d,0xc8,0x49,0xbb,0x38,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x69,0x50,0xfe,0xfe,0x85,0xc0,0x74,0x51,0x48,0x8b,0x4d,0xc8,0x49,0xbb,0x40,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x57,0x50,0xfe,0xfe,0x48,0x8b,0xd0,0x48,0x8b,0xce,0xe8,0xcc,0x8a,0x78,0xff,0x48,0x8b,0xce,0xe8,0x74,0x74,0x78,0xff,0x8b,0xd8,0x48,0x8b,0xcf,0xe8,0x6a,0x74,0x78,0xff,0x3b,0xd8,0x75,0x32,0x48,0x8b,0x4d,0xc8,0x49,0xbb,0x38,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x18,0x50,0xfe,0xfe,0x85,0xc0,0x75,0xaf,0x48,0x8b,0x4d,0xc8,0x49,0xbb,0x48,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x0e,0x50,0xfe,0xfe,0xeb,0x18,0x48,0x8b,0xcc,0xe8,0x7e,0x00,0x00,0x00,0x90,0x33,0xc0,0x48,0x8d,0x65,0xd8,0x5b,0x5e,0x5f,0x41,0x5e,0x41,0x5f,0x5d,0xc3,0xb8,0x01,0x00,0x00,0x00,0x48,0x8d,0x65,0xd8,0x5b,0x5e,0x5f,0x41,0x5e,0x41,0x5f,0x5d,0xc3,0x8b,0xf1,0x8b,0x7b,0x08,0xb9,0x19,0x02,0x00,0x00,0x48,0xba,0xe8,0xb7,0xad,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x31,0x48,0xd4,0x5e,0x48,0x8b,0xd8,0xb9,0x25,0x02,0x00,0x00,0x48,0xba,0xe8,0xb7,0xad,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x1a,0x48,0xd4,0x5e,0x4c,0x8b,0xc8,0x4c,0x8d,0x45,0xd0,0x45,0x88,0x38,0x45,0x89,0x70,0x04,0x4c,0x8b,0xc3,0x8b,0xce,0x8b,0xd7,0x48,0x8b,0x45,0xd0,0x48,0x89,0x44,0x24,0x20,0xe8,0xc7,0x90,0x11,0xff,0x48,0x8b,0xc8,0xe8,0x3f,0xfb,0xb8,0x5e,0xcc,0x55,0x41,0x57,0x41,0x56,0x57,0x56,0x53,0x48,0x83,0xec,0x38,0x48,0x8b,0x69,0x28,0x48,0x89,0x6c,0x24,0x28,0x48,0x8d,0x6d,0x70,0x48,0x83,0x7d,0xc8,0x00,0x74,0x16,0x48,0x8b,0x4d,0xc8,0x49,0xbb,0x48,0x0d,0x63,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x15,0x50,0x4f,0xfe,0xfe,0x90,0x48,0x83,0xc4,0x38,0x5b,0x5e,0x5f,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0023h mov r14d,0b6h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 be b6 00 00 00}
0029h mov r15d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bf 01 00 00 00}
002fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0032h cmp ecx,[rbx+8]                         ; CMP r32, r/m32 || o32 3B /r || encoded[3]{3b 4b 08}
0035h jne near ptr 0106h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 cb 00 00 00}
003bh call 7ff7c7dd39e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 7d 78 ff}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h mov r11,7ff7c7630d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0d 63 c7 f7 7f 00 00}
004dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
004fh call qword ptr [rip-101af85h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7b 50 fe fe}
0055h mov [rbp-38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 c8}
0059h mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
005dh mov r11,7ff7c7630d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0d 63 c7 f7 7f 00 00}
0067h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0069h call qword ptr [rip-101af97h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 69 50 fe fe}
006fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0071h je short 00c4h                          ; JE rel8 || 74 cb || encoded[2]{74 51}
0073h mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
0077h mov r11,7ff7c7630d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0d 63 c7 f7 7f 00 00}
0081h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0083h call qword ptr [rip-101afa9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 57 50 fe fe}
0089h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
008ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
008fh call 7ff7c7dd47c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 8a 78 ff}
0094h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0097h call 7ff7c7dd3170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 74 78 ff}
009ch mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
009eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a1h call 7ff7c7dd3170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 74 78 ff}
00a6h cmp ebx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d8}
00a8h jne short 00dch                         ; JNE rel8 || 75 cb || encoded[2]{75 32}
00aah mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
00aeh mov r11,7ff7c7630d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0d 63 c7 f7 7f 00 00}
00b8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bah call qword ptr [rip-101afe8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 18 50 fe fe}
00c0h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00c2h jne short 0073h                         ; JNE rel8 || 75 cb || encoded[2]{75 af}
00c4h mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
00c8h mov r11,7ff7c7630d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0d 63 c7 f7 7f 00 00}
00d2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d4h call qword ptr [rip-101aff2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0e 50 fe fe}
00dah jmp short 00f4h                         ; JMP rel8 || EB cb || encoded[2]{eb 18}
00dch mov rcx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cc}
00dfh call 7ff7c864bdc2h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 00 00 00}
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
0110h mov rdx,7ff7c7adb7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba e8 b7 ad c7 f7 7f 00 00}
011ah call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 48 d4 5e}
011fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0122h mov ecx,225h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 25 02 00 00}
0127h mov rdx,7ff7c7adb7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba e8 b7 ad c7 f7 7f 00 00}
0131h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 48 d4 5e}
0136h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
0139h lea r8,[rbp-30h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 45 d0}
013dh mov [r8],r15b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 38}
0140h mov [r8+4],r14d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 70 04}
0144h mov r8,rbx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c3}
0147h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0149h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
014bh mov rax,[rbp-30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 d0}
014fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0154h call 7ff7c7764e80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 90 11 ff}
0159h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f fb b8 5e}
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
0186h mov r11,7ff7c7630d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0d 63 c7 f7 7f 00 00}
0190h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0192h call qword ptr [rip-101b0b0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 4f fe fe}
0198h nop                                     ; NOP || o32 90 || encoded[1]{90}
0199h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
019dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
019eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
019fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a0h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
01a2h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
01a4h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a5h ret                                     ; RET || C3 || encoded[1]{c3}
