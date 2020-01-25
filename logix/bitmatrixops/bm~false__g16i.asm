; BitMatrix<Int16> false<Int16>(in BitMatrix<Int16> A, in BitMatrix<Int16> B)
; bm~false__g16i[7ff7c6b4fed0h, 7ff7c6b4fee2h][18] = {0f 1f 44 00 00 48 b8 10 38 a3 c6 f7 7f 00 00 48 ff e0}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 02:54:44:602
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6a33810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 38 a3 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
