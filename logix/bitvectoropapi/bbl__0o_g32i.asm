; BitVector<int> eval<int>(BinaryBitLogicKind:byte kind, BitVector<int> x, BitVector<int> y)
; bbl__0o_g32i[7ff7c6b70500h, 7ff7c6b7064bh][331] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 b3 00 00 00 8b c0 48 8d 0d 30 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff e9 88 00 00 00 33 c0 e9 81 00 00 00 41 23 d0 8b c2 eb 7a 8b c2 41 8b d0 23 c2 f7 d0 eb 6f 8b c2 41 8b d0 0b c2 eb 66 8b c2 41 8b d0 0b c2 f7 d0 eb 5b 8b c2 41 8b d0 33 c2 eb 52 8b c2 41 8b d0 33 c2 f7 d0 eb 47 8b c2 eb 43 41 8b c0 eb 3e 8b c2 f7 d0 eb 38 41 8b c0 f7 d0 eb 31 8b c2 41 8b d0 44 8b c2 41 f7 d0 41 0b c0 eb 21 8b c2 41 8b d0 c4 e2 78 f2 c2 eb 15 8b c2 41 8b d0 f7 d0 0b c2 eb 0a 8b c2 41 8b c8 c4 e2 70 f2 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 b0 c7 91 c6 f7 7f 00 00 e8 d7 66 33 5f 48 8b f8 40 88 77 08 48 b9 08 8f 36 c6 f7 7f 00 00 e8 01 ea 2d 5f 48 8b c8 e8 69 bf ea ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 a8 66 33 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 91 ff 45 5f 48 8b e8 8b ce e8 2f bb ea ff 4c 8b c0 48 8b cd 48 8b d7 e8 01 3b 82 ff 48 8b d0 48 8b cb e8 1e d2 83 ff 48 8b cb e8 b6 b2 2a 5f cc}
; Capture completion code, ZEDx6
; 2020-01-25 02:10:39:099
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 00cah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b3 00 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[7ff7c6b70650h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 30 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[7ff7c6b7050ah]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0034h jmp near ptr 00c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 88 00 00 00}
0039h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003bh jmp near ptr 00c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 81 00 00 00}
0040h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0043h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0045h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 7a}
0047h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0049h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
004ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
004eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0050h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 6f}
0052h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0054h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0057h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0059h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 66}
005bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
005dh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0060h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0062h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0064h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 5b}
0066h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0068h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
006bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
006dh jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
006fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0071h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0074h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0076h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0078h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
007ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007ch jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
007eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0081h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0083h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0085h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0087h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0089h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
008ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
008eh jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 31}
0090h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0092h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0095h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0098h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
009bh or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
009eh jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 21}
00a0h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00a2h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
00a5h andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
00aah jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
00ach mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00aeh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
00b1h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00b3h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00b5h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
00b7h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00b9h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
00bch andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
00c1h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00c5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c6h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c9h ret                                     ; RET || C3 || encoded[1]{c3}
00cah mov rcx,7ff7c691c7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c7 91 c6 f7 7f 00 00}
00d4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 66 33 5f}
00d9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00dch mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00e0h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
00eah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 ea 2d 5f}
00efh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f2h call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 bf ea ff}
00f7h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00f9h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
0103h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 66 33 5f}
0108h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
010bh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0110h mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
011ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 ff 45 5f}
011fh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0122h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0124h call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f bb ea ff}
0129h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
012ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
012fh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0132h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 3b 82 ff}
0137h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
013ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013dh call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e d2 83 ff}
0142h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0145h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 b2 2a 5f}
014ah int 3                                   ; INT3 || CC || encoded[1]{cc}
