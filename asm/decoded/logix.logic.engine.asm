------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(ILogicExpr<byte> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[8u]()
; eval_logic_expr_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x47,0xde,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7de4770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 47 de c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(ILogicExpr<sbyte> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[8i]()
; eval_logic_expr_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x47,0xde,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7de4770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 47 de c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(ILogicExpr<ushort> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[16u]()
; eval_logic_expr_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x47,0xde,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7de4770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 47 de c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(ILogicExpr<short> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[16i]()
; eval_logic_expr_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x47,0xde,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7de4770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 47 de c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(ILogicExpr<uint> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[32u]()
; eval_logic_expr_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x47,0xde,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7de4770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 47 de c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(ILogicExpr<int> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[32i]()
; eval_logic_expr_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x47,0xde,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7de4770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 47 de c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ulong>(ILogicExpr<ulong> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[64u]()
; eval_logic_expr_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x47,0xde,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7de4770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 47 de c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(ILogicExpr<long> expr), hex://logix/logic.engine?eval#eval_logic_expr_g[64i]()
; eval_logic_expr_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x47,0xde,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7de4770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 47 de c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IExpr<byte> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[8u]()
; eval_scalar_expr_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x78,0x2c,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 2c 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IExpr<sbyte> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[8i]()
; eval_scalar_expr_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xa8,0x2c,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 2c 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IExpr<ushort> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[16u]()
; eval_scalar_expr_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xc8,0x2c,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 2c 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IExpr<short> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[16i]()
; eval_scalar_expr_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0x2c,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 2c 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IExpr<uint> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[32u]()
; eval_scalar_expr_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x08,0x2d,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 2d 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IExpr<int> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[32i]()
; eval_scalar_expr_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x28,0x2d,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 2d 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IExpr<ulong> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[64u]()
; eval_scalar_expr_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x48,0x2d,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 2d 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IExpr<long> expr), hex://logix/logic.engine?eval#eval_scalar_expr_g[64i]()
; eval_scalar_expr_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x68,0x2d,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 2d 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IComparisonExpr<byte> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[8u]()
; eval_cmp_expr_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x00,0x03,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8670300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 03 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IComparisonExpr<sbyte> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[8i]()
; eval_cmp_expr_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xf0,0x03,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86703f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 03 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IComparisonExpr<ushort> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[16u]()
; eval_cmp_expr_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xb0,0x04,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86704b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 04 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IComparisonExpr<short> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[16i]()
; eval_cmp_expr_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x05,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8670570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 05 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IComparisonExpr<uint> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[32u]()
; eval_cmp_expr_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x30,0x06,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8670630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 06 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IComparisonExpr<int> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[32i]()
; eval_cmp_expr_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xf0,0x06,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86706f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 06 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IComparisonExpr<long> expr), hex://logix/logic.engine?eval#eval_cmp_expr_g[64i]()
; eval_cmp_expr_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xb0,0x07,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86707b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 07 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[8u]()
; eval_vcmp_expr128_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x40,0x11,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 11 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[8i]()
; eval_vcmp_expr128_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x40,0x16,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 16 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[16u]()
; eval_vcmp_expr128_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x30,0x17,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 17 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[16i]()
; eval_vcmp_expr128_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x20,0x18,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 18 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[32u]()
; eval_vcmp_expr128_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x10,0x19,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 19 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[32i]()
; eval_vcmp_expr128_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x10,0x1e,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1e 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr128_g[64i]()
; eval_vcmp_expr128_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x00,0x1f,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1f 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IComparisonExpr<Vector256<byte>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[8u]()
; eval_vcmp_expr256_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xf0,0x1f,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1f 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IComparisonExpr<Vector256<sbyte>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[8i]()
; eval_vcmp_expr256_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x20,0x25,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 25 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IComparisonExpr<Vector256<ushort>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[16u]()
; eval_vcmp_expr256_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x40,0x26,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 26 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IComparisonExpr<Vector256<short>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[16i]()
; eval_vcmp_expr256_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x60,0x27,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 27 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IComparisonExpr<Vector256<uint>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[32u]()
; eval_vcmp_expr256_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x80,0x28,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 28 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IComparisonExpr<Vector256<int>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[32i]()
; eval_vcmp_expr256_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xa0,0x29,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86729a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 29 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IComparisonExpr<Vector256<long>> expr), hex://logix/logic.engine?eval#eval_vcmp_expr256_g[64i]()
; eval_vcmp_expr256_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xd0,0x2e,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 2e 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(IComparisonPred<byte> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[8u]()
; eval_cmp_pred_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x0c,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8670c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 0c 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(IComparisonPred<sbyte> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[8i]()
; eval_cmp_pred_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x20,0x0d,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8670d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 0d 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(IComparisonPred<ushort> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[16u]()
; eval_cmp_pred_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xd0,0x0d,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8670dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 0d 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(IComparisonPred<short> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[16i]()
; eval_cmp_pred_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x80,0x0e,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8670e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 0e 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(IComparisonPred<uint> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[32u]()
; eval_cmp_pred_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x30,0x0f,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8670f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 0f 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(IComparisonPred<int> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[32i]()
; eval_cmp_pred_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe0,0x0f,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8670fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 0f 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(IComparisonPred<long> expr), hex://logix/logic.engine?eval#eval_cmp_pred_g[64i]()
; eval_cmp_pred_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x90,0x10,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 10 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IArithmeticExpr<byte> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[8u]()
; eval_arith_expr_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x00,0x38,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8673800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 38 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IArithmeticExpr<sbyte> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[8i]()
; eval_arith_expr_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xa8,0x3c,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8673ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 3c 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IArithmeticExpr<ushort> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[16u]()
; eval_arith_expr_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0x3c,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8673ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 3c 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IArithmeticExpr<short> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[16i]()
; eval_arith_expr_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x28,0x3d,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8673d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 3d 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IArithmeticExpr<uint> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[32u]()
; eval_arith_expr_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x68,0x3d,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8673d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 3d 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IArithmeticExpr<int> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[32i]()
; eval_arith_expr_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xa8,0x3d,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8673da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 3d 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IArithmeticExpr<ulong> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[64u]()
; eval_arith_expr_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0x3d,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8673de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 3d 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IArithmeticExpr<long> expr), hex://logix/logic.engine?eval#eval_arith_expr_g[64i]()
; eval_arith_expr_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x28,0x3e,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8673e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 3e 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[8u]()
; eval_vector_expr128_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xd8,0x0b,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8670bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 0b 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[8i]()
; eval_vector_expr128_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x98,0x12,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 12 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[16u]()
; eval_vector_expr128_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x80,0x13,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 13 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[16i]()
; eval_vector_expr128_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x68,0x14,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 14 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[32u]()
; eval_vector_expr128_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x50,0x15,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 15 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[32i]()
; eval_vector_expr128_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x10,0x1a,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1a 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[64u]()
; eval_vector_expr128_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xc8,0x3f,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8673fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 3f 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr), hex://logix/logic.engine?eval#eval_vector_expr128_g[64i]()
; eval_vector_expr128_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xf8,0x1a,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1a 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[8u]()
; eval_vector_expr256_g[8u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x28,0x1d,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8671d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1d 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[8i]()
; eval_vector_expr256_g[8i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x30,0x21,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 21 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[16u]()
; eval_vector_expr256_g[16u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x18,0x22,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 22 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[16i]()
; eval_vector_expr256_g[16i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x00,0x23,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 23 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[32u]()
; eval_vector_expr256_g[32u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xe8,0x23,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86723e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 23 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[32i]()
; eval_vector_expr256_g[32i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0xd0,0x24,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86724d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 24 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[64u]()
; eval_vector_expr256_g[64u]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x18,0x40,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8674018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 40 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr), hex://logix/logic.engine?eval#eval_vector_expr256_g[64i]()
; eval_vector_expr256_g[64i]()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x68,0x2b,0x67,0xc8,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c8672b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 2b 67 c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<byte>(ComparisonExpr<byte> expr, byte a, byte b), hex://logix/logic.engine?satisfied#satisfied_g[8u](8u,8u)
; satisfied_g[8u](8u,8u)[86] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0x10,0xea,0x71,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x0d,0x25,0xbf,0x5e,0x40,0x88,0x78,0x10,0x88,0x58,0x11,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x31,0xfc,0xff,0xff,0x48,0x8b,0xce,0xe8,0x11,0xba,0xff,0xff,0x0f,0xb6,0x40,0x08,0x0f,0xb6,0xc0,0x3c,0xff,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
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
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 25 bf 5e}
0023h mov [rax+10h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 10}
0027h mov [rax+11h],bl                        ; MOV r/m8, r8 || 88 /r || encoded[3]{88 58 11}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0030h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0032h call 7ff7c8674518h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 fc ff ff}
0037h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ah call 7ff7c8670300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 ba ff ff}
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
; satisfied_g[8i](8i,8i)[93] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0x98,0xf0,0x71,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x9d,0x24,0xbf,0x5e,0x40,0x88,0x78,0x10,0x88,0x58,0x11,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xc9,0xfc,0xff,0xff,0x48,0x8b,0xce,0xe8,0x91,0xba,0xff,0xff,0x48,0x0f,0xbe,0x40,0x08,0x48,0x0f,0xbe,0xc0,0x48,0x0f,0xbe,0xc0,0x83,0xf8,0x7f,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
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
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 24 bf 5e}
0023h mov [rax+10h],dil                       ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 78 10}
0027h mov [rax+11h],bl                        ; MOV r/m8, r8 || 88 /r || encoded[3]{88 58 11}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0030h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0032h call 7ff7c8674620h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 fc ff ff}
0037h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ah call 7ff7c86703f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 ba ff ff}
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
; satisfied_g[16u](16u,16u)[93] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0xc0,0x7f,0x17,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x1d,0x24,0xbf,0x5e,0x66,0x89,0x78,0x10,0x66,0x89,0x58,0x12,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xb0,0xfc,0xff,0xff,0x48,0x8b,0xce,0xe8,0xd0,0xba,0xff,0xff,0x0f,0xb7,0x40,0x08,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0x3d,0xff,0xff,0x00,0x00,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c8177fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 7f 17 c8 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 24 bf 5e}
0023h mov [rax+10h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 10}
0027h mov [rax+12h],bx                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 58 12}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0031h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0033h call 7ff7c8674688h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 fc ff ff}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh call 7ff7c86704b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 ba ff ff}
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
; satisfied_g[16i](16i,16i)[96] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0x60,0x3c,0x3e,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x9d,0x23,0xbf,0x5e,0x66,0x89,0x78,0x10,0x66,0x89,0x58,0x12,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x98,0xfc,0xff,0xff,0x48,0x8b,0xce,0xe8,0x10,0xbb,0xff,0xff,0x48,0x0f,0xbf,0x40,0x08,0x48,0x0f,0xbf,0xc0,0x48,0x0f,0xbf,0xc0,0x3d,0xff,0x7f,0x00,0x00,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c83e3c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 3c 3e c8 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 23 bf 5e}
0023h mov [rax+10h],di                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 78 10}
0027h mov [rax+12h],bx                        ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 58 12}
002bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0031h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0033h call 7ff7c86746f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 fc ff ff}
0038h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003bh call 7ff7c8670570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 bb ff ff}
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
; satisfied_g[32u](32u,32u)[82] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0x58,0x6f,0x17,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x1d,0x1f,0xbf,0x5e,0x89,0x78,0x10,0x89,0x58,0x14,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xf2,0xfb,0xff,0xff,0x48,0x8b,0xce,0xe8,0x52,0xb7,0xff,0xff,0x8b,0x40,0x08,0x83,0xf8,0xff,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000ch mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
000fh mov rcx,7ff7c8176f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 6f 17 c8 f7 7f 00 00}
0019h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 1f bf 5e}
0023h mov [rax+10h],edi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 10}
0026h mov [rax+14h],ebx                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 58 14}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
002fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0031h call 7ff7c8674ac8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 fb ff ff}
0036h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0039h call 7ff7c8670630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 b7 ff ff}
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
; satisfied_g[32i](32i,32i)[84] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0x48,0x5f,0x7e,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xad,0x1e,0xbf,0x5e,0x89,0x78,0x10,0x89,0x58,0x14,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xea,0xfb,0xff,0xff,0x48,0x8b,0xce,0xe8,0xa2,0xb7,0xff,0xff,0x8b,0x40,0x08,0x3d,0xff,0xff,0xff,0x7f,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
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
001eh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 1e bf 5e}
0023h mov [rax+10h],edi                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 78 10}
0026h mov [rax+14h],ebx                       ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 58 14}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
002fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0031h call 7ff7c8674b30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea fb ff ff}
0036h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0039h call 7ff7c86706f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 b7 ff ff}
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
; satisfied_g[64u](64u,64u)[87] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x49,0x8b,0xd8,0x48,0xb9,0xe0,0x2f,0xba,0xc7,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x3c,0x1e,0xbf,0x5e,0x48,0x89,0x78,0x10,0x48,0x89,0x58,0x18,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xdf,0xfb,0xff,0xff,0x48,0x8b,0xce,0xe8,0x0f,0xfc,0xff,0xff,0x48,0x8b,0x40,0x08,0x48,0x83,0xf8,0xff,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000dh mov rbx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d8}
0010h mov rcx,7ff7c7ba2fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 2f ba c7 f7 7f 00 00}
001ah mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001fh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 1e bf 5e}
0024h mov [rax+10h],rdi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 10}
0028h mov [rax+18h],rbx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 58 18}
002ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0032h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0034h call 7ff7c8674b98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df fb ff ff}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch call 7ff7c8674bd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f fc ff ff}
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
; satisfied_g[64i](64i,64i)[96] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x49,0x8b,0xd8,0x48,0xb9,0xe0,0x64,0x3e,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xcc,0x1d,0xbf,0x5e,0x48,0x89,0x78,0x10,0x48,0x89,0x58,0x18,0x48,0x8b,0xce,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xf7,0xfb,0xff,0xff,0x48,0x8b,0xce,0xe8,0x7f,0xb7,0xff,0xff,0x48,0x8b,0x40,0x08,0x48,0xba,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x7f,0x48,0x3b,0xc2,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ah mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
000dh mov rbx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d8}
0010h mov rcx,7ff7c83e64e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 64 3e c8 f7 7f 00 00}
001ah mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
001fh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 1d bf 5e}
0024h mov [rax+10h],rdi                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 78 10}
0028h mov [rax+18h],rbx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 58 18}
002ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0032h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0034h call 7ff7c8674c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 fb ff ff}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch call 7ff7c86707b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f b7 ff ff}
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
; satisfied_g[8u](v128x8u,v128x8u)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x70,0x19,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x49,0x1d,0xbf,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xd2,0xfc,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x82,0xc0,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x74,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af1970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 19 af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 1d bf 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c8674d88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8671140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 c0 ff ff}
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
; satisfied_g[8i](v128x8i,v128x8i)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x20,0x21,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xa9,0x18,0xbf,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xe2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xe2,0xc0,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x74,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af2120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 21 af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 18 bf 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c8675138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8671640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 c0 ff ff}
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
; satisfied_g[16u](v128x16u,v128x16u)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x60,0x25,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x09,0x18,0xbf,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xc2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x32,0xc1,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x75,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af2560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 25 af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 18 bf 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c86751b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8671730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 c1 ff ff}
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
; satisfied_g[16i](v128x16i,v128x16i)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0xa0,0x29,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x69,0x17,0xbf,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xb2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x82,0xc1,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x75,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af29a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 29 af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 17 bf 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c8675248h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8671820h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 c1 ff ff}
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
; satisfied_g[32u](v128x32u,v128x32u)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0xe0,0x2d,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xc9,0x16,0xbf,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xa2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xd2,0xc1,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x76,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af2de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 2d af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 16 bf 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c86752d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8671910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 c1 ff ff}
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
; satisfied_g[32i](v128x32i,v128x32i)[114] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x20,0x32,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x29,0x16,0xbf,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x92,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x32,0xc6,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc5,0xf1,0x76,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af3220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 32 af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 16 bf 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c8675368h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8671e10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 c6 ff ff}
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
; satisfied_g[64u](v128x64u,v128x64u)[115] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x48,0x37,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x89,0x15,0xbf,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x82,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x02,0xfc,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc4,0xe2,0x71,0x29,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af3748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 37 af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 15 bf 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c86753f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8675480h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 fc ff ff}
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
; satisfied_g[64i](v128x64i,v128x64i)[115] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x48,0x3c,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xe9,0x10,0xbf,0x5e,0xc5,0xf9,0x10,0x06,0xc5,0xf9,0x11,0x40,0x10,0xc5,0xf9,0x10,0x07,0xc5,0xf9,0x11,0x40,0x20,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xba,0xf7,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xe2,0xc1,0xff,0xff,0xc5,0xf9,0x10,0x40,0x08,0xc5,0xf0,0x57,0xc9,0xc5,0xe8,0x57,0xd2,0xc4,0xe2,0x71,0x29,0xca,0xc4,0xe2,0x79,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af3c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 3c af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 10 bf 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c86754d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba f7 ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8671f00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 c1 ff ff}
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
; satisfied_g[8u](v256x8u,v256x8u)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x28,0x46,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x49,0x10,0xbf,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x6a,0xfc,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x32,0xc2,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x74,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af4628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 46 af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 10 bf 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c8675a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8671ff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 c2 ff ff}
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
; satisfied_g[8i](v256x8i,v256x8i)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0xd8,0x4d,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xa9,0x0f,0xbf,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xfa,0xfc,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xc2,0xc6,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x74,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af4dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 4d af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 0f bf 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c8675b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8672520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 c6 ff ff}
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
; satisfied_g[16u](v256x16u,v256x16u)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x18,0x52,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x09,0x0f,0xbf,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xea,0xfc,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x42,0xc7,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x75,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af5218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 52 af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 0f bf 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c8675be0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8672640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 c7 ff ff}
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
; satisfied_g[16i](v256x16i,v256x16i)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x58,0x56,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x69,0x0e,0xbf,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xda,0xfc,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xc2,0xc7,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x75,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af5658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 56 af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 0e bf 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c8675c70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8672760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 c7 ff ff}
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
; satisfied_g[32u](v256x32u,v256x32u)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x98,0x5a,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xc9,0x09,0xbf,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xf2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x42,0xc4,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x76,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af5a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5a af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 09 bf 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c8676028h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8672880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 c4 ff ff}
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
; satisfied_g[32i](v256x32i,v256x32i)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0xd8,0x5e,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x29,0x09,0xbf,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xe2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xc2,0xc4,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc5,0xf5,0x76,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af5ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 5e af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 09 bf 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c86760b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c86729a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 c4 ff ff}
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
; satisfied_g[64u](v256x64u,v256x64u)[118] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x00,0x64,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0x89,0x08,0xbf,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0xd2,0xfb,0xff,0xff,0x48,0x8b,0xcb,0xe8,0x52,0xfc,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc4,0xe2,0x75,0x29,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af6400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 64 af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 08 bf 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c8676148h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c86761d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 fc ff ff}
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
; satisfied_g[64i](v256x64i,v256x64i)[118] = {0x57,0x56,0x53,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x48,0x8b,0xd9,0x48,0x8b,0xf2,0x49,0x8b,0xf8,0x48,0xb9,0x00,0x69,0xaf,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x02,0x00,0x00,0x00,0xe8,0xe9,0x07,0xbf,0x5e,0xc5,0xfd,0x10,0x06,0xc5,0xfd,0x11,0x40,0x10,0xc5,0xfd,0x10,0x07,0xc5,0xfd,0x11,0x40,0x30,0x48,0x8b,0xcb,0x48,0x8b,0xd0,0x39,0x09,0xe8,0x0a,0xfc,0xff,0xff,0x48,0x8b,0xcb,0xe8,0xb2,0xc8,0xff,0xff,0xc5,0xfd,0x10,0x40,0x08,0xc5,0xf4,0x57,0xc9,0xc5,0xec,0x57,0xd2,0xc4,0xe2,0x75,0x29,0xca,0xc4,0xe2,0x7d,0x17,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x20,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c8af6900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 69 af c8 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 07 bf 5e}
0027h vmovupd ymm0,[rsi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 06}
002bh vmovupd [rax+10h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 10}
0030h vmovupd ymm0,[rdi]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 07}
0034h vmovupd [rax+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 30}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c8676220h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c8672ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 c8 ff ff}
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
; eval_()[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xb8,0x70,0x47,0xde,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7de4770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 47 de c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit equal(VariedLogicExpr a, VariedLogicExpr b), hex://logix/logic.engine?equal#equal_()
; equal_()[458] = {0x55,0x41,0x57,0x41,0x56,0x57,0x56,0x53,0x48,0x83,0xec,0x48,0x48,0x8d,0x6c,0x24,0x70,0x48,0x89,0x65,0xb8,0x48,0x8b,0xf1,0x48,0x8b,0xfa,0x48,0x8b,0x4e,0x10,0x48,0x8b,0x5f,0x10,0x41,0xbe,0xb6,0x00,0x00,0x00,0x41,0xbf,0x01,0x00,0x00,0x00,0x8b,0x49,0x08,0x3b,0x4b,0x08,0x0f,0x85,0xe9,0x00,0x00,0x00,0xe8,0x70,0xe8,0x76,0xff,0x48,0x8b,0xc8,0x49,0xbb,0xf8,0x0d,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0xf8,0x0d,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x89,0x45,0xc8,0x48,0x8b,0x4d,0xc8,0x49,0xbb,0x00,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x00,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x85,0xc0,0x74,0x5d,0x48,0x8b,0x4d,0xc8,0x49,0xbb,0x08,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x08,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x48,0x8b,0xd0,0x48,0x8b,0xce,0xe8,0xea,0xf5,0x76,0xff,0x48,0x8b,0xce,0xe8,0x92,0xdf,0x76,0xff,0x8b,0xd8,0x48,0x8b,0xcf,0xe8,0x88,0xdf,0x76,0xff,0x3b,0xd8,0x75,0x3e,0x48,0x8b,0x4d,0xc8,0x49,0xbb,0x00,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x00,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x85,0xc0,0x75,0xa3,0x48,0x8b,0x4d,0xc8,0x49,0xbb,0x10,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x10,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0xeb,0x18,0x48,0x8b,0xcc,0xe8,0x7e,0x00,0x00,0x00,0x90,0x33,0xc0,0x48,0x8d,0x65,0xd8,0x5b,0x5e,0x5f,0x41,0x5e,0x41,0x5f,0x5d,0xc3,0xb8,0x01,0x00,0x00,0x00,0x48,0x8d,0x65,0xd8,0x5b,0x5e,0x5f,0x41,0x5e,0x41,0x5f,0x5d,0xc3,0x8b,0xf1,0x8b,0x7b,0x08,0xb9,0x19,0x02,0x00,0x00,0x48,0xba,0x08,0x98,0xbb,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x43,0x9d,0xd1,0x5e,0x48,0x8b,0xd8,0xb9,0x25,0x02,0x00,0x00,0x48,0xba,0x08,0x98,0xbb,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0x2c,0x9d,0xd1,0x5e,0x4c,0x8b,0xc8,0x4c,0x8d,0x45,0xd0,0x45,0x88,0x38,0x45,0x89,0x70,0x04,0x4c,0x8b,0xc3,0x8b,0xce,0x8b,0xd7,0x48,0x8b,0x45,0xd0,0x48,0x89,0x44,0x24,0x20,0xe8,0xf9,0xdc,0x0d,0xff,0x48,0x8b,0xc8,0xe8,0x51,0x50,0xb6,0x5e,0xcc,0x55,0x41,0x57,0x41,0x56,0x57,0x56,0x53,0x48,0x83,0xec,0x38,0x48,0x8b,0x69,0x28,0x48,0x89,0x6c,0x24,0x28,0x48,0x8d,0x6d,0x70,0x48,0x83,0x7d,0xc8,0x00,0x74,0x1c,0x48,0x8b,0x4d,0xc8,0x49,0xbb,0x10,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xb8,0x10,0x0e,0x62,0xc7,0xf7,0x7f,0x00,0x00,0x39,0x09,0xff,0x10,0x90,0x48,0x83,0xc4,0x38,0x5b,0x5e,0x5f,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0035h jne near ptr 0124h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e9 00 00 00}
003bh call 7ff7c7de4fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 e8 76 ff}
0040h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0043h mov r11,7ff7c7620df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0d 62 c7 f7 7f 00 00}
004dh mov rax,7ff7c7620df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 0d 62 c7 f7 7f 00 00}
0057h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0059h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
005bh mov [rbp-38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 c8}
005fh mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
0063h mov r11,7ff7c7620e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0e 62 c7 f7 7f 00 00}
006dh mov rax,7ff7c7620e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 0e 62 c7 f7 7f 00 00}
0077h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0079h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
007bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
007dh je short 00dch                          ; JE rel8 || 74 cb || encoded[2]{74 5d}
007fh mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
0083h mov r11,7ff7c7620e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0e 62 c7 f7 7f 00 00}
008dh mov rax,7ff7c7620e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 0e 62 c7 f7 7f 00 00}
0097h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0099h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
009bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
009eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00a1h call 7ff7c7de5dc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea f5 76 ff}
00a6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00a9h call 7ff7c7de4770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 df 76 ff}
00aeh mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b3h call 7ff7c7de4770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 df 76 ff}
00b8h cmp ebx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d8}
00bah jne short 00fah                         ; JNE rel8 || 75 cb || encoded[2]{75 3e}
00bch mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
00c0h mov r11,7ff7c7620e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0e 62 c7 f7 7f 00 00}
00cah mov rax,7ff7c7620e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 0e 62 c7 f7 7f 00 00}
00d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d8h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00dah jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 a3}
00dch mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
00e0h mov r11,7ff7c7620e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0e 62 c7 f7 7f 00 00}
00eah mov rax,7ff7c7620e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 0e 62 c7 f7 7f 00 00}
00f4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00f8h jmp short 0112h                         ; JMP rel8 || EB cb || encoded[2]{eb 18}
00fah mov rcx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cc}
00fdh call 7ff7c86768b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 00 00 00}
0102h nop                                     ; NOP || o32 90 || encoded[1]{90}
0103h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0105h lea rsp,[rbp-28h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 d8}
0109h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
010ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
010bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010ch pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
010eh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0110h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0111h ret                                     ; RET || C3 || encoded[1]{c3}
0112h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0117h lea rsp,[rbp-28h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 d8}
011bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
011ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
011eh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0120h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0122h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0123h ret                                     ; RET || C3 || encoded[1]{c3}
0124h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0126h mov edi,[rbx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 7b 08}
0129h mov ecx,219h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 19 02 00 00}
012eh mov rdx,7ff7c7bb9808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 98 bb c7 f7 7f 00 00}
0138h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 9d d1 5e}
013dh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0140h mov ecx,225h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 25 02 00 00}
0145h mov rdx,7ff7c7bb9808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 98 bb c7 f7 7f 00 00}
014fh call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 9d d1 5e}
0154h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
0157h lea r8,[rbp-30h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 45 d0}
015bh mov [r8],r15b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 38}
015eh mov [r8+4],r14d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 70 04}
0162h mov r8,rbx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c3}
0165h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0167h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0169h mov rax,[rbp-30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 d0}
016dh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0172h call 7ff7c77545a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 dc 0d ff}
0177h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 50 b6 5e}
017fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0180h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0181h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0183h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0185h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0186h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0187h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0188h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
018ch mov rbp,[rcx+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 69 28}
0190h mov [rsp+28h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 28}
0195h lea rbp,[rbp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 6d 70}
0199h cmp qword ptr [rbp-38h],0               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[5]{48 83 7d c8 00}
019eh je short 01bch                          ; JE rel8 || 74 cb || encoded[2]{74 1c}
01a0h mov rcx,[rbp-38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 4d c8}
01a4h mov r11,7ff7c7620e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0e 62 c7 f7 7f 00 00}
01aeh mov rax,7ff7c7620e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 0e 62 c7 f7 7f 00 00}
01b8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01bah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01bch nop                                     ; NOP || o32 90 || encoded[1]{90}
01bdh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
01c1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01c2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01c3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01c4h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
01c6h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
01c8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01c9h ret                                     ; RET || C3 || encoded[1]{c3}
