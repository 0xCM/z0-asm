------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> false<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
; bm~false_g8u_8u[18] = {0f 1f 44 00 00 48 b8 20 44 31 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7314420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 44 31 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<sbyte> false<sbyte>(in BitMatrix<sbyte> A, in BitMatrix<sbyte> B)
; bm~false_g8i_8i[18] = {0f 1f 44 00 00 48 b8 68 51 31 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7315168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 51 31 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> false<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
; bm~false_g16u_16u[18] = {0f 1f 44 00 00 48 b8 58 52 31 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7315258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 52 31 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<short> false<short>(in BitMatrix<short> A, in BitMatrix<short> B)
; bm~false_g16i_16i[18] = {0f 1f 44 00 00 48 b8 80 59 31 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7315980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 59 31 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> false<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B)
; bm~false_g32u_32u[18] = {0f 1f 44 00 00 48 b8 70 5a 31 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7315a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 5a 31 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<int> false<int>(in BitMatrix<int> A, in BitMatrix<int> B)
; bm~false_g32i_32i[18] = {0f 1f 44 00 00 48 b8 10 5c 31 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7315c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 5c 31 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> false<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
; bm~false_g64u_64u[18] = {0f 1f 44 00 00 48 b8 90 5c 31 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7315c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 5c 31 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<long> false<long>(in BitMatrix<long> A, in BitMatrix<long> B)
; bm~false_g64i_64i[18] = {0f 1f 44 00 00 48 b8 70 63 31 c7 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c7316370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 63 31 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
