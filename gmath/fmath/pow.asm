------------------------------------------------------------------------------------------------------------------------
; float pow(float src, float exp)
; pow_32f_32f[18] = {c5 f8 77 66 90 48 b8 20 8d 0f 26 f8 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8260f8d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 8d 0f 26 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; double pow(double src, double exp)
; pow_64f_64f[18] = {c5 f8 77 66 90 48 b8 e0 8e 0f 26 f8 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8260f8ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 8e 0f 26 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
