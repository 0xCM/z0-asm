; bool fcmp(float x, float y, FpCmpMode:byte mode)
; fcmp_32f[7ff7c719d8b0h, 7ff7c719da76h][454] = {56 48 83 ec 20 c5 f8 77 41 0f b6 c0 83 f8 1e 0f 87 8e 01 00 00 8b c0 48 8d 0d c2 01 00 00 8b 0c 81 48 8d 15 e0 ff ff ff 48 03 ca ff e1 c5 f8 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 e9 5c 01 00 00 c5 f8 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 e9 48 01 00 00 c5 f8 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 e9 34 01 00 00 c5 f8 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 e9 20 01 00 00 c5 f8 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 e9 0c 01 00 00 c5 f8 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 e9 f8 00 00 00 c5 f8 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 e9 e4 00 00 00 c5 f8 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 e9 d0 00 00 00 c5 f8 2e c8 0f 97 c0 0f b6 c0 e9 c1 00 00 00 c5 f8 2e c8 0f 97 c0 0f b6 c0 e9 b2 00 00 00 c5 f8 2e c1 0f 97 c0 0f b6 c0 e9 a3 00 00 00 c5 f8 2e c1 0f 97 c0 0f b6 c0 e9 94 00 00 00 c5 f8 2e c8 0f 93 c0 0f b6 c0 e9 85 00 00 00 c5 f8 2e c8 0f 93 c0 0f b6 c0 e9 76 00 00 00 c5 f8 2e c1 0f 93 c0 0f b6 c0 eb 6a c5 f8 2e c1 0f 93 c0 0f b6 c0 eb 5e c5 f8 2e c1 0f 92 c0 0f b6 c0 eb 52 c5 f8 2e c1 0f 92 c0 0f b6 c0 eb 46 c5 f8 2e c1 0f 96 c0 0f b6 c0 eb 3a c5 f8 2e c1 0f 96 c0 0f b6 c0 eb 2e c5 f8 2e c8 0f 92 c0 0f b6 c0 eb 22 c5 f8 2e c8 0f 92 c0 0f b6 c0 eb 16 c5 f8 2e c8 0f 96 c0 0f b6 c0 eb 0a c5 f8 2e c8 0f 96 c0 0f b6 c0 48 83 c4 20 5e c3 48 b9 38 2a 5b c6 f7 7f 00 00 e8 4e 92 d0 5e 48 8b f0 48 8b ce e8 eb fd 20 ff 48 8b ce e8 8b de c7 5e cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:56:984
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
000ch cmp eax,1eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 1e}
000fh ja near ptr 01a3h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 8e 01 00 00}
0015h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0017h lea rcx,[7ff7c719da90h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d c2 01 00 00}
001eh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0021h lea rdx,[7ff7c719d8b8h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0028h add rcx,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 ca}
002bh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002dh vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0031h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0034h jp short 0039h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0036h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0039h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
003ch jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5c 01 00 00}
0041h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0045h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0048h jp short 004dh                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
004ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
004dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0050h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 48 01 00 00}
0055h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0059h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
005ch jp short 0061h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
005eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0061h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0064h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 34 01 00 00}
0069h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
006dh setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0070h jp short 0075h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0072h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0075h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0078h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 01 00 00}
007dh vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0081h setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
0084h jp short 0089h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0086h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0089h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
008ch jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0c 01 00 00}
0091h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0095h setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
0098h jp short 009dh                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
009ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
009dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a0h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f8 00 00 00}
00a5h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
00a9h setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
00ach jp short 00b1h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
00aeh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
00b1h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b4h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e4 00 00 00}
00b9h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
00bdh setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
00c0h jp short 00c5h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
00c2h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
00c5h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00c8h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d0 00 00 00}
00cdh vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
00d1h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
00d4h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00d7h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 c1 00 00 00}
00dch vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
00e0h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
00e3h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00e6h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00ebh vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
00efh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
00f2h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00f5h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a3 00 00 00}
00fah vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
00feh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0101h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0104h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 94 00 00 00}
0109h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
010dh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0110h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0113h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 85 00 00 00}
0118h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
011ch setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
011fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0122h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 76 00 00 00}
0127h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
012bh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
012eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0131h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
0133h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0137h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
013ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
013dh jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
013fh vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0143h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0146h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0149h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014bh vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
014fh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0152h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0155h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
0157h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
015bh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
015eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0161h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0163h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0167h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
016ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
016dh jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 2e}
016fh vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
0173h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0176h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0179h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
017bh vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
017fh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0182h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0185h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 16}
0187h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
018bh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
018eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0191h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0193h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
0197h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
019ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
019dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a2h ret                                     ; RET || C3 || encoded[1]{c3}
01a3h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
01adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 92 d0 5e}
01b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b8h call 7ff7c63ad858h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb fd 20 ff}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b de c7 5e}
01c5h int 3                                   ; INT3 || CC || encoded[1]{cc}
