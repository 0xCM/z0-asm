------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IComparisonExpr<Vector256<ulong>> expr)
; vcmp256~eval_gVector256`1[25] = {0f 1f 44 00 00 48 b8 e0 48 ea c6 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,7ff7c6ea48e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 48 ea c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
