------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> false<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
; bm~false_g8u_8u[25] = {0f 1f 44 00 00 48 b8 98 a4 2d c7 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72da498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 a4 2d c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<sbyte> false<sbyte>(in BitMatrix<sbyte> A, in BitMatrix<sbyte> B)
; bm~false_g8i_8i[25] = {0f 1f 44 00 00 48 b8 d8 b1 2d c7 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72db1d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 b1 2d c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> false<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
; bm~false_g16u_16u[25] = {0f 1f 44 00 00 48 b8 30 b5 2d c7 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72db530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 b5 2d c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<short> false<short>(in BitMatrix<short> A, in BitMatrix<short> B)
; bm~false_g16i_16i[25] = {0f 1f 44 00 00 48 b8 f8 b9 2d c7 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72db9f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 b9 2d c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> false<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B)
; bm~false_g32u_32u[25] = {0f 1f 44 00 00 48 b8 e8 ba 2d c7 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72dbae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 ba 2d c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<int> false<int>(in BitMatrix<int> A, in BitMatrix<int> B)
; bm~false_g32i_32i[25] = {0f 1f 44 00 00 48 b8 88 bc 2d c7 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72dbc88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 bc 2d c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> false<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
; bm~false_g64u_64u[25] = {0f 1f 44 00 00 48 b8 80 c2 2d c7 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c72dc280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 c2 2d c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<long> false<long>(in BitMatrix<long> A, in BitMatrix<long> B)
; bm~false_g64i_64i[9] = {0f 1f 44 00 00 48 b8 e0 c3}
; Capture completion code = ZEDx6_RET
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b8 e0 c3}
