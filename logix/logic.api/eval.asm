------------------------------------------------------------------------------------------------------------------------
; bit eval(UnaryBitLogicKind:byte kind, bit a)
; eval_(UnaryBitLogicKind~8u,1u)[50] = {57 56 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 03 77 44 8b c0 48 8d 0d 96 00 00 00 8b 0c 81 4c 8d 05 e4 ff ff ff 49 03 c8 ff e1 33 c0 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
------------------------------------------------------------------------------------------------------------------------
; bit eval(BinaryBitLogicKind:byte kind, bit a, bit b)
; eval_(BinaryBitLogicKind~8u,1u,1u)[200] = {57 56 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 b3 00 00 00 8b c0 48 8d 0d 0a 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 01 00 00 00 e9 8a 00 00 00 33 c0 e9 83 00 00 00 41 23 d0 8b c2 eb 7c 8b c2 41 23 c0 f7 d0 83 e0 01 eb 70 8b c2 41 0b c0 eb 69 8b c2 41 0b c0 f7 d0 83 e0 01 eb 5d 8b c2 41 33 c0 eb 56 8b c2 41 33 c0 f7 d0 83 e0 01 eb 4a 41 8b c0 f7 d0 83 e0 01 0b c2 eb 3e 8b c2 f7 d0 83 e0 01 41 23 c0 eb 32 8b c2 eb 2e 41 8b c0 eb 29 8b c2 f7 d0 83 e0 01 eb 20 41 8b c0 f7 d0 83 e0 01 eb 16 8b c2 f7 d0 83 e0 01 41 0b c0 eb 0a 41 8b c0 f7 d0 83 e0 01 23 c2 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
