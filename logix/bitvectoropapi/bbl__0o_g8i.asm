; BitVector<sbyte> eval<sbyte>(BinaryBitLogicKind:byte kind, BitVector<sbyte> x, BitVector<sbyte> y)
; bbl__0o_g8i[7ff7c6b6e430h, 7ff7c6b6e621h][497] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 59 01 00 00 8b c0 48 8d 0d d8 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff e9 2e 01 00 00 33 c0 e9 27 01 00 00 48 0f be c2 49 0f be d0 4c 0f be c0 41 23 d0 48 0f be c2 e9 0f 01 00 00 48 0f be c2 49 0f be d0 4c 0f be c0 41 23 d0 8b c2 f7 d0 48 0f be c0 e9 f3 00 00 00 48 0f be c2 49 0f be d0 4c 0f be c0 41 0b d0 48 0f be c2 e9 db 00 00 00 48 0f be c2 49 0f be d0 4c 0f be c0 41 0b d0 8b c2 f7 d0 48 0f be c0 e9 bf 00 00 00 48 0f be c2 49 0f be d0 4c 0f be c0 41 33 d0 48 0f be c2 e9 a7 00 00 00 48 0f be c2 49 0f be d0 4c 0f be c0 41 33 d0 8b c2 f7 d0 48 0f be c0 e9 8b 00 00 00 48 0f be c2 e9 82 00 00 00 49 0f be c0 eb 7c 48 0f be c2 44 8b c0 41 f7 d0 49 0f be c0 eb 6c 49 0f be c0 8b d0 f7 d2 48 0f be c2 eb 5e 48 0f be c2 49 0f be d0 4c 0f be c0 8b c2 f7 d0 41 0b c0 48 0f be c0 eb 45 48 0f be c2 49 0f be d0 4c 0f be c0 c4 e2 38 f2 c2 48 0f be c0 eb 2e 48 0f be c2 49 0f be d0 4c 0f be c0 41 8b c0 f7 d0 0b c2 48 0f be c0 eb 15 48 0f be c2 49 0f be c8 48 0f be c0 c4 e2 70 f2 c0 48 0f be c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 b0 c7 91 c6 f7 7f 00 00 e8 01 87 33 5f 48 8b f8 40 88 77 08 48 b9 68 6f 36 c6 f7 7f 00 00 e8 2b 0a 2e 5f 48 8b c8 e8 93 df ea ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 d2 86 33 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 bb 1f 46 5f 48 8b e8 8b ce e8 59 db ea ff 4c 8b c0 48 8b cd 48 8b d7 e8 2b 5b 82 ff 48 8b d0 48 8b cb e8 48 f2 83 ff 48 8b cb e8 e0 d2 2a 5f cc}
; Capture completion code, ZEDx6
; 2020-01-25 02:10:39:076
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 0170h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 59 01 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[7ff7c6b6e628h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d d8 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[7ff7c6b6e43ah]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0034h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2e 01 00 00}
0039h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003bh jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 27 01 00 00}
0040h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0044h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0048h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
004ch and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
004fh movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0053h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0f 01 00 00}
0058h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
005ch movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0060h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
0064h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0067h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0069h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
006bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
006fh jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f3 00 00 00}
0074h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0078h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
007ch movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
0080h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0083h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0087h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 db 00 00 00}
008ch movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0090h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0094h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
0098h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
009bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
009dh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
009fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
00a3h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bf 00 00 00}
00a8h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00ach movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
00b0h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
00b4h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
00b7h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00bbh jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a7 00 00 00}
00c0h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00c4h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
00c8h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
00cch xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
00cfh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00d1h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00d3h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
00d7h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8b 00 00 00}
00dch movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00e0h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 82 00 00 00}
00e5h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
00e9h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 7c}
00ebh movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00efh mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
00f2h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00f5h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
00f9h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 6c}
00fbh movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
00ffh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0101h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0103h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0107h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0109h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
010dh movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0111h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
0115h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0117h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0119h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
011ch movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0120h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 45}
0122h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0126h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
012ah movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
012eh andn eax,r8d,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 38 f2 c2}
0133h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0137h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 2e}
0139h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
013dh movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0141h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
0145h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0148h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
014ah or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
014ch movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0150h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
0152h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0156h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
015ah movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
015eh andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
0163h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0167h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
016bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
016ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
016dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
016eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
016fh ret                                     ; RET || C3 || encoded[1]{c3}
0170h mov rcx,7ff7c691c7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c7 91 c6 f7 7f 00 00}
017ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 87 33 5f}
017fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0182h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0186h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0190h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 0a 2e 5f}
0195h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0198h call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 df ea ff}
019dh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
019fh mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
01a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 86 33 5f}
01aeh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01b1h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
01b6h mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
01c0h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 1f 46 5f}
01c5h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01c8h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
01cah call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 db ea ff}
01cfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
01d2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
01d5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
01d8h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 5b 82 ff}
01ddh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
01e3h call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 f2 83 ff}
01e8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
01ebh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 d2 2a 5f}
01f0h int 3                                   ; INT3 || CC || encoded[1]{cc}
