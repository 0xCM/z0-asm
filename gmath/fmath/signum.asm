------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(float src)
; signum_32f[25] = {c5 f8 77 66 90 48 b8 e0 3f 3a c6 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff7c63a3fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 3f 3a c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(double src)
; signum_64f[25] = {c5 f8 77 66 90 48 b8 b8 3f 3a c6 f7 7f 00 00 48 ff e0 00 00 19 00 00 00 40}
; Capture completion code = ZEDx6_000
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff7c63a3fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 3f 3a c6 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0012h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0014h sbb [rax],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 00}
0016h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[1]{40}