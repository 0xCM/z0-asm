------------------------------------------------------------------------------------------------------------------------
; bit eval(UnaryBitLogicKind:byte kind, bit a)
; eval_(UnaryBitLogicKind~8u,1u)[205] = {57 56 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 03 77 44 8b c0 48 8d 0d 96 00 00 00 8b 0c 81 4c 8d 05 e4 ff ff ff 49 03 c8 ff e1 33 c0 48 83 c4 28 5e 5f c3 8b c2 f7 d0 83 e0 01 48 83 c4 28 5e 5f c3 8b c2 48 83 c4 28 5e 5f c3 b8 01 00 00 00 48 83 c4 28 5e 5f c3 48 b9 b0 6f 33 c7 f7 7f 00 00 e8 cc cd d8 5e 48 8b f8 40 88 77 08 48 b9 c0 af 5a c6 f7 7f 00 00 e8 b6 cd d8 5e 48 8b f0 b9 3c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 9f 66 eb 5e 48 8b c8 48 8b d7 e8 14 a2 25 ff 48 8b d0 48 8b ce e8 d9 f0 27 ff 48 8b ce e8 d1 19 d0 5e cc 21 00 00 00 2a 00 00 00 38 00 00 00 41 00 00 00 19 06 03 00 06 42 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000ch cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
000fh ja short 0055h                          ; JA rel8 || 77 cb || encoded[2]{77 44}
0011h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0013h lea rcx,[rip+96h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 96 00 00 00}
001ah mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
001dh lea r8,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 e4 ff ff ff}
0024h add rcx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c8}
0027h jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0029h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0030h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
0032h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0034h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0036h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0039h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
003dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
0040h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0042h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
0049h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
004eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
0055h mov rcx,7ff7c7336fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 6f 33 c7 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc cd d8 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 cd d8 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,43ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 3c 04 00 00}
0082h mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 66 eb 5e}
0091h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0094h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0097h call 7ff7c6374130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 a2 25 ff}
009ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
009fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00a2h call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f0 27 ff}
00a7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 19 d0 5e}
00afh int 3                                   ; INT3 || CC || encoded[1]{cc}
00b0h and [rax],eax                           ; AND r/m32, r32 || o32 21 /r || encoded[2]{21 00}
00b2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00b4h sub al,[rax]                            ; SUB r8, r/m8 || 2A /r || encoded[2]{2a 00}
00b6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00b8h cmp [rax],al                            ; CMP r/m8, r8 || 38 /r || encoded[2]{38 00}
00bah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00bch add [r8],al                             ; ADD r/m8, r8 || 00 /r || encoded[3]{41 00 00}
00bfh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
00c1h (bad)                                   ; <invalid> || <invalid> || encoded[2]{06 03}
00c3h add [rsi],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 06}
00c5h add spl,[rax+1]                         ; ADD r8, r/m8 || 02 /r || encoded[4]{42 02 60 01}
00c9h jo short 00cbh                          ; JO rel8 || 70 cb || encoded[2]{70 00}
00cbh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval(BinaryBitLogicKind:byte kind, bit a, bit b)
; eval_(BinaryBitLogicKind~8u,1u,1u)[2053] = {57 56 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 b3 00 00 00 8b c0 48 8d 0d 0a 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 01 00 00 00 e9 8a 00 00 00 33 c0 e9 83 00 00 00 41 23 d0 8b c2 eb 7c 8b c2 41 23 c0 f7 d0 83 e0 01 eb 70 8b c2 41 0b c0 eb 69 8b c2 41 0b c0 f7 d0 83 e0 01 eb 5d 8b c2 41 33 c0 eb 56 8b c2 41 33 c0 f7 d0 83 e0 01 eb 4a 41 8b c0 f7 d0 83 e0 01 0b c2 eb 3e 8b c2 f7 d0 83 e0 01 41 23 c0 eb 32 8b c2 eb 2e 41 8b c0 eb 29 8b c2 f7 d0 83 e0 01 eb 20 41 8b c0 f7 d0 83 e0 01 eb 16 8b c2 f7 d0 83 e0 01 41 0b c0 eb 0a 41 8b c0 f7 d0 83 e0 01 23 c2 48 83 c4 28 5e 5f c3 48 b9 50 cc 85 c6 f7 7f 00 00 e8 79 cc d8 5e 48 8b f8 40 88 77 08 48 b9 c0 af 5a c6 f7 7f 00 00 e8 63 cc d8 5e 48 8b f0 b9 3c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 4c 65 eb 5e 48 8b c8 48 8b d7 e8 c1 a0 25 ff 48 8b d0 48 8b ce e8 86 ef 27 ff 48 8b ce e8 7e 18 d0 5e cc 00 00 00 00 00 2f 00 00 00 36 00 00 00 af 00 00 00 87 00 00 00 7b 00 00 00 8b 00 00 00 5c 00 00 00 49 00 00 00 50 00 00 00 63 00 00 00 99 00 00 00 6f 00 00 00 90 00 00 00 a3 00 00 00 3d 00 00 00 25 00 00 00 19 06 03 00 06 42 02 60 01 70 00 00 40 00 00 00 08 f5 32 c7 f7 7f 00 00 57 56 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 03 0f 87 28 01 00 00 8b c9 48 8d 05 7a 01 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 48 75 33 c7 f7 7f 00 00 e8 94 cb d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 bc d8 5e 48 b8 50 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 83 11 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3 48 b9 48 75 33 c7 f7 7f 00 00 e8 50 cb d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 bc d8 5e 48 b8 50 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 83 11 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3 48 b9 48 75 33 c7 f7 7f 00 00 e8 0c cb d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d bc d8 5e 48 b8 50 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 83 11 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3 48 b9 48 75 33 c7 f7 7f 00 00 e8 c8 ca d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 bb d8 5e 48 b8 50 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 83 11 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3 48 b9 b0 6f 33 c7 f7 7f 00 00 e8 84 ca d8 5e 48 8b f8 40 88 77 08 48 b9 c0 af 5a c6 f7 7f 00 00 e8 6e ca d8 5e 48 8b f0 b9 3c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 57 63 eb 5e 48 8b c8 48 8b d7 e8 cc 9e 25 ff 48 8b d0 48 8b ce e8 91 ed 27 ff 48 8b ce e8 89 16 d0 5e cc 25 00 00 00 69 00 00 00 ad 00 00 00 f1 00 00 00 19 06 03 00 06 42 02 60 01 70 00 00 40 00 00 00 80 f7 32 c7 f7 7f 00 00 57 56 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 07 04 00 00 8b c9 48 8d 05 5a 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a8 78 33 c7 f7 7f 00 00 e8 d4 c9 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 bb d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 95 c9 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 ba d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 56 c9 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 ba d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 17 c9 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 ba d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 d8 c8 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 ba d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 99 c8 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca b9 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 5a c8 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b b9 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 1b c8 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c b9 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 dc c7 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d b9 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 9d c7 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce b8 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 5e c7 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f b8 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 1f c7 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 b8 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 e0 c6 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 b8 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 a1 c6 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 b7 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 84 11 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 78 33 c7 f7 7f 00 00 e8 65 c6 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 b7 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 84 11 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 78 33 c7 f7 7f 00 00 e8 29 c6 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a b7 d8 5e 48 b8 80 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 40 84 11 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3 48 b9 50 cc 85 c6 f7 7f 00 00 e8 e5 c5 d8 5e 48 8b f8 40 88 77 08 48 b9 c0 af 5a c6 f7 7f 00 00 e8 cf c5 d8 5e 48 8b f0 b9 3c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 b8 5e eb 5e 48 8b c8 48 8b d7 e8 2d 9a 25 ff 48 8b d0 48 8b ce e8 f2 e8 27 ff 48 8b ce e8 ea 11 d0 5e cc 00 64 00 00 00 a3 00 00 00 d0 03 00 00 1d 02 00 00 58 03 00 00 5c 02 00 00 9f 01 00 00 21 01 00 00 60 01 00 00 de 01 00 00 da 02 00 00 19 03 00 00 9b 02 00 00 94 03 00 00 e2 00 00 00 25 00 00 00 19 06 03 00 06 42 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000ch cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
000fh ja near ptr 00c8h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b3 00 00 00}
0015h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0017h lea rcx,[rip+10ah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 0a 01 00 00}
001eh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0021h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
0028h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002bh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002dh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0032h jmp near ptr 00c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8a 00 00 00}
0037h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0039h jmp near ptr 00c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
003eh and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0041h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0043h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 7c}
0045h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0047h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
004ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
004ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
004fh jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 70}
0051h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0053h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0056h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 69}
0058h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
005ah or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
005dh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
005fh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0062h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 5d}
0064h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0066h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0069h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 56}
006bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
006dh xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0070h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0072h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0075h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 4a}
0077h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
007ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
007ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
007fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0081h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0083h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0085h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0087h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
008ah and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
008dh jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 32}
008fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0091h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2e}
0093h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0096h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 29}
0098h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
009ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
009ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
009fh jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
00a1h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00a4h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00a6h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
00a9h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 16}
00abh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00adh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00afh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
00b2h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
00b5h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
00b7h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
00bah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00bch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
00bfh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00c1h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
00c8h mov rcx,7ff7c685cc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cc 85 c6 f7 7f 00 00}
00d2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 cc d8 5e}
00d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00dah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00deh mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
00e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 cc d8 5e}
00edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00f0h mov ecx,43ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 3c 04 00 00}
00f5h mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
00ffh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 65 eb 5e}
0104h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0107h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
010ah call 7ff7c6374130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 a0 25 ff}
010fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0112h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0115h call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 ef 27 ff}
011ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
011dh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 18 d0 5e}
0122h int 3                                   ; INT3 || CC || encoded[1]{cc}
0123h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0125h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0127h add [rdi],ch                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 2f}
0129h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
012bh add [rsi],dh                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 36}
012dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
012fh add [rdi-79000000h],ch                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 af 00 00 00 87}
0135h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0137h add [rbx],bh                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 7b 00}
013ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
013ch mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
013eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0140h pop rsp                                 ; POP r64 || 58+ro || encoded[1]{5c}
0141h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0143h add [rcx],cl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 49 00}
0146h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0148h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0149h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
014bh add [rbx],ah                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 63 00}
014eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0150h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0151h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0153h add [rdi],ch                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 6f 00}
0156h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0158h nop                                     ; NOP || o32 90 || encoded[1]{90}
0159h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
015bh add [rbx+3d000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 a3 00 00 00 3d}
0161h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0163h add [rip+19000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 25 00 00 00 19}
0169h (bad)                                   ; <invalid> || <invalid> || encoded[2]{06 03}
016bh add [rsi],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 06}
016dh add spl,[rax+1]                         ; ADD r8, r/m8 || 02 /r || encoded[4]{42 02 60 01}
0171h jo short 0173h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0173h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 40 00}
0176h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0178h or ch,dh                                ; OR r/m8, r8 || 08 /r || encoded[2]{08 f5}
017ah xor al,bh                               ; XOR r8, r/m8 || 32 /r || encoded[2]{32 c7}
017ch idiv dword ptr [rdi]                    ; IDIV r/m32 || o32 F7 /7 || encoded[3]{f7 7f 00}
017fh add [rdi+56h],dl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 57 56}
0182h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0186h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0188h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
018ch cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
018fh ja near ptr 02bdh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 28 01 00 00}
0195h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0197h lea rax,[rip+17ah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 7a 01 00 00}
019eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
01a1h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
01a8h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
01abh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
01adh mov rcx,7ff7c7337548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 75 33 c7 f7 7f 00 00}
01b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 cb d8 5e}
01bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 bc d8 5e}
01cbh mov rax,7ff7c624df50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 df 24 c6 f7 7f 00 00}
01d5h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
01d9h mov rax,7ff7c71183b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 83 11 c7 f7 7f 00 00}
01e3h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01e7h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01eah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01eeh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01efh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01f0h ret                                     ; RET || C3 || encoded[1]{c3}
01f1h mov rcx,7ff7c7337548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 75 33 c7 f7 7f 00 00}
01fbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 cb d8 5e}
0200h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0203h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0207h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
020ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 bc d8 5e}
020fh mov rax,7ff7c624df50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 df 24 c6 f7 7f 00 00}
0219h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
021dh mov rax,7ff7c71183a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 83 11 c7 f7 7f 00 00}
0227h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
022bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
022eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0232h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0233h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0234h ret                                     ; RET || C3 || encoded[1]{c3}
0235h mov rcx,7ff7c7337548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 75 33 c7 f7 7f 00 00}
023fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c cb d8 5e}
0244h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0247h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
024bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
024eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d bc d8 5e}
0253h mov rax,7ff7c624df50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 df 24 c6 f7 7f 00 00}
025dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0261h mov rax,7ff7c71183b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 83 11 c7 f7 7f 00 00}
026bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
026fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0272h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0276h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0277h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0278h ret                                     ; RET || C3 || encoded[1]{c3}
0279h mov rcx,7ff7c7337548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 75 33 c7 f7 7f 00 00}
0283h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 ca d8 5e}
0288h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
028bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
028fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0292h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 bb d8 5e}
0297h mov rax,7ff7c624df50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 df 24 c6 f7 7f 00 00}
02a1h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
02a5h mov rax,7ff7c71183c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 83 11 c7 f7 7f 00 00}
02afh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
02b3h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
02b6h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
02bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
02bch ret                                     ; RET || C3 || encoded[1]{c3}
02bdh mov rcx,7ff7c7336fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 6f 33 c7 f7 7f 00 00}
02c7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 ca d8 5e}
02cch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
02cfh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
02d3h mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
02ddh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e ca d8 5e}
02e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02e5h mov ecx,43ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 3c 04 00 00}
02eah mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
02f4h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 63 eb 5e}
02f9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
02ffh call 7ff7c6374130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 9e 25 ff}
0304h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0307h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
030ah call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 ed 27 ff}
030fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0312h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 16 d0 5e}
0317h int 3                                   ; INT3 || CC || encoded[1]{cc}
0318h and eax,69000000h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 00 00 00 69}
031dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
031fh add [rbp-0f000000h],ch                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 ad 00 00 00 f1}
0325h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0327h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0329h (bad)                                   ; <invalid> || <invalid> || encoded[2]{06 03}
032bh add [rsi],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 06}
032dh add spl,[rax+1]                         ; ADD r8, r/m8 || 02 /r || encoded[4]{42 02 60 01}
0331h jo short 0333h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0333h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 40 00}
0336h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0338h xor bh,32h                              ; XOR r/m8, imm8 || 80 /6 ib || encoded[3]{80 f7 32}
033bh (bad)                                   ; <invalid> || <invalid> || encoded[2]{c7 f7}
033dh jg short 033fh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
033fh add [rdi+56h],dl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 57 56}
0342h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0346h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0348h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
034ch cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
034fh ja near ptr 075ch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 07 04 00 00}
0355h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0357h lea rax,[rip+45ah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5a 04 00 00}
035eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0361h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0368h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
036bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
036dh mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
0377h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 c9 d8 5e}
037ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
037fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0383h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0386h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 bb d8 5e}
038bh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0395h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0399h mov rcx,7ff7c71183d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 83 11 c7 f7 7f 00 00}
03a3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03a7h jmp near ptr 0752h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
03ach mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
03b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 c9 d8 5e}
03bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03beh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03c2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03c5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 ba d8 5e}
03cah mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
03d4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03d8h mov rcx,7ff7c71183c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 83 11 c7 f7 7f 00 00}
03e2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03e6h jmp near ptr 0752h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
03ebh mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
03f5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 c9 d8 5e}
03fah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03fdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0401h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0404h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 ba d8 5e}
0409h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0413h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0417h mov rcx,7ff7c71183d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 83 11 c7 f7 7f 00 00}
0421h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0425h jmp near ptr 0752h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
042ah mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
0434h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 c9 d8 5e}
0439h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
043ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0440h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0443h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 ba d8 5e}
0448h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0452h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0456h mov rcx,7ff7c71183e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 83 11 c7 f7 7f 00 00}
0460h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0464h jmp near ptr 0752h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
0469h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
0473h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 c8 d8 5e}
0478h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
047bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
047fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0482h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 ba d8 5e}
0487h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0491h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0495h mov rcx,7ff7c71183e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 83 11 c7 f7 7f 00 00}
049fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04a3h jmp near ptr 0752h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
04a8h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
04b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 c8 d8 5e}
04b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04bah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04c1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca b9 d8 5e}
04c6h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
04d0h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04d4h mov rcx,7ff7c71183f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 83 11 c7 f7 7f 00 00}
04deh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04e2h jmp near ptr 0752h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
04e7h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
04f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a c8 d8 5e}
04f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0500h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b b9 d8 5e}
0505h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
050fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0513h mov rcx,7ff7c71183f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 83 11 c7 f7 7f 00 00}
051dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0521h jmp near ptr 0752h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
0526h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
0530h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b c8 d8 5e}
0535h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0538h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
053ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
053fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c b9 d8 5e}
0544h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
054eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0552h mov rcx,7ff7c7118400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 84 11 c7 f7 7f 00 00}
055ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0560h jmp near ptr 0752h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0565h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
056fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc c7 d8 5e}
0574h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0577h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
057bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
057eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d b9 d8 5e}
0583h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
058dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0591h mov rcx,7ff7c7118418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 84 11 c7 f7 7f 00 00}
059bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
059fh jmp near ptr 0752h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
05a4h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
05aeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d c7 d8 5e}
05b3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05b6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05bah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05bdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce b8 d8 5e}
05c2h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
05cch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05d0h mov rcx,7ff7c7118420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 84 11 c7 f7 7f 00 00}
05dah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05deh jmp near ptr 0752h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
05e3h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
05edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e c7 d8 5e}
05f2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05f5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05fch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f b8 d8 5e}
0601h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
060bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
060fh mov rcx,7ff7c7118428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 84 11 c7 f7 7f 00 00}
0619h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
061dh jmp near ptr 0752h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0622h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
062ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f c7 d8 5e}
0631h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0634h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0638h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
063bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 b8 d8 5e}
0640h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
064ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
064eh mov rcx,7ff7c7118430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 84 11 c7 f7 7f 00 00}
0658h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
065ch jmp near ptr 0752h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0661h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
066bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 c6 d8 5e}
0670h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0673h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0677h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
067ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 b8 d8 5e}
067fh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0689h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
068dh mov rcx,7ff7c7118408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 84 11 c7 f7 7f 00 00}
0697h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
069bh jmp near ptr 0752h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
06a0h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
06aah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 c6 d8 5e}
06afh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06b2h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06b6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06b9h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 b7 d8 5e}
06beh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
06c8h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
06cch mov rcx,7ff7c7118410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 84 11 c7 f7 7f 00 00}
06d6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
06dah jmp short 0752h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
06dch mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
06e6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 c6 d8 5e}
06ebh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06eeh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06f2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06f5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 b7 d8 5e}
06fah mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0704h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0708h mov rcx,7ff7c7118438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 84 11 c7 f7 7f 00 00}
0712h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0716h jmp short 0752h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0718h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
0722h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 c6 d8 5e}
0727h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
072ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
072eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0731h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a b7 d8 5e}
0736h mov rax,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 df 24 c6 f7 7f 00 00}
0740h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0744h mov rax,7ff7c7118440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 84 11 c7 f7 7f 00 00}
074eh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0752h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0755h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0759h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
075ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
075bh ret                                     ; RET || C3 || encoded[1]{c3}
075ch mov rcx,7ff7c685cc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cc 85 c6 f7 7f 00 00}
0766h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 c5 d8 5e}
076bh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
076eh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0772h mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
077ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf c5 d8 5e}
0781h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0784h mov ecx,43ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 3c 04 00 00}
0789h mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
0793h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 5e eb 5e}
0798h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
079bh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
079eh call 7ff7c6374130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 9a 25 ff}
07a3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
07a6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
07a9h call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 e8 27 ff}
07aeh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
07b1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 11 d0 5e}
07b6h int 3                                   ; INT3 || CC || encoded[1]{cc}
07b7h add [rax+rax],ah                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 64 00 00}
07bbh add [rbx-30000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 a3 00 00 00 d0}
07c1h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
07c3h add [rip+58000002h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 1d 02 00 00 58}
07c9h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
07cbh add [rdx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 02 00}
07cfh add [rdi+21000001h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 9f 01 00 00 21}
07d5h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
07d7h add [rax+1],ah                          ; ADD r/m8, r8 || 00 /r || encoded[3]{00 60 01}
07dah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07dch fiadd word ptr [rcx]                    ; FIADD m16int || DE /0 || encoded[2]{de 01}
07deh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07e0h fiadd dword ptr [rdx]                   ; FIADD m32int || DA /0 || encoded[2]{da 02}
07e2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07e4h sbb [rbx],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 03}
07e6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07e8h wait                                    ; WAIT || 9B || encoded[1]{9b}
07e9h add al,[rax]                            ; ADD r8, r/m8 || 02 /r || encoded[2]{02 00}
07ebh add [rbx+rax+0e20000h],dl               ; ADD r/m8, r8 || 00 /r || encoded[7]{00 94 03 00 00 e2 00}
07f2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07f4h and eax,19000000h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 00 00 00 19}
07f9h (bad)                                   ; <invalid> || <invalid> || encoded[2]{06 03}
07fbh add [rsi],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 06}
07fdh add spl,[rax+1]                         ; ADD r8, r/m8 || 02 /r || encoded[4]{42 02 60 01}
0801h jo short 0803h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0803h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; UnaryOp<bit> lookup(UnaryBitLogicKind:byte kind)
; lookup_(UnaryBitLogicKind~8u)[1669] = {57 56 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 03 0f 87 28 01 00 00 8b c9 48 8d 05 7a 01 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 48 75 33 c7 f7 7f 00 00 e8 94 cb d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 bc d8 5e 48 b8 50 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 83 11 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3 48 b9 48 75 33 c7 f7 7f 00 00 e8 50 cb d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 bc d8 5e 48 b8 50 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 83 11 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3 48 b9 48 75 33 c7 f7 7f 00 00 e8 0c cb d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d bc d8 5e 48 b8 50 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 83 11 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3 48 b9 48 75 33 c7 f7 7f 00 00 e8 c8 ca d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 bb d8 5e 48 b8 50 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 83 11 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3 48 b9 b0 6f 33 c7 f7 7f 00 00 e8 84 ca d8 5e 48 8b f8 40 88 77 08 48 b9 c0 af 5a c6 f7 7f 00 00 e8 6e ca d8 5e 48 8b f0 b9 3c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 57 63 eb 5e 48 8b c8 48 8b d7 e8 cc 9e 25 ff 48 8b d0 48 8b ce e8 91 ed 27 ff 48 8b ce e8 89 16 d0 5e cc 25 00 00 00 69 00 00 00 ad 00 00 00 f1 00 00 00 19 06 03 00 06 42 02 60 01 70 00 00 40 00 00 00 80 f7 32 c7 f7 7f 00 00 57 56 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 07 04 00 00 8b c9 48 8d 05 5a 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a8 78 33 c7 f7 7f 00 00 e8 d4 c9 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 bb d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 95 c9 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 ba d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 56 c9 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 ba d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 17 c9 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 ba d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 d8 c8 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 ba d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 99 c8 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca b9 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 5a c8 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b b9 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 1b c8 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c b9 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 dc c7 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d b9 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 9d c7 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce b8 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 5e c7 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f b8 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 1f c7 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 b8 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 e0 c6 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 b8 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 a1 c6 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 b7 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 84 11 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 78 33 c7 f7 7f 00 00 e8 65 c6 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 b7 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 84 11 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 78 33 c7 f7 7f 00 00 e8 29 c6 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a b7 d8 5e 48 b8 80 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 40 84 11 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3 48 b9 50 cc 85 c6 f7 7f 00 00 e8 e5 c5 d8 5e 48 8b f8 40 88 77 08 48 b9 c0 af 5a c6 f7 7f 00 00 e8 cf c5 d8 5e 48 8b f0 b9 3c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 b8 5e eb 5e 48 8b c8 48 8b d7 e8 2d 9a 25 ff 48 8b d0 48 8b ce e8 f2 e8 27 ff 48 8b ce e8 ea 11 d0 5e cc 00 64 00 00 00 a3 00 00 00 d0 03 00 00 1d 02 00 00 58 03 00 00 5c 02 00 00 9f 01 00 00 21 01 00 00 60 01 00 00 de 01 00 00 da 02 00 00 19 03 00 00 9b 02 00 00 94 03 00 00 e2 00 00 00 25 00 00 00 19 06 03 00 06 42 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000ch cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
000fh ja near ptr 013dh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 28 01 00 00}
0015h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0017h lea rax,[rip+17ah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 7a 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh mov rcx,7ff7c7337548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 75 33 c7 f7 7f 00 00}
0037h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 cb d8 5e}
003ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
003fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0043h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0046h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 bc d8 5e}
004bh mov rax,7ff7c624df50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 df 24 c6 f7 7f 00 00}
0055h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0059h mov rax,7ff7c71183b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 83 11 c7 f7 7f 00 00}
0063h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0067h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
006ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
0071h mov rcx,7ff7c7337548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 75 33 c7 f7 7f 00 00}
007bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 cb d8 5e}
0080h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0083h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 bc d8 5e}
008fh mov rax,7ff7c624df50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 df 24 c6 f7 7f 00 00}
0099h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
009dh mov rax,7ff7c71183a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 83 11 c7 f7 7f 00 00}
00a7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
00abh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00aeh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00b2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b4h ret                                     ; RET || C3 || encoded[1]{c3}
00b5h mov rcx,7ff7c7337548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 75 33 c7 f7 7f 00 00}
00bfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c cb d8 5e}
00c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00cbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00ceh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d bc d8 5e}
00d3h mov rax,7ff7c624df50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 df 24 c6 f7 7f 00 00}
00ddh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
00e1h mov rax,7ff7c71183b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 83 11 c7 f7 7f 00 00}
00ebh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
00efh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00f2h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00f6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f8h ret                                     ; RET || C3 || encoded[1]{c3}
00f9h mov rcx,7ff7c7337548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 75 33 c7 f7 7f 00 00}
0103h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 ca d8 5e}
0108h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
010bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
010fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0112h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 bb d8 5e}
0117h mov rax,7ff7c624df50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 df 24 c6 f7 7f 00 00}
0121h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0125h mov rax,7ff7c71183c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 83 11 c7 f7 7f 00 00}
012fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0133h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0136h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
013ch ret                                     ; RET || C3 || encoded[1]{c3}
013dh mov rcx,7ff7c7336fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 6f 33 c7 f7 7f 00 00}
0147h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 ca d8 5e}
014ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
014fh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0153h mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
015dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e ca d8 5e}
0162h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0165h mov ecx,43ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 3c 04 00 00}
016ah mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
0174h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 63 eb 5e}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
017fh call 7ff7c6374130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 9e 25 ff}
0184h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0187h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
018ah call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 ed 27 ff}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 16 d0 5e}
0197h int 3                                   ; INT3 || CC || encoded[1]{cc}
0198h and eax,69000000h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 00 00 00 69}
019dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
019fh add [rbp-0f000000h],ch                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 ad 00 00 00 f1}
01a5h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01a7h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
01a9h (bad)                                   ; <invalid> || <invalid> || encoded[2]{06 03}
01abh add [rsi],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 06}
01adh add spl,[rax+1]                         ; ADD r8, r/m8 || 02 /r || encoded[4]{42 02 60 01}
01b1h jo short 01b3h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
01b3h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 40 00}
01b6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01b8h xor bh,32h                              ; XOR r/m8, imm8 || 80 /6 ib || encoded[3]{80 f7 32}
01bbh (bad)                                   ; <invalid> || <invalid> || encoded[2]{c7 f7}
01bdh jg short 01bfh                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
01bfh add [rdi+56h],dl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 57 56}
01c2h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
01c6h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
01c8h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
01cch cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
01cfh ja near ptr 05dch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 07 04 00 00}
01d5h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
01d7h lea rax,[rip+45ah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5a 04 00 00}
01deh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
01e1h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
01e8h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
01ebh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
01edh mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
01f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 c9 d8 5e}
01fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0203h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0206h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 bb d8 5e}
020bh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0215h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0219h mov rcx,7ff7c71183d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 83 11 c7 f7 7f 00 00}
0223h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0227h jmp near ptr 05d2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
022ch mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
0236h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 c9 d8 5e}
023bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0242h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0245h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 ba d8 5e}
024ah mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0254h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0258h mov rcx,7ff7c71183c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 83 11 c7 f7 7f 00 00}
0262h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0266h jmp near ptr 05d2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
026bh mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
0275h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 c9 d8 5e}
027ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0281h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0284h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 ba d8 5e}
0289h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0293h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0297h mov rcx,7ff7c71183d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 83 11 c7 f7 7f 00 00}
02a1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a5h jmp near ptr 05d2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
02aah mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
02b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 c9 d8 5e}
02b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02bch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02c0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 ba d8 5e}
02c8h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
02d2h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d6h mov rcx,7ff7c71183e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 83 11 c7 f7 7f 00 00}
02e0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e4h jmp near ptr 05d2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
02e9h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
02f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 c8 d8 5e}
02f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02fbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0302h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 ba d8 5e}
0307h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0311h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0315h mov rcx,7ff7c71183e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 83 11 c7 f7 7f 00 00}
031fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0323h jmp near ptr 05d2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0328h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
0332h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 c8 d8 5e}
0337h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
033ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0341h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca b9 d8 5e}
0346h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0350h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0354h mov rcx,7ff7c71183f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 83 11 c7 f7 7f 00 00}
035eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0362h jmp near ptr 05d2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0367h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
0371h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a c8 d8 5e}
0376h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0379h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0380h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b b9 d8 5e}
0385h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
038fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0393h mov rcx,7ff7c71183f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 83 11 c7 f7 7f 00 00}
039dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03a1h jmp near ptr 05d2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
03a6h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
03b0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b c8 d8 5e}
03b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03bch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bfh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c b9 d8 5e}
03c4h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
03ceh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03d2h mov rcx,7ff7c7118400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 84 11 c7 f7 7f 00 00}
03dch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03e0h jmp near ptr 05d2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
03e5h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
03efh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc c7 d8 5e}
03f4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03fbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03feh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d b9 d8 5e}
0403h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
040dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0411h mov rcx,7ff7c7118418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 84 11 c7 f7 7f 00 00}
041bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041fh jmp near ptr 05d2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0424h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
042eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d c7 d8 5e}
0433h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0436h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
043ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce b8 d8 5e}
0442h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
044ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0450h mov rcx,7ff7c7118420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 84 11 c7 f7 7f 00 00}
045ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045eh jmp near ptr 05d2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
0463h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
046dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e c7 d8 5e}
0472h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0475h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0479h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
047ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f b8 d8 5e}
0481h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
048bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048fh mov rcx,7ff7c7118428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 84 11 c7 f7 7f 00 00}
0499h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049dh jmp near ptr 05d2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
04a2h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
04ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f c7 d8 5e}
04b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04bbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 b8 d8 5e}
04c0h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
04cah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04ceh mov rcx,7ff7c7118430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 84 11 c7 f7 7f 00 00}
04d8h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04dch jmp near ptr 05d2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
04e1h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
04ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 c6 d8 5e}
04f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04fah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 b8 d8 5e}
04ffh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0509h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050dh mov rcx,7ff7c7118408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 84 11 c7 f7 7f 00 00}
0517h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
051bh jmp near ptr 05d2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0520h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
052ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 c6 d8 5e}
052fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0532h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0536h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0539h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 b7 d8 5e}
053eh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0548h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
054ch mov rcx,7ff7c7118410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 84 11 c7 f7 7f 00 00}
0556h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
055ah jmp short 05d2h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
055ch mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 c6 d8 5e}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 b7 d8 5e}
057ah mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c7118438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 84 11 c7 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp short 05d2h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0598h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
05a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 c6 d8 5e}
05a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05aah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05aeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a b7 d8 5e}
05b6h mov rax,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 df 24 c6 f7 7f 00 00}
05c0h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
05c4h mov rax,7ff7c7118440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 84 11 c7 f7 7f 00 00}
05ceh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
05d2h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
05d5h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
05d9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
05dah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
05dbh ret                                     ; RET || C3 || encoded[1]{c3}
05dch mov rcx,7ff7c685cc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cc 85 c6 f7 7f 00 00}
05e6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 c5 d8 5e}
05ebh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
05eeh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
05f2h mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
05fch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf c5 d8 5e}
0601h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0604h mov ecx,43ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 3c 04 00 00}
0609h mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
0613h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 5e eb 5e}
0618h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
061bh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
061eh call 7ff7c6374130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 9a 25 ff}
0623h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0626h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0629h call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 e8 27 ff}
062eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0631h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 11 d0 5e}
0636h int 3                                   ; INT3 || CC || encoded[1]{cc}
0637h add [rax+rax],ah                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 64 00 00}
063bh add [rbx-30000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 a3 00 00 00 d0}
0641h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
0643h add [rip+58000002h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 1d 02 00 00 58}
0649h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
064bh add [rdx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 02 00}
064fh add [rdi+21000001h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 9f 01 00 00 21}
0655h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
0657h add [rax+1],ah                          ; ADD r/m8, r8 || 00 /r || encoded[3]{00 60 01}
065ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
065ch fiadd word ptr [rcx]                    ; FIADD m16int || DE /0 || encoded[2]{de 01}
065eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0660h fiadd dword ptr [rdx]                   ; FIADD m32int || DA /0 || encoded[2]{da 02}
0662h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0664h sbb [rbx],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 03}
0666h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0668h wait                                    ; WAIT || 9B || encoded[1]{9b}
0669h add al,[rax]                            ; ADD r8, r/m8 || 02 /r || encoded[2]{02 00}
066bh add [rbx+rax+0e20000h],dl               ; ADD r/m8, r8 || 00 /r || encoded[7]{00 94 03 00 00 e2 00}
0672h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0674h and eax,19000000h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 00 00 00 19}
0679h (bad)                                   ; <invalid> || <invalid> || encoded[2]{06 03}
067bh add [rsi],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 06}
067dh add spl,[rax+1]                         ; ADD r8, r/m8 || 02 /r || encoded[4]{42 02 60 01}
0681h jo short 0683h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0683h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<bit> lookup(BinaryBitLogicKind:byte kind)
; lookup_(BinaryBitLogicKind~8u)[1221] = {57 56 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 07 04 00 00 8b c9 48 8d 05 5a 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a8 78 33 c7 f7 7f 00 00 e8 d4 c9 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 bb d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 95 c9 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 ba d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 56 c9 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 ba d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 17 c9 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 ba d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 d8 c8 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 ba d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 99 c8 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca b9 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 5a c8 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b b9 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 83 11 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 1b c8 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c b9 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 dc c7 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d b9 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 9d c7 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce b8 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 5e c7 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f b8 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 1f c7 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 b8 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 e0 c6 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 b8 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 84 11 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 78 33 c7 f7 7f 00 00 e8 a1 c6 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 b7 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 84 11 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 78 33 c7 f7 7f 00 00 e8 65 c6 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 b7 d8 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 84 11 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 78 33 c7 f7 7f 00 00 e8 29 c6 d8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a b7 d8 5e 48 b8 80 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 40 84 11 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5e 5f c3 48 b9 50 cc 85 c6 f7 7f 00 00 e8 e5 c5 d8 5e 48 8b f8 40 88 77 08 48 b9 c0 af 5a c6 f7 7f 00 00 e8 cf c5 d8 5e 48 8b f0 b9 3c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 b8 5e eb 5e 48 8b c8 48 8b d7 e8 2d 9a 25 ff 48 8b d0 48 8b ce e8 f2 e8 27 ff 48 8b ce e8 ea 11 d0 5e cc 00 64 00 00 00 a3 00 00 00 d0 03 00 00 1d 02 00 00 58 03 00 00 5c 02 00 00 9f 01 00 00 21 01 00 00 60 01 00 00 de 01 00 00 da 02 00 00 19 03 00 00 9b 02 00 00 94 03 00 00 e2 00 00 00 25 00 00 00 19 06 03 00 06 42 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000ch cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
000fh ja near ptr 041ch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 07 04 00 00}
0015h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0017h lea rax,[rip+45ah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 5a 04 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
0037h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 c9 d8 5e}
003ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
003fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0043h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0046h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 bb d8 5e}
004bh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0055h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0059h mov rcx,7ff7c71183d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 83 11 c7 f7 7f 00 00}
0063h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0067h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006ch mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
0076h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 c9 d8 5e}
007bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0082h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0085h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 ba d8 5e}
008ah mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0094h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0098h mov rcx,7ff7c71183c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 83 11 c7 f7 7f 00 00}
00a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a6h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00abh mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
00b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 c9 d8 5e}
00bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 ba d8 5e}
00c9h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
00d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d7h mov rcx,7ff7c71183d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 83 11 c7 f7 7f 00 00}
00e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e5h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00eah mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
00f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 c9 d8 5e}
00f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0100h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0103h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 ba d8 5e}
0108h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0112h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0116h mov rcx,7ff7c71183e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 83 11 c7 f7 7f 00 00}
0120h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0124h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
0129h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 c8 d8 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 ba d8 5e}
0147h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c71183e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 83 11 c7 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0168h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
0172h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 c8 d8 5e}
0177h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0181h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca b9 d8 5e}
0186h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0190h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0194h mov rcx,7ff7c71183f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 83 11 c7 f7 7f 00 00}
019eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a2h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a7h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
01b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a c8 d8 5e}
01b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b b9 d8 5e}
01c5h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
01cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d3h mov rcx,7ff7c71183f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 83 11 c7 f7 7f 00 00}
01ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e1h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e6h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b c8 d8 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c b9 d8 5e}
0204h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
020eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0212h mov rcx,7ff7c7118400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 84 11 c7 f7 7f 00 00}
021ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0220h jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0225h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
022fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc c7 d8 5e}
0234h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0237h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
023eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d b9 d8 5e}
0243h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
024dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0251h mov rcx,7ff7c7118418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 84 11 c7 f7 7f 00 00}
025bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
025fh jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0264h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
026eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d c7 d8 5e}
0273h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0276h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce b8 d8 5e}
0282h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
028ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0290h mov rcx,7ff7c7118420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 84 11 c7 f7 7f 00 00}
029ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
029eh jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a3h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
02adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e c7 d8 5e}
02b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f b8 d8 5e}
02c1h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
02cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02cfh mov rcx,7ff7c7118428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 84 11 c7 f7 7f 00 00}
02d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02ddh jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e2h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
02ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f c7 d8 5e}
02f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 b8 d8 5e}
0300h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
030ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
030eh mov rcx,7ff7c7118430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 84 11 c7 f7 7f 00 00}
0318h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031ch jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0321h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
032bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 c6 d8 5e}
0330h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0333h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0337h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 b8 d8 5e}
033fh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0349h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034dh mov rcx,7ff7c7118408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 84 11 c7 f7 7f 00 00}
0357h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035bh jmp near ptr 0412h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0360h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
036ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 c6 d8 5e}
036fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0372h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0376h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0379h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 b7 d8 5e}
037eh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0388h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038ch mov rcx,7ff7c7118410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 84 11 c7 f7 7f 00 00}
0396h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ah jmp short 0412h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039ch mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
03a6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 c6 d8 5e}
03abh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03aeh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b5h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 b7 d8 5e}
03bah mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
03c4h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03c8h mov rcx,7ff7c7118438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 84 11 c7 f7 7f 00 00}
03d2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d6h jmp short 0412h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03d8h mov rcx,7ff7c73378a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 78 33 c7 f7 7f 00 00}
03e2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 c6 d8 5e}
03e7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03eah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03eeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f1h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a b7 d8 5e}
03f6h mov rax,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 df 24 c6 f7 7f 00 00}
0400h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0404h mov rax,7ff7c7118440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 84 11 c7 f7 7f 00 00}
040eh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0412h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0415h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0419h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041bh ret                                     ; RET || C3 || encoded[1]{c3}
041ch mov rcx,7ff7c685cc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cc 85 c6 f7 7f 00 00}
0426h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 c5 d8 5e}
042bh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
042eh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0432h mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
043ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf c5 d8 5e}
0441h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0444h mov ecx,43ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 3c 04 00 00}
0449h mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
0453h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 5e eb 5e}
0458h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
045bh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
045eh call 7ff7c6374130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 9a 25 ff}
0463h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0466h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0469h call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 e8 27 ff}
046eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0471h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 11 d0 5e}
0476h int 3                                   ; INT3 || CC || encoded[1]{cc}
0477h add [rax+rax],ah                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 64 00 00}
047bh add [rbx-30000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 a3 00 00 00 d0}
0481h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
0483h add [rip+58000002h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 1d 02 00 00 58}
0489h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
048bh add [rdx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 02 00}
048fh add [rdi+21000001h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 9f 01 00 00 21}
0495h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
0497h add [rax+1],ah                          ; ADD r/m8, r8 || 00 /r || encoded[3]{00 60 01}
049ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
049ch fiadd word ptr [rcx]                    ; FIADD m16int || DE /0 || encoded[2]{de 01}
049eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a0h fiadd dword ptr [rdx]                   ; FIADD m32int || DA /0 || encoded[2]{da 02}
04a2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a4h sbb [rbx],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 03}
04a6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a8h wait                                    ; WAIT || 9B || encoded[1]{9b}
04a9h add al,[rax]                            ; ADD r8, r/m8 || 02 /r || encoded[2]{02 00}
04abh add [rbx+rax+0e20000h],dl               ; ADD r/m8, r8 || 00 /r || encoded[7]{00 94 03 00 00 e2 00}
04b2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04b4h and eax,19000000h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 00 00 00 19}
04b9h (bad)                                   ; <invalid> || <invalid> || encoded[2]{06 03}
04bbh add [rsi],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 06}
04bdh add spl,[rax+1]                         ; ADD r8, r/m8 || 02 /r || encoded[4]{42 02 60 01}
04c1h jo short 04c3h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
04c3h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
