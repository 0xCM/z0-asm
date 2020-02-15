------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(IComparisonPred<byte> expr)
; eval_cmp_pred_g[8u]()[18] = {0f 1f 44 00 00 48 b8 b0 7b 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e7bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 7b 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(IComparisonPred<sbyte> expr)
; eval_cmp_pred_g[8i]()[18] = {0f 1f 44 00 00 48 b8 e0 7b 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e7be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 7b 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(IComparisonPred<ushort> expr)
; eval_cmp_pred_g[16u]()[18] = {0f 1f 44 00 00 48 b8 00 7c 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e7c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 7c 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(IComparisonPred<short> expr)
; eval_cmp_pred_g[16i]()[18] = {0f 1f 44 00 00 48 b8 20 7c 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e7c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 7c 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(IComparisonPred<uint> expr)
; eval_cmp_pred_g[32u]()[18] = {0f 1f 44 00 00 48 b8 40 7c 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e7c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 7c 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(IComparisonPred<int> expr)
; eval_cmp_pred_g[32i]()[18] = {0f 1f 44 00 00 48 b8 60 7c 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e7c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 7c 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(IComparisonPred<long> expr)
; eval_cmp_pred_g[64i]()[18] = {0f 1f 44 00 00 48 b8 80 7c 6e c8 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c86e7c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 7c 6e c8 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
