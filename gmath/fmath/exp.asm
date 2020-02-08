------------------------------------------------------------------------------------------------------------------------
; float exp(float pow)
; exp_(32f)[18] = {c5 f8 77 66 90 48 b8 70 8c 4b 27 f8 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 8c 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; double exp(double pow)
; exp_(64f)[18] = {c5 f8 77 66 90 48 b8 60 8e 4b 27 f8 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 8e 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
