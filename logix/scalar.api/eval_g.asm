------------------------------------------------------------------------------------------------------------------------
; byte eval<byte>(BinaryBitLogicKind:byte kind, byte a, byte b)
; eval_g[8u](BinaryBitLogicKind~8u,8u,8u)[310] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 1f 01 00 00 8b c0 48 8d 0d 98 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff 00 00 00 e9 f1 00 00 00 33 c0 e9 ea 00 00 00 0f b6 c2 41 0f b6 d0 23 c2 0f b6 c0 e9 d9 00 00 00 0f b6 c2 41 0f b6 d0 23 c2 44 8b c0 41 f7 d0 41 0f b6 c0 e9 c1 00 00 00 0f b6 c2 41 0f b6 d0 0b c2 0f b6 c0 e9 b0 00 00 00 0f b6 c2 41 0f b6 d0 0b c2 44 8b c0 41 f7 d0 41 0f b6 c0 e9 98 00 00 00 0f b6 c2 41 0f b6 d0 33 c2 0f b6 c0 e9 87 00 00 00 0f b6 c2 41 0f b6 d0 33 c2 44 8b c0 41 f7 d0 41 0f b6 c0 eb 72 0f b6 c2 eb 6d 41 0f b6 c0 eb 67 0f b6 c2 44 8b c0 41 f7 d0 41 0f b6 c0 eb 58 41 0f b6 c0 8b d0 f7 d2 0f b6 c2 eb 4b 0f b6 c2 41 0f b6 d0 44 8b c2 41 f7 d0 41 0b c0 0f b6 c0 eb 36 0f b6 c2 41 0f b6 d0 c4 62 78 f2 c2 41 0f b6 c0 eb 24 0f b6 c2 41 0f b6 d0 44 8b c0 41 f7 d0 41 0b d0 0f b6 c2 eb 0f 0f b6 c2 41 0f b6 c8 c4 e2 70 f2 c0 0f b6 c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 0136h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 1f 01 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+198h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 98 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
0034h jmp near ptr 012ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0039h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003bh jmp near ptr 012ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ea 00 00 00}
0040h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0043h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0047h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0049h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004ch jmp near ptr 012ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 d9 00 00 00}
0051h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0054h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0058h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
005ah mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
005dh not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
0060h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0064h jmp near ptr 012ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 c1 00 00 00}
0069h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
006ch movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0070h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0072h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0075h jmp near ptr 012ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b0 00 00 00}
007ah movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
007dh movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0081h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0083h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0086h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
0089h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
008dh jmp near ptr 012ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 98 00 00 00}
0092h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0095h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0099h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
009bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009eh jmp near ptr 012ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 87 00 00 00}
00a3h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
00a6h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
00aah xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
00ach mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
00afh not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00b2h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
00b6h jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
00b8h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
00bbh jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 6d}
00bdh movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
00c1h jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 67}
00c3h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
00c6h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
00c9h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00cch movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
00d0h jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 58}
00d2h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
00d6h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
00d8h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
00dah movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
00ddh jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
00dfh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
00e2h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
00e6h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
00e9h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00ech or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
00efh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00f2h jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 36}
00f4h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
00f7h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
00fbh andn r8d,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 62 78 f2 c2}
0100h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0104h jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 24}
0106h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0109h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
010dh mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0110h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
0113h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0116h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0119h jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 0f}
011bh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
011eh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0122h andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
0127h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
012ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
012dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0131h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0132h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0133h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0134h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0135h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte eval<sbyte>(BinaryBitLogicKind:byte kind, sbyte a, sbyte b)
; eval_g[8i](BinaryBitLogicKind~8u,8i,8i)[513] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 33 01 00 00 8b c0 48 8d 0d b0 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff e9 04 01 00 00 33 c0 e9 fd 00 00 00 48 0f be c2 49 0f be d0 23 c2 48 0f be c0 e9 ea 00 00 00 48 0f be c2 49 0f be d0 23 c2 44 8b c0 41 f7 d0 49 0f be c0 e9 d1 00 00 00 48 0f be c2 49 0f be d0 0b c2 48 0f be c0 e9 be 00 00 00 48 0f be c2 49 0f be d0 0b c2 44 8b c0 41 f7 d0 49 0f be c0 e9 a5 00 00 00 48 0f be c2 49 0f be d0 33 c2 48 0f be c0 e9 92 00 00 00 48 0f be c2 49 0f be d0 33 c2 44 8b c0 41 f7 d0 49 0f be c0 eb 7c 48 0f be c2 eb 76 49 0f be c0 eb 70 48 0f be c2 44 8b c0 41 f7 d0 49 0f be c0 eb 60 49 0f be c0 8b d0 f7 d2 48 0f be c2 eb 52 48 0f be c2 49 0f be d0 44 8b c2 41 f7 d0 41 0b c0 48 0f be c0 eb 3b 48 0f be c2 49 0f be d0 c4 62 78 f2 c2 49 0f be c0 eb 28 48 0f be c2 49 0f be d0 44 8b c0 41 f7 d0 41 0b d0 48 0f be c2 eb 11 48 0f be c2 49 0f be c8 c4 e2 70 f2 c0 48 0f be c0 48 0f be c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 80 56 03 c8 f7 7f 00 00 e8 47 ad bc 5e 48 8b f8 40 88 77 08 48 b9 68 6f 71 c7 f7 7f 00 00 e8 71 30 b7 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 1f ad bc 5e 48 8b d8 b9 4c 04 00 00 48 ba 90 41 b3 c7 f7 7f 00 00 e8 08 46 cf 5e 48 8b e8 48 8b ce e8 dd 99 0c ff 8b c8 e8 2e 6b 0c ff 4c 8b c0 48 8b cd 48 8b d7 e8 70 81 0a ff 48 8b d0 48 8b cb e8 1d d8 0c ff 48 8b cb e8 25 f9 b3 5e cc 00 00 00 00 2f 00 00 00 36 00 00 00 22 01 00 00 b7 00 00 00 f8 00 00 00 bd 00 00 00 8e 00 00 00 62 00 00 00 75 00 00 00 a1 00 00 00 d3 00 00 00 e1 00 00 00 c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 014ah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 33 01 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+1b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d b0 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0034h jmp near ptr 013dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 04 01 00 00}
0039h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003bh jmp near ptr 013dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 fd 00 00 00}
0040h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0044h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0048h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
004ah movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
004eh jmp near ptr 013dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ea 00 00 00}
0053h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0057h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
005bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
005dh mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0060h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
0063h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
0067h jmp near ptr 013dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d1 00 00 00}
006ch movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0070h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0074h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0076h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
007ah jmp near ptr 013dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 be 00 00 00}
007fh movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0083h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0087h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0089h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
008ch not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
008fh movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
0093h jmp near ptr 013dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 00 00 00}
0098h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
009ch movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
00a0h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
00a2h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
00a6h jmp near ptr 013dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 92 00 00 00}
00abh movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00afh movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
00b3h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
00b5h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
00b8h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00bbh movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
00bfh jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 7c}
00c1h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00c5h jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
00c7h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
00cbh jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 70}
00cdh movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00d1h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
00d4h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00d7h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
00dbh jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 60}
00ddh movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
00e1h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
00e3h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
00e5h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00e9h jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
00ebh movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00efh movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
00f3h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
00f6h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00f9h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
00fch movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0100h jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 3b}
0102h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0106h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
010ah andn r8d,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 62 78 f2 c2}
010fh movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
0113h jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 28}
0115h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0119h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
011dh mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0120h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
0123h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0126h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
012ah jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 11}
012ch movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0130h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0134h andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
0139h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
013dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0141h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0145h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0146h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0147h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0148h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0149h ret                                     ; RET || C3 || encoded[1]{c3}
014ah mov rcx,7ff7c8035680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 56 03 c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 ad bc 5e}
0159h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
015ch mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0160h mov rcx,7ff7c7716f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 71 c7 f7 7f 00 00}
016ah call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 30 b7 5e}
016fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0172h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
017ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f ad bc 5e}
0181h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0184h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0189h mov rdx,7ff7c7b34190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 41 b3 c7 f7 7f 00 00}
0193h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 46 cf 5e}
0198h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
019bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
019eh call 7ff7c7765990h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 99 0c ff}
01a3h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
01a5h call 7ff7c7762ae8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 6b 0c ff}
01aah mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
01adh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
01b0h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
01b3h call 7ff7c7744138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 81 0a ff}
01b8h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01bbh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
01beh call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d d8 0c ff}
01c3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
01c6h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 f9 b3 5e}
01cbh int 3                                   ; INT3 || CC || encoded[1]{cc}
01cch add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01ceh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01d0h (bad)                                   ; <invalid> || <invalid> || encoded[2]{2f 00}
01d2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01d4h add ss:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{36 00 00}
01d7h add [rdx],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 22}
01d9h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
01dbh add [rdi-8000000h],dh                   ; ADD r/m8, r8 || 00 /r || encoded[6]{00 b7 00 00 00 f8}
01e1h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01e3h add [rbp-72000000h],bh                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 bd 00 00 00 8e}
01e9h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01ebh add [rdx],ah                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 62 00}
01eeh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01f0h jne short 01f2h                         ; JNE rel8 || 75 cb || encoded[2]{75 00}
01f2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01f4h mov eax,[0e1000000d3000000h]            ; MOV EAX, moffs32 || o32 A1 mo || encoded[9]{a1 00 00 00 d3 00 00 00 e1}
01fdh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01ffh add bl,al                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 c3}
------------------------------------------------------------------------------------------------------------------------
; ushort eval<ushort>(BinaryBitLogicKind:byte kind, ushort a, ushort b)
; eval_g[16u](BinaryBitLogicKind~8u,16u,16u)[310] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 1f 01 00 00 8b c0 48 8d 0d 98 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff 00 00 e9 f1 00 00 00 33 c0 e9 ea 00 00 00 0f b7 c2 41 0f b7 d0 23 c2 0f b7 c0 e9 d9 00 00 00 0f b7 c2 41 0f b7 d0 23 c2 44 8b c0 41 f7 d0 41 0f b7 c0 e9 c1 00 00 00 0f b7 c2 41 0f b7 d0 0b c2 0f b7 c0 e9 b0 00 00 00 0f b7 c2 41 0f b7 d0 0b c2 44 8b c0 41 f7 d0 41 0f b7 c0 e9 98 00 00 00 0f b7 c2 41 0f b7 d0 33 c2 0f b7 c0 e9 87 00 00 00 0f b7 c2 41 0f b7 d0 33 c2 44 8b c0 41 f7 d0 41 0f b7 c0 eb 72 0f b7 c2 eb 6d 41 0f b7 c0 eb 67 0f b7 c2 44 8b c0 41 f7 d0 41 0f b7 c0 eb 58 41 0f b7 c0 8b d0 f7 d2 0f b7 c2 eb 4b 0f b7 c2 41 0f b7 d0 44 8b c2 41 f7 d0 41 0b c0 0f b7 c0 eb 36 0f b7 c2 41 0f b7 d0 c4 62 78 f2 c2 41 0f b7 c0 eb 24 0f b7 c2 41 0f b7 d0 44 8b c0 41 f7 d0 41 0b d0 0f b7 c2 eb 0f 0f b7 c2 41 0f b7 c8 c4 e2 70 f2 c0 0f b7 c0 0f b7 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 0136h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 1f 01 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+198h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 98 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
0034h jmp near ptr 012ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0039h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003bh jmp near ptr 012ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 ea 00 00 00}
0040h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0043h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0047h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0049h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
004ch jmp near ptr 012ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 d9 00 00 00}
0051h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0054h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0058h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
005ah mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
005dh not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
0060h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0064h jmp near ptr 012ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 c1 00 00 00}
0069h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
006ch movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0070h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0072h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0075h jmp near ptr 012ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b0 00 00 00}
007ah movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
007dh movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0081h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0083h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0086h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
0089h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
008dh jmp near ptr 012ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 98 00 00 00}
0092h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0095h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0099h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
009bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
009eh jmp near ptr 012ah                      ; JMP rel32 || E9 cd || encoded[5]{e9 87 00 00 00}
00a3h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00a6h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
00aah xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
00ach mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
00afh not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00b2h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
00b6h jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
00b8h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00bbh jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 6d}
00bdh movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
00c1h jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 67}
00c3h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00c6h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
00c9h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00cch movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
00d0h jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 58}
00d2h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
00d6h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
00d8h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
00dah movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00ddh jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
00dfh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00e2h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
00e6h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
00e9h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00ech or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
00efh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00f2h jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 36}
00f4h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00f7h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
00fbh andn r8d,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 62 78 f2 c2}
0100h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0104h jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 24}
0106h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0109h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
010dh mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0110h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
0113h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0116h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0119h jmp short 012ah                         ; JMP rel8 || EB cb || encoded[2]{eb 0f}
011bh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
011eh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
0122h andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
0127h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
012ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
012dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0131h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0132h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0133h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0134h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0135h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short eval<short>(BinaryBitLogicKind:byte kind, short a, short b)
; eval_g[16i](BinaryBitLogicKind~8u,16i,16i)[513] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 33 01 00 00 8b c0 48 8d 0d b0 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff e9 04 01 00 00 33 c0 e9 fd 00 00 00 48 0f bf c2 49 0f bf d0 23 c2 48 0f bf c0 e9 ea 00 00 00 48 0f bf c2 49 0f bf d0 23 c2 44 8b c0 41 f7 d0 49 0f bf c0 e9 d1 00 00 00 48 0f bf c2 49 0f bf d0 0b c2 48 0f bf c0 e9 be 00 00 00 48 0f bf c2 49 0f bf d0 0b c2 44 8b c0 41 f7 d0 49 0f bf c0 e9 a5 00 00 00 48 0f bf c2 49 0f bf d0 33 c2 48 0f bf c0 e9 92 00 00 00 48 0f bf c2 49 0f bf d0 33 c2 44 8b c0 41 f7 d0 49 0f bf c0 eb 7c 48 0f bf c2 eb 76 49 0f bf c0 eb 70 48 0f bf c2 44 8b c0 41 f7 d0 49 0f bf c0 eb 60 49 0f bf c0 8b d0 f7 d2 48 0f bf c2 eb 52 48 0f bf c2 49 0f bf d0 44 8b c2 41 f7 d0 41 0b c0 48 0f bf c0 eb 3b 48 0f bf c2 49 0f bf d0 c4 62 78 f2 c2 49 0f bf c0 eb 28 48 0f bf c2 49 0f bf d0 44 8b c0 41 f7 d0 41 0b d0 48 0f bf c2 eb 11 48 0f bf c2 49 0f bf c8 c4 e2 70 f2 c0 48 0f bf c0 48 0f bf c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 80 56 03 c8 f7 7f 00 00 e8 97 a6 bc 5e 48 8b f8 40 88 77 08 48 b9 48 7f 71 c7 f7 7f 00 00 e8 c1 29 b7 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 6f a6 bc 5e 48 8b d8 b9 4c 04 00 00 48 ba 90 41 b3 c7 f7 7f 00 00 e8 58 3f cf 5e 48 8b e8 48 8b ce e8 2d 93 0c ff 8b c8 e8 7e 64 0c ff 4c 8b c0 48 8b cd 48 8b d7 e8 c0 7a 0a ff 48 8b d0 48 8b cb e8 6d d1 0c ff 48 8b cb e8 75 f2 b3 5e cc 00 00 00 00 2f 00 00 00 36 00 00 00 22 01 00 00 b7 00 00 00 f8 00 00 00 bd 00 00 00 8e 00 00 00 62 00 00 00 75 00 00 00 a1 00 00 00 d3 00 00 00 e1 00 00 00 c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 014ah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 33 01 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+1b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d b0 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0034h jmp near ptr 013dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 04 01 00 00}
0039h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003bh jmp near ptr 013dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 fd 00 00 00}
0040h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0044h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0048h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
004ah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
004eh jmp near ptr 013dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ea 00 00 00}
0053h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0057h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
005bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
005dh mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0060h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
0063h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0067h jmp near ptr 013dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d1 00 00 00}
006ch movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0070h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0074h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0076h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
007ah jmp near ptr 013dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 be 00 00 00}
007fh movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0083h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0087h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0089h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
008ch not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
008fh movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0093h jmp near ptr 013dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 00 00 00}
0098h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
009ch movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
00a0h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
00a2h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00a6h jmp near ptr 013dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 92 00 00 00}
00abh movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00afh movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
00b3h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
00b5h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
00b8h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00bbh movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
00bfh jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 7c}
00c1h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00c5h jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
00c7h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
00cbh jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 70}
00cdh movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00d1h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
00d4h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00d7h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
00dbh jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 60}
00ddh movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
00e1h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
00e3h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
00e5h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00e9h jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
00ebh movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00efh movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
00f3h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
00f6h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00f9h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
00fch movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0100h jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 3b}
0102h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0106h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
010ah andn r8d,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 62 78 f2 c2}
010fh movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0113h jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 28}
0115h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0119h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
011dh mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0120h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
0123h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0126h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
012ah jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 11}
012ch movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0130h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
0134h andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
0139h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
013dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0141h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0145h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0146h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0147h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0148h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0149h ret                                     ; RET || C3 || encoded[1]{c3}
014ah mov rcx,7ff7c8035680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 56 03 c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 a6 bc 5e}
0159h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
015ch mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0160h mov rcx,7ff7c7717f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 71 c7 f7 7f 00 00}
016ah call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 29 b7 5e}
016fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0172h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
017ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f a6 bc 5e}
0181h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0184h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0189h mov rdx,7ff7c7b34190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 90 41 b3 c7 f7 7f 00 00}
0193h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 3f cf 5e}
0198h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
019bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
019eh call 7ff7c7765990h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 93 0c ff}
01a3h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
01a5h call 7ff7c7762ae8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 64 0c ff}
01aah mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
01adh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
01b0h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
01b3h call 7ff7c7744138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 7a 0a ff}
01b8h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01bbh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
01beh call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d d1 0c ff}
01c3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
01c6h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 f2 b3 5e}
01cbh int 3                                   ; INT3 || CC || encoded[1]{cc}
01cch add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01ceh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01d0h (bad)                                   ; <invalid> || <invalid> || encoded[2]{2f 00}
01d2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01d4h add ss:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{36 00 00}
01d7h add [rdx],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 22}
01d9h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
01dbh add [rdi-8000000h],dh                   ; ADD r/m8, r8 || 00 /r || encoded[6]{00 b7 00 00 00 f8}
01e1h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01e3h add [rbp-72000000h],bh                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 bd 00 00 00 8e}
01e9h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01ebh add [rdx],ah                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 62 00}
01eeh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01f0h jne short 01f2h                         ; JNE rel8 || 75 cb || encoded[2]{75 00}
01f2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01f4h mov eax,[0e1000000d3000000h]            ; MOV EAX, moffs32 || o32 A1 mo || encoded[9]{a1 00 00 00 d3 00 00 00 e1}
01fdh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01ffh add bl,al                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 c3}
------------------------------------------------------------------------------------------------------------------------
; uint eval<uint>(BinaryBitLogicKind:byte kind, uint a, uint b)
; eval_g[32u](BinaryBitLogicKind~8u,32u,32u)[187] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 a4 00 00 00 8b c0 48 8d 0d 20 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff eb 7c 33 c0 eb 78 41 23 d0 8b c2 eb 71 8b c2 41 23 c0 f7 d0 eb 68 8b c2 41 0b c0 eb 61 8b c2 41 8b d0 0b c2 f7 d0 eb 56 8b c2 41 8b d0 33 c2 eb 4d 8b c2 41 8b d0 33 c2 f7 d0 eb 42 8b c2 eb 3e 41 8b c0 eb 39 8b c2 f7 d0 eb 33 41 8b c0 f7 d0 eb 2c 8b c2 41 8b d0 44 8b c2 41 f7 d0 41 0b c0 eb 1c c4 c2 68 f2 c0 eb 15 8b c2 41 8b d0 f7 d0 0b c2 eb 0a 8b c2 41 8b c8 c4 e2 70 f2 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 00bbh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a4 00 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+120h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 20 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0034h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 7c}
0036h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0038h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 78}
003ah and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
003dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
003fh jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 71}
0041h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0043h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0046h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0048h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 68}
004ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
004ch or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
004fh jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 61}
0051h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0053h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0056h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0058h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
005ah jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 56}
005ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
005eh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0061h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0063h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 4d}
0065h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0067h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
006ah xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
006ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
006eh jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 42}
0070h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0072h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0074h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0077h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
0079h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
007dh jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 33}
007fh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0082h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0084h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 2c}
0086h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0088h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
008bh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
008eh not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
0091h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0094h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
0096h andn eax,edx,r8d                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 c2 68 f2 c0}
009bh jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
009dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
009fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
00a2h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00a4h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00a6h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
00a8h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00aah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
00adh andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
00b2h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00b6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int eval<int>(BinaryBitLogicKind:byte kind, int a, int b)
; eval_g[32i](BinaryBitLogicKind~8u,32i,32i)[187] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 a4 00 00 00 8b c0 48 8d 0d 20 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff eb 7c 33 c0 eb 78 41 23 d0 8b c2 eb 71 8b c2 41 23 c0 f7 d0 eb 68 8b c2 41 0b c0 eb 61 8b c2 41 8b d0 0b c2 f7 d0 eb 56 8b c2 41 8b d0 33 c2 eb 4d 8b c2 41 8b d0 33 c2 f7 d0 eb 42 8b c2 eb 3e 41 8b c0 eb 39 8b c2 f7 d0 eb 33 41 8b c0 f7 d0 eb 2c 8b c2 41 8b d0 44 8b c2 41 f7 d0 41 0b c0 eb 1c c4 c2 68 f2 c0 eb 15 8b c2 41 8b d0 f7 d0 0b c2 eb 0a 8b c2 41 8b c8 c4 e2 70 f2 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 00bbh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a4 00 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+120h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 20 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0034h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 7c}
0036h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0038h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 78}
003ah and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
003dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
003fh jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 71}
0041h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0043h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0046h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0048h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 68}
004ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
004ch or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
004fh jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 61}
0051h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0053h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0056h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0058h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
005ah jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 56}
005ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
005eh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0061h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0063h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 4d}
0065h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0067h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
006ah xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
006ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
006eh jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 42}
0070h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0072h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0074h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0077h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
0079h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
007dh jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 33}
007fh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0082h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0084h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 2c}
0086h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0088h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
008bh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
008eh not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
0091h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0094h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
0096h andn eax,edx,r8d                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 c2 68 f2 c0}
009bh jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
009dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
009fh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
00a2h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00a4h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00a6h jmp short 00b2h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
00a8h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00aah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
00adh andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
00b2h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00b6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong eval<ulong>(BinaryBitLogicKind:byte kind, ulong a, ulong b)
; eval_g[64u](BinaryBitLogicKind~8u,64u,64u)[222] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 c7 00 00 00 8b c0 48 8d 0d 40 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 48 b8 ff ff ff ff ff ff ff ff e9 97 00 00 00 33 c0 e9 90 00 00 00 49 23 d0 48 8b c2 e9 85 00 00 00 48 8b c2 49 23 c0 48 f7 d0 eb 7a 48 8b c2 49 0b c0 eb 72 48 8b c2 49 8b d0 48 0b c2 48 f7 d0 eb 64 48 8b c2 49 8b d0 48 33 c2 eb 59 48 8b c2 49 8b d0 48 33 c2 48 f7 d0 eb 4b 48 8b c2 eb 46 49 8b c0 eb 41 48 8b c2 48 f7 d0 eb 39 49 8b c0 48 f7 d0 eb 31 48 8b c2 49 8b d0 4c 8b c2 49 f7 d0 49 0b c0 eb 20 c4 c2 e8 f2 c0 eb 19 48 8b c2 49 8b d0 48 f7 d0 48 0b c2 eb 0b 48 8b c2 49 8b c8 c4 e2 f0 f2 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 00deh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 c7 00 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+140h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 40 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0039h jmp near ptr 00d5h                      ; JMP rel32 || E9 cd || encoded[5]{e9 97 00 00 00}
003eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0040h jmp near ptr 00d5h                      ; JMP rel32 || E9 cd || encoded[5]{e9 90 00 00 00}
0045h and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
0048h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
004bh jmp near ptr 00d5h                      ; JMP rel32 || E9 cd || encoded[5]{e9 85 00 00 00}
0050h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0053h and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0056h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0059h jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 7a}
005bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
005eh or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0061h jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
0063h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0066h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0069h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
006ch not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
006fh jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 64}
0071h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0074h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0077h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
007ah jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 59}
007ch mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
007fh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0082h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0085h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0088h jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
008ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
008dh jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
008fh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0092h jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 41}
0094h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0097h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
009ah jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
009ch mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
009fh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00a2h jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 31}
00a4h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00a7h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00aah mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
00adh not r8                                  ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d0}
00b0h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
00b3h jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
00b5h andn rax,rdx,r8                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 c2 e8 f2 c0}
00bah jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
00bch mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00bfh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00c2h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00c5h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
00c8h jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 0b}
00cah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00cdh mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
00d0h andn rax,rcx,rax                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 c0}
00d5h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00d9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00dah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00dbh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00dch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00ddh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long eval<long>(BinaryBitLogicKind:byte kind, long a, long b)
; eval_g[64i](BinaryBitLogicKind~8u,64i,64i)[222] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 c7 00 00 00 8b c0 48 8d 0d 40 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 48 b8 ff ff ff ff ff ff ff ff e9 97 00 00 00 33 c0 e9 90 00 00 00 49 23 d0 48 8b c2 e9 85 00 00 00 48 8b c2 49 23 c0 48 f7 d0 eb 7a 48 8b c2 49 0b c0 eb 72 48 8b c2 49 8b d0 48 0b c2 48 f7 d0 eb 64 48 8b c2 49 8b d0 48 33 c2 eb 59 48 8b c2 49 8b d0 48 33 c2 48 f7 d0 eb 4b 48 8b c2 eb 46 49 8b c0 eb 41 48 8b c2 48 f7 d0 eb 39 49 8b c0 48 f7 d0 eb 31 48 8b c2 49 8b d0 4c 8b c2 49 f7 d0 49 0b c0 eb 20 c4 c2 e8 f2 c0 eb 19 48 8b c2 49 8b d0 48 f7 d0 48 0b c2 eb 0b 48 8b c2 49 8b c8 c4 e2 f0 f2 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 00deh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 c7 00 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+140h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 40 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0039h jmp near ptr 00d5h                      ; JMP rel32 || E9 cd || encoded[5]{e9 97 00 00 00}
003eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0040h jmp near ptr 00d5h                      ; JMP rel32 || E9 cd || encoded[5]{e9 90 00 00 00}
0045h and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
0048h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
004bh jmp near ptr 00d5h                      ; JMP rel32 || E9 cd || encoded[5]{e9 85 00 00 00}
0050h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0053h and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0056h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0059h jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 7a}
005bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
005eh or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0061h jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
0063h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0066h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0069h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
006ch not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
006fh jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 64}
0071h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0074h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0077h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
007ah jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 59}
007ch mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
007fh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0082h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0085h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0088h jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
008ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
008dh jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
008fh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0092h jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 41}
0094h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0097h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
009ah jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
009ch mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
009fh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00a2h jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 31}
00a4h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00a7h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00aah mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
00adh not r8                                  ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d0}
00b0h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
00b3h jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
00b5h andn rax,rdx,r8                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 c2 e8 f2 c0}
00bah jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
00bch mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00bfh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00c2h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00c5h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
00c8h jmp short 00d5h                         ; JMP rel8 || EB cb || encoded[2]{eb 0b}
00cah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00cdh mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
00d0h andn rax,rcx,rax                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 c0}
00d5h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00d9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00dah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00dbh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00dch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00ddh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte eval<byte>(UnaryBitLogicKind:byte kind, byte a)
; eval_g[8u](UnaryBitLogicKind~8u,8u)[34] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 12 40 80 fe 02 75 1d 0f b6 c2 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0022h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 0033h                         ; JNE rel8 || 75 cb || encoded[2]{75 1d}
0016h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0019h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
001fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0020h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte eval<sbyte>(UnaryBitLogicKind:byte kind, sbyte a)
; eval_g[8i](UnaryBitLogicKind~8u,8i)[35] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 13 40 80 fe 02 75 20 48 0f be c2 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0023h                          ; JE rel8 || 74 cb || encoded[2]{74 13}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 0036h                         ; JNE rel8 || 75 cb || encoded[2]{75 20}
0016h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
001ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001fh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0020h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0021h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort eval<ushort>(UnaryBitLogicKind:byte kind, ushort a)
; eval_g[16u](UnaryBitLogicKind~8u,16u)[34] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 12 40 80 fe 02 75 1d 0f b7 c2 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0022h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 0033h                         ; JNE rel8 || 75 cb || encoded[2]{75 1d}
0016h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0019h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
001fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0020h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short eval<short>(UnaryBitLogicKind:byte kind, short a)
; eval_g[16i](UnaryBitLogicKind~8u,16i)[35] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 13 40 80 fe 02 75 20 48 0f bf c2 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0023h                          ; JE rel8 || 74 cb || encoded[2]{74 13}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 0036h                         ; JNE rel8 || 75 cb || encoded[2]{75 20}
0016h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
001ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001fh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0020h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0021h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint eval<uint>(UnaryBitLogicKind:byte kind, uint a)
; eval_g[32u](UnaryBitLogicKind~8u,32u)[33] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 11 40 80 fe 02 75 18 8b c2 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0021h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 002eh                         ; JNE rel8 || 75 cb || encoded[2]{75 18}
0016h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0018h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
001eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int eval<int>(UnaryBitLogicKind:byte kind, int a)
; eval_g[32i](UnaryBitLogicKind~8u,32i)[33] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 11 40 80 fe 02 75 18 8b c2 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0021h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 002eh                         ; JNE rel8 || 75 cb || encoded[2]{75 18}
0016h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0018h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
001eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong eval<ulong>(UnaryBitLogicKind:byte kind, ulong a)
; eval_g[64u](UnaryBitLogicKind~8u,64u)[34] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 12 40 80 fe 02 75 1b 48 8b c2 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0022h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 0031h                         ; JNE rel8 || 75 cb || encoded[2]{75 1b}
0016h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0019h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
001fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0020h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long eval<long>(UnaryBitLogicKind:byte kind, long a)
; eval_g[64i](UnaryBitLogicKind~8u,64i)[34] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 12 40 80 fe 02 75 1b 48 8b c2 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0022h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 0031h                         ; JNE rel8 || 75 cb || encoded[2]{75 1b}
0016h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0019h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
001fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0020h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte eval<byte>(ComparisonKind:byte kind, byte a, byte b)
; eval_g[8u](ComparisonKind~8u,8u,8u)[263] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 ee 00 00 00 8b c0 48 8d 0d 6e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 0f b6 d2 45 0f b6 c0 0f b6 c2 41 3b c0 0f 94 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 00 00 00 e9 a5 00 00 00 0f b6 c2 41 0f b6 d0 44 0f b6 c0 44 3b c2 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 00 00 00 e9 7f 00 00 00 0f b6 c2 41 0f b6 d0 3b c2 41 0f 92 c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff 00 00 00 eb 5e 0f b6 c2 41 0f b6 d0 3b c2 41 0f 96 c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff 00 00 00 eb 3d 0f b6 c2 41 0f b6 d0 3b c2 41 0f 97 c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff 00 00 00 eb 1c 0f b6 c2 41 0f b6 c8 3b c1 0f 93 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 00 00 00 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 0107h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ee 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+16eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 6e 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0034h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0038h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
003bh cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
003eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0041h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0044h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0046h jne short 004ch                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0048h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
004ah jmp short 0051h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
004ch mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
0051h jmp near ptr 00fbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 00 00 00}
0056h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0059h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
005dh movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
0061h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0064h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
006ch jne short 0072h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
006eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0070h jmp short 0077h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0072h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
0077h jmp near ptr 00fbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 00 00 00}
007ch movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
007fh movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0083h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0085h setb r8b                                ; SETB r/m8 || 0F 92 /r || encoded[4]{41 0f 92 c0}
0089h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
008dh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0090h jne short 0096h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0092h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0094h jmp short 009bh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0096h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
009bh jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
009dh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
00a0h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
00a4h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00a6h setbe r8b                               ; SETBE r/m8 || 0F 96 /r || encoded[4]{41 0f 96 c0}
00aah movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00aeh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00b1h jne short 00b7h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b3h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b5h jmp short 00bch                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00b7h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
00bch jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3d}
00beh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
00c1h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
00c5h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00c7h seta r8b                                ; SETA r/m8 || 0F 97 /r || encoded[4]{41 0f 97 c0}
00cbh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00cfh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00d2h jne short 00d8h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00d4h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00d6h jmp short 00ddh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00d8h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
00ddh jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
00dfh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
00e2h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
00e6h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
00e8h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
00ebh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00eeh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00f0h jne short 00f6h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00f2h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00f4h jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00f6h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
00fbh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00feh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0102h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0103h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0104h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0105h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0106h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte eval<sbyte>(ComparisonKind:byte kind, sbyte a, sbyte b)
; eval_g[8i](ComparisonKind~8u,8i,8i)[271] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 f6 00 00 00 8b c0 48 8d 0d 76 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 48 0f be d2 4d 0f be c0 48 0f be c2 41 3b c0 0f 94 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 7f 00 00 00 e9 aa 00 00 00 48 0f be c2 49 0f be d0 4c 0f be c0 44 3b c2 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 7f 00 00 00 e9 83 00 00 00 48 0f be c2 49 0f be d0 3b c2 41 0f 9c c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 7f 00 00 00 eb 61 48 0f be c2 49 0f be d0 3b c2 41 0f 9e c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 7f 00 00 00 eb 3f 48 0f be c2 49 0f be d0 3b c2 41 0f 9f c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 7f 00 00 00 eb 1d 48 0f be c2 49 0f be c8 3b c1 0f 9d c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 7f 00 00 00 48 0f be c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 010fh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 f6 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+176h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 76 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0035h movsx r8,r8b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c0}
0039h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
003dh cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
0040h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0043h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0046h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0048h jne short 004eh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
004ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
004ch jmp short 0053h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
004eh mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
0053h jmp near ptr 0102h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
0058h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
005ch movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0060h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
0064h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0067h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
006ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
006fh jne short 0075h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0071h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0073h jmp short 007ah                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0075h mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
007ah jmp near ptr 0102h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
007fh movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0083h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0087h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0089h setl r8b                                ; SETL r/m8 || 0F 9C /r || encoded[4]{41 0f 9c c0}
008dh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0091h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0094h jne short 009ah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0096h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0098h jmp short 009fh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
009ah mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
009fh jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 61}
00a1h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00a5h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
00a9h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00abh setle r8b                               ; SETLE r/m8 || 0F 9E /r || encoded[4]{41 0f 9e c0}
00afh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00b3h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00b6h jne short 00bch                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b8h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00bah jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00bch mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
00c1h jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
00c3h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00c7h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
00cbh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00cdh setg r8b                                ; SETG r/m8 || 0F 9F /r || encoded[4]{41 0f 9f c0}
00d1h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00d5h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00d8h jne short 00deh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00dah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00dch jmp short 00e3h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00deh mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
00e3h jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 1d}
00e5h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00e9h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
00edh cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
00efh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00f2h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00f5h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00f7h jne short 00fdh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00f9h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00fbh jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00fdh mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
0102h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0106h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
010ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
010bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
010ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
010dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort eval<ushort>(ComparisonKind:byte kind, ushort a, ushort b)
; eval_g[16u](ComparisonKind~8u,16u,16u)[263] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 ee 00 00 00 8b c0 48 8d 0d 6e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 0f b7 d2 45 0f b7 c0 0f b7 c2 41 3b c0 0f 94 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff 00 00 e9 a5 00 00 00 0f b7 c2 41 0f b7 d0 44 0f b7 c0 44 3b c2 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff 00 00 e9 7f 00 00 00 0f b7 c2 41 0f b7 d0 3b c2 41 0f 92 c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff ff 00 00 eb 5e 0f b7 c2 41 0f b7 d0 3b c2 41 0f 96 c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff ff 00 00 eb 3d 0f b7 c2 41 0f b7 d0 3b c2 41 0f 97 c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff ff 00 00 eb 1c 0f b7 c2 41 0f b7 c8 3b c1 0f 93 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff 00 00 0f b7 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 0107h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ee 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+16eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 6e 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0034h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0038h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
003bh cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
003eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0041h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0044h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0046h jne short 004ch                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0048h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
004ah jmp short 0051h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
004ch mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
0051h jmp near ptr 00fbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 00 00 00}
0056h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0059h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
005dh movzx r8d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c0}
0061h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0064h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
006ch jne short 0072h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
006eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0070h jmp short 0077h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0072h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
0077h jmp near ptr 00fbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 00 00 00}
007ch movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
007fh movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0083h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0085h setb r8b                                ; SETB r/m8 || 0F 92 /r || encoded[4]{41 0f 92 c0}
0089h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
008dh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0090h jne short 0096h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0092h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0094h jmp short 009bh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0096h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
009bh jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
009dh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00a0h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
00a4h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00a6h setbe r8b                               ; SETBE r/m8 || 0F 96 /r || encoded[4]{41 0f 96 c0}
00aah movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00aeh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00b1h jne short 00b7h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b3h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b5h jmp short 00bch                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00b7h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
00bch jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3d}
00beh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00c1h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
00c5h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00c7h seta r8b                                ; SETA r/m8 || 0F 97 /r || encoded[4]{41 0f 97 c0}
00cbh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00cfh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00d2h jne short 00d8h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00d4h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00d6h jmp short 00ddh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00d8h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
00ddh jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
00dfh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00e2h movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
00e6h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
00e8h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
00ebh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00eeh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00f0h jne short 00f6h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00f2h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00f4h jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00f6h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
00fbh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00feh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0102h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0103h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0104h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0105h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0106h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short eval<short>(ComparisonKind:byte kind, short a, short b)
; eval_g[16i](ComparisonKind~8u,16i,16i)[271] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 f6 00 00 00 8b c0 48 8d 0d 76 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 48 0f bf d2 4d 0f bf c0 48 0f bf c2 41 3b c0 0f 94 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 7f 00 00 e9 aa 00 00 00 48 0f bf c2 49 0f bf d0 4c 0f bf c0 44 3b c2 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 7f 00 00 e9 83 00 00 00 48 0f bf c2 49 0f bf d0 3b c2 41 0f 9c c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff 7f 00 00 eb 61 48 0f bf c2 49 0f bf d0 3b c2 41 0f 9e c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff 7f 00 00 eb 3f 48 0f bf c2 49 0f bf d0 3b c2 41 0f 9f c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff 7f 00 00 eb 1d 48 0f bf c2 49 0f bf c8 3b c1 0f 9d c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 7f 00 00 48 0f bf c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 010fh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 f6 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+176h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 76 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0035h movsx r8,r8w                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf c0}
0039h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
003dh cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
0040h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0043h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0046h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0048h jne short 004eh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
004ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
004ch jmp short 0053h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
004eh mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
0053h jmp near ptr 0102h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
0058h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
005ch movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0060h movsx r8,ax                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c0}
0064h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0067h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
006ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
006fh jne short 0075h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0071h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0073h jmp short 007ah                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0075h mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
007ah jmp near ptr 0102h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
007fh movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0083h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0087h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0089h setl r8b                                ; SETL r/m8 || 0F 9C /r || encoded[4]{41 0f 9c c0}
008dh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0091h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0094h jne short 009ah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0096h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0098h jmp short 009fh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
009ah mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
009fh jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 61}
00a1h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00a5h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
00a9h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00abh setle r8b                               ; SETLE r/m8 || 0F 9E /r || encoded[4]{41 0f 9e c0}
00afh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00b3h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00b6h jne short 00bch                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b8h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00bah jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00bch mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
00c1h jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
00c3h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00c7h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
00cbh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00cdh setg r8b                                ; SETG r/m8 || 0F 9F /r || encoded[4]{41 0f 9f c0}
00d1h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00d5h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00d8h jne short 00deh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00dah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00dch jmp short 00e3h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00deh mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
00e3h jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 1d}
00e5h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00e9h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
00edh cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
00efh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00f2h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00f5h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00f7h jne short 00fdh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00f9h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00fbh jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00fdh mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
0102h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0106h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
010ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
010bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
010ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
010dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint eval<uint>(ComparisonKind:byte kind, uint a, uint b)
; eval_g[32u](ComparisonKind~8u,32u,32u)[200] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 af 00 00 00 8b c0 48 8d 0d 2e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 04 33 c0 eb 05 b8 ff ff ff ff eb 76 41 3b d0 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff ff eb 5e 41 3b d0 0f 92 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff ff eb 46 41 3b d0 0f 96 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff ff eb 2e 41 3b d0 0f 97 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff ff eb 16 41 3b d0 0f 93 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff ff 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 00c8h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 af 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+12eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 2e 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0034h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
0037h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003ah test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
003ch jne short 0042h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
003eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0040h jmp short 0047h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0042h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0047h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0049h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
004ch setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
004fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0052h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0054h jne short 005ah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0056h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0058h jmp short 005fh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
005ah mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
005fh jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0061h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
006ch jne short 0072h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
006eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0070h jmp short 0077h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0072h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0077h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
0079h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
007ch setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
007fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0082h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0084h jne short 008ah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0086h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0088h jmp short 008fh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
008ah mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
008fh jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 2e}
0091h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0094h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0097h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
009ch jne short 00a2h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
009eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00a0h jmp short 00a7h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00a2h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
00a7h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 16}
00a9h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
00ach setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
00afh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b2h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00b4h jne short 00bah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b6h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b8h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00bah mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
00bfh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00c3h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c4h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int eval<int>(ComparisonKind:byte kind, int a, int b)
; eval_g[32i](ComparisonKind~8u,32i,32i)[200] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 af 00 00 00 8b c0 48 8d 0d 2e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 04 33 c0 eb 05 b8 ff ff ff 7f eb 76 41 3b d0 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff 7f eb 5e 41 3b d0 0f 9c c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff 7f eb 46 41 3b d0 0f 9e c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff 7f eb 2e 41 3b d0 0f 9f c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff 7f eb 16 41 3b d0 0f 9d c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff 7f 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 00c8h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 af 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+12eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 2e 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0034h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
0037h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003ah test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
003ch jne short 0042h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
003eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0040h jmp short 0047h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0042h mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
0047h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0049h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
004ch setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
004fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0052h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0054h jne short 005ah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0056h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0058h jmp short 005fh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
005ah mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
005fh jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0061h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0064h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
006ch jne short 0072h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
006eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0070h jmp short 0077h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0072h mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
0077h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
0079h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
007ch setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
007fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0082h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0084h jne short 008ah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0086h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0088h jmp short 008fh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
008ah mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
008fh jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 2e}
0091h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0094h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0097h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
009ch jne short 00a2h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
009eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00a0h jmp short 00a7h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00a2h mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
00a7h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 16}
00a9h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
00ach setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00afh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b2h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00b4h jne short 00bah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b6h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b8h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00bah mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
00bfh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00c3h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c4h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong eval<ulong>(ComparisonKind:byte kind, ulong a, ulong b)
; eval_g[64u](ComparisonKind~8u,64u,64u)[233] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 d0 00 00 00 8b c0 48 8d 0d 4e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 49 3b d0 0f 94 c2 0f b6 d2 85 d2 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff ff e9 8f 00 00 00 49 3b d0 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff ff eb 72 49 3b d0 0f 92 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff ff eb 55 49 3b d0 0f 96 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff ff eb 38 49 3b d0 0f 97 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff ff eb 1b 49 3b d0 0f 93 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff ff 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 00e9h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 d0 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+14eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 4e 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0034h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
0037h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003ah test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
003ch jne short 0042h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
003eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0040h jmp short 004ch                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0042h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
004ch jmp near ptr 00e0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8f 00 00 00}
0051h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0054h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0057h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
005ch jne short 0062h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
005eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0060h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0062h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
006ch jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
006eh cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0071h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
007bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
007dh jmp short 0089h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
007fh mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0089h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
008bh cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
008eh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0091h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0094h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0096h jne short 009ch                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0098h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
009ah jmp short 00a6h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
009ch mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
00a6h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
00a8h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
00abh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
00aeh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b1h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00b3h jne short 00b9h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b5h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b7h jmp short 00c3h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
00b9h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
00c3h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
00c5h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
00c8h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
00cbh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00ceh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00d0h jne short 00d6h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00d2h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00d4h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
00d6h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
00e0h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00e4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00e5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00e6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e8h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long eval<long>(ComparisonKind:byte kind, long a, long b)
; eval_g[64i](ComparisonKind~8u,64i,64i)[233] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 d0 00 00 00 8b c0 48 8d 0d 4e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 49 3b d0 0f 94 c2 0f b6 d2 85 d2 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f e9 8f 00 00 00 49 3b d0 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f eb 72 49 3b d0 0f 9c c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f eb 55 49 3b d0 0f 9e c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f eb 38 49 3b d0 0f 9f c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f eb 1b 49 3b d0 0f 9d c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 00e9h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 d0 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+14eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 4e 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0034h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
0037h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003ah test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
003ch jne short 0042h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
003eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0040h jmp short 004ch                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0042h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
004ch jmp near ptr 00e0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8f 00 00 00}
0051h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0054h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0057h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
005ch jne short 0062h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
005eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0060h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0062h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
006ch jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
006eh cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0071h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
007bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
007dh jmp short 0089h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
007fh mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
0089h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
008bh cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
008eh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0091h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0094h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0096h jne short 009ch                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0098h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
009ah jmp short 00a6h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
009ch mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
00a6h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
00a8h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
00abh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
00aeh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b1h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00b3h jne short 00b9h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b5h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b7h jmp short 00c3h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
00b9h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
00c3h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
00c5h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
00c8h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00cbh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00ceh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00d0h jne short 00d6h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00d2h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00d4h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
00d6h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
00e0h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00e4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00e5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00e6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e8h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte eval<byte>(TernaryBitLogicKind:byte kind, byte a, byte b, byte c)
; eval_g[8u](TernaryBitLogicKind~8u,8u,8u,8u)[484] = {57 56 53 48 83 ec 30 8b f1 40 0f b6 ce ff c9 83 f9 5e 0f 87 9d 08 00 00 8b c9 48 8d 05 c7 08 00 00 8b 04 88 4c 8d 15 de ff ff ff 49 03 c2 ff e0 45 0f b6 c0 45 0f b6 c9 45 0b c1 41 0f b6 c8 0f b6 d2 0b ca f7 d1 0f b6 c1 e9 5c 08 00 00 41 0f b6 c0 44 0f b6 c2 41 0b c0 8b d0 f7 d2 0f b6 ca 45 0f b6 c9 41 23 c9 0f b6 c1 e9 3b 08 00 00 41 0f b6 c0 0f b6 d2 0b c2 44 8b c0 41 f7 d0 41 0f b6 c0 e9 23 08 00 00 0f b6 c2 45 0f b6 c9 41 0b c1 8b d0 f7 d2 0f b6 ca 45 0f b6 c0 41 23 c8 0f b6 c1 e9 03 08 00 00 41 0f b6 c1 0f b6 d2 0b c2 44 8b c8 41 f7 d1 41 0f b6 c1 e9 eb 07 00 00 0f b6 c2 8b d0 f7 d2 0f b6 ca 45 0f b6 c0 45 0f b6 c9 45 33 c1 41 0f b6 c0 0f b6 c9 23 c8 0f b6 c1 e9 c5 07 00 00 41 0f b6 c0 45 0f b6 c1 41 23 c0 44 0f b6 c8 0f b6 d2 41 0b d1 8b ca f7 d1 0f b6 c1 e9 a4 07 00 00 0f b6 c2 8b d0 f7 d2 0f b6 ca 45 0f b6 c0 41 23 c8 0f b6 c9 45 0f b6 c9 41 23 c9 0f b6 c1 e9 81 07 00 00 41 0f b6 c0 45 0f b6 c9 41 33 c1 44 0f b6 c0 0f b6 d2 41 0b d0 8b ca f7 d1 0f b6 c1 e9 60 07 00 00 0f b6 c2 8b d0 f7 d2 0f b6 ca 45 0f b6 c9 41 23 c9 0f b6 c1 e9 47 07 00 00 0f b6 c2 8b d0 f7 d2 0f b6 ca 45 0f b6 c0 41 81 f0 ff 00 00 00 41 0f b6 c0 45 0f b6 c9 41 0b c1 0f b6 c0 0f b6 c9 23 c8 0f b6 c1 e9 17 07 00 00 0f b6 c2 8b d0 f7 d2 0f b6 ca 45 0f b6 c0 41 23 c8 0f b6 c1 e9 fe 06 00 00 0f b6 ca f7 d1 40 0f b6 f1 41 0f b6 c9 81 f1 ff 00 00 00 40 0f b6 f9 41 0f b6 c8 88 4c 24 28 48 8d 4c 24 28 e8 1b 2d 41 ff 0f b6 08 e8 e3 6d 7e ff 8b d8 8b cf e8 aa c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
0012h ja near ptr 08b5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 9d 08 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+8c7h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 c7 08 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
002bh add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0034h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0038h or r8d,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b c1}
003bh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
003fh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0042h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0044h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0046h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0049h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5c 08 00 00}
004eh movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0052h movzx r8d,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c2}
0056h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0059h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
005bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
005dh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0060h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0064h and ecx,r9d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c9}
0067h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
006ah jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 3b 08 00 00}
006fh movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0073h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0076h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0078h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
007bh not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
007eh movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0082h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 23 08 00 00}
0087h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
008ah movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
008eh or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0091h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0093h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0095h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0098h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
009ch and ecx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c8}
009fh movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
00a2h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 08 00 00}
00a7h movzx eax,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c1}
00abh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00aeh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00b0h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
00b3h not r9d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d1}
00b6h movzx eax,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c1}
00bah jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 eb 07 00 00}
00bfh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
00c2h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
00c4h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
00c6h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
00c9h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00cdh movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
00d1h xor r8d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c1}
00d4h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
00d8h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00dbh and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00ddh movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
00e0h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 c5 07 00 00}
00e5h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
00e9h movzx r8d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c1}
00edh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
00f0h movzx r9d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c8}
00f4h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00f7h or edx,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d1}
00fah mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
00fch not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00feh movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0101h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a4 07 00 00}
0106h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0109h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
010bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
010dh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0110h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0114h and ecx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c8}
0117h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
011ah movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
011eh and ecx,r9d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c9}
0121h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0124h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 81 07 00 00}
0129h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
012dh movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0131h xor eax,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c1}
0134h movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
0138h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
013bh or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
013eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0140h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0142h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0145h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 60 07 00 00}
014ah movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
014dh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
014fh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0151h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0154h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0158h and ecx,r9d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c9}
015bh movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
015eh jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 47 07 00 00}
0163h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0166h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0168h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
016ah movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
016dh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0171h xor r8d,0ffh                            ; XOR r/m32, imm32 || o32 81 /6 id || encoded[7]{41 81 f0 ff 00 00 00}
0178h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
017ch movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0180h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0183h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0186h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0189h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
018bh movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
018eh jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 17 07 00 00}
0193h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0196h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0198h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
019ah movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
019dh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
01a1h and ecx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c8}
01a4h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
01a7h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 fe 06 00 00}
01ach movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
01afh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
01b1h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
01b5h movzx ecx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c9}
01b9h xor ecx,0ffh                            ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f1 ff 00 00 00}
01bfh movzx edi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f9}
01c3h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
01c7h mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
01cbh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
01d0h call 7ff7c7ab2d60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 2d 41 ff}
01d5h movzx ecx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 08}
01d8h call 7ff7c7e86e30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 6d 7e ff}
01ddh mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
01dfh mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
01e1h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 aa c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte eval<sbyte>(TernaryBitLogicKind:byte kind, sbyte a, sbyte b, sbyte c)
; eval_g[8i](TernaryBitLogicKind~8u,8i,8i,8i)[922] = {57 56 53 48 83 ec 20 8b d9 41 8b f0 41 8b f9 0f b6 cb ff c9 83 f9 5e 0f 87 b8 08 00 00 8b c9 48 8d 05 e2 08 00 00 8b 04 88 4c 8d 05 df ff ff ff 49 03 c0 ff e0 48 0f be ce 48 0f be c7 0b c8 48 0f be c9 48 0f be d2 0b ca f7 d1 48 0f be c1 e9 75 08 00 00 48 0f be c6 48 0f be d2 0b c2 8b c8 f7 d1 48 0f be c9 48 0f be c7 23 c8 48 0f be c1 e9 54 08 00 00 48 0f be c6 48 0f be d2 0b c2 8b c8 f7 d1 48 0f be c1 e9 3d 08 00 00 48 0f be c2 48 0f be d7 0b c2 8b c8 f7 d1 48 0f be c9 48 0f be c6 23 c8 48 0f be c1 e9 1c 08 00 00 48 0f be c7 48 0f be d2 0b c2 8b c8 f7 d1 48 0f be c1 e9 05 08 00 00 48 0f be c2 8b d0 f7 d2 48 0f be ca 48 0f be c6 48 0f be d7 33 c2 48 0f be c0 48 0f be c9 23 c8 48 0f be c1 e9 dc 07 00 00 48 0f be c6 48 0f be cf 23 c8 48 0f be c9 48 0f be d2 0b ca f7 d1 48 0f be c1 e9 bd 07 00 00 48 0f be c2 8b d0 f7 d2 48 0f be ca 48 0f be c6 23 c8 48 0f be c9 48 0f be c7 23 c8 48 0f be c1 e9 98 07 00 00 48 0f be c6 48 0f be cf 33 c8 48 0f be c9 48 0f be d2 0b ca f7 d1 48 0f be c1 e9 79 07 00 00 48 0f be c2 8b d0 f7 d2 48 0f be ca 48 0f be c7 23 c8 48 0f be c1 e9 5e 07 00 00 48 0f be ca f7 d1 48 0f be d9 48 0f be ce e8 02 fe ff ff 48 0f be c8 48 0f be d7 e8 c5 44 b2 ff 48 0f be d0 8b cb e8 d2 ab ff ff 48 0f be c0 e9 2a 07 00 00 48 0f be ca e8 20 40 b2 ff 48 0f be d0 48 0f be ce e8 b3 ab ff ff 48 0f be c0 e9 0b 07 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 e1 fc ff ff e9 f5 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 bb fc ff ff e9 df 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 95 fc ff ff e9 c9 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 6f fc ff ff e9 b3 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 49 fc ff ff e9 9d 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 23 fc ff ff e9 87 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 fd fb ff ff e9 71 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 d7 fb ff ff e9 5b 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 b1 fb ff ff e9 45 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 8b fb ff ff e9 2f 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 65 fb ff ff e9 19 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 3f fb ff ff e9 03 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 19 fb ff ff e9 ed 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 f3 fa ff ff e9 d7 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 cd fa ff ff e9 c1 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 a7 fa ff ff e9 ab 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 81 fa ff ff e9 95 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 5b fa ff ff e9 7f 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 35 fa ff ff e9 69 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 0f fa ff ff e9 53 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 e9 f9 ff ff e9 3d 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov ebx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d9}
0009h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
000ch mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
000fh movzx ecx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 cb}
0012h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0014h cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
0017h ja near ptr 08d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b8 08 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rax,[rip+8e2h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e2 08 00 00}
0026h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0029h lea r8,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 df ff ff ff}
0030h add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0033h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0035h movsx rcx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ce}
0039h movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
003dh or ecx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c8}
003fh movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0043h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0047h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0049h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
004bh movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
004fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 08 00 00}
0054h movsx rax,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c6}
0058h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
005ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
005eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0060h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0062h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0066h movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
006ah and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
006ch movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0070h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 54 08 00 00}
0075h movsx rax,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c6}
0079h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
007dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
007fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0081h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0083h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0087h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3d 08 00 00}
008ch movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0090h movsx rdx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d7}
0094h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0096h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0098h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
009ah movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
009eh movsx rax,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c6}
00a2h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00a4h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
00a8h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 08 00 00}
00adh movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
00b1h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
00b5h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00b7h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b9h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00bbh movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
00bfh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 05 08 00 00}
00c4h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00c8h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
00cah not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
00cch movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
00d0h movsx rax,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c6}
00d4h movsx rdx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d7}
00d8h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
00dah movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
00deh movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
00e2h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00e4h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
00e8h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dc 07 00 00}
00edh movsx rax,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c6}
00f1h movsx rcx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be cf}
00f5h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00f7h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
00fbh movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
00ffh or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0101h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0103h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0107h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bd 07 00 00}
010ch movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0110h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0112h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0114h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0118h movsx rax,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c6}
011ch and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
011eh movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0122h movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
0126h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0128h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
012ch jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 98 07 00 00}
0131h movsx rax,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c6}
0135h movsx rcx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be cf}
0139h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
013bh movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
013fh movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0143h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0145h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0147h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
014bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 79 07 00 00}
0150h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0154h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0156h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0158h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
015ch movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
0160h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0162h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0166h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5e 07 00 00}
016bh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
016fh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0171h movsx rbx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d9}
0175h movsx rcx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ce}
0179h call 7ff7c86a0c80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 fe ff ff}
017eh movsx rcx,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c8}
0182h movsx rdx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d7}
0186h call 7ff7c81c5350h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 44 b2 ff}
018bh movsx rdx,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d0}
018fh mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
0191h call 7ff7c869ba68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 ab ff ff}
0196h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
019ah jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2a 07 00 00}
019fh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
01a3h call 7ff7c81c4ec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 40 b2 ff}
01a8h movsx rdx,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d0}
01ach movsx rcx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ce}
01b0h call 7ff7c869ba68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 ab ff ff}
01b5h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
01b9h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0b 07 00 00}
01beh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
01c2h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
01c6h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
01cah call 7ff7c86a0bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 fc ff ff}
01cfh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f5 06 00 00}
01d4h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
01d8h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
01dch movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
01e0h call 7ff7c86a0ba0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb fc ff ff}
01e5h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 df 06 00 00}
01eah movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
01eeh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
01f2h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
01f6h call 7ff7c86a0b90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 fc ff ff}
01fbh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c9 06 00 00}
0200h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0204h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0208h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
020ch call 7ff7c86a0b80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f fc ff ff}
0211h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b3 06 00 00}
0216h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
021ah movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
021eh movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0222h call 7ff7c86a0b70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 fc ff ff}
0227h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9d 06 00 00}
022ch movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0230h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0234h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0238h call 7ff7c86a0b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 fc ff ff}
023dh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 87 06 00 00}
0242h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0246h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
024ah movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
024eh call 7ff7c86a0b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd fb ff ff}
0253h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 71 06 00 00}
0258h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
025ch movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0260h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0264h call 7ff7c86a0b40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 fb ff ff}
0269h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
026eh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0272h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0276h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
027ah call 7ff7c86a0b30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 fb ff ff}
027fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 45 06 00 00}
0284h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0288h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
028ch movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0290h call 7ff7c86a0b20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b fb ff ff}
0295h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2f 06 00 00}
029ah movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
029eh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
02a2h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
02a6h call 7ff7c86a0b10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 fb ff ff}
02abh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 06 00 00}
02b0h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
02b4h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
02b8h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
02bch call 7ff7c86a0b00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f fb ff ff}
02c1h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 06 00 00}
02c6h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
02cah movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
02ceh movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
02d2h call 7ff7c86a0af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 fb ff ff}
02d7h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 05 00 00}
02dch movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
02e0h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
02e4h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
02e8h call 7ff7c86a0ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fa ff ff}
02edh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d7 05 00 00}
02f2h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
02f6h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
02fah movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
02feh call 7ff7c86a0ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd fa ff ff}
0303h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c1 05 00 00}
0308h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
030ch movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0310h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0314h call 7ff7c86a0ac0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 fa ff ff}
0319h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ab 05 00 00}
031eh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0322h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0326h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
032ah call 7ff7c86a0ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 fa ff ff}
032fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 05 00 00}
0334h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0338h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
033ch movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0340h call 7ff7c86a0aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b fa ff ff}
0345h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 05 00 00}
034ah movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
034eh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0352h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0356h call 7ff7c86a0a90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 fa ff ff}
035bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 69 05 00 00}
0360h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0364h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0368h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
036ch call 7ff7c86a0a80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f fa ff ff}
0371h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 53 05 00 00}
0376h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
037ah movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
037eh movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0382h call 7ff7c86a0a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 f9 ff ff}
0387h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3d 05 00 00}
038ch movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0390h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0394h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0398h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; ushort eval<ushort>(TernaryBitLogicKind:byte kind, ushort a, ushort b, ushort c)
; eval_g[16u](TernaryBitLogicKind~8u,16u,16u,16u)[2093] = {57 56 53 48 83 ec 30 8b d9 41 8b f0 41 8b f9 0f b6 cb ff c9 83 f9 5e 0f 87 10 08 00 00 8b c9 48 8d 05 3a 08 00 00 8b 04 88 4c 8d 05 df ff ff ff 49 03 c0 ff e0 0f b7 ce 0f b7 c7 0b c8 0f b7 c9 0f b7 d2 0b ca f7 d1 0f b7 c1 e9 d3 07 00 00 0f b7 c6 0f b7 d2 0b c2 8b c8 f7 d1 0f b7 c9 0f b7 c7 23 c8 0f b7 c1 e9 b7 07 00 00 0f b7 c6 0f b7 d2 0b c2 8b c8 f7 d1 0f b7 c1 e9 a3 07 00 00 0f b7 c2 0f b7 d7 0b c2 8b c8 f7 d1 0f b7 c9 0f b7 c6 23 c8 0f b7 c1 e9 87 07 00 00 0f b7 c7 0f b7 d2 0b c2 8b c8 f7 d1 0f b7 c1 e9 73 07 00 00 0f b7 c2 8b d0 f7 d2 0f b7 ca 0f b7 c6 0f b7 d7 33 c2 0f b7 c0 0f b7 c9 23 c8 0f b7 c1 e9 51 07 00 00 0f b7 c6 0f b7 cf 23 c8 0f b7 c9 0f b7 d2 0b ca f7 d1 0f b7 c1 e9 37 07 00 00 0f b7 c2 8b d0 f7 d2 0f b7 ca 0f b7 c6 23 c8 0f b7 c9 0f b7 c7 23 c8 0f b7 c1 e9 18 07 00 00 0f b7 c6 0f b7 cf 33 c8 0f b7 c9 0f b7 d2 0b ca f7 d1 0f b7 c1 e9 fe 06 00 00 0f b7 c2 8b d0 f7 d2 0f b7 ca 0f b7 c7 23 c8 0f b7 c1 e9 e7 06 00 00 0f b7 c2 8b d0 f7 d2 0f b7 ca 0f b7 c6 35 ff ff 00 00 89 44 24 2c 0f b7 44 24 2c 0f b7 d7 0b c2 0f b7 c0 0f b7 c9 23 c8 0f b7 c1 e9 b7 06 00 00 0f b7 c2 8b d0 f7 d2 0f b7 ca 0f b7 c6 23 c8 0f b7 c1 e9 a0 06 00 00 0f b7 c2 8b d0 f7 d2 0f b7 ca 0f b7 c7 35 ff ff 00 00 89 44 24 28 0f b7 44 24 28 0f b7 d6 0b c2 0f b7 c0 0f b7 c9 23 c8 0f b7 c1 e9 70 06 00 00 0f b7 ca f7 d1 0f b7 c9 66 89 4c 24 20 48 8d 4c 24 20 e8 af 24 7e ff 0f b7 18 0f b7 ce 0f b7 d7 e8 91 99 ff ff 8b d0 8b cb e8 e8 99 ff ff 0f b7 c0 e9 3a 06 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 e1 fa ff ff e9 26 06 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 bd fa ff ff e9 12 06 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 99 fa ff ff e9 fe 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 75 fa ff ff e9 ea 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 51 fa ff ff e9 d6 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 2d fa ff ff e9 c2 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 09 fa ff ff e9 ae 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 e5 f9 ff ff e9 9a 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 c1 f9 ff ff e9 86 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 9d f9 ff ff e9 72 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 79 f9 ff ff e9 5e 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 55 f9 ff ff e9 4a 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 31 f9 ff ff e9 36 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 0d f9 ff ff e9 22 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 e9 f8 ff ff e9 0e 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 bd f8 ff ff e9 fa 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 99 f8 ff ff e9 e6 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 75 f8 ff ff e9 d2 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 51 f8 ff ff e9 be 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 2d f8 ff ff e9 aa 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 09 f8 ff ff e9 96 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 e5 f7 ff ff e9 82 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 c1 f7 ff ff e9 6e 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 9d f7 ff ff e9 5a 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 79 f7 ff ff e9 46 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 55 f7 ff ff e9 32 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 31 f7 ff ff e9 1e 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 0d f7 ff ff e9 0a 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 e9 f6 ff ff e9 f6 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 c5 f6 ff ff e9 e2 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 a1 f6 ff ff e9 ce 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 7d f6 ff ff e9 ba 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 59 f6 ff ff e9 a6 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 35 f6 ff ff e9 92 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 11 f6 ff ff e9 7e 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 ed f5 ff ff e9 6a 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 c9 f5 ff ff e9 56 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 a5 f5 ff ff e9 42 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 81 f5 ff ff e9 2e 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 5d f5 ff ff e9 1a 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 39 f5 ff ff e9 06 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 15 f5 ff ff e9 f2 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 f1 f4 ff ff e9 de 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 cd f4 ff ff e9 ca 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 a9 f4 ff ff e9 b6 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 85 f4 ff ff e9 a2 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 61 f4 ff ff e9 8e 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 3d f4 ff ff e9 7a 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 19 f4 ff ff e9 66 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 f5 f3 ff ff e9 52 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 d1 f3 ff ff e9 3e 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 ad f3 ff ff e9 2a 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 89 f3 ff ff e9 16 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 65 f3 ff ff e9 02 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 41 f3 ff ff e9 ee 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 1d f3 ff ff e9 da 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 f9 f2 ff ff e9 c6 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 d5 f2 ff ff e9 b2 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 b1 f2 ff ff e9 9e 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 8d f2 ff ff e9 8a 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 69 f2 ff ff e9 76 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 45 f2 ff ff e9 62 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 21 f2 ff ff e9 4e 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 fd f1 ff ff e9 3a 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 d9 f1 ff ff e9 26 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 b5 f1 ff ff e9 12 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 91 f1 ff ff e9 fe 00 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 6d f1 ff ff e9 ea 00 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 49 f1 ff ff e9 d6 00 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 25 f1 ff ff e9 c2 00 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 01 f1 ff ff e9 ae 00 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 dd f0 ff ff e9 9a 00 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 b9 f0 ff ff e9 86 00 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 95 f0 ff ff eb 75 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 74 f0 ff ff eb 64 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 53 f0 ff ff eb 53 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 32 f0 ff ff eb 42 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 11 f0 ff ff eb 31 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 f0 ef ff ff eb 20 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 1f e5 ff ff eb 0f 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 fe e4 ff ff 0f b7 c0 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov ebx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d9}
0009h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
000ch mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
000fh movzx ecx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 cb}
0012h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0014h cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
0017h ja near ptr 082dh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 10 08 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rax,[rip+83ah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 3a 08 00 00}
0026h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0029h lea r8,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 df ff ff ff}
0030h add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0033h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0035h movzx ecx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ce}
0038h movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
003bh or ecx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c8}
003dh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0040h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0043h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0045h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0047h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
004ah jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d3 07 00 00}
004fh movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
0052h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0055h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0057h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0059h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
005bh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
005eh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
0061h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0063h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0066h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b7 07 00 00}
006bh movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
006eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0071h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0073h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0075h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0077h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
007ah jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a3 07 00 00}
007fh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0082h movzx edx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d7}
0085h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0087h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0089h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
008bh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
008eh movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
0091h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0093h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0096h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 87 07 00 00}
009bh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
009eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00a1h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00a3h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a5h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00a7h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
00aah jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 73 07 00 00}
00afh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00b2h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
00b4h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
00b6h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
00b9h movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
00bch movzx edx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d7}
00bfh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
00c1h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00c4h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00c7h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00c9h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
00cch jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 51 07 00 00}
00d1h movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
00d4h movzx ecx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 cf}
00d7h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00d9h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00dch movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00dfh or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
00e1h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00e3h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
00e6h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 37 07 00 00}
00ebh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00eeh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
00f0h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
00f2h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
00f5h movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
00f8h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00fah movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00fdh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
0100h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0102h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0105h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 18 07 00 00}
010ah movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
010dh movzx ecx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 cf}
0110h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0112h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0115h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0118h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
011ah not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
011ch movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
011fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fe 06 00 00}
0124h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0127h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0129h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
012bh movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
012eh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
0131h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0133h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0136h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e7 06 00 00}
013bh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
013eh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0140h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0142h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0145h movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
0148h xor eax,0ffffh                          ; XOR EAX, imm32 || o32 35 id || encoded[5]{35 ff ff 00 00}
014dh mov [rsp+2ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 2c}
0151h movzx eax,word ptr [rsp+2ch]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 2c}
0156h movzx edx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d7}
0159h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
015bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
015eh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0161h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0163h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0166h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b7 06 00 00}
016bh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
016eh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0170h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0172h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0175h movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
0178h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
017ah movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
017dh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a0 06 00 00}
0182h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0185h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0187h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0189h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
018ch movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
018fh xor eax,0ffffh                          ; XOR EAX, imm32 || o32 35 id || encoded[5]{35 ff ff 00 00}
0194h mov [rsp+28h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 28}
0198h movzx eax,word ptr [rsp+28h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 28}
019dh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
01a0h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
01a2h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
01a5h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
01a8h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
01aah movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
01adh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 70 06 00 00}
01b2h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
01b5h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
01b7h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
01bah mov [rsp+20h],cx                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 4c 24 20}
01bfh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
01c4h call 7ff7c7e84628h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 24 7e ff}
01c9h movzx ebx,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 18}
01cch movzx ecx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ce}
01cfh movzx edx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d7}
01d2h call 7ff7c869bb18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 99 ff ff}
01d7h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
01d9h mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
01dbh call 7ff7c869bb78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 99 ff ff}
01e0h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
01e3h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3a 06 00 00}
01e8h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
01ebh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
01eeh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
01f2h call 7ff7c86a1c88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 fa ff ff}
01f7h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 26 06 00 00}
01fch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
01ffh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0202h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0206h call 7ff7c86a1c78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd fa ff ff}
020bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 12 06 00 00}
0210h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0213h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0216h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
021ah call 7ff7c86a1c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 fa ff ff}
021fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fe 05 00 00}
0224h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0227h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
022ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
022eh call 7ff7c86a1c58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 fa ff ff}
0233h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ea 05 00 00}
0238h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
023bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
023eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0242h call 7ff7c86a1c48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 fa ff ff}
0247h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d6 05 00 00}
024ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
024fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0252h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0256h call 7ff7c86a1c38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d fa ff ff}
025bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c2 05 00 00}
0260h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0263h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0266h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
026ah call 7ff7c86a1c28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 fa ff ff}
026fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 05 00 00}
0274h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0277h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
027ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
027eh call 7ff7c86a1c18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 f9 ff ff}
0283h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9a 05 00 00}
0288h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
028bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
028eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0292h call 7ff7c86a1c08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 f9 ff ff}
0297h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 86 05 00 00}
029ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
029fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
02a2h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
02a6h call 7ff7c86a1bf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d f9 ff ff}
02abh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 72 05 00 00}
02b0h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
02b3h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
02b6h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
02bah call 7ff7c86a1be8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f9 ff ff}
02bfh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5e 05 00 00}
02c4h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
02c7h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
02cah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
02ceh call 7ff7c86a1bd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 f9 ff ff}
02d3h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4a 05 00 00}
02d8h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
02dbh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
02deh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
02e2h call 7ff7c86a1bc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 f9 ff ff}
02e7h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 36 05 00 00}
02ech movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
02efh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
02f2h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
02f6h call 7ff7c86a1bb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d f9 ff ff}
02fbh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 22 05 00 00}
0300h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0303h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0306h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
030ah call 7ff7c86a1ba8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 f8 ff ff}
030fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0e 05 00 00}
0314h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0317h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
031ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
031eh call 7ff7c86a1b90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd f8 ff ff}
0323h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fa 04 00 00}
0328h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
032bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
032eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0332h call 7ff7c86a1b80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f8 ff ff}
0337h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e6 04 00 00}
033ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
033fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0342h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0346h call 7ff7c86a1b70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 f8 ff ff}
034bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d2 04 00 00}
0350h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0353h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0356h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
035ah call 7ff7c86a1b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 f8 ff ff}
035fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 be 04 00 00}
0364h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0367h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
036ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
036eh call 7ff7c86a1b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d f8 ff ff}
0373h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 04 00 00}
0378h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
037bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
037eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0382h call 7ff7c86a1b40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 f8 ff ff}
0387h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 96 04 00 00}
038ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
038fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0392h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0396h call 7ff7c86a1b30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 f7 ff ff}
039bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 82 04 00 00}
03a0h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
03a3h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
03a6h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
03aah call 7ff7c86a1b20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 f7 ff ff}
03afh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6e 04 00 00}
03b4h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
03b7h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
03bah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
03beh call 7ff7c86a1b10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d f7 ff ff}
03c3h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5a 04 00 00}
03c8h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
03cbh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
03ceh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
03d2h call 7ff7c86a1b00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f7 ff ff}
03d7h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 46 04 00 00}
03dch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
03dfh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
03e2h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
03e6h call 7ff7c86a1af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 f7 ff ff}
03ebh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 32 04 00 00}
03f0h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
03f3h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
03f6h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
03fah call 7ff7c86a1ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 f7 ff ff}
03ffh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1e 04 00 00}
0404h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0407h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
040ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
040eh call 7ff7c86a1ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d f7 ff ff}
0413h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0a 04 00 00}
0418h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
041bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
041eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0422h call 7ff7c86a1ac0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 f6 ff ff}
0427h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f6 03 00 00}
042ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
042fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0432h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0436h call 7ff7c86a1ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 f6 ff ff}
043bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e2 03 00 00}
0440h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0443h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0446h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
044ah call 7ff7c86a1aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 f6 ff ff}
044fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ce 03 00 00}
0454h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0457h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
045ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
045eh call 7ff7c86a1a90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f6 ff ff}
0463h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ba 03 00 00}
0468h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
046bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
046eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0472h call 7ff7c86a1a80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 f6 ff ff}
0477h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
047ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
047fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0482h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0486h call 7ff7c86a1a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 f6 ff ff}
048bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 92 03 00 00}
0490h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0493h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0496h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
049ah call 7ff7c86a1a60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 f6 ff ff}
049fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7e 03 00 00}
04a4h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
04a7h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
04aah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
04aeh call 7ff7c86a1a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f5 ff ff}
04b3h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6a 03 00 00}
04b8h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
04bbh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
04beh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
04c2h call 7ff7c86a1a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f5 ff ff}
04c7h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 56 03 00 00}
04cch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
04cfh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
04d2h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
04d6h call 7ff7c86a1a30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 f5 ff ff}
04dbh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 42 03 00 00}
04e0h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
04e3h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
04e6h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
04eah call 7ff7c86a1a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 f5 ff ff}
04efh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2e 03 00 00}
04f4h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
04f7h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
04fah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
04feh call 7ff7c86a1a10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d f5 ff ff}
0503h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1a 03 00 00}
0508h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
050bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
050eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0512h call 7ff7c86a1a00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 f5 ff ff}
0517h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 06 03 00 00}
051ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
051fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0522h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0526h call 7ff7c86a19f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 f5 ff ff}
052bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f2 02 00 00}
0530h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0533h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0536h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
053ah call 7ff7c86a19e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 f4 ff ff}
053fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 de 02 00 00}
0544h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0547h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
054ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
054eh call 7ff7c86a19d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd f4 ff ff}
0553h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ca 02 00 00}
0558h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
055bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
055eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0562h call 7ff7c86a19c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 f4 ff ff}
0567h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b6 02 00 00}
056ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
056fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0572h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0576h call 7ff7c86a19b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 f4 ff ff}
057bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 02 00 00}
0580h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0583h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0586h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
058ah call 7ff7c86a19a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 f4 ff ff}
058fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 02 00 00}
0594h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0597h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
059ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
059eh call 7ff7c86a1990h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d f4 ff ff}
05a3h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7a 02 00 00}
05a8h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
05abh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
05aeh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
05b2h call 7ff7c86a1980h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f4 ff ff}
05b7h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 66 02 00 00}
05bch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
05bfh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
05c2h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
05c6h call 7ff7c86a1970h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 f3 ff ff}
05cbh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 52 02 00 00}
05d0h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
05d3h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
05d6h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
05dah call 7ff7c86a1960h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f3 ff ff}
05dfh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3e 02 00 00}
05e4h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
05e7h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
05eah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
05eeh call 7ff7c86a1950h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad f3 ff ff}
05f3h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2a 02 00 00}
05f8h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
05fbh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
05feh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0602h call 7ff7c86a1940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f3 ff ff}
0607h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 16 02 00 00}
060ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
060fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0612h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0616h call 7ff7c86a1930h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 f3 ff ff}
061bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 02 02 00 00}
0620h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0623h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0626h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
062ah call 7ff7c86a1920h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 f3 ff ff}
062fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ee 01 00 00}
0634h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0637h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
063ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
063eh call 7ff7c86a1910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d f3 ff ff}
0643h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 da 01 00 00}
0648h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
064bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
064eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0652h call 7ff7c86a1900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 f2 ff ff}
0657h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c6 01 00 00}
065ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
065fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0662h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0666h call 7ff7c86a18f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 f2 ff ff}
066bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 01 00 00}
0670h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0673h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0676h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
067ah call 7ff7c86a18e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 f2 ff ff}
067fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 01 00 00}
0684h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0687h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
068ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
068eh call 7ff7c86a18d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d f2 ff ff}
0693h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8a 01 00 00}
0698h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
069bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
069eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
06a2h call 7ff7c86a18c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f2 ff ff}
06a7h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 76 01 00 00}
06ach movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
06afh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
06b2h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
06b6h call 7ff7c86a18b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 f2 ff ff}
06bbh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 62 01 00 00}
06c0h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
06c3h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
06c6h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
06cah call 7ff7c86a18a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 f2 ff ff}
06cfh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4e 01 00 00}
06d4h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
06d7h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
06dah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
06deh call 7ff7c86a1890h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd f1 ff ff}
06e3h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3a 01 00 00}
06e8h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
06ebh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
06eeh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
06f2h call 7ff7c86a1880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f1 ff ff}
06f7h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 26 01 00 00}
06fch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
06ffh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0702h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0706h call 7ff7c86a1870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 f1 ff ff}
070bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 12 01 00 00}
0710h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0713h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0716h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
071ah call 7ff7c86a1860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 f1 ff ff}
071fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fe 00 00 00}
0724h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0727h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
072ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
072eh call 7ff7c86a1850h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d f1 ff ff}
0733h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ea 00 00 00}
0738h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
073bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
073eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0742h call 7ff7c86a1840h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 f1 ff ff}
0747h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d6 00 00 00}
074ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
074fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0752h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0756h call 7ff7c86a1830h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 f1 ff ff}
075bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c2 00 00 00}
0760h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0763h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0766h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
076ah call 7ff7c86a1820h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 f1 ff ff}
076fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 00 00 00}
0774h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0777h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
077ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
077eh call 7ff7c86a1810h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd f0 ff ff}
0783h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9a 00 00 00}
0788h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
078bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
078eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0792h call 7ff7c86a1800h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 f0 ff ff}
0797h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 86 00 00 00}
079ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
079fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
07a2h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
07a6h call 7ff7c86a17f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 f0 ff ff}
07abh jmp short 0822h                         ; JMP rel8 || EB cb || encoded[2]{eb 75}
07adh movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
07b0h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
07b3h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
07b7h call 7ff7c86a17e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 f0 ff ff}
07bch jmp short 0822h                         ; JMP rel8 || EB cb || encoded[2]{eb 64}
07beh movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
07c1h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
07c4h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
07c8h call 7ff7c86a17d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 f0 ff ff}
07cdh jmp short 0822h                         ; JMP rel8 || EB cb || encoded[2]{eb 53}
07cfh movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
07d2h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
07d5h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
07d9h call 7ff7c86a17c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f0 ff ff}
07deh jmp short 0822h                         ; JMP rel8 || EB cb || encoded[2]{eb 42}
07e0h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
07e3h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
07e6h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
07eah call 7ff7c86a17b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 f0 ff ff}
07efh jmp short 0822h                         ; JMP rel8 || EB cb || encoded[2]{eb 31}
07f1h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
07f4h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
07f7h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
07fbh call 7ff7c86a17a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 ef ff ff}
0800h jmp short 0822h                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
0802h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0805h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0808h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
080ch call 7ff7c86a0ce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f e5 ff ff}
0811h jmp short 0822h                         ; JMP rel8 || EB cb || encoded[2]{eb 0f}
0813h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0816h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0819h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
081dh call 7ff7c86a0cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe e4 ff ff}
0822h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0825h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0829h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
082ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
082bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
082ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short eval<short>(TernaryBitLogicKind:byte kind, short a, short b, short c)
; eval_g[16i](TernaryBitLogicKind~8u,16i,16i,16i)[2261] = {57 56 53 48 83 ec 20 8b d9 41 8b f0 41 8b f9 0f b6 cb ff c9 83 f9 5e 0f 87 b8 08 00 00 8b c9 48 8d 05 e2 08 00 00 8b 04 88 4c 8d 05 df ff ff ff 49 03 c0 ff e0 48 0f bf ce 48 0f bf c7 0b c8 48 0f bf c9 48 0f bf d2 0b ca f7 d1 48 0f bf c1 e9 75 08 00 00 48 0f bf c6 48 0f bf d2 0b c2 8b c8 f7 d1 48 0f bf c9 48 0f bf c7 23 c8 48 0f bf c1 e9 54 08 00 00 48 0f bf c6 48 0f bf d2 0b c2 8b c8 f7 d1 48 0f bf c1 e9 3d 08 00 00 48 0f bf c2 48 0f bf d7 0b c2 8b c8 f7 d1 48 0f bf c9 48 0f bf c6 23 c8 48 0f bf c1 e9 1c 08 00 00 48 0f bf c7 48 0f bf d2 0b c2 8b c8 f7 d1 48 0f bf c1 e9 05 08 00 00 48 0f bf c2 8b d0 f7 d2 48 0f bf ca 48 0f bf c6 48 0f bf d7 33 c2 48 0f bf c0 48 0f bf c9 23 c8 48 0f bf c1 e9 dc 07 00 00 48 0f bf c6 48 0f bf cf 23 c8 48 0f bf c9 48 0f bf d2 0b ca f7 d1 48 0f bf c1 e9 bd 07 00 00 48 0f bf c2 8b d0 f7 d2 48 0f bf ca 48 0f bf c6 23 c8 48 0f bf c9 48 0f bf c7 23 c8 48 0f bf c1 e9 98 07 00 00 48 0f bf c6 48 0f bf cf 33 c8 48 0f bf c9 48 0f bf d2 0b ca f7 d1 48 0f bf c1 e9 79 07 00 00 48 0f bf c2 8b d0 f7 d2 48 0f bf ca 48 0f bf c7 23 c8 48 0f bf c1 e9 5e 07 00 00 48 0f bf ca f7 d1 48 0f bf d9 48 0f bf ce e8 b2 fa ff ff 48 0f bf c8 48 0f bf d7 e8 85 20 b2 ff 48 0f bf d0 8b cb e8 42 89 ff ff 48 0f bf c0 e9 2a 07 00 00 48 0f bf ca e8 28 1e b2 ff 48 0f bf d0 48 0f bf ce e8 23 89 ff ff 48 0f bf c0 e9 0b 07 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 89 f9 ff ff e9 f5 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 63 f9 ff ff e9 df 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 3d f9 ff ff e9 c9 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 17 f9 ff ff e9 b3 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 f1 f8 ff ff e9 9d 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 cb f8 ff ff e9 87 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 a5 f8 ff ff e9 71 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 7f f8 ff ff e9 5b 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 59 f8 ff ff e9 45 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 33 f8 ff ff e9 2f 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 0d f8 ff ff e9 19 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 e7 f7 ff ff e9 03 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 c1 f7 ff ff e9 ed 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 9b f7 ff ff e9 d7 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 75 f7 ff ff e9 c1 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 4f f7 ff ff e9 ab 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 29 f7 ff ff e9 95 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 03 f7 ff ff e9 7f 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 dd f6 ff ff e9 69 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 b7 f6 ff ff e9 53 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 91 f6 ff ff e9 3d 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 6b f6 ff ff e9 27 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 45 f6 ff ff e9 11 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 1f f6 ff ff e9 fb 04 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 f9 f5 ff ff e9 e5 04 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 d3 f5 ff ff e9 cf 04 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 ad f5 ff ff e9 b9 04 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 87 f5 ff ff e9 a3 04 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 61 f5 ff ff e9 8d 04 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 3b f5 ff ff e9 77 04 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 15 f5 ff ff e9 61 04 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 ef f4 ff ff e9 4b 04 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 c9 f4 ff ff e9 35 04 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 a3 f4 ff ff e9 1f 04 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 7d f4 ff ff e9 09 04 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 57 f4 ff ff e9 f3 03 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 31 f4 ff ff e9 dd 03 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 0b f4 ff ff e9 c7 03 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 e5 f3 ff ff e9 b1 03 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 bf f3 ff ff e9 9b 03 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 99 f3 ff ff e9 85 03 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 73 f3 ff ff e9 6f 03 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 4d f3 ff ff e9 59 03 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 27 f3 ff ff e9 43 03 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 01 f3 ff ff e9 2d 03 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 db f2 ff ff e9 17 03 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 b5 f2 ff ff e9 01 03 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 8f f2 ff ff e9 eb 02 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 69 f2 ff ff e9 d5 02 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 43 f2 ff ff e9 bf 02 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 1d f2 ff ff e9 a9 02 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 f7 f1 ff ff e9 93 02 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 d1 f1 ff ff e9 7d 02 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 ab f1 ff ff e9 67 02 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 85 f1 ff ff e9 51 02 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 5f f1 ff ff e9 3b 02 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 39 e7 ff ff e9 25 02 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 13 e7 ff ff e9 0f 02 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 ed e6 ff ff e9 f9 01 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 c7 e6 ff ff e9 e3 01 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 a1 e6 ff ff e9 cd 01 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 7b e6 ff ff e9 b7 01 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 55 e6 ff ff e9 a1 01 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 2f e6 ff ff e9 8b 01 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 09 e6 ff ff e9 75 01 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 e3 e5 ff ff e9 5f 01 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 bd e5 ff ff e9 49 01 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 97 e5 ff ff e9 33 01 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 71 e5 ff ff e9 1d 01 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 4b e5 ff ff e9 07 01 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 25 e5 ff ff e9 f1 00 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 ff e4 ff ff e9 db 00 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 d9 e4 ff ff e9 c5 00 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 b3 e4 ff ff e9 af 00 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 8d e4 ff ff e9 99 00 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 67 e4 ff ff e9 83 00 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 41 e4 ff ff eb 70 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 1e e4 ff ff eb 5d 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 fb e3 ff ff eb 4a 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 d8 e3 ff ff eb 37 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 b5 e3 ff ff eb 24 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 92 e3 ff ff eb 11 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 6f e3 ff ff 48 0f bf c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov ebx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d9}
0009h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
000ch mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
000fh movzx ecx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 cb}
0012h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0014h cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
0017h ja near ptr 08d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b8 08 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rax,[rip+8e2h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e2 08 00 00}
0026h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0029h lea r8,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 df ff ff ff}
0030h add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0033h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0035h movsx rcx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ce}
0039h movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
003dh or ecx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c8}
003fh movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0043h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0047h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0049h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
004bh movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
004fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 08 00 00}
0054h movsx rax,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c6}
0058h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
005ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
005eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0060h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0062h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0066h movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
006ah and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
006ch movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0070h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 54 08 00 00}
0075h movsx rax,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c6}
0079h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
007dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
007fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0081h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0083h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0087h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3d 08 00 00}
008ch movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0090h movsx rdx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d7}
0094h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0096h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0098h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
009ah movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
009eh movsx rax,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c6}
00a2h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00a4h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
00a8h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 08 00 00}
00adh movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
00b1h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
00b5h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00b7h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b9h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00bbh movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
00bfh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 05 08 00 00}
00c4h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00c8h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
00cah not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
00cch movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
00d0h movsx rax,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c6}
00d4h movsx rdx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d7}
00d8h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
00dah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00deh movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
00e2h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00e4h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
00e8h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dc 07 00 00}
00edh movsx rax,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c6}
00f1h movsx rcx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf cf}
00f5h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00f7h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
00fbh movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
00ffh or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0101h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0103h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0107h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bd 07 00 00}
010ch movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0110h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0112h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0114h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0118h movsx rax,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c6}
011ch and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
011eh movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0122h movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
0126h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0128h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
012ch jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 98 07 00 00}
0131h movsx rax,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c6}
0135h movsx rcx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf cf}
0139h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
013bh movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
013fh movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0143h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0145h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0147h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
014bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 79 07 00 00}
0150h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0154h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0156h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0158h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
015ch movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
0160h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0162h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0166h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5e 07 00 00}
016bh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
016fh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0171h movsx rbx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d9}
0175h movsx rcx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ce}
0179h call 7ff7c86a2df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 fa ff ff}
017eh movsx rcx,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c8}
0182h movsx rdx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d7}
0186h call 7ff7c81c53d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 20 b2 ff}
018bh movsx rdx,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d0}
018fh mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
0191h call 7ff7c869bc98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 89 ff ff}
0196h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
019ah jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2a 07 00 00}
019fh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
01a3h call 7ff7c81c5190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 1e b2 ff}
01a8h movsx rdx,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d0}
01ach movsx rcx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ce}
01b0h call 7ff7c869bc98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 89 ff ff}
01b5h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
01b9h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0b 07 00 00}
01beh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
01c2h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
01c6h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
01cah call 7ff7c86a2d18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f9 ff ff}
01cfh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f5 06 00 00}
01d4h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
01d8h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
01dch movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
01e0h call 7ff7c86a2d08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 f9 ff ff}
01e5h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 df 06 00 00}
01eah movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
01eeh movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
01f2h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
01f6h call 7ff7c86a2cf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d f9 ff ff}
01fbh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c9 06 00 00}
0200h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0204h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0208h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
020ch call 7ff7c86a2ce8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 f9 ff ff}
0211h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b3 06 00 00}
0216h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
021ah movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
021eh movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0222h call 7ff7c86a2cd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 f8 ff ff}
0227h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9d 06 00 00}
022ch movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0230h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0234h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0238h call 7ff7c86a2cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb f8 ff ff}
023dh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 87 06 00 00}
0242h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0246h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
024ah movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
024eh call 7ff7c86a2cb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 f8 ff ff}
0253h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 71 06 00 00}
0258h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
025ch movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0260h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0264h call 7ff7c86a2ca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f f8 ff ff}
0269h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
026eh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0272h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0276h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
027ah call 7ff7c86a2c98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 f8 ff ff}
027fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 45 06 00 00}
0284h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0288h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
028ch movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0290h call 7ff7c86a2c88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 f8 ff ff}
0295h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2f 06 00 00}
029ah movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
029eh movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
02a2h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
02a6h call 7ff7c86a2c78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d f8 ff ff}
02abh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 06 00 00}
02b0h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
02b4h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
02b8h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
02bch call 7ff7c86a2c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 f7 ff ff}
02c1h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 06 00 00}
02c6h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
02cah movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
02ceh movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
02d2h call 7ff7c86a2c58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 f7 ff ff}
02d7h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 05 00 00}
02dch movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
02e0h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
02e4h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
02e8h call 7ff7c86a2c48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f7 ff ff}
02edh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d7 05 00 00}
02f2h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
02f6h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
02fah movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
02feh call 7ff7c86a2c38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 f7 ff ff}
0303h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c1 05 00 00}
0308h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
030ch movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0310h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0314h call 7ff7c86a2c28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f f7 ff ff}
0319h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ab 05 00 00}
031eh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0322h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0326h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
032ah call 7ff7c86a2c18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 f7 ff ff}
032fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 05 00 00}
0334h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0338h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
033ch movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0340h call 7ff7c86a2c08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f7 ff ff}
0345h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 05 00 00}
034ah movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
034eh movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0352h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0356h call 7ff7c86a2bf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd f6 ff ff}
035bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 69 05 00 00}
0360h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0364h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0368h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
036ch call 7ff7c86a2be8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 f6 ff ff}
0371h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 53 05 00 00}
0376h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
037ah movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
037eh movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0382h call 7ff7c86a2bd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 f6 ff ff}
0387h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3d 05 00 00}
038ch movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0390h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0394h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0398h call 7ff7c86a2bc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b f6 ff ff}
039dh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 27 05 00 00}
03a2h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
03a6h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
03aah movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
03aeh call 7ff7c86a2bb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 f6 ff ff}
03b3h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 11 05 00 00}
03b8h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
03bch movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
03c0h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
03c4h call 7ff7c86a2ba8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f f6 ff ff}
03c9h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 04 00 00}
03ceh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
03d2h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
03d6h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
03dah call 7ff7c86a2b98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 f5 ff ff}
03dfh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 04 00 00}
03e4h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
03e8h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
03ech movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
03f0h call 7ff7c86a2b88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 f5 ff ff}
03f5h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cf 04 00 00}
03fah movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
03feh movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0402h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0406h call 7ff7c86a2b78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad f5 ff ff}
040bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b9 04 00 00}
0410h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0414h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0418h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
041ch call 7ff7c86a2b68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 f5 ff ff}
0421h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a3 04 00 00}
0426h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
042ah movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
042eh movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0432h call 7ff7c86a2b58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 f5 ff ff}
0437h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8d 04 00 00}
043ch movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0440h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0444h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0448h call 7ff7c86a2b48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b f5 ff ff}
044dh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 77 04 00 00}
0452h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0456h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
045ah movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
045eh call 7ff7c86a2b38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 f5 ff ff}
0463h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 61 04 00 00}
0468h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
046ch movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0470h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0474h call 7ff7c86a2b28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef f4 ff ff}
0479h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4b 04 00 00}
047eh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0482h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0486h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
048ah call 7ff7c86a2b18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f4 ff ff}
048fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 35 04 00 00}
0494h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0498h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
049ch movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
04a0h call 7ff7c86a2b08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 f4 ff ff}
04a5h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1f 04 00 00}
04aah movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
04aeh movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
04b2h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
04b6h call 7ff7c86a2af8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f4 ff ff}
04bbh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 09 04 00 00}
04c0h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
04c4h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
04c8h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
04cch call 7ff7c86a2ae8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 f4 ff ff}
04d1h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f3 03 00 00}
04d6h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
04dah movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
04deh movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
04e2h call 7ff7c86a2ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 f4 ff ff}
04e7h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 03 00 00}
04ech movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
04f0h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
04f4h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
04f8h call 7ff7c86a2ac8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f4 ff ff}
04fdh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c7 03 00 00}
0502h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0506h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
050ah movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
050eh call 7ff7c86a2ab8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 f3 ff ff}
0513h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b1 03 00 00}
0518h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
051ch movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0520h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0524h call 7ff7c86a2aa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf f3 ff ff}
0529h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9b 03 00 00}
052eh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0532h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0536h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
053ah call 7ff7c86a2a98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f3 ff ff}
053fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 85 03 00 00}
0544h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0548h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
054ch movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0550h call 7ff7c86a2a88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 f3 ff ff}
0555h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 03 00 00}
055ah movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
055eh movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0562h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0566h call 7ff7c86a2a78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d f3 ff ff}
056bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 59 03 00 00}
0570h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0574h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0578h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
057ch call 7ff7c86a2a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 f3 ff ff}
0581h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 43 03 00 00}
0586h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
058ah movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
058eh movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0592h call 7ff7c86a2a58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 f3 ff ff}
0597h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2d 03 00 00}
059ch movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
05a0h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
05a4h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
05a8h call 7ff7c86a2a48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db f2 ff ff}
05adh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 17 03 00 00}
05b2h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
05b6h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
05bah movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
05beh call 7ff7c86a2a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 f2 ff ff}
05c3h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 01 03 00 00}
05c8h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
05cch movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
05d0h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
05d4h call 7ff7c86a2a28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f f2 ff ff}
05d9h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 eb 02 00 00}
05deh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
05e2h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
05e6h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
05eah call 7ff7c86a2a18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f2 ff ff}
05efh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d5 02 00 00}
05f4h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
05f8h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
05fch movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0600h call 7ff7c86a2a08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 f2 ff ff}
0605h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bf 02 00 00}
060ah movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
060eh movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0612h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0616h call 7ff7c86a29f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d f2 ff ff}
061bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a9 02 00 00}
0620h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0624h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0628h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
062ch call 7ff7c86a29e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f1 ff ff}
0631h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 93 02 00 00}
0636h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
063ah movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
063eh movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0642h call 7ff7c86a29d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f1 ff ff}
0647h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7d 02 00 00}
064ch movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0650h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0654h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0658h call 7ff7c86a29c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab f1 ff ff}
065dh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 02 00 00}
0662h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0666h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
066ah movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
066eh call 7ff7c86a29b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 f1 ff ff}
0673h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 51 02 00 00}
0678h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
067ch movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0680h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0684h call 7ff7c86a29a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f1 ff ff}
0689h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3b 02 00 00}
068eh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0692h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0696h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
069ah call 7ff7c86a1f98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 e7 ff ff}
069fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 25 02 00 00}
06a4h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
06a8h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
06ach movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
06b0h call 7ff7c86a1f88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 e7 ff ff}
06b5h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0f 02 00 00}
06bah movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
06beh movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
06c2h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
06c6h call 7ff7c86a1f78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed e6 ff ff}
06cbh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f9 01 00 00}
06d0h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
06d4h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
06d8h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
06dch call 7ff7c86a1f68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 e6 ff ff}
06e1h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e3 01 00 00}
06e6h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
06eah movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
06eeh movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
06f2h call 7ff7c86a1f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 e6 ff ff}
06f7h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cd 01 00 00}
06fch movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0700h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0704h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0708h call 7ff7c86a1f48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b e6 ff ff}
070dh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b7 01 00 00}
0712h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0716h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
071ah movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
071eh call 7ff7c86a1f38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 e6 ff ff}
0723h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a1 01 00 00}
0728h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
072ch movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0730h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0734h call 7ff7c86a1f28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f e6 ff ff}
0739h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8b 01 00 00}
073eh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0742h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0746h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
074ah call 7ff7c86a1f18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 e6 ff ff}
074fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 01 00 00}
0754h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0758h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
075ch movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0760h call 7ff7c86a1f08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 e5 ff ff}
0765h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 01 00 00}
076ah movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
076eh movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0772h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0776h call 7ff7c86a1ef8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd e5 ff ff}
077bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 49 01 00 00}
0780h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0784h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0788h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
078ch call 7ff7c86a1ee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 e5 ff ff}
0791h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0796h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
079ah movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
079eh movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
07a2h call 7ff7c86a1ed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 e5 ff ff}
07a7h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1d 01 00 00}
07ach movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
07b0h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
07b4h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
07b8h call 7ff7c86a1ec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b e5 ff ff}
07bdh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 07 01 00 00}
07c2h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
07c6h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
07cah movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
07ceh call 7ff7c86a1eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 e5 ff ff}
07d3h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
07d8h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
07dch movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
07e0h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
07e4h call 7ff7c86a1ea8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff e4 ff ff}
07e9h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 db 00 00 00}
07eeh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
07f2h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
07f6h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
07fah call 7ff7c86a1e98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 e4 ff ff}
07ffh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c5 00 00 00}
0804h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0808h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
080ch movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0810h call 7ff7c86a1e88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 e4 ff ff}
0815h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 af 00 00 00}
081ah movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
081eh movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0822h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0826h call 7ff7c86a1e78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d e4 ff ff}
082bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
0830h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0834h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0838h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
083ch call 7ff7c86a1e68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 e4 ff ff}
0841h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
0846h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
084ah movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
084eh movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0852h call 7ff7c86a1e58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 e4 ff ff}
0857h jmp short 08c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 70}
0859h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
085dh movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0861h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0865h call 7ff7c86a1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e e4 ff ff}
086ah jmp short 08c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 5d}
086ch movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0870h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0874h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0878h call 7ff7c86a1e38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb e3 ff ff}
087dh jmp short 08c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 4a}
087fh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0883h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0887h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
088bh call 7ff7c86a1e28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 e3 ff ff}
0890h jmp short 08c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 37}
0892h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0896h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
089ah movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
089eh call 7ff7c86a1e18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 e3 ff ff}
08a3h jmp short 08c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 24}
08a5h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
08a9h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
08adh movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
08b1h call 7ff7c86a1e08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 e3 ff ff}
08b6h jmp short 08c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 11}
08b8h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
08bch movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
08c0h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
08c4h call 7ff7c86a1df8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f e3 ff ff}
08c9h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
08cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
08d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
08d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
08d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
08d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint eval<uint>(TernaryBitLogicKind:byte kind, uint a, uint b, uint c)
; eval_g[32u](TernaryBitLogicKind~8u,32u,32u,32u)[1321] = {57 56 48 83 ec 28 8b f9 8b f2 41 8b d0 45 8b c1 40 0f b6 cf ff c9 83 f9 5e 0f 87 0a 05 00 00 8b c9 48 8d 05 30 05 00 00 8b 04 88 4c 8d 0d de ff ff ff 49 03 c1 ff e0 41 0b d0 0b d6 8b c2 f7 d0 e9 dc 04 00 00 8b c2 8b d6 0b c2 f7 d0 41 23 c0 e9 cc 04 00 00 8b c2 8b d6 0b c2 f7 d0 e9 bf 04 00 00 8b c6 41 0b c0 f7 d0 23 c2 e9 b1 04 00 00 41 8b c0 44 8b c6 41 0b c0 f7 d0 e9 a1 04 00 00 8b c6 f7 d0 41 33 d0 23 c2 e9 93 04 00 00 8b c2 41 8b d0 23 c2 44 8b c6 41 0b c0 f7 d0 e9 7f 04 00 00 8b c6 f7 d0 23 c2 41 23 c0 e9 71 04 00 00 8b c2 41 33 c0 8b d6 0b c2 f7 d0 e9 61 04 00 00 8b c6 f7 d0 41 23 c0 e9 55 04 00 00 8b c6 f7 d0 8b ca f7 d1 41 0b c8 23 c1 e9 43 04 00 00 8b c6 f7 d0 44 8b c2 41 23 c0 e9 34 04 00 00 8b c6 f7 d0 41 8b c8 f7 d1 0b ca 23 c1 e9 22 04 00 00 8b c6 f7 d0 41 0b d0 23 c2 e9 14 04 00 00 8b c6 f7 d0 e9 0b 04 00 00 8b c2 41 0b c0 f7 d0 8b d6 23 c2 e9 fb 03 00 00 41 8b c0 0b c2 f7 d0 e9 ef 03 00 00 8b c2 f7 d0 8b d6 41 33 d0 23 c2 e9 df 03 00 00 8b c6 41 23 c0 0b c2 f7 d0 e9 d1 03 00 00 41 8b c0 f7 d0 44 8b c6 41 33 d0 23 c2 e9 bf 03 00 00 8b c6 23 c2 41 0b c0 f7 d0 e9 b1 03 00 00 8b c2 41 0b c0 f7 d0 41 33 d0 23 c6 c4 e2 48 f2 ca 0b c1 e9 99 03 00 00 8b c2 41 0b c0 41 23 d0 23 c6 c4 e2 48 f2 ca 0b c8 8b c1 f7 d0 e9 7f 03 00 00 8b c2 33 c6 8b d6 41 33 d0 23 c2 e9 6f 03 00 00 8b c2 41 33 c0 41 23 d0 8b ce 23 ca 33 c8 8b c1 f7 d0 e9 58 03 00 00 8b c2 23 c6 f7 d0 8b d6 41 33 d0 23 c2 e9 46 03 00 00 8b c6 f7 d0 f7 d2 41 23 c0 c4 62 38 f2 c2 41 0b c0 e9 30 03 00 00 41 8b c0 23 c6 f7 d0 44 8b c6 41 33 d0 23 c2 e9 1c 03 00 00 8b c6 f7 d0 41 f7 d0 23 c2 c4 c2 68 f2 d0 0b c2 e9 07 03 00 00 8b c2 41 0b c0 8b d6 33 c2 e9 f9 02 00 00 8b ca 41 0b c8 89 4c 24 20 48 8d 4c 24 20 e8 3d 00 7e ff 8b 10 8b ce e8 cc 47 b1 ff 8b c8 e8 e5 98 7e ff e9 d1 02 00 00 8b ce e8 09 f6 ff ff e9 c5 02 00 00 8b ce e8 ed f5 ff ff e9 b9 02 00 00 8b ce e8 d1 f5 ff ff e9 ad 02 00 00 8b ce e8 b5 f5 ff ff e9 a1 02 00 00 8b ce e8 99 f5 ff ff e9 95 02 00 00 8b ce e8 7d f5 ff ff e9 89 02 00 00 8b ce e8 61 f5 ff ff e9 7d 02 00 00 8b ce e8 45 f5 ff ff e9 71 02 00 00 8b ce e8 79 ea ff ff e9 65 02 00 00 8b ce e8 5d ea ff ff e9 59 02 00 00 8b ce e8 41 ea ff ff e9 4d 02 00 00 8b ce e8 25 ea ff ff e9 41 02 00 00 8b ce e8 09 ea ff ff e9 35 02 00 00 8b ce e8 ed e9 ff ff e9 29 02 00 00 8b ce e8 d1 e9 ff ff e9 1d 02 00 00 8b ce e8 b5 e9 ff ff e9 11 02 00 00 8b ce e8 99 e9 ff ff e9 05 02 00 00 8b ce e8 7d e9 ff ff e9 f9 01 00 00 8b ce e8 61 e9 ff ff e9 ed 01 00 00 8b ce e8 45 e9 ff ff e9 e1 01 00 00 8b ce e8 29 e9 ff ff e9 d5 01 00 00 8b ce e8 0d e9 ff ff e9 c9 01 00 00 8b ce e8 f1 e8 ff ff e9 bd 01 00 00 8b ce e8 d5 e8 ff ff e9 b1 01 00 00 8b ce e8 b9 e8 ff ff e9 a5 01 00 00 8b ce e8 9d e8 ff ff e9 99 01 00 00 8b ce e8 81 e8 ff ff e9 8d 01 00 00 8b ce e8 65 e8 ff ff e9 81 01 00 00 8b ce e8 49 e8 ff ff e9 75 01 00 00 8b ce e8 2d e8 ff ff e9 69 01 00 00 8b ce e8 11 e8 ff ff e9 5d 01 00 00 8b ce e8 f5 e7 ff ff e9 51 01 00 00 8b ce e8 d9 e7 ff ff e9 45 01 00 00 8b ce e8 bd e7 ff ff e9 39 01 00 00 8b ce e8 a1 e7 ff ff e9 2d 01 00 00 8b ce e8 85 e7 ff ff e9 21 01 00 00 8b ce e8 69 e7 ff ff e9 15 01 00 00 8b ce e8 4d e7 ff ff e9 09 01 00 00 8b ce e8 31 e7 ff ff e9 fd 00 00 00 8b ce e8 15 e7 ff ff e9 f1 00 00 00 8b ce e8 f9 e6 ff ff e9 e5 00 00 00 8b ce e8 dd e6 ff ff e9 d9 00 00 00 8b ce e8 c1 e6 ff ff e9 cd 00 00 00 8b ce e8 a5 e6 ff ff e9 c1 00 00 00 8b ce e8 89 e6 ff ff e9 b5 00 00 00 8b ce e8 6d e6 ff ff e9 a9 00 00 00 8b ce e8 51 e6 ff ff e9 9d 00 00 00 8b ce e8 35 e6 ff ff e9 91 00 00 00 8b ce e8 19 e6 ff ff e9 85 00 00 00 8b ce e8 fd e5 ff ff eb 7c 8b ce e8 e4 e5 ff ff eb 73 8b ce e8 cb e5 ff ff eb 6a 8b ce e8 b2 e5 ff ff eb 61 8b ce e8 99 e5 ff ff eb 58 8b ce e8 80 e5 ff ff eb 4f 8b ce e8 67 e5 ff ff eb 46 8b ce e8 4e e5 ff ff eb 3d 8b ce e8 35 e5 ff ff eb 34 8b ce e8 1c e5 ff ff eb 2b 8b ce e8 03 e5 ff ff eb 22 8b ce e8 ea e4 ff ff eb 19 8b ce e8 d1 e4 ff ff eb 10 8b ce e8 b8 e4 ff ff eb 07 8b ce e8 9f e4 ff ff 90 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov edi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f9}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
000dh mov r8d,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c1}
0010h movzx ecx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cf}
0014h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0016h cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
0019h ja near ptr 0529h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 0a 05 00 00}
001fh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0021h lea rax,[rip+530h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 30 05 00 00}
0028h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
002bh lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
0032h add rax,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c1}
0035h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0037h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
003ah or edx,esi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d6}
003ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
003eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0040h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dc 04 00 00}
0045h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0047h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0049h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
004bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
004dh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0050h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cc 04 00 00}
0055h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0057h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0059h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
005bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
005dh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bf 04 00 00}
0062h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0064h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0067h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0069h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
006bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b1 04 00 00}
0070h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0073h mov r8d,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c6}
0076h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0079h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
007bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a1 04 00 00}
0080h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0082h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0084h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
0087h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0089h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 93 04 00 00}
008eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0090h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0093h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0095h mov r8d,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c6}
0098h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
009bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
009dh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 04 00 00}
00a2h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
00a4h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00a6h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00a8h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
00abh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 71 04 00 00}
00b0h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00b2h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
00b5h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
00b7h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00b9h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00bbh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 61 04 00 00}
00c0h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
00c2h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00c4h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
00c7h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 04 00 00}
00cch mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
00ceh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00d0h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
00d2h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00d4h or ecx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c8}
00d7h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
00d9h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 43 04 00 00}
00deh mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
00e0h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00e2h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
00e5h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
00e8h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 34 04 00 00}
00edh mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
00efh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00f1h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
00f4h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00f6h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
00f8h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
00fah jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 22 04 00 00}
00ffh mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0101h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0103h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0106h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0108h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 14 04 00 00}
010dh mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
010fh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0111h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0b 04 00 00}
0116h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0118h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
011bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
011dh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
011fh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0121h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 03 00 00}
0126h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0129h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
012bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
012dh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ef 03 00 00}
0132h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0134h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0136h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0138h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
013bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
013dh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 df 03 00 00}
0142h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0144h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0147h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0149h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
014bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d1 03 00 00}
0150h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0153h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0155h mov r8d,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c6}
0158h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
015bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
015dh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bf 03 00 00}
0162h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0164h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0166h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0169h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
016bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b1 03 00 00}
0170h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0172h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0175h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0177h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
017ah and eax,esi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c6}
017ch andn ecx,esi,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 48 f2 ca}
0181h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
0183h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 03 00 00}
0188h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
018ah or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
018dh and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0190h and eax,esi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c6}
0192h andn ecx,esi,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 48 f2 ca}
0197h or ecx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c8}
0199h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
019bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
019dh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 03 00 00}
01a2h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
01a4h xor eax,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c6}
01a6h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
01a8h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
01abh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
01adh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 03 00 00}
01b2h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
01b4h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
01b7h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
01bah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
01bch and ecx,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 ca}
01beh xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
01c0h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
01c2h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
01c4h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 58 03 00 00}
01c9h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
01cbh and eax,esi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c6}
01cdh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
01cfh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
01d1h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
01d4h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
01d6h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 46 03 00 00}
01dbh mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
01ddh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
01dfh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
01e1h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
01e4h andn r8d,r8d,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 62 38 f2 c2}
01e9h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
01ech jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 03 00 00}
01f1h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
01f4h and eax,esi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c6}
01f6h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
01f8h mov r8d,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c6}
01fbh xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
01feh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0200h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 03 00 00}
0205h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0207h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0209h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
020ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
020eh andn edx,edx,r8d                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 c2 68 f2 d0}
0213h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0215h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 07 03 00 00}
021ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
021ch or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
021fh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0221h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0223h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f9 02 00 00}
0228h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
022ah or ecx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c8}
022dh mov [rsp+20h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 20}
0231h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0236h call 7ff7c7e846e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 00 7e ff}
023bh mov edx,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 10}
023dh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
023fh call 7ff7c81b8e80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 47 b1 ff}
0244h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0246h call 7ff7c7e8dfa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 98 7e ff}
024bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d1 02 00 00}
0250h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0252h call 7ff7c86a3cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 f6 ff ff}
0257h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c5 02 00 00}
025ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
025eh call 7ff7c86a3cc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f5 ff ff}
0263h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b9 02 00 00}
0268h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
026ah call 7ff7c86a3cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f5 ff ff}
026fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ad 02 00 00}
0274h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0276h call 7ff7c86a3ca0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 f5 ff ff}
027bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a1 02 00 00}
0280h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0282h call 7ff7c86a3c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f5 ff ff}
0287h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 02 00 00}
028ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
028eh call 7ff7c86a3c80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f5 ff ff}
0293h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 89 02 00 00}
0298h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
029ah call 7ff7c86a3c70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 f5 ff ff}
029fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7d 02 00 00}
02a4h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02a6h call 7ff7c86a3c60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 f5 ff ff}
02abh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 71 02 00 00}
02b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02b2h call 7ff7c86a31a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 ea ff ff}
02b7h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 65 02 00 00}
02bch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02beh call 7ff7c86a3190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d ea ff ff}
02c3h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 59 02 00 00}
02c8h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02cah call 7ff7c86a3180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 ea ff ff}
02cfh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4d 02 00 00}
02d4h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02d6h call 7ff7c86a3170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 ea ff ff}
02dbh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 41 02 00 00}
02e0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02e2h call 7ff7c86a3160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 ea ff ff}
02e7h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 35 02 00 00}
02ech mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02eeh call 7ff7c86a3150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed e9 ff ff}
02f3h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 29 02 00 00}
02f8h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02fah call 7ff7c86a3140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 e9 ff ff}
02ffh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1d 02 00 00}
0304h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0306h call 7ff7c86a3130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 e9 ff ff}
030bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 11 02 00 00}
0310h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0312h call 7ff7c86a3120h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 e9 ff ff}
0317h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 05 02 00 00}
031ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
031eh call 7ff7c86a3110h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d e9 ff ff}
0323h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f9 01 00 00}
0328h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
032ah call 7ff7c86a3100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 e9 ff ff}
032fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0334h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0336h call 7ff7c86a30f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 e9 ff ff}
033bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 01 00 00}
0340h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0342h call 7ff7c86a30e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 e9 ff ff}
0347h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d5 01 00 00}
034ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
034eh call 7ff7c86a30d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d e9 ff ff}
0353h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c9 01 00 00}
0358h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
035ah call 7ff7c86a30c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 e8 ff ff}
035fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bd 01 00 00}
0364h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0366h call 7ff7c86a30b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 e8 ff ff}
036bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b1 01 00 00}
0370h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0372h call 7ff7c86a30a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 e8 ff ff}
0377h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 01 00 00}
037ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
037eh call 7ff7c86a3090h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d e8 ff ff}
0383h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 01 00 00}
0388h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
038ah call 7ff7c86a3080h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 e8 ff ff}
038fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8d 01 00 00}
0394h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0396h call 7ff7c86a3070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 e8 ff ff}
039bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 81 01 00 00}
03a0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03a2h call 7ff7c86a3060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 e8 ff ff}
03a7h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 01 00 00}
03ach mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03aeh call 7ff7c86a3050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d e8 ff ff}
03b3h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 69 01 00 00}
03b8h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03bah call 7ff7c86a3040h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 e8 ff ff}
03bfh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5d 01 00 00}
03c4h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03c6h call 7ff7c86a3030h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 e7 ff ff}
03cbh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 51 01 00 00}
03d0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03d2h call 7ff7c86a3020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 e7 ff ff}
03d7h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 45 01 00 00}
03dch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03deh call 7ff7c86a3010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd e7 ff ff}
03e3h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 39 01 00 00}
03e8h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03eah call 7ff7c86a3000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 e7 ff ff}
03efh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2d 01 00 00}
03f4h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03f6h call 7ff7c86a2ff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 e7 ff ff}
03fbh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 21 01 00 00}
0400h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0402h call 7ff7c86a2fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 e7 ff ff}
0407h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 15 01 00 00}
040ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
040eh call 7ff7c86a2fd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d e7 ff ff}
0413h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 09 01 00 00}
0418h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
041ah call 7ff7c86a2fc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 e7 ff ff}
041fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fd 00 00 00}
0424h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0426h call 7ff7c86a2fb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 e7 ff ff}
042bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0430h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0432h call 7ff7c86a2fa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 e6 ff ff}
0437h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 00 00 00}
043ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
043eh call 7ff7c86a2f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd e6 ff ff}
0443h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d9 00 00 00}
0448h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
044ah call 7ff7c86a2f80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 e6 ff ff}
044fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cd 00 00 00}
0454h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0456h call 7ff7c86a2f70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 e6 ff ff}
045bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c1 00 00 00}
0460h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0462h call 7ff7c86a2f60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 e6 ff ff}
0467h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b5 00 00 00}
046ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
046eh call 7ff7c86a2f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d e6 ff ff}
0473h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a9 00 00 00}
0478h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
047ah call 7ff7c86a2f40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 e6 ff ff}
047fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9d 00 00 00}
0484h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0486h call 7ff7c86a2f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 e6 ff ff}
048bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 91 00 00 00}
0490h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0492h call 7ff7c86a2f20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 e6 ff ff}
0497h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 85 00 00 00}
049ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
049eh call 7ff7c86a2f10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd e5 ff ff}
04a3h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 7c}
04a5h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04a7h call 7ff7c86a2f00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 e5 ff ff}
04ach jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 73}
04aeh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04b0h call 7ff7c86a2ef0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb e5 ff ff}
04b5h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
04b7h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04b9h call 7ff7c86a2ee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 e5 ff ff}
04beh jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 61}
04c0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04c2h call 7ff7c86a2ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 e5 ff ff}
04c7h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 58}
04c9h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04cbh call 7ff7c86a2ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 e5 ff ff}
04d0h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 4f}
04d2h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04d4h call 7ff7c86a2eb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 e5 ff ff}
04d9h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
04dbh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04ddh call 7ff7c86a2ea0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e e5 ff ff}
04e2h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 3d}
04e4h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04e6h call 7ff7c86a2e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 e5 ff ff}
04ebh jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
04edh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04efh call 7ff7c86a2e80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c e5 ff ff}
04f4h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
04f6h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04f8h call 7ff7c86a2e70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 e5 ff ff}
04fdh jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
04ffh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0501h call 7ff7c86a2e60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea e4 ff ff}
0506h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
0508h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
050ah call 7ff7c86a2e50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 e4 ff ff}
050fh jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
0511h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0513h call 7ff7c86a2e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 e4 ff ff}
0518h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
051ah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
051ch call 7ff7c86a2e30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f e4 ff ff}
0521h nop                                     ; NOP || o32 90 || encoded[1]{90}
0522h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0526h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0527h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0528h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int eval<int>(TernaryBitLogicKind:byte kind, int a, int b, int c)
; eval_g[32i](TernaryBitLogicKind~8u,32i,32i,32i)[216] = {57 56 53 48 83 ec 30 8b d9 41 8b f0 41 8b f9 0f b6 cb ff c9 83 f9 5e 0f 87 63 06 00 00 8b c9 48 8d 05 8a 06 00 00 8b 04 88 4c 8d 05 df ff ff ff 49 03 c0 ff e0 0b f7 0b d6 8b c2 f7 d0 e9 35 06 00 00 8b c6 0b c2 f7 d0 8b cf 23 c1 e9 26 06 00 00 8b c6 0b c2 f7 d0 e9 1b 06 00 00 8b c2 8b d7 0b c2 f7 d0 8b ce 23 c1 e9 0a 06 00 00 8b c7 0b c2 f7 d0 e9 ff 05 00 00 8b c2 f7 d0 8b d6 8b cf 33 ca 23 c1 e9 ee 05 00 00 8b c6 8b cf 23 c8 0b ca 8b c1 f7 d0 e9 dd 05 00 00 8b c2 f7 d0 8b d6 23 c2 8b cf 23 c1 e9 cc 05 00 00 8b c6 8b cf 33 c8 0b ca 8b c1 f7 d0 e9 bb 05 00 00 8b c2 f7 d0 8b d7 23 c2 e9 ae 05 00 00 8b da f7 d3 8b ce e8 6c fe ff ff 0b c7 23 c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov ebx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d9}
0009h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
000ch mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
000fh movzx ecx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 cb}
0012h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0014h cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
0017h ja near ptr 0680h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 63 06 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rax,[rip+68ah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 8a 06 00 00}
0026h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0029h lea r8,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 df ff ff ff}
0030h add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0033h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0035h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0037h or edx,esi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d6}
0039h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
003bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
003dh jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 35 06 00 00}
0042h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0044h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0046h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0048h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
004ah and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
004ch jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 26 06 00 00}
0051h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0053h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0055h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0057h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1b 06 00 00}
005ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
005eh mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0060h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0062h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0064h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0066h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0068h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0a 06 00 00}
006dh mov eax,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c7}
006fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0071h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0073h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ff 05 00 00}
0078h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
007ch mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
007eh mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0080h xor ecx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ca}
0082h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0084h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ee 05 00 00}
0089h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
008bh mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
008dh and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
008fh or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0091h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0093h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0095h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
009ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
009ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
009eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
00a0h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00a2h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00a4h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
00a6h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cc 05 00 00}
00abh mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
00adh mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00afh xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
00b1h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
00b3h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
00b5h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00b7h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 05 00 00}
00bch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00beh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00c0h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
00c2h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00c4h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 05 00 00}
00c9h mov ebx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b da}
00cbh not ebx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d3}
00cdh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00cfh call 7ff7c86a4eb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c fe ff ff}
00d4h or eax,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c7}
00d6h and eax,ebx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c3}
------------------------------------------------------------------------------------------------------------------------
; ulong eval<ulong>(TernaryBitLogicKind:byte kind, ulong a, ulong b, ulong c)
; eval_g[64u](TernaryBitLogicKind~8u,64u,64u,64u)[1499] = {57 56 48 83 ec 28 8b f9 48 8b f2 49 8b d0 4d 8b c1 40 0f b6 cf ff c9 83 f9 5e 0f 87 bb 05 00 00 8b c9 48 8d 05 e7 05 00 00 8b 04 88 4c 8d 0d de ff ff ff 49 03 c1 ff e0 49 0b d0 48 0b d6 48 8b c2 48 f7 d0 e9 8a 05 00 00 48 8b c2 48 8b d6 48 0b c2 48 f7 d0 49 23 c0 e9 76 05 00 00 48 8b c2 48 8b d6 48 0b c2 48 f7 d0 e9 65 05 00 00 48 8b c6 49 0b c0 48 f7 d0 48 23 c2 e9 54 05 00 00 49 8b c0 4c 8b c6 49 0b c0 48 f7 d0 e9 43 05 00 00 48 8b c6 48 f7 d0 49 33 d0 48 23 c2 e9 32 05 00 00 48 8b c2 49 8b d0 48 23 c2 4c 8b c6 49 0b c0 48 f7 d0 e9 1b 05 00 00 48 8b c6 48 f7 d0 48 23 c2 49 23 c0 e9 0a 05 00 00 48 8b c2 49 33 c0 48 8b d6 48 0b c2 48 f7 d0 e9 f6 04 00 00 48 8b c6 48 f7 d0 49 23 c0 e9 e8 04 00 00 48 8b c6 48 f7 d0 48 8b ca 48 f7 d1 49 0b c8 48 23 c1 e9 d1 04 00 00 48 8b c6 48 f7 d0 4c 8b c2 49 23 c0 e9 c0 04 00 00 48 8b c6 48 f7 d0 49 8b c8 48 f7 d1 48 0b ca 48 23 c1 e9 a9 04 00 00 48 8b c6 48 f7 d0 49 0b d0 48 23 c2 e9 98 04 00 00 48 8b c6 48 f7 d0 e9 8d 04 00 00 48 8b c2 49 0b c0 48 f7 d0 48 8b d6 48 23 c2 e9 79 04 00 00 49 8b c0 48 0b c2 48 f7 d0 e9 6b 04 00 00 48 8b c2 48 f7 d0 48 8b d6 49 33 d0 48 23 c2 e9 57 04 00 00 48 8b c6 49 23 c0 48 0b c2 48 f7 d0 e9 46 04 00 00 49 8b c0 48 f7 d0 4c 8b c6 49 33 d0 48 23 c2 e9 32 04 00 00 48 8b c6 48 23 c2 49 0b c0 48 f7 d0 e9 21 04 00 00 48 8b c2 49 0b c0 48 f7 d0 49 33 d0 48 23 c6 c4 e2 c8 f2 ca 48 0b c1 e9 05 04 00 00 48 8b c2 49 0b c0 49 23 d0 48 23 c6 c4 e2 c8 f2 ca 48 0b c8 48 8b c1 48 f7 d0 e9 e6 03 00 00 48 8b c2 48 33 c6 48 8b d6 49 33 d0 48 23 c2 e9 d2 03 00 00 48 8b c2 49 33 c0 49 23 d0 48 8b ce 48 23 ca 48 33 c8 48 8b c1 48 f7 d0 e9 b5 03 00 00 48 8b c2 48 23 c6 48 f7 d0 48 8b d6 49 33 d0 48 23 c2 e9 9e 03 00 00 48 8b c6 48 f7 d0 48 f7 d2 49 23 c0 c4 62 b8 f2 c2 49 0b c0 e9 85 03 00 00 49 8b c0 48 23 c6 48 f7 d0 4c 8b c6 49 33 d0 48 23 c2 e9 6e 03 00 00 48 8b c6 48 f7 d0 49 f7 d0 48 23 c2 c4 c2 e8 f2 d0 48 0b c2 e9 55 03 00 00 48 8b c2 49 0b c0 48 8b d6 48 33 c2 e9 44 03 00 00 48 8b ca 49 0b c8 48 89 4c 24 20 48 8d 4c 24 20 e8 34 e5 7d ff 48 8b 10 48 8b ce e8 41 2c b1 ff 48 8b c8 e8 a9 85 7e ff e9 17 03 00 00 48 8b ce e8 b4 f8 ff ff e9 0a 03 00 00 48 8b ce e8 97 f8 ff ff e9 fd 02 00 00 48 8b ce e8 7a f8 ff ff e9 f0 02 00 00 48 8b ce e8 5d f8 ff ff e9 e3 02 00 00 48 8b ce e8 40 f8 ff ff e9 d6 02 00 00 48 8b ce e8 23 f8 ff ff e9 c9 02 00 00 48 8b ce e8 06 f8 ff ff e9 bc 02 00 00 48 8b ce e8 e9 f7 ff ff e9 af 02 00 00 48 8b ce e8 cc f7 ff ff e9 a2 02 00 00 48 8b ce e8 af f7 ff ff e9 95 02 00 00 48 8b ce e8 92 f7 ff ff e9 88 02 00 00 48 8b ce e8 75 f7 ff ff e9 7b 02 00 00 48 8b ce e8 58 f7 ff ff e9 6e 02 00 00 48 8b ce e8 3b f7 ff ff e9 61 02 00 00 48 8b ce e8 1e f7 ff ff e9 54 02 00 00 48 8b ce e8 01 f7 ff ff e9 47 02 00 00 48 8b ce e8 e4 f6 ff ff e9 3a 02 00 00 48 8b ce e8 c7 f6 ff ff e9 2d 02 00 00 48 8b ce e8 aa f6 ff ff e9 20 02 00 00 48 8b ce e8 8d f6 ff ff e9 13 02 00 00 48 8b ce e8 70 f6 ff ff e9 06 02 00 00 48 8b ce e8 53 f6 ff ff e9 f9 01 00 00 48 8b ce e8 36 f6 ff ff e9 ec 01 00 00 48 8b ce e8 19 f6 ff ff e9 df 01 00 00 48 8b ce e8 fc f5 ff ff e9 d2 01 00 00 48 8b ce e8 df f5 ff ff e9 c5 01 00 00 48 8b ce e8 c2 f5 ff ff e9 b8 01 00 00 48 8b ce e8 a5 f5 ff ff e9 ab 01 00 00 48 8b ce e8 88 f5 ff ff e9 9e 01 00 00 48 8b ce e8 6b f5 ff ff e9 91 01 00 00 48 8b ce e8 4e f5 ff ff e9 84 01 00 00 48 8b ce e8 31 f5 ff ff e9 77 01 00 00 48 8b ce e8 14 f5 ff ff e9 6a 01 00 00 48 8b ce e8 f7 f4 ff ff e9 5d 01 00 00 48 8b ce e8 da f4 ff ff e9 50 01 00 00 48 8b ce e8 bd f4 ff ff e9 43 01 00 00 48 8b ce e8 a0 f4 ff ff e9 36 01 00 00 48 8b ce e8 83 f4 ff ff e9 29 01 00 00 48 8b ce e8 66 f4 ff ff e9 1c 01 00 00 48 8b ce e8 49 f4 ff ff e9 0f 01 00 00 48 8b ce e8 2c f4 ff ff e9 02 01 00 00 48 8b ce e8 0f f4 ff ff e9 f5 00 00 00 48 8b ce e8 f2 f3 ff ff e9 e8 00 00 00 48 8b ce e8 d5 f3 ff ff e9 db 00 00 00 48 8b ce e8 b8 f3 ff ff e9 ce 00 00 00 48 8b ce e8 9b f3 ff ff e9 c1 00 00 00 48 8b ce e8 7e f3 ff ff e9 b4 00 00 00 48 8b ce e8 61 f3 ff ff e9 a7 00 00 00 48 8b ce e8 44 f3 ff ff e9 9a 00 00 00 48 8b ce e8 27 f3 ff ff e9 8d 00 00 00 48 8b ce e8 0a f3 ff ff e9 80 00 00 00 48 8b ce e8 ed f2 ff ff eb 76 48 8b ce e8 d3 f2 ff ff eb 6c 48 8b ce e8 b9 f2 ff ff eb 62 48 8b ce e8 9f f2 ff ff eb 58 48 8b ce e8 85 f2 ff ff eb 4e 48 8b ce e8 6b f2 ff ff eb 44 48 8b ce e8 51 f2 ff ff eb 3a 48 8b ce e8 df e9 ff ff eb 30 48 8b ce e8 c5 e9 ff ff eb 26 48 8b ce e8 ab e9 ff ff eb 1c 48 8b ce e8 91 e9 ff ff eb 12 48 8b ce e8 77 e9 ff ff eb 08 48 8b ce e8 5d e9 ff ff 90 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov edi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f9}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
000eh mov r8,r9                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c1}
0011h movzx ecx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cf}
0015h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0017h cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
001ah ja near ptr 05dbh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bb 05 00 00}
0020h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0022h lea rax,[rip+5e7h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e7 05 00 00}
0029h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
002ch lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
0033h add rax,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c1}
0036h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0038h or rdx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d0}
003bh or rdx,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d6}
003eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0041h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0044h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8a 05 00 00}
0049h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0052h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0055h and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0058h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 76 05 00 00}
005dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0060h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0063h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0066h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0069h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 65 05 00 00}
006eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0071h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0074h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0077h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
007ah jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 54 05 00 00}
007fh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0082h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0085h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0088h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
008bh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 43 05 00 00}
0090h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0093h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0096h xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
0099h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
009ch jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 32 05 00 00}
00a1h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00a4h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00a7h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
00aah mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
00adh or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
00b0h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00b3h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1b 05 00 00}
00b8h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00bbh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00beh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
00c1h and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
00c4h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0a 05 00 00}
00c9h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00cch xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
00cfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00d2h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
00d5h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00d8h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f6 04 00 00}
00ddh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00e0h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00e3h and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
00e6h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e8 04 00 00}
00ebh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00eeh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00f1h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
00f4h not rcx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d1}
00f7h or rcx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c8}
00fah and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
00fdh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d1 04 00 00}
0102h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0105h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0108h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
010bh and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
010eh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c0 04 00 00}
0113h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0116h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0119h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
011ch not rcx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d1}
011fh or rcx,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b ca}
0122h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0125h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a9 04 00 00}
012ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
012dh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0130h or rdx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d0}
0133h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0136h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 98 04 00 00}
013bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
013eh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0141h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8d 04 00 00}
0146h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0149h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
014ch not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
014fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0152h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0155h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 79 04 00 00}
015ah mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
015dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0160h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0163h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 04 00 00}
0168h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
016bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
016eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0171h xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
0174h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0177h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 57 04 00 00}
017ch mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
017fh and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0182h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0185h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0188h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 46 04 00 00}
018dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0190h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0193h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0196h xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
0199h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
019ch jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 32 04 00 00}
01a1h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a4h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
01a7h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
01aah not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01adh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 21 04 00 00}
01b2h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
01b5h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
01b8h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01bbh xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
01beh and rax,rsi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c6}
01c1h andn rcx,rsi,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 c8 f2 ca}
01c6h or rax,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c1}
01c9h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 05 04 00 00}
01ceh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
01d1h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
01d4h and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
01d7h and rax,rsi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c6}
01dah andn rcx,rsi,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 c8 f2 ca}
01dfh or rcx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c8}
01e2h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01e5h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01e8h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e6 03 00 00}
01edh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
01f0h xor rax,rsi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c6}
01f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01f6h xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
01f9h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
01fch jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d2 03 00 00}
0201h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0204h xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
0207h and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
020ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
020dh and rcx,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 ca}
0210h xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
0213h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0216h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0219h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b5 03 00 00}
021eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0221h and rax,rsi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c6}
0224h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0227h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
022ah xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
022dh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0230h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 03 00 00}
0235h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0238h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
023bh not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
023eh and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0241h andn r8,r8,rdx                          ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 62 b8 f2 c2}
0246h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0249h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 85 03 00 00}
024eh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0251h and rax,rsi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c6}
0254h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0257h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
025ah xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
025dh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0260h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6e 03 00 00}
0265h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0268h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
026bh not r8                                  ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d0}
026eh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0271h andn rdx,rdx,r8                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 c2 e8 f2 d0}
0276h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0279h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 03 00 00}
027eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0281h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0284h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0287h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
028ah jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 44 03 00 00}
028fh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0292h or rcx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c8}
0295h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
029ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
029fh call 7ff7c7e847a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 e5 7d ff}
02a4h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
02a7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
02aah call 7ff7c81b8ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 2c b1 ff}
02afh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02b2h call 7ff7c7e8e830h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 85 7e ff}
02b7h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 17 03 00 00}
02bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
02bfh call 7ff7c86a5b48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 f8 ff ff}
02c4h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0a 03 00 00}
02c9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
02cch call 7ff7c86a5b38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 f8 ff ff}
02d1h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fd 02 00 00}
02d6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
02d9h call 7ff7c86a5b28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a f8 ff ff}
02deh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f0 02 00 00}
02e3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
02e6h call 7ff7c86a5b18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d f8 ff ff}
02ebh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e3 02 00 00}
02f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
02f3h call 7ff7c86a5b08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 f8 ff ff}
02f8h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d6 02 00 00}
02fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0300h call 7ff7c86a5af8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 f8 ff ff}
0305h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c9 02 00 00}
030ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
030dh call 7ff7c86a5ae8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 f8 ff ff}
0312h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bc 02 00 00}
0317h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
031ah call 7ff7c86a5ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 f7 ff ff}
031fh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 af 02 00 00}
0324h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0327h call 7ff7c86a5ac8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc f7 ff ff}
032ch jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 02 00 00}
0331h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0334h call 7ff7c86a5ab8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af f7 ff ff}
0339h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 02 00 00}
033eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0341h call 7ff7c86a5aa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f7 ff ff}
0346h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 88 02 00 00}
034bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
034eh call 7ff7c86a5a98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 f7 ff ff}
0353h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7b 02 00 00}
0358h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
035bh call 7ff7c86a5a88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 f7 ff ff}
0360h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6e 02 00 00}
0365h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0368h call 7ff7c86a5a78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b f7 ff ff}
036dh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 61 02 00 00}
0372h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0375h call 7ff7c86a5a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e f7 ff ff}
037ah jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 54 02 00 00}
037fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0382h call 7ff7c86a5a58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 f7 ff ff}
0387h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 47 02 00 00}
038ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
038fh call 7ff7c86a5a48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 f6 ff ff}
0394h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3a 02 00 00}
0399h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
039ch call 7ff7c86a5a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 f6 ff ff}
03a1h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2d 02 00 00}
03a6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03a9h call 7ff7c86a5a28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa f6 ff ff}
03aeh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 02 00 00}
03b3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03b6h call 7ff7c86a5a18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d f6 ff ff}
03bbh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 13 02 00 00}
03c0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03c3h call 7ff7c86a5a08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 f6 ff ff}
03c8h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 06 02 00 00}
03cdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03d0h call 7ff7c86a59f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 f6 ff ff}
03d5h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f9 01 00 00}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh call 7ff7c86a59e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 f6 ff ff}
03e2h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ec 01 00 00}
03e7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03eah call 7ff7c86a59d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f6 ff ff}
03efh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 df 01 00 00}
03f4h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03f7h call 7ff7c86a59c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc f5 ff ff}
03fch jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d2 01 00 00}
0401h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0404h call 7ff7c86a59b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f5 ff ff}
0409h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c5 01 00 00}
040eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0411h call 7ff7c86a59a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 f5 ff ff}
0416h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b8 01 00 00}
041bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
041eh call 7ff7c86a5998h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 f5 ff ff}
0423h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ab 01 00 00}
0428h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
042bh call 7ff7c86a5988h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 f5 ff ff}
0430h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 01 00 00}
0435h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0438h call 7ff7c86a5978h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b f5 ff ff}
043dh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 91 01 00 00}
0442h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0445h call 7ff7c86a5968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e f5 ff ff}
044ah jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 84 01 00 00}
044fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0452h call 7ff7c86a5958h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 f5 ff ff}
0457h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 77 01 00 00}
045ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
045fh call 7ff7c86a5948h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 f5 ff ff}
0464h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6a 01 00 00}
0469h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
046ch call 7ff7c86a5938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f4 ff ff}
0471h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5d 01 00 00}
0476h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0479h call 7ff7c86a5928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da f4 ff ff}
047eh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 50 01 00 00}
0483h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0486h call 7ff7c86a5918h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd f4 ff ff}
048bh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 43 01 00 00}
0490h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0493h call 7ff7c86a5908h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 f4 ff ff}
0498h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 36 01 00 00}
049dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
04a0h call 7ff7c86a58f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 f4 ff ff}
04a5h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 29 01 00 00}
04aah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
04adh call 7ff7c86a58e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 f4 ff ff}
04b2h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 01 00 00}
04b7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
04bah call 7ff7c86a58d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 f4 ff ff}
04bfh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0f 01 00 00}
04c4h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
04c7h call 7ff7c86a58c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c f4 ff ff}
04cch jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 02 01 00 00}
04d1h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
04d4h call 7ff7c86a58b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f f4 ff ff}
04d9h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f5 00 00 00}
04deh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
04e1h call 7ff7c86a58a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 f3 ff ff}
04e6h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e8 00 00 00}
04ebh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
04eeh call 7ff7c86a5898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 f3 ff ff}
04f3h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 db 00 00 00}
04f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
04fbh call 7ff7c86a5888h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f3 ff ff}
0500h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ce 00 00 00}
0505h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0508h call 7ff7c86a5878h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f3 ff ff}
050dh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c1 00 00 00}
0512h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0515h call 7ff7c86a5868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e f3 ff ff}
051ah jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b4 00 00 00}
051fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0522h call 7ff7c86a5858h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 f3 ff ff}
0527h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a7 00 00 00}
052ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
052fh call 7ff7c86a5848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 f3 ff ff}
0534h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9a 00 00 00}
0539h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
053ch call 7ff7c86a5838h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 f3 ff ff}
0541h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8d 00 00 00}
0546h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0549h call 7ff7c86a5828h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a f3 ff ff}
054eh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0553h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0556h call 7ff7c86a5818h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f2 ff ff}
055bh jmp short 05d3h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
055dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0560h call 7ff7c86a5808h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 f2 ff ff}
0565h jmp short 05d3h                         ; JMP rel8 || EB cb || encoded[2]{eb 6c}
0567h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
056ah call 7ff7c86a57f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 f2 ff ff}
056fh jmp short 05d3h                         ; JMP rel8 || EB cb || encoded[2]{eb 62}
0571h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0574h call 7ff7c86a57e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f f2 ff ff}
0579h jmp short 05d3h                         ; JMP rel8 || EB cb || encoded[2]{eb 58}
057bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
057eh call 7ff7c86a57d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 f2 ff ff}
0583h jmp short 05d3h                         ; JMP rel8 || EB cb || encoded[2]{eb 4e}
0585h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0588h call 7ff7c86a57c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b f2 ff ff}
058dh jmp short 05d3h                         ; JMP rel8 || EB cb || encoded[2]{eb 44}
058fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0592h call 7ff7c86a57b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 f2 ff ff}
0597h jmp short 05d3h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0599h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
059ch call 7ff7c86a4f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df e9 ff ff}
05a1h jmp short 05d3h                         ; JMP rel8 || EB cb || encoded[2]{eb 30}
05a3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
05a6h call 7ff7c86a4f40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 e9 ff ff}
05abh jmp short 05d3h                         ; JMP rel8 || EB cb || encoded[2]{eb 26}
05adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
05b0h call 7ff7c86a4f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab e9 ff ff}
05b5h jmp short 05d3h                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
05b7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
05bah call 7ff7c86a4f20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 e9 ff ff}
05bfh jmp short 05d3h                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
05c1h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
05c4h call 7ff7c86a4f10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 e9 ff ff}
05c9h jmp short 05d3h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
05cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
05ceh call 7ff7c86a4f00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d e9 ff ff}
05d3h nop                                     ; NOP || o32 90 || encoded[1]{90}
05d4h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
05d8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
05d9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
05dah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long eval<long>(TernaryBitLogicKind:byte kind, long a, long b, long c)
; eval_g[64i](TernaryBitLogicKind~8u,64i,64i,64i)[2025] = {57 56 53 48 83 ec 30 8b d9 49 8b f0 49 8b f9 0f b6 cb ff c9 83 f9 5e 0f 87 7b 07 00 00 8b c9 48 8d 05 a2 07 00 00 8b 04 88 4c 8d 05 df ff ff ff 49 03 c0 ff e0 48 0b f7 48 0b d6 48 8b c2 48 f7 d0 e9 49 07 00 00 48 8b c6 48 0b c2 48 f7 d0 48 8b cf 48 23 c1 e9 35 07 00 00 48 8b c6 48 0b c2 48 f7 d0 e9 27 07 00 00 48 8b c2 48 8b d7 48 0b c2 48 f7 d0 48 8b ce 48 23 c1 e9 10 07 00 00 48 8b c7 48 0b c2 48 f7 d0 e9 02 07 00 00 48 8b c2 48 f7 d0 48 8b d6 48 8b cf 48 33 ca 48 23 c1 e9 eb 06 00 00 48 8b c6 48 8b cf 48 23 c8 48 0b ca 48 8b c1 48 f7 d0 e9 d4 06 00 00 48 8b c2 48 f7 d0 48 8b d6 48 23 c2 48 8b cf 48 23 c1 e9 bd 06 00 00 48 8b c6 48 8b cf 48 33 c8 48 0b ca 48 8b c1 48 f7 d0 e9 a6 06 00 00 48 8b c2 48 f7 d0 48 8b d7 48 23 c2 e9 95 06 00 00 48 8b da 48 f7 d3 48 8b ce e8 c0 fa ff ff 48 0b c7 48 23 c3 e9 7c 06 00 00 48 8b c2 48 f7 d0 48 8b d6 48 23 c2 e9 6b 06 00 00 48 8b da 48 f7 d3 48 8b cf e8 96 fa ff ff 48 0b c6 48 23 c3 e9 52 06 00 00 48 8b c2 48 f7 d0 48 8b d6 48 0b d7 48 23 c2 e9 3e 06 00 00 48 8b c2 48 f7 d0 e9 33 06 00 00 48 8b c6 48 8b cf 48 0b c8 48 8b c1 48 f7 d0 48 23 c2 e9 1c 06 00 00 48 8b c7 48 8b ce 48 0b c8 48 8b c1 48 f7 d0 e9 08 06 00 00 48 8b c6 48 f7 d0 48 8b cf 48 33 ca 48 23 c1 e9 f4 05 00 00 48 8b c2 48 8b d7 48 23 d0 48 8b ce 48 0b ca 48 8b c1 48 f7 d0 e9 da 05 00 00 48 8b c7 48 f7 d0 48 8b ce 48 33 ca 48 23 c1 e9 c6 05 00 00 48 8b c2 48 8b d6 48 23 d0 48 8b cf 48 0b ca 48 8b c1 48 f7 d0 e9 ac 05 00 00 48 8b c6 48 0b c7 48 f7 d0 48 8b ce 4c 8b c7 49 33 c8 48 23 c2 c4 e2 e8 f2 d1 48 0b c2 e9 8a 05 00 00 48 8b c6 48 0b c7 48 8b ce 4c 8b c7 49 23 c8 48 23 c2 c4 e2 e8 f2 d1 48 0b d0 48 8b c2 48 f7 d0 e9 65 05 00 00 48 8b c6 48 33 c2 48 8b cf 48 33 ca 48 23 c1 e9 51 05 00 00 48 8b de 48 33 df 48 8b ce 48 8b c7 48 23 c8 48 89 4c 24 28 48 8b ca 48 8b 54 24 28 e8 d9 bb b1 ff 48 8b d0 48 8b cb e8 36 59 ff ff 48 8b c8 e8 46 63 ff ff e9 18 05 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 a3 f7 ff ff e9 05 05 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 80 f7 ff ff e9 f2 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 5d f7 ff ff e9 df 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 3a f7 ff ff e9 cc 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 17 f7 ff ff e9 b9 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 f4 f6 ff ff e9 a6 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 d1 f6 ff ff e9 93 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 ae f6 ff ff e9 80 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 8b f6 ff ff e9 6d 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 68 f6 ff ff e9 5a 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 45 f6 ff ff e9 47 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 22 f6 ff ff e9 34 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 ff f5 ff ff e9 21 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 dc f5 ff ff e9 0e 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 b9 f5 ff ff e9 fb 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 96 f5 ff ff e9 e8 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 73 f5 ff ff e9 d5 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 50 f5 ff ff e9 c2 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 2d f5 ff ff e9 af 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 0a f5 ff ff e9 9c 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 e7 f4 ff ff e9 89 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 c4 f4 ff ff e9 76 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 a1 f4 ff ff e9 63 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 7e f4 ff ff e9 50 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 5b f4 ff ff e9 3d 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 38 f4 ff ff e9 2a 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 15 f4 ff ff e9 17 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 f2 f3 ff ff e9 04 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 cf f3 ff ff e9 f1 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 ac f3 ff ff e9 de 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 89 f3 ff ff e9 cb 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 66 f3 ff ff e9 b8 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 43 f3 ff ff e9 a5 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 20 f3 ff ff e9 92 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 fd f2 ff ff e9 7f 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 da f2 ff ff e9 6c 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 b7 f2 ff ff e9 59 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 dc ea ff ff e9 46 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 b9 ea ff ff e9 33 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 96 ea ff ff e9 20 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 73 ea ff ff e9 0d 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 50 ea ff ff e9 fa 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 2d ea ff ff e9 e7 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 0a ea ff ff e9 d4 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 e7 e9 ff ff e9 c1 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 c4 e9 ff ff e9 ae 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 a1 e9 ff ff e9 9b 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 7e e9 ff ff e9 88 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 5b e9 ff ff e9 75 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 38 e9 ff ff e9 62 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 15 e9 ff ff e9 4f 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 f2 e8 ff ff e9 3c 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 cf e8 ff ff e9 29 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 ac e8 ff ff e9 16 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 89 e8 ff ff e9 03 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 66 e8 ff ff e9 f0 00 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 43 e8 ff ff e9 dd 00 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 20 e8 ff ff e9 ca 00 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 fd e7 ff ff e9 b7 00 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 da e7 ff ff e9 a4 00 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 b7 e7 ff ff e9 91 00 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 94 e7 ff ff e9 7e 00 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 71 e7 ff ff eb 6e 48 8b ca 48 8b d6 4c 8b c7 e8 51 e7 ff ff eb 5e 48 8b ca 48 8b d6 4c 8b c7 e8 31 e7 ff ff eb 4e 48 8b ca 48 8b d6 4c 8b c7 e8 11 e7 ff ff eb 3e 48 8b ca 48 8b d6 4c 8b c7 e8 f1 e6 ff ff eb 2e 48 8b ca 48 8b d6 4c 8b c7 e8 d1 e6 ff ff eb 1e 48 8b ca 48 8b d6 4c 8b c7 e8 b1 e6 ff ff eb 0e 48 8b ca 48 8b d6 4c 8b c7 e8 91 e6 ff ff 90 48 83 c4 30 5b 5e 5f c3 48 b9 d8 57 98 c7 f7 7f 00 00 e8 79 f5 bb 5e 48 8b f0 0f b6 cb e8 5e e6 ff ff 48 8b d0 48 8b ce e8 a3 20 0c ff 48 8b ce e8 ab 41 b3 5e cc 00 00 26 00 00 00 37 00 00 00 4b 00 00 00 59 00 00 00 70 00 00 00 7e 00 00 00 95 00 00 00 ac 00 00 00 c3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov ebx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d9}
0009h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000ch mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
000fh movzx ecx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 cb}
0012h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0014h cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
0017h ja near ptr 0798h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 7b 07 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rax,[rip+7a2h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 a2 07 00 00}
0026h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0029h lea r8,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 df ff ff ff}
0030h add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0033h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0035h or rsi,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b f7}
0038h or rdx,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d6}
003bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
003eh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0041h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 49 07 00 00}
0046h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0049h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
004ch not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
004fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0052h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0055h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 35 07 00 00}
005ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
005dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0060h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0063h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 27 07 00 00}
0068h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
006bh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
006eh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0071h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0074h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0077h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
007ah jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 10 07 00 00}
007fh mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0082h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0085h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0088h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 02 07 00 00}
008dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0090h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0093h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0096h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0099h xor rcx,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 ca}
009ch and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
009fh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 eb 06 00 00}
00a4h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00aah and rcx,rax                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c8}
00adh or rcx,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b ca}
00b0h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00b3h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00b6h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d4 06 00 00}
00bbh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00beh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c4h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
00cdh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 bd 06 00 00}
00d2h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00d5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d8h xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
00dbh or rcx,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b ca}
00deh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e1h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00e4h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 06 00 00}
00e9h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00ech not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00efh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f2h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
00f5h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 06 00 00}
00fah mov rbx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b da}
00fdh not rbx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d3}
0100h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0103h call 7ff7c86a6b58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 fa ff ff}
0108h or rax,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c7}
010bh and rax,rbx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c3}
010eh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 06 00 00}
0113h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0116h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0119h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
011ch and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
011fh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 06 00 00}
0124h mov rbx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b da}
0127h not rbx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d3}
012ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
012dh call 7ff7c86a6b58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 fa ff ff}
0132h or rax,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c6}
0135h and rax,rbx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c3}
0138h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 52 06 00 00}
013dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0140h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h or rdx,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d7}
0149h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
014ch jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 3e 06 00 00}
0151h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0154h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0157h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 06 00 00}
015ch mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
015fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0162h or rcx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c8}
0165h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0168h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
016bh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
016eh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
0173h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0176h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0179h or rcx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c8}
017ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017fh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0182h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 08 06 00 00}
0187h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
018ah not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
018dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0190h xor rcx,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 ca}
0193h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0196h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f4 05 00 00}
019bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
019eh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
01a1h and rdx,rax                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d0}
01a4h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01a7h or rcx,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b ca}
01aah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01adh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01b0h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 da 05 00 00}
01b5h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
01b8h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01bbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01beh xor rcx,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 ca}
01c1h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
01c4h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 c6 05 00 00}
01c9h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
01cch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01cfh and rdx,rax                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d0}
01d2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01d5h or rcx,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b ca}
01d8h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01dbh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01deh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ac 05 00 00}
01e3h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01e6h or rax,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c7}
01e9h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01ech mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01efh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
01f2h xor rcx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c8}
01f5h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
01f8h andn rdx,rdx,rcx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 d1}
01fdh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0200h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8a 05 00 00}
0205h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0208h or rax,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c7}
020bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
020eh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0211h and rcx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c8}
0214h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0217h andn rdx,rdx,rcx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 d1}
021ch or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
021fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0222h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0225h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 65 05 00 00}
022ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
022dh xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0230h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0233h xor rcx,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 ca}
0236h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0239h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 51 05 00 00}
023eh mov rbx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b de}
0241h xor rbx,rdi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 df}
0244h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0247h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
024ah and rcx,rax                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c8}
024dh mov [rsp+28h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 28}
0252h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0255h mov rdx,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 28}
025ah call 7ff7c81c2dc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 bb b1 ff}
025fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0262h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0265h call 7ff7c869cb30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 59 ff ff}
026ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026dh call 7ff7c869d548h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 63 ff ff}
0272h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 18 05 00 00}
0277h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
027ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027dh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0280h call 7ff7c86a69b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 f7 ff ff}
0285h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 05 05 00 00}
028ah mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
028dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0290h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0293h call 7ff7c86a69a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 f7 ff ff}
0298h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f2 04 00 00}
029dh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
02a0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02a3h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
02a6h call 7ff7c86a6998h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d f7 ff ff}
02abh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 df 04 00 00}
02b0h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
02b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02b6h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
02b9h call 7ff7c86a6988h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a f7 ff ff}
02beh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 cc 04 00 00}
02c3h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
02c6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c9h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
02cch call 7ff7c86a6978h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 f7 ff ff}
02d1h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b9 04 00 00}
02d6h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
02d9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02dch mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
02dfh call 7ff7c86a6968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 f6 ff ff}
02e4h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 04 00 00}
02e9h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
02ech mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02efh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
02f2h call 7ff7c86a6958h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f6 ff ff}
02f7h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 93 04 00 00}
02fch mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
02ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0302h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0305h call 7ff7c86a6948h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae f6 ff ff}
030ah jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 04 00 00}
030fh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0312h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0315h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0318h call 7ff7c86a6938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b f6 ff ff}
031dh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6d 04 00 00}
0322h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0325h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0328h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
032bh call 7ff7c86a6928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 f6 ff ff}
0330h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5a 04 00 00}
0335h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
033eh call 7ff7c86a6918h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 f6 ff ff}
0343h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 47 04 00 00}
0348h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
034bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
034eh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0351h call 7ff7c86a6908h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 f6 ff ff}
0356h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 34 04 00 00}
035bh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
035eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0361h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0364h call 7ff7c86a68f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff f5 ff ff}
0369h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 21 04 00 00}
036eh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0371h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0374h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0377h call 7ff7c86a68e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc f5 ff ff}
037ch jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0e 04 00 00}
0381h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0384h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0387h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
038ah call 7ff7c86a68d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 f5 ff ff}
038fh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 03 00 00}
0394h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0397h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
039ah mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
039dh call 7ff7c86a68c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f5 ff ff}
03a2h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e8 03 00 00}
03a7h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
03aah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03adh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
03b0h call 7ff7c86a68b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 f5 ff ff}
03b5h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d5 03 00 00}
03bah mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
03bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03c0h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
03c3h call 7ff7c86a68a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 f5 ff ff}
03c8h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 c2 03 00 00}
03cdh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
03d0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03d3h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
03d6h call 7ff7c86a6898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d f5 ff ff}
03dbh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 af 03 00 00}
03e0h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
03e3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03e6h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
03e9h call 7ff7c86a6888h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a f5 ff ff}
03eeh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9c 03 00 00}
03f3h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
03f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f9h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
03fch call 7ff7c86a6878h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 f4 ff ff}
0401h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 89 03 00 00}
0406h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0409h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
040ch mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
040fh call 7ff7c86a6868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 f4 ff ff}
0414h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 76 03 00 00}
0419h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
041ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
041fh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0422h call 7ff7c86a6858h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 f4 ff ff}
0427h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 03 00 00}
042ch mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
042fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0432h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0435h call 7ff7c86a6848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e f4 ff ff}
043ah jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 50 03 00 00}
043fh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0442h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0445h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0448h call 7ff7c86a6838h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b f4 ff ff}
044dh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 3d 03 00 00}
0452h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0455h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0458h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
045bh call 7ff7c86a6828h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 f4 ff ff}
0460h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2a 03 00 00}
0465h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0468h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
046bh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
046eh call 7ff7c86a6818h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 f4 ff ff}
0473h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 17 03 00 00}
0478h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
047bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
047eh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0481h call 7ff7c86a6808h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 f3 ff ff}
0486h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 04 03 00 00}
048bh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
048eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0491h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0494h call 7ff7c86a67f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf f3 ff ff}
0499h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 02 00 00}
049eh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
04a1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04a4h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
04a7h call 7ff7c86a67e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac f3 ff ff}
04ach jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 de 02 00 00}
04b1h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
04bah call 7ff7c86a67d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f3 ff ff}
04bfh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 cb 02 00 00}
04c4h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
04c7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04cah mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
04cdh call 7ff7c86a67c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 f3 ff ff}
04d2h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b8 02 00 00}
04d7h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
04dah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04ddh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
04e0h call 7ff7c86a67b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 f3 ff ff}
04e5h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 02 00 00}
04eah mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
04edh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f0h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
04f3h call 7ff7c86a67a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 f3 ff ff}
04f8h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 92 02 00 00}
04fdh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0500h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0503h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0506h call 7ff7c86a6798h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd f2 ff ff}
050bh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 02 00 00}
0510h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0513h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0516h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0519h call 7ff7c86a6788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da f2 ff ff}
051eh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6c 02 00 00}
0523h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0526h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0529h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
052ch call 7ff7c86a6778h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 f2 ff ff}
0531h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 59 02 00 00}
0536h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0539h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
053ch mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
053fh call 7ff7c86a5fb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc ea ff ff}
0544h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 46 02 00 00}
0549h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
054ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
054fh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0552h call 7ff7c86a5fa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 ea ff ff}
0557h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 02 00 00}
055ch mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
055fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0562h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0565h call 7ff7c86a5f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 ea ff ff}
056ah jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 02 00 00}
056fh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0578h call 7ff7c86a5f80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 ea ff ff}
057dh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0d 02 00 00}
0582h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0585h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0588h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
058bh call 7ff7c86a5f70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 ea ff ff}
0590h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 fa 01 00 00}
0595h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0598h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
059bh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
059eh call 7ff7c86a5f60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d ea ff ff}
05a3h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e7 01 00 00}
05a8h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
05abh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05aeh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
05b1h call 7ff7c86a5f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a ea ff ff}
05b6h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d4 01 00 00}
05bbh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
05beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05c1h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
05c4h call 7ff7c86a5f40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 e9 ff ff}
05c9h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 c1 01 00 00}
05ceh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
05d1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05d4h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
05d7h call 7ff7c86a5f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 e9 ff ff}
05dch jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
05e1h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
05e4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05e7h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
05eah call 7ff7c86a5f20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 e9 ff ff}
05efh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9b 01 00 00}
05f4h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
05f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05fah mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
05fdh call 7ff7c86a5f10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e e9 ff ff}
0602h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 88 01 00 00}
0607h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
060ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
060dh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0610h call 7ff7c86a5f00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b e9 ff ff}
0615h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 01 00 00}
061ah mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
061dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0620h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0623h call 7ff7c86a5ef0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 e9 ff ff}
0628h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 62 01 00 00}
062dh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0630h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0633h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0636h call 7ff7c86a5ee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 e9 ff ff}
063bh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 4f 01 00 00}
0640h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0643h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0646h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0649h call 7ff7c86a5ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 e8 ff ff}
064eh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 3c 01 00 00}
0653h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0656h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0659h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
065ch call 7ff7c86a5ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf e8 ff ff}
0661h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 29 01 00 00}
0666h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0669h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066ch mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
066fh call 7ff7c86a5eb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac e8 ff ff}
0674h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 16 01 00 00}
0679h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
067ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
067fh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0682h call 7ff7c86a5ea0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 e8 ff ff}
0687h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 01 00 00}
068ch mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
068fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0692h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0695h call 7ff7c86a5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 e8 ff ff}
069ah jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f0 00 00 00}
069fh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
06a2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a5h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
06a8h call 7ff7c86a5e80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 e8 ff ff}
06adh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
06b2h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
06b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06b8h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
06bbh call 7ff7c86a5e70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 e8 ff ff}
06c0h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ca 00 00 00}
06c5h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
06c8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06cbh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
06ceh call 7ff7c86a5e60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd e7 ff ff}
06d3h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b7 00 00 00}
06d8h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
06dbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06deh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
06e1h call 7ff7c86a5e50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da e7 ff ff}
06e6h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a4 00 00 00}
06ebh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
06eeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06f1h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
06f4h call 7ff7c86a5e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 e7 ff ff}
06f9h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 91 00 00 00}
06feh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0701h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0704h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0707h call 7ff7c86a5e30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 e7 ff ff}
070ch jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 7e 00 00 00}
0711h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0714h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0717h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
071ah call 7ff7c86a5e20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 e7 ff ff}
071fh jmp short 078fh                         ; JMP rel8 || EB cb || encoded[2]{eb 6e}
0721h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0724h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0727h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
072ah call 7ff7c86a5e10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 e7 ff ff}
072fh jmp short 078fh                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0731h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0734h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0737h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
073ah call 7ff7c86a5e00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 e7 ff ff}
073fh jmp short 078fh                         ; JMP rel8 || EB cb || encoded[2]{eb 4e}
0741h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0744h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0747h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
074ah call 7ff7c86a5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 e7 ff ff}
074fh jmp short 078fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0751h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0754h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0757h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
075ah call 7ff7c86a5de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 e6 ff ff}
075fh jmp short 078fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2e}
0761h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0764h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0767h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
076ah call 7ff7c86a5dd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 e6 ff ff}
076fh jmp short 078fh                         ; JMP rel8 || EB cb || encoded[2]{eb 1e}
0771h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0774h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0777h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
077ah call 7ff7c86a5dc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 e6 ff ff}
077fh jmp short 078fh                         ; JMP rel8 || EB cb || encoded[2]{eb 0e}
0781h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0784h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0787h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
078ah call 7ff7c86a5db0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 e6 ff ff}
078fh nop                                     ; NOP || o32 90 || encoded[1]{90}
0790h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0794h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0795h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0796h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0797h ret                                     ; RET || C3 || encoded[1]{c3}
0798h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
07a2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f5 bb 5e}
07a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
07aah movzx ecx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 cb}
07adh call 7ff7c86a5da0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e e6 ff ff}
07b2h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
07b5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
07b8h call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 20 0c ff}
07bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
07c0h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 41 b3 5e}
07c5h int 3                                   ; INT3 || CC || encoded[1]{cc}
07c6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07c8h add es:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{26 00 00}
07cbh add [rdi],dh                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 37}
07cdh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07cfh add [rbx],cl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 4b 00}
07d2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07d4h pop rcx                                 ; POP r64 || 58+ro || encoded[1]{59}
07d5h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07d7h add [rax],dh                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 70 00}
07dah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07dch jle short 07deh                         ; JLE rel8 || 7E cb || encoded[2]{7e 00}
07deh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07e0h xchg ebp,eax                            ; XCHG r32, EAX || o32 90+rd || encoded[1]{95}
07e1h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07e3h (bad)                                   ; <invalid> || <invalid> || encoded[6]{00 ac 00 00 00 c3}
------------------------------------------------------------------------------------------------------------------------
; byte eval<byte>(ShiftOpKind:byte kind, byte a, byte count)
; eval_g[8u](ShiftOpKind~8u,8u,8u)[100] = {57 56 55 53 48 83 ec 28 8b f1 44 0f b6 ce 41 ff c9 41 83 f9 03 77 1a 45 8b d1 48 8d 0d 1f 01 00 00 42 8b 0c 91 48 8d 05 de ff ff ff 48 03 c8 ff e1 40 80 fe 08 0f 85 7f 00 00 00 0f b6 c2 45 0f b6 d0 41 8b ca 44 8b c8 41 d3 f9 41 8b ca f7 d9 83 c1 08 d3 e0 41 0b c1 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx r9d,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ce}
000eh dec r9d                                 ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff c9}
0011h cmp r9d,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 03}
0015h ja short 0031h                          ; JA rel8 || 77 cb || encoded[2]{77 1a}
0017h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
001ah lea rcx,[rip+11fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 1f 01 00 00}
0021h mov ecx,[rcx+r10*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 0c 91}
0025h lea rax,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 de ff ff ff}
002ch add rcx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c8}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0035h jne near ptr 00bah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 7f 00 00 00}
003bh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
003eh movzx r10d,r8b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d0}
0042h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0045h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0048h sar r9d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f9}
004bh mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
004eh neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0050h add ecx,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 08}
0053h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0055h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0058h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0060h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort eval<ushort>(ShiftOpKind:byte kind, ushort a, byte count)
; eval_g[16u](ShiftOpKind~8u,16u,8u)[100] = {57 56 55 53 48 83 ec 28 8b f1 44 0f b6 ce 41 ff c9 41 83 f9 03 77 1a 45 8b d1 48 8d 0d 1f 01 00 00 42 8b 0c 91 48 8d 05 de ff ff ff 48 03 c8 ff e1 40 80 fe 08 0f 85 7f 00 00 00 0f b7 c2 45 0f b6 d0 41 8b ca 44 8b c8 41 d3 f9 41 8b ca f7 d9 83 c1 10 d3 e0 41 0b c1 0f b7 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx r9d,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ce}
000eh dec r9d                                 ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff c9}
0011h cmp r9d,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 03}
0015h ja short 0031h                          ; JA rel8 || 77 cb || encoded[2]{77 1a}
0017h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
001ah lea rcx,[rip+11fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 1f 01 00 00}
0021h mov ecx,[rcx+r10*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 0c 91}
0025h lea rax,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 de ff ff ff}
002ch add rcx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c8}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0035h jne near ptr 00bah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 7f 00 00 00}
003bh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
003eh movzx r10d,r8b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d0}
0042h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0045h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0048h sar r9d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f9}
004bh mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
004eh neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0050h add ecx,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 10}
0053h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0055h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0058h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
005bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0060h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint eval<uint>(ShiftOpKind:byte kind, uint a, byte count)
; eval_g[32u](ShiftOpKind~8u,32u,8u)[71] = {57 56 55 53 48 83 ec 28 8b f1 44 0f b6 ce 41 ff c9 41 83 f9 03 77 19 41 8b c9 48 8d 05 df 00 00 00 8b 04 88 4c 8d 0d df ff ff ff 49 03 c1 ff e0 40 80 fe 08 75 44 41 0f b6 c8 d3 ca 8b c2 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx r9d,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ce}
000eh dec r9d                                 ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff c9}
0011h cmp r9d,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 03}
0015h ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0017h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001ah lea rax,[rip+0dfh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 df 00 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
002bh add rax,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c1}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0034h jne short 007ah                         ; JNE rel8 || 75 cb || encoded[2]{75 44}
0036h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
003ah ror edx,cl                              ; ROR r/m32, CL || o32 D3 /1 || encoded[2]{d3 ca}
003ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
003eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0042h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0043h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong eval<ulong>(ShiftOpKind:byte kind, ulong a, byte count)
; eval_g[64u](ShiftOpKind~8u,64u,8u)[73] = {57 56 55 53 48 83 ec 28 8b f1 44 0f b6 ce 41 ff c9 41 83 f9 03 77 19 41 8b c9 48 8d 05 e7 00 00 00 8b 04 88 4c 8d 0d df ff ff ff 49 03 c1 ff e0 40 80 fe 08 75 4c 41 0f b6 c8 48 d3 ca 48 8b c2 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx r9d,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ce}
000eh dec r9d                                 ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff c9}
0011h cmp r9d,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 03}
0015h ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0017h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001ah lea rax,[rip+0e7h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e7 00 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
002bh add rax,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c1}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0034h jne short 0082h                         ; JNE rel8 || 75 cb || encoded[2]{75 4c}
0036h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
003ah ror rdx,cl                              ; ROR r/m64, CL || REX.W D3 /1 || encoded[3]{48 d3 ca}
003dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0040h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0044h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0045h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
