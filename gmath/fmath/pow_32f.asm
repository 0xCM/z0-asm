; float pow(float src, float exp)
; pow_32f[7ff7c718b2f0h, 7ff7c718b302h][18] = {c5 f8 77 66 90 48 b8 20 8d 0f 26 f8 7f 00 00 48 ff e0}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 01:44:37:788
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8260f8d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 8d 0f 26 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
