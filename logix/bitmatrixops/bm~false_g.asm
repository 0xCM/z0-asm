------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> false<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
; bm~false_g8u_8u[25] = {0f 1f 44 00 00 48 b8 00 d6 a5 c6 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6a5d600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 d6 a5 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<sbyte> false<sbyte>(in BitMatrix<sbyte> A, in BitMatrix<sbyte> B)
; bm~false_g8i_8i[25] = {0f 1f 44 00 00 48 b8 30 34 a6 c6 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6a63430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 34 a6 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> false<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
; bm~false_g16u_16u[25] = {0f 1f 44 00 00 48 b8 10 3a a6 c6 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6a63a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 3a a6 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<short> false<short>(in BitMatrix<short> A, in BitMatrix<short> B)
; bm~false_g16i_16i[25] = {0f 1f 44 00 00 48 b8 80 8f a6 c6 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6a68f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 8f a6 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> false<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B)
; bm~false_g32u_32u[25] = {0f 1f 44 00 00 48 b8 90 91 a6 c6 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6a69190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 91 a6 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<int> false<int>(in BitMatrix<int> A, in BitMatrix<int> B)
; bm~false_g32i_32i[25] = {0f 1f 44 00 00 48 b8 30 97 a6 c6 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6a69730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 97 a6 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> false<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
; bm~false_g64u_64u[25] = {0f 1f 44 00 00 48 b8 18 a1 a6 c6 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6a6a118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 a1 a6 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<long> false<long>(in BitMatrix<long> A, in BitMatrix<long> B)
; bm~false_g64i_64i[25] = {0f 1f 44 00 00 48 b8 a0 a7 a6 c6 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6a6a7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 a7 a6 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
