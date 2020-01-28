------------------------------------------------------------------------------------------------------------------------
; byte eval<byte>(BinaryBitLogicKind:byte kind, byte a, byte b)
; bbl~eval_g8u[310] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 1f 01 00 00 8b c0 48 8d 0d 98 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff 00 00 00 e9 f1 00 00 00 33 c0 e9 ea 00 00 00 0f b6 c2 41 0f b6 d0 23 c2 0f b6 c0 e9 d9 00 00 00 0f b6 c2 41 0f b6 d0 23 c2 44 8b c0 41 f7 d0 41 0f b6 c0 e9 c1 00 00 00 0f b6 c2 41 0f b6 d0 0b c2 0f b6 c0 e9 b0 00 00 00 0f b6 c2 41 0f b6 d0 0b c2 44 8b c0 41 f7 d0 41 0f b6 c0 e9 98 00 00 00 0f b6 c2 41 0f b6 d0 33 c2 0f b6 c0 e9 87 00 00 00 0f b6 c2 41 0f b6 d0 33 c2 44 8b c0 41 f7 d0 41 0f b6 c0 eb 72 0f b6 c2 eb 6d 41 0f b6 c0 eb 67 0f b6 c2 44 8b c0 41 f7 d0 41 0f b6 c0 eb 58 41 0f b6 c0 8b d0 f7 d2 0f b6 c2 eb 4b 0f b6 c2 41 0f b6 d0 44 8b c2 41 f7 d0 41 0b c0 0f b6 c0 eb 36 0f b6 c2 41 0f b6 d0 c4 62 78 f2 c2 41 0f b6 c0 eb 24 0f b6 c2 41 0f b6 d0 44 8b c0 41 f7 d0 41 0b d0 0f b6 c2 eb 0f 0f b6 c2 41 0f b6 c8 c4 e2 70 f2 c0 0f b6 c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
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
; bbl~eval_g8u[513] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 33 01 00 00 8b c0 48 8d 0d b0 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff e9 04 01 00 00 33 c0 e9 fd 00 00 00 48 0f be c2 49 0f be d0 23 c2 48 0f be c0 e9 ea 00 00 00 48 0f be c2 49 0f be d0 23 c2 44 8b c0 41 f7 d0 49 0f be c0 e9 d1 00 00 00 48 0f be c2 49 0f be d0 0b c2 48 0f be c0 e9 be 00 00 00 48 0f be c2 49 0f be d0 0b c2 44 8b c0 41 f7 d0 49 0f be c0 e9 a5 00 00 00 48 0f be c2 49 0f be d0 33 c2 48 0f be c0 e9 92 00 00 00 48 0f be c2 49 0f be d0 33 c2 44 8b c0 41 f7 d0 49 0f be c0 eb 7c 48 0f be c2 eb 76 49 0f be c0 eb 70 48 0f be c2 44 8b c0 41 f7 d0 49 0f be c0 eb 60 49 0f be c0 8b d0 f7 d2 48 0f be c2 eb 52 48 0f be c2 49 0f be d0 44 8b c2 41 f7 d0 41 0b c0 48 0f be c0 eb 3b 48 0f be c2 49 0f be d0 c4 62 78 f2 c2 49 0f be c0 eb 28 48 0f be c2 49 0f be d0 44 8b c0 41 f7 d0 41 0b d0 48 0f be c2 eb 11 48 0f be c2 49 0f be c8 c4 e2 70 f2 c0 48 0f be c0 48 0f be c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 70 d6 94 c6 f7 7f 00 00 e8 87 53 b6 5e 48 8b f8 40 88 77 08 48 b9 68 6f 34 c6 f7 7f 00 00 e8 b1 d6 b0 5e 48 8b c8 e8 09 12 41 ff 8b f0 48 b9 20 2c 68 c6 f7 7f 00 00 e8 58 53 b6 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 41 ec c8 5e 48 8b e8 8b ce e8 97 0c 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 b1 27 03 ff 48 8b d0 48 8b cb e8 36 83 05 ff 48 8b cb e8 66 9f ad 5e cc 00 00 00 00 00 2f 00 00 00 36 00 00 00 22 01 00 00 b7 00 00 00 f8 00 00 00 bd 00 00 00 8e 00 00 00 62 00 00 00 75 00 00 00 a1 00 00 00 d3 00 00 00 e1 00 00 00 c3}
; TermCode = RET_ZEDx3
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
014ah mov rcx,7ff7c694d670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d6 94 c6 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 53 b6 5e}
0159h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
015ch mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0160h mov rcx,7ff7c6346f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 34 c6 f7 7f 00 00}
016ah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 d6 b0 5e}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 12 41 ff}
0177h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0179h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
0183h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 53 b6 5e}
0188h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
018bh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0190h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
019ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 ec c8 5e}
019fh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01a2h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
01a4h call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 0c 05 ff}
01a9h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
01ach mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
01afh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
01b2h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 27 03 ff}
01b7h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01bah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
01bdh call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 83 05 ff}
01c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
01c5h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 9f ad 5e}
01cah int 3                                   ; INT3 || CC || encoded[1]{cc}
01cbh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01cdh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01cfh add [rdi],ch                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 2f}
01d1h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01d3h add [rsi],dh                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 36}
01d5h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
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
; bbl~eval_g8u[310] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 1f 01 00 00 8b c0 48 8d 0d 98 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff 00 00 e9 f1 00 00 00 33 c0 e9 ea 00 00 00 0f b7 c2 41 0f b7 d0 23 c2 0f b7 c0 e9 d9 00 00 00 0f b7 c2 41 0f b7 d0 23 c2 44 8b c0 41 f7 d0 41 0f b7 c0 e9 c1 00 00 00 0f b7 c2 41 0f b7 d0 0b c2 0f b7 c0 e9 b0 00 00 00 0f b7 c2 41 0f b7 d0 0b c2 44 8b c0 41 f7 d0 41 0f b7 c0 e9 98 00 00 00 0f b7 c2 41 0f b7 d0 33 c2 0f b7 c0 e9 87 00 00 00 0f b7 c2 41 0f b7 d0 33 c2 44 8b c0 41 f7 d0 41 0f b7 c0 eb 72 0f b7 c2 eb 6d 41 0f b7 c0 eb 67 0f b7 c2 44 8b c0 41 f7 d0 41 0f b7 c0 eb 58 41 0f b7 c0 8b d0 f7 d2 0f b7 c2 eb 4b 0f b7 c2 41 0f b7 d0 44 8b c2 41 f7 d0 41 0b c0 0f b7 c0 eb 36 0f b7 c2 41 0f b7 d0 c4 62 78 f2 c2 41 0f b7 c0 eb 24 0f b7 c2 41 0f b7 d0 44 8b c0 41 f7 d0 41 0b d0 0f b7 c2 eb 0f 0f b7 c2 41 0f b7 c8 c4 e2 70 f2 c0 0f b7 c0 0f b7 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
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
; bbl~eval_g8u[513] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 33 01 00 00 8b c0 48 8d 0d b0 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff e9 04 01 00 00 33 c0 e9 fd 00 00 00 48 0f bf c2 49 0f bf d0 23 c2 48 0f bf c0 e9 ea 00 00 00 48 0f bf c2 49 0f bf d0 23 c2 44 8b c0 41 f7 d0 49 0f bf c0 e9 d1 00 00 00 48 0f bf c2 49 0f bf d0 0b c2 48 0f bf c0 e9 be 00 00 00 48 0f bf c2 49 0f bf d0 0b c2 44 8b c0 41 f7 d0 49 0f bf c0 e9 a5 00 00 00 48 0f bf c2 49 0f bf d0 33 c2 48 0f bf c0 e9 92 00 00 00 48 0f bf c2 49 0f bf d0 33 c2 44 8b c0 41 f7 d0 49 0f bf c0 eb 7c 48 0f bf c2 eb 76 49 0f bf c0 eb 70 48 0f bf c2 44 8b c0 41 f7 d0 49 0f bf c0 eb 60 49 0f bf c0 8b d0 f7 d2 48 0f bf c2 eb 52 48 0f bf c2 49 0f bf d0 44 8b c2 41 f7 d0 41 0b c0 48 0f bf c0 eb 3b 48 0f bf c2 49 0f bf d0 c4 62 78 f2 c2 49 0f bf c0 eb 28 48 0f bf c2 49 0f bf d0 44 8b c0 41 f7 d0 41 0b d0 48 0f bf c2 eb 11 48 0f bf c2 49 0f bf c8 c4 e2 70 f2 c0 48 0f bf c0 48 0f bf c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 70 d6 94 c6 f7 7f 00 00 e8 97 4d b6 5e 48 8b f8 40 88 77 08 48 b9 48 7f 34 c6 f7 7f 00 00 e8 c1 d0 b0 5e 48 8b c8 e8 19 0c 41 ff 8b f0 48 b9 20 2c 68 c6 f7 7f 00 00 e8 68 4d b6 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 51 e6 c8 5e 48 8b e8 8b ce e8 a7 06 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 c1 21 03 ff 48 8b d0 48 8b cb e8 46 7d 05 ff 48 8b cb e8 76 99 ad 5e cc 00 00 00 00 00 2f 00 00 00 36 00 00 00 22 01 00 00 b7 00 00 00 f8 00 00 00 bd 00 00 00 8e 00 00 00 62 00 00 00 75 00 00 00 a1 00 00 00 d3 00 00 00 e1 00 00 00 c3}
; TermCode = RET_ZEDx3
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
014ah mov rcx,7ff7c694d670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d6 94 c6 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 4d b6 5e}
0159h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
015ch mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0160h mov rcx,7ff7c6347f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 34 c6 f7 7f 00 00}
016ah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 d0 b0 5e}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 0c 41 ff}
0177h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0179h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
0183h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 4d b6 5e}
0188h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
018bh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0190h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
019ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 e6 c8 5e}
019fh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01a2h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
01a4h call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 06 05 ff}
01a9h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
01ach mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
01afh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
01b2h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 21 03 ff}
01b7h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01bah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
01bdh call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 7d 05 ff}
01c2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
01c5h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 99 ad 5e}
01cah int 3                                   ; INT3 || CC || encoded[1]{cc}
01cbh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01cdh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01cfh add [rdi],ch                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 2f}
01d1h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01d3h add [rsi],dh                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 36}
01d5h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
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
; bbl~eval_g8u[187] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 a4 00 00 00 8b c0 48 8d 0d 20 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff eb 7c 33 c0 eb 78 41 23 d0 8b c2 eb 71 8b c2 41 23 c0 f7 d0 eb 68 8b c2 41 0b c0 eb 61 8b c2 41 8b d0 0b c2 f7 d0 eb 56 8b c2 41 8b d0 33 c2 eb 4d 8b c2 41 8b d0 33 c2 f7 d0 eb 42 8b c2 eb 3e 41 8b c0 eb 39 8b c2 f7 d0 eb 33 41 8b c0 f7 d0 eb 2c 8b c2 41 8b d0 44 8b c2 41 f7 d0 41 0b c0 eb 1c c4 c2 68 f2 c0 eb 15 8b c2 41 8b d0 f7 d0 0b c2 eb 0a 8b c2 41 8b c8 c4 e2 70 f2 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
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
; bbl~eval_g8u[187] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 a4 00 00 00 8b c0 48 8d 0d 20 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff eb 7c 33 c0 eb 78 41 23 d0 8b c2 eb 71 8b c2 41 23 c0 f7 d0 eb 68 8b c2 41 0b c0 eb 61 8b c2 41 8b d0 0b c2 f7 d0 eb 56 8b c2 41 8b d0 33 c2 eb 4d 8b c2 41 8b d0 33 c2 f7 d0 eb 42 8b c2 eb 3e 41 8b c0 eb 39 8b c2 f7 d0 eb 33 41 8b c0 f7 d0 eb 2c 8b c2 41 8b d0 44 8b c2 41 f7 d0 41 0b c0 eb 1c c4 c2 68 f2 c0 eb 15 8b c2 41 8b d0 f7 d0 0b c2 eb 0a 8b c2 41 8b c8 c4 e2 70 f2 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
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
; bbl~eval_g8u[222] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 c7 00 00 00 8b c0 48 8d 0d 40 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 48 b8 ff ff ff ff ff ff ff ff e9 97 00 00 00 33 c0 e9 90 00 00 00 49 23 d0 48 8b c2 e9 85 00 00 00 48 8b c2 49 23 c0 48 f7 d0 eb 7a 48 8b c2 49 0b c0 eb 72 48 8b c2 49 8b d0 48 0b c2 48 f7 d0 eb 64 48 8b c2 49 8b d0 48 33 c2 eb 59 48 8b c2 49 8b d0 48 33 c2 48 f7 d0 eb 4b 48 8b c2 eb 46 49 8b c0 eb 41 48 8b c2 48 f7 d0 eb 39 49 8b c0 48 f7 d0 eb 31 48 8b c2 49 8b d0 4c 8b c2 49 f7 d0 49 0b c0 eb 20 c4 c2 e8 f2 c0 eb 19 48 8b c2 49 8b d0 48 f7 d0 48 0b c2 eb 0b 48 8b c2 49 8b c8 c4 e2 f0 f2 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
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
; bbl~eval_g8u[222] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 c7 00 00 00 8b c0 48 8d 0d 40 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 48 b8 ff ff ff ff ff ff ff ff e9 97 00 00 00 33 c0 e9 90 00 00 00 49 23 d0 48 8b c2 e9 85 00 00 00 48 8b c2 49 23 c0 48 f7 d0 eb 7a 48 8b c2 49 0b c0 eb 72 48 8b c2 49 8b d0 48 0b c2 48 f7 d0 eb 64 48 8b c2 49 8b d0 48 33 c2 eb 59 48 8b c2 49 8b d0 48 33 c2 48 f7 d0 eb 4b 48 8b c2 eb 46 49 8b c0 eb 41 48 8b c2 48 f7 d0 eb 39 49 8b c0 48 f7 d0 eb 31 48 8b c2 49 8b d0 4c 8b c2 49 f7 d0 49 0b c0 eb 20 c4 c2 e8 f2 c0 eb 19 48 8b c2 49 8b d0 48 f7 d0 48 0b c2 eb 0b 48 8b c2 49 8b c8 c4 e2 f0 f2 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
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
