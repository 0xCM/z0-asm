------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(ILogicExpr<byte> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[8u]()
; eval_logic_expr_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0xe0,0xdc,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dce0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 e0 dc c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(ILogicExpr<sbyte> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[8i]()
; eval_logic_expr_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0xe0,0xdc,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dce0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 e0 dc c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(ILogicExpr<ushort> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[16u]()
; eval_logic_expr_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0xe0,0xdc,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dce0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 e0 dc c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(ILogicExpr<short> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[16i]()
; eval_logic_expr_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0xe0,0xdc,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dce0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 e0 dc c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(ILogicExpr<uint> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[32u]()
; eval_logic_expr_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0xe0,0xdc,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dce0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 e0 dc c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(ILogicExpr<int> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[32i]()
; eval_logic_expr_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0xe0,0xdc,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dce0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 e0 dc c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ulong>(ILogicExpr<ulong> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[64u]()
; eval_logic_expr_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0xe0,0xdc,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dce0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 e0 dc c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(ILogicExpr<long> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[64i]()
; eval_logic_expr_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0xe0,0xdc,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dce0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 e0 dc c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IExpr<byte> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[8u]()
; eval_scalar_expr_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x10,0x92,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8629210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 92 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IExpr<sbyte> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[8i]()
; eval_scalar_expr_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x40,0x92,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8629240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 92 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IExpr<ushort> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[16u]()
; eval_scalar_expr_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x60,0x92,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8629260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 92 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IExpr<short> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[16i]()
; eval_scalar_expr_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x80,0x92,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8629280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 92 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IExpr<uint> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[32u]()
; eval_scalar_expr_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xa0,0x92,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86292a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 92 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IExpr<int> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[32i]()
; eval_scalar_expr_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xc0,0x92,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86292c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 92 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IExpr<ulong> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[64u]()
; eval_scalar_expr_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe0,0x92,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86292e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 92 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IExpr<long> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[64i]()
; eval_scalar_expr_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x00,0x93,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8629300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 93 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[8u]()
; eval_cmp_expr_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xb0,0x68,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86268b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 68 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[8i]()
; eval_cmp_expr_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xa0,0x69,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86269a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 69 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[16u]()
; eval_cmp_expr_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x60,0x6a,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8626a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 6a 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[16i]()
; eval_cmp_expr_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x20,0x6b,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8626b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 6b 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[32u]()
; eval_cmp_expr_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe0,0x6b,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8626be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 6b 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[32i]()
; eval_cmp_expr_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xa0,0x6c,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8626ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 6c 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[64i]()
; eval_cmp_expr_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x60,0x6d,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8626d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 6d 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[8u]()
; eval_vcmp_expr128_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xf0,0x76,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86276f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 76 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[8i]()
; eval_vcmp_expr128_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xf0,0x7b,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8627bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 7b 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[16u]()
; eval_vcmp_expr128_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe0,0x7c,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8627ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 7c 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[16i]()
; eval_vcmp_expr128_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xd0,0x7d,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8627dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 7d 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[32u]()
; eval_vcmp_expr128_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xc0,0x7e,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8627ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 7e 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[32i]()
; eval_vcmp_expr128_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xb0,0x7f,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8627fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 7f 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[64i]()
; eval_vcmp_expr128_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xb0,0x84,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86284b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 84 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[8u]()
; eval_vcmp_expr256_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xa0,0x85,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86285a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 85 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IComparisonExpr<Vector256<sbyte>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[8i]()
; eval_vcmp_expr256_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xd0,0x8a,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8628ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 8a 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IComparisonExpr<Vector256<ushort>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[16u]()
; eval_vcmp_expr256_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xf0,0x8b,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8628bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 8b 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IComparisonExpr<Vector256<short>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[16i]()
; eval_vcmp_expr256_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x10,0x8d,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8628d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 8d 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IComparisonExpr<Vector256<uint>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[32u]()
; eval_vcmp_expr256_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x30,0x8e,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8628e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 8e 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IComparisonExpr<Vector256<int>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[32i]()
; eval_vcmp_expr256_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x50,0x8f,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8628f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 8f 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IComparisonExpr<Vector256<long>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[64i]()
; eval_vcmp_expr256_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x80,0x94,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8629480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 94 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(IComparisonPred<byte> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[8u]()
; eval_cmp_pred_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x20,0x72,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8627220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 72 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(IComparisonPred<sbyte> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[8i]()
; eval_cmp_pred_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xd0,0x72,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86272d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 72 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(IComparisonPred<ushort> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[16u]()
; eval_cmp_pred_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x80,0x73,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8627380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 73 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(IComparisonPred<short> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[16i]()
; eval_cmp_pred_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x30,0x74,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8627430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 74 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(IComparisonPred<uint> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[32u]()
; eval_cmp_pred_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe0,0x74,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86274e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 74 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(IComparisonPred<int> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[32i]()
; eval_cmp_pred_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x90,0x75,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8627590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 75 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(IComparisonPred<long> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[64i]()
; eval_cmp_pred_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x40,0x76,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8627640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 76 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IArithmeticExpr<byte> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[8u]()
; eval_arith_expr_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0xa1,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c862a1e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 a1 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IArithmeticExpr<sbyte> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[8i]()
; eval_arith_expr_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x38,0xa2,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c862a238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 a2 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IArithmeticExpr<ushort> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[16u]()
; eval_arith_expr_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x78,0xa2,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c862a278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 a2 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IArithmeticExpr<short> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[16i]()
; eval_arith_expr_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xb8,0xa2,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c862a2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 a2 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IArithmeticExpr<uint> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[32u]()
; eval_arith_expr_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xf8,0xa2,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c862a2f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 a2 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IArithmeticExpr<int> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[32i]()
; eval_arith_expr_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x38,0xa3,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c862a338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 a3 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IArithmeticExpr<ulong> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[64u]()
; eval_arith_expr_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x78,0xa3,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c862a378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 a3 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IArithmeticExpr<long> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[64i]()
; eval_arith_expr_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xb8,0xa3,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c862a3b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 a3 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[8u]()
; eval_vector_expr128_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x68,0x71,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8627168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 71 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[8i]()
; eval_vector_expr128_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x28,0x78,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8627828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 78 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[16u]()
; eval_vector_expr128_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x10,0x79,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8627910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 79 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[16i]()
; eval_vector_expr128_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xf8,0x79,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86279f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 79 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[32u]()
; eval_vector_expr128_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe0,0x7a,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8627ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 7a 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[32i]()
; eval_vector_expr128_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xc8,0x7b,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8627bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 7b 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[64u]()
; eval_vector_expr128_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x58,0xa5,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c862a558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 a5 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[64i]()
; eval_vector_expr128_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x78,0x81,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8628178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 81 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[8u]()
; eval_vector_expr256_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xa8,0x83,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86283a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 83 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[8i]()
; eval_vector_expr256_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xc0,0x86,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86286c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 86 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[16u]()
; eval_vector_expr256_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xa8,0x87,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86287a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 87 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[16i]()
; eval_vector_expr256_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x90,0x88,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8628890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 88 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[32u]()
; eval_vector_expr256_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x78,0x89,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8628978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 89 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[32i]()
; eval_vector_expr256_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x60,0x8a,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8628a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 8a 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[64u]()
; eval_vector_expr256_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xd8,0xa9,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c862a9d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 a9 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[64i]()
; eval_vector_expr256_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x00,0x91,0x62,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8629100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 91 62 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<byte>(ComparisonExpr<byte> expr, byte a, byte b), hex://logix/logic.engine?satisfied#satisfied_g[8u](8u,8u)
; satisfied_g[8u](8u,8u)[86] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0x10,0xea,0x71,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x5d,0xbf,0xc3,0x5e,0x40,0x88,0x78,0x10,0x88,0x58,0x11,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x11,0xfc,0xff,0xff,0x48,0x8b,0xce,0xe8,0x11,0xba,0xff,0xff,0x0f,0xb6,0x40,0x08,0x0f,0xb6,0xc0,0x3c,0xff,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c771ea10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ea 71 c7 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d bf c3 5e}
0023h mov [rax+10h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 10}
0027h mov [rax+11h],bl                        ; MOV r/m8, r8 || 88 /r || encoded[3]{88 58 11}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0030h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0032h call 7ff7c862aaa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 fc ff ff}
0037h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ah call 7ff7c86268b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 ba ff ff}
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
; satisfied_g[8i](8i,8i)[93] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0x98,0xf0,0x71,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xed,0xbe,0xc3,0x5e,0x40,0x88,0x78,0x10,0x88,0x58,0x11,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xa9,0xfc,0xff,0xff,0x48,0x8b,0xce,0xe8,0x91,0xba,0xff,0xff,0x48,0x0f,0xbe,0x40,0x08,0x48,0x0f,0xbe,0xc0,0x48,0x0f,0xbe,0xc0,0x83,0xf8,0x7f,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c771f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 71 c7 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed be c3 5e}
0023h mov [rax+10h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 10}
0027h mov [rax+11h],bl                        ; MOV r/m8, r8 || 88 /r || encoded[3]{88 58 11}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0030h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0032h call 7ff7c862abb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 fc ff ff}
0037h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ah call 7ff7c86269a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 ba ff ff}
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
; satisfied_g[16u](16u,16u)[93] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0x90,0xc4,0x12,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x6d,0xbe,0xc3,0x5e,0x66,0x89,0x78,0x10,0x66,0x89,0x58,0x12,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x90,0xfc,0xff,0xff,0x48,0x8b,0xce,0xe8,0xd0,0xba,0xff,0xff,0x0f,0xb7,0x40,0x08,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0x3d,0xff,0xff,0x00,0x00,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c812c490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 c4 12 c8 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d be c3 5e}
0023h mov [rax+10h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 10}
0027h mov [rax+12h],bx                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 58 12}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0031h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0033h call 7ff7c862ac18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 fc ff ff}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh call 7ff7c8626a60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 ba ff ff}
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
; satisfied_g[16i](16i,16i)[96] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0x70,0x45,0x39,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xed,0xbd,0xc3,0x5e,0x66,0x89,0x78,0x10,0x66,0x89,0x58,0x12,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x78,0xfc,0xff,0xff,0x48,0x8b,0xce,0xe8,0x10,0xbb,0xff,0xff,0x48,0x0f,0xbf,0x40,0x08,0x48,0x0f,0xbf,0xc0,0x48,0x0f,0xbf,0xc0,0x3d,0xff,0x7f,0x00,0x00,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c8394570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 45 39 c8 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed bd c3 5e}
0023h mov [rax+10h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 10}
0027h mov [rax+12h],bx                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 58 12}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0031h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0033h call 7ff7c862ac80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 fc ff ff}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh call 7ff7c8626b20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 bb ff ff}
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
; satisfied_g[32u](32u,32u)[82] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0x28,0xb4,0x12,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x6d,0xb9,0xc3,0x5e,0x89,0x78,0x10,0x89,0x58,0x14,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xf2,0xfb,0xff,0xff,0x48,0x8b,0xce,0xe8,0x52,0xb7,0xff,0xff,0x8b,0x40,0x08,0x83,0xf8,0xff,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c812b428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 b4 12 c8 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d b9 c3 5e}
0023h mov [rax+10h],edi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 10}
0026h mov [rax+14h],ebx                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 58 14}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
002fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0031h call 7ff7c862b078h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 fb ff ff}
0036h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0039h call 7ff7c8626be0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 b7 ff ff}
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
; satisfied_g[32i](32i,32i)[84] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0x48,0x5f,0x7e,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xfd,0xb8,0xc3,0x5e,0x89,0x78,0x10,0x89,0x58,0x14,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xda,0xfb,0xff,0xff,0x48,0x8b,0xce,0xe8,0xa2,0xb7,0xff,0xff,0x8b,0x40,0x08,0x3d,0xff,0xff,0xff,0x7f,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c77e5f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 7e c7 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd b8 c3 5e}
0023h mov [rax+10h],edi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 10}
0026h mov [rax+14h],ebx                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 58 14}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
002fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0031h call 7ff7c862b0d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da fb ff ff}
0036h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0039h call 7ff7c8626ca0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 b7 ff ff}
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
; satisfied_g[64u](64u,64u)[87] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x49,0x8b,0xd8,0x48,0xb9,0x38,0xd6,0xba,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x8c,0xb8,0xc3,0x5e,0x48,0x89,0x78,0x10,0x48,0x89,0x58,0x18,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xbf,0xfb,0xff,0xff,0x48,0x8b,0xce,0xe8,0xef,0xfb,0xff,0xff,0x48,0x8b,0x40,0x08,0x48,0x83,0xf8,0xff,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000dh mov rbx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d8}
0010h mov rcx,7ff7c7bad638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 ba c7 f7 7f 00 00}
001ah mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001fh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c b8 c3 5e}
0024h mov [rax+10h],rdi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 10}
0028h mov [rax+18h],rbx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 58 18}
002ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0032h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0034h call 7ff7c862b128h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf fb ff ff}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch call 7ff7c862b160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef fb ff ff}
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
; satisfied_g[64i](64i,64i)[96] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x49,0x8b,0xd8,0x48,0xb9,0xf0,0x6d,0x39,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x1c,0xb8,0xc3,0x5e,0x48,0x89,0x78,0x10,0x48,0x89,0x58,0x18,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xd7,0xfb,0xff,0xff,0x48,0x8b,0xce,0xe8,0x7f,0xb7,0xff,0xff,0x48,0x8b,0x40,0x08,0x48,0xba,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x7f,0x48,0x3b,0xc2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000dh mov rbx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d8}
0010h mov rcx,7ff7c8396df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6d 39 c8 f7 7f 00 00}
001ah mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001fh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c b8 c3 5e}
0024h mov [rax+10h],rdi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 10}
0028h mov [rax+18h],rbx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 58 18}
002ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0032h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0034h call 7ff7c862b1b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 fb ff ff}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch call 7ff7c8626d60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f b7 ff ff}
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
; satisfied_g[8u](v128x8u,v128x8u)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x30,0x1a,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xb9,0xb0,0xc3,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xd2,0xf5,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xa2,0xb9,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x74,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aa1a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 1a aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 b0 c3 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862b318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 f5 ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c86276f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 b9 ff ff}
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
; satisfied_g[8i](v128x8i,v128x8i)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0xf8,0x7f,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x19,0xb0,0xc3,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xda,0xfc,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x02,0xbe,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x74,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aa7ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7f aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 b0 c3 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862bac0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8627bf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 be ff ff}
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
; satisfied_g[16u](v128x16u,v128x16u)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x38,0x84,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x79,0xaf,0xc3,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xca,0xfc,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x52,0xbe,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x75,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aa8438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 84 aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 af c3 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862bb50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8627ce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 be ff ff}
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
; satisfied_g[16i](v128x16i,v128x16i)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x78,0x88,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xd9,0xae,0xc3,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xba,0xfc,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xa2,0xbe,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x75,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aa8878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 88 aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 ae c3 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862bbe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8627dd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 be ff ff}
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
; satisfied_g[32u](v128x32u,v128x32u)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0xb8,0x8c,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x39,0xae,0xc3,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xaa,0xfc,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xf2,0xbe,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x76,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aa8cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 8c aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 ae c3 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862bc70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8627ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 be ff ff}
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
; satisfied_g[32i](v128x32i,v128x32i)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0xf8,0x90,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x99,0xa9,0xc3,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xe2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x42,0xbb,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x76,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aa90f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 90 aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 a9 c3 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862c048h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8627fb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 bb ff ff}
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
; satisfied_g[64u](v128x64u,v128x64u)[115] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x20,0x96,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xf9,0xa8,0xc3,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xc2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x32,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc4,0xe2,0x71,0x29,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aa9620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 a8 c3 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862c0c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c862c140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 fc ff ff}
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
; satisfied_g[64i](v128x64i,v128x64i)[115] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x20,0x9b,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x59,0xa8,0xc3,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xea,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x02,0xbf,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc4,0xe2,0x71,0x29,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aa9b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 9b aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 a8 c3 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862c190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c86284b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 bf ff ff}
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
; satisfied_g[8u](v256x8u,v256x8u)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x00,0xa5,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xb9,0xa7,0xc3,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xda,0xfc,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x52,0xbf,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x74,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aaa500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a5 aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 a7 c3 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862c320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c86285a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 bf ff ff}
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
; satisfied_g[8i](v256x8i,v256x8i)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0xb0,0xac,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x19,0xa3,0xc3,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xf2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xe2,0xbf,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x74,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aaacb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ac aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 a3 c3 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862c6d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8628ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 bf ff ff}
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
; satisfied_g[16u](v256x16u,v256x16u)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0xf0,0xb0,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x79,0xa2,0xc3,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xe2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x62,0xc0,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x75,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aab0f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 b0 aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 a2 c3 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862c768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8628bf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 c0 ff ff}
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
; satisfied_g[16i](v256x16i,v256x16i)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x30,0xb5,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xd9,0xa1,0xc3,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xd2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xe2,0xc0,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x75,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aab530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b5 aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 a1 c3 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862c7f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8628d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 c0 ff ff}
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
; satisfied_g[32u](v256x32u,v256x32u)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x70,0xb9,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x39,0xa1,0xc3,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xc2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x62,0xc1,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x76,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aab970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 b9 aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 a1 c3 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862c888h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8628e30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 c1 ff ff}
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
; satisfied_g[32i](v256x32i,v256x32i)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0xb0,0xbd,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x99,0xa0,0xc3,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xb2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xe2,0xc1,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x76,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aabdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bd aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 a0 c3 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862c918h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8628f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 c1 ff ff}
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
; satisfied_g[64u](v256x64u,v256x64u)[118] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0xd8,0xc2,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xf9,0x9f,0xc3,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xa2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x22,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc4,0xe2,0x75,0x29,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aac2d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c2 aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 9f c3 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862c9a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c862ca30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 fc ff ff}
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
; satisfied_g[64i](v256x64i,v256x64i)[118] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0xd8,0xc7,0xaa,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x59,0x9b,0xc3,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xe2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xd2,0xc1,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc4,0xe2,0x75,0x29,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8aac7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c7 aa c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 9b c3 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c862ce88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8629480h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 c1 ff ff}
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
; eval_()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0xe0,0xdc,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7dce0e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 e0 dc c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit equal(VariedLogicExpr a, VariedLogicExpr b), hex://logix/logic.engine?equal#equal_()
; equal_()[560] = {0x55,0x41,0x57,0x41,0x56,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x40,0x48,0x8d,0x6c,0x24,0x70,0x48,0x89,0x65,0xb8,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x48,0x8b,0x5e,0x10,0x48,0x8b,0x4f,0x10,0x48,0x85,0xc9,0x75,0x05,0x45,0x33,0xf6,0xeb,0x04,0x44,0x8b,0x71,0x08,0x41,0xbf,0xb7,0x00,0x00,0x00,0x41,0xbc,0x01,0x00,0x00,0x00,0x48,0x8b,0xcb,0x49,0xbb,0x48,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x48,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x41,0x3b,0xc6,0x0f,0x85,0x0a,0x01,0x00,0x00,0x48,0x8b,0xcb,0x49,0xbb,0x50,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x50,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xc8,0xe8,0xeb,0x14,0x7a,0xff,0x48,0x8b,0xc8,0x49,0xbb,0x28,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x28,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x89,0x45,0xc0,0x48,0x8b,0x4d,0xc0,0x49,0xbb,0x30,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x30,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x85,0xc0,0x74,0x5d,0x48,0x8b,0x4d,0xc0,0x49,0xbb,0x38,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x38,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xd0,0x48,0x8b,0xce,0xe8,0x85,0x22,0x7a,0xff,0x48,0x8b,0xce,0xe8,0x35,0x0c,0x7a,0xff,0x8b,0xd8,0x48,0x8b,0xcf,0xe8,0x2b,0x0c,0x7a,0xff,0x3b,0xd8,0x75,0x3e,0x48,0x8b,0x4d,0xc0,0x49,0xbb,0x30,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x30,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x85,0xc0,0x75,0xa3,0x48,0x8b,0x4d,0xc0,0x49,0xbb,0x40,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x40,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0xeb,0x1a,0x48,0x8b,0xcc,0xe8,0x9b,0x00,0x00,0x00,0x90,0x33,0xc0,0x48,0x8d,0x65,0xd0,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5e,0x41,0x5f,0x5d,0xc3,0xb8,0x01,0x00,0x00,0x00,0x48,0x8d,0x65,0xd0,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5e,0x41,0x5f,0x5d,0xc3,0x48,0x8b,0xcb,0x49,0xbb,0x58,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x58,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x8b,0xf0,0xb9,0x19,0x02,0x00,0x00,0x48,0xba,0x90,0x1b,0xc0,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x52,0x30,0xd6,0x5e,0x48,0x8b,0xf8,0xb9,0x25,0x02,0x00,0x00,0x48,0xba,0x90,0x1b,0xc0,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x3b,0x30,0xd6,0x5e,0x4c,0x8b,0xc8,0x4c,0x8d,0x45,0xc8,0x45,0x88,0x20,0x45,0x89,0x78,0x04,0x4c,0x8b,0xc7,0x8b,0xce,0x41,0x8b,0xd6,0x48,0x8b,0x45,0xc8,0x48,0x89,0x44,0x24,0x20,0xe8,0x2f,0x70,0x12,0xff,0x48,0x8b,0xc8,0xe8,0x5f,0xe3,0xba,0x5e,0xcc,0x55,0x41,0x57,0x41,0x56,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x30,0x48,0x8b,0x69,0x28,0x48,0x89,0x6c,0x24,0x28,0x48,0x8d,0x6d,0x70,0x48,0x83,0x7d,0xc0,0x00,0x74,0x1c,0x48,0x8b,0x4d,0xc0,0x49,0xbb,0x40,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x40,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x90,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_SBB
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0007h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0008h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0009h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ah sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
000eh lea rbp,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 6c 24 70}
0013h mov [rbp-48h],rsp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 65 b8}
0017h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001ah mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
001dh mov rbx,[rsi+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 5e 10}
0021h mov rcx,[rdi+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4f 10}
0025h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0028h jne short 002fh                         ; JNE rel8 || 75 cb || encoded[2]{75 05}
002ah xor r14d,r14d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 f6}
002dh jmp short 0033h                         ; JMP rel8 || EB cb || encoded[2]{eb 04}
002fh mov r14d,[rcx+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 71 08}
0033h mov r15d,0b7h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bf b7 00 00 00}
0039h mov r12d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bc 01 00 00 00}
003fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0042h mov r11,7ff7c7620e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0e 62 c7 f7 7f 00 00}
004ch mov rax,7ff7c7620e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 0e 62 c7 f7 7f 00 00}
0056h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0058h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
005ah cmp eax,r14d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c6}
005dh jne near ptr 016dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0a 01 00 00}
0063h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0066h mov r11,7ff7c7620e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0e 62 c7 f7 7f 00 00}
0070h mov rax,7ff7c7620e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 0e 62 c7 f7 7f 00 00}
007ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
007ch call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
007eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0080h call 7ff7c7dce930h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 14 7a ff}
0085h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0088h mov r11,7ff7c7620e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0e 62 c7 f7 7f 00 00}
0092h mov rax,7ff7c7620e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 0e 62 c7 f7 7f 00 00}
009ch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
009eh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00a0h mov [rbp-40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 c0}
00a4h mov rcx,[rbp-40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c0}
00a8h mov r11,7ff7c7620e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0e 62 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7620e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 0e 62 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00c2h je short 0121h                          ; JE rel8 || 74 cb || encoded[2]{74 5d}
00c4h mov rcx,[rbp-40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c0}
00c8h mov r11,7ff7c7620e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0e 62 c7 f7 7f 00 00}
00d2h mov rax,7ff7c7620e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 0e 62 c7 f7 7f 00 00}
00dch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00deh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00e3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00e6h call 7ff7c7dcf730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 22 7a ff}
00ebh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00eeh call 7ff7c7dce0e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 0c 7a ff}
00f3h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00f5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f8h call 7ff7c7dce0e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 0c 7a ff}
00fdh cmp ebx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d8}
00ffh jne short 013fh                         ; JNE rel8 || 75 cb || encoded[2]{75 3e}
0101h mov rcx,[rbp-40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c0}
0105h mov r11,7ff7c7620e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0e 62 c7 f7 7f 00 00}
010fh mov rax,7ff7c7620e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 0e 62 c7 f7 7f 00 00}
0119h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
011bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
011dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
011fh jne short 00c4h                         ; JNE rel8 || 75 cb || encoded[2]{75 a3}
0121h mov rcx,[rbp-40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c0}
0125h mov r11,7ff7c7620e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0e 62 c7 f7 7f 00 00}
012fh mov rax,7ff7c7620e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 0e 62 c7 f7 7f 00 00}
0139h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
013dh jmp short 0159h                         ; JMP rel8 || EB cb || encoded[2]{eb 1a}
013fh mov rcx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cc}
0142h call 7ff7c862d5a2h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 00 00 00}
0147h nop                                     ; NOP || o32 90 || encoded[1]{90}
0148h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
014ah lea rsp,[rbp-30h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 d0}
014eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
014fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0150h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0151h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0153h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0155h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0157h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0158h ret                                     ; RET || C3 || encoded[1]{c3}
0159h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
015eh lea rsp,[rbp-30h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 d0}
0162h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0163h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0164h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0165h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0167h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0169h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
016bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
016ch ret                                     ; RET || C3 || encoded[1]{c3}
016dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0170h mov r11,7ff7c7620e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0e 62 c7 f7 7f 00 00}
017ah mov rax,7ff7c7620e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 0e 62 c7 f7 7f 00 00}
0184h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0186h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0188h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
018ah mov ecx,219h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 19 02 00 00}
018fh mov rdx,7ff7c7c01b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 1b c0 c7 f7 7f 00 00}
0199h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 30 d6 5e}
019eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01a1h mov ecx,225h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 25 02 00 00}
01a6h mov rdx,7ff7c7c01b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 1b c0 c7 f7 7f 00 00}
01b0h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 30 d6 5e}
01b5h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
01b8h lea r8,[rbp-38h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 45 c8}
01bch mov [r8],r12b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 20}
01bfh mov [r8+4],r15d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 78 04}
01c3h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
01c6h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
01c8h mov edx,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d6}
01cbh mov rax,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 c8}
01cfh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
01d4h call 7ff7c77545c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 70 12 ff}
01d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01dch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f e3 ba 5e}
01e1h int 3                                   ; INT3 || CC || encoded[1]{cc}
01e2h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
01e3h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
01e5h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
01e7h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
01e9h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
01eah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
01ebh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
01ech sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
01f0h mov rbp,[rcx+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 69 28}
01f4h mov [rsp+28h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 28}
01f9h lea rbp,[rbp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 6d 70}
01fdh cmp qword ptr [rbp-40h],0               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[5]{48 83 7d c0 00}
0202h je short 0220h                          ; JE rel8 || 74 cb || encoded[2]{74 1c}
0204h mov rcx,[rbp-40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c0}
0208h mov r11,7ff7c7620e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0e 62 c7 f7 7f 00 00}
0212h mov rax,7ff7c7620e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 0e 62 c7 f7 7f 00 00}
021ch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021eh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0220h nop                                     ; NOP || o32 90 || encoded[1]{90}
0221h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0225h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0226h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0227h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0228h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
022ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
022ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
022eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
022fh ret                                     ; RET || C3 || encoded[1]{c3}
