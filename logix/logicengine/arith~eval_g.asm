------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<byte> eval<byte>(IArithmeticExpr<byte> expr)
; arith~eval_g8u[18] = {0f 1f 44 00 00 48 b8 20 a5 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73aa520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 a5 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<sbyte> eval<sbyte>(IArithmeticExpr<sbyte> expr)
; arith~eval_g8i[18] = {0f 1f 44 00 00 48 b8 70 a5 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73aa570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 a5 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ushort> eval<ushort>(IArithmeticExpr<ushort> expr)
; arith~eval_g16u[18] = {0f 1f 44 00 00 48 b8 f8 a7 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73aa7f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 a7 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<short> eval<short>(IArithmeticExpr<short> expr)
; arith~eval_g16i[18] = {0f 1f 44 00 00 48 b8 38 a8 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73aa838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 a8 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<uint> eval<uint>(IArithmeticExpr<uint> expr)
; arith~eval_g32u[18] = {0f 1f 44 00 00 48 b8 78 a8 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73aa878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 a8 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<int> eval<int>(IArithmeticExpr<int> expr)
; arith~eval_g32i[18] = {0f 1f 44 00 00 48 b8 b8 a8 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73aa8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 a8 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<ulong> eval<ulong>(IArithmeticExpr<ulong> expr)
; arith~eval_g64u[18] = {0f 1f 44 00 00 48 b8 f8 a8 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73aa8f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 a8 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<long> eval<long>(IArithmeticExpr<long> expr)
; arith~eval_g64i[18] = {0f 1f 44 00 00 48 b8 38 a9 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73aa938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 a9 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
