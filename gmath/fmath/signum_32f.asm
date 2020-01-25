; Sign:int signum(float src)
; signum_32f[7ff7c718a790h, 7ff7c718a7a2h][18] = {c5 f8 77 66 90 48 b8 90 49 3b c6 f7 7f 00 00 48 ff e0}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 01:44:37:728
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff7c63b4990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 49 3b c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
