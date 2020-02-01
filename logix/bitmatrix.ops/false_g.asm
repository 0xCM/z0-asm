------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> false<byte>()
; false_g[18] = {0f 1f 44 00 00 48 b8 48 34 33 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7333448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 34 33 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> false<ushort>()
; false_g[18] = {0f 1f 44 00 00 48 b8 08 35 33 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7333508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 35 33 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> false<uint>()
; false_g[18] = {0f 1f 44 00 00 48 b8 20 3a 33 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7333a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 3a 33 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> false<ulong>()
; false_g[18] = {0f 1f 44 00 00 48 b8 b0 3a 33 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7333ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 3a 33 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
