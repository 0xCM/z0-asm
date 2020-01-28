------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(IComparisonPred<byte> expr)
; cmppred~eval_g[18] = {0f 1f 44 00 00 48 b8 c0 a3 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73aa3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 a3 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(IComparisonPred<sbyte> expr)
; cmppred~eval_g[18] = {0f 1f 44 00 00 48 b8 f0 a3 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73aa3f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 a3 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(IComparisonPred<ushort> expr)
; cmppred~eval_g[18] = {0f 1f 44 00 00 48 b8 10 a4 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73aa410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 a4 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(IComparisonPred<short> expr)
; cmppred~eval_g[18] = {0f 1f 44 00 00 48 b8 30 a4 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73aa430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 a4 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(IComparisonPred<uint> expr)
; cmppred~eval_g[18] = {0f 1f 44 00 00 48 b8 50 a4 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73aa450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 a4 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(IComparisonPred<int> expr)
; cmppred~eval_g[18] = {0f 1f 44 00 00 48 b8 70 a4 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73aa470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 a4 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(IComparisonPred<long> expr)
; cmppred~eval_g[18] = {0f 1f 44 00 00 48 b8 90 a4 3a c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c73aa490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 a4 3a c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
