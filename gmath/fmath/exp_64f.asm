; double exp(double pow)
; exp_64f[7ff7c718afa0h, 7ff7c718afb2h][18] = {c5 f8 77 66 90 48 b8 60 8e 0f 26 f8 7f 00 00 48 ff e0}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 01:44:37:758
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8260f8e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 8e 0f 26 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
