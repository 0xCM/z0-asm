; BitMatrix<ulong> false<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
; bm~false__g64u[7ff7c6b4ff60h, 7ff7c6b4ff72h][18] = {0f 1f 44 00 00 48 b8 00 42 a3 c6 f7 7f 00 00 48 ff e0}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 02:54:44:606
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6a34200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 42 a3 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
