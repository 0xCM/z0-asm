------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(float src)
; signum_32f[18] = {c5 f8 77 66 90 48 b8 60 44 3a c6 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff7c63a4460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 44 3a c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(double src)
; signum_64f[18] = {c5 f8 77 66 90 48 b8 38 44 3a c6 f7 7f 00 00 48 ff e0}
; TermCode = JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff7c63a4438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 44 3a c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
