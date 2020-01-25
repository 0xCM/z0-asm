; LiteralExpr<Vector128<double>> eval<double>(IExpr<Vector128<double>> expr)
; vexpr128~eval__gVector128`1Vector128`1[7ff7c6e76250h, 7ff7c6e76262h][18] = {0f 1f 44 00 00 48 b8 08 11 d1 c6 f7 7f 00 00 48 ff e0}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:51:652
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6d11108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 11 d1 c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
