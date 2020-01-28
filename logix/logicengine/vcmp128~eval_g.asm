------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IComparisonExpr<Vector128<byte>> expr)
; vcmp128~eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 e0 95 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73a95e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 95 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IComparisonExpr<Vector128<sbyte>> expr)
; vcmp128~eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 a8 96 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73a96a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 96 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IComparisonExpr<Vector128<ushort>> expr)
; vcmp128~eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 b0 98 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73a98b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 98 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IComparisonExpr<Vector128<short>> expr)
; vcmp128~eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 68 99 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73a9968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 99 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IComparisonExpr<Vector128<uint>> expr)
; vcmp128~eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 20 9a 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73a9a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 9a 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IComparisonExpr<Vector128<int>> expr)
; vcmp128~eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 d8 9a 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73a9ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 9a 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IComparisonExpr<Vector128<long>> expr)
; vcmp128~eval_gVector128`1[18] = {0f 1f 44 00 00 48 b8 90 9b 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73a9b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 9b 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
