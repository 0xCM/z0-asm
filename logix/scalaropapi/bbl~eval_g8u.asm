; long eval<long>(BinaryBitLogicKind:byte kind, long a, long b)
; bbl~eval_g8u[7ff7c6b6aa80h, 7ff7c6b6ac1eh][414] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 c7 00 00 00 8b c0 48 8d 0d 40 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 48 b8 ff ff ff ff ff ff ff ff e9 97 00 00 00 33 c0 e9 90 00 00 00 49 23 d0 48 8b c2 e9 85 00 00 00 48 8b c2 49 23 c0 48 f7 d0 eb 7a 48 8b c2 49 0b c0 eb 72 48 8b c2 49 8b d0 48 0b c2 48 f7 d0 eb 64 48 8b c2 49 8b d0 48 33 c2 eb 59 48 8b c2 49 8b d0 48 33 c2 48 f7 d0 eb 4b 48 8b c2 eb 46 49 8b c0 eb 41 48 8b c2 48 f7 d0 eb 39 49 8b c0 48 f7 d0 eb 31 48 8b c2 49 8b d0 4c 8b c2 49 f7 d0 49 0b c0 eb 20 c4 c2 e8 f2 c0 eb 19 48 8b c2 49 8b d0 48 f7 d0 48 0b c2 eb 0b 48 8b c2 49 8b c8 c4 e2 f0 f2 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c8 37 88 c6 f7 7f 00 00 e8 43 c1 33 5f 48 8b f8 40 88 77 08 48 b9 a8 9e 34 c6 f7 7f 00 00 e8 6d 44 2e 5f 48 8b c8 e8 f5 3b eb ff 8b f0 48 b9 50 58 58 c6 f7 7f 00 00 e8 14 c1 33 5f 48 8b d8 b9 68 04 00 00 48 ba 00 d2 5a c6 f7 7f 00 00 e8 fd 59 46 5f 48 8b e8 8b ce e8 d3 13 83 ff 4c 8b c0 48 8b cd 48 8b d7 e8 6d 95 80 ff 48 8b d0 48 8b cb e8 3a 42 82 ff 48 8b cb e8 22 0d 2b 5f cc 00 34 00 00 00 3b 00 00 00 c0 00 00 00 80 00 00 00 ab 00 00 00 85 00 00 00 67 00 00 00 51 00 00 00 59 00 00 00 72 00 00 00 92 00 00 00 9a 00 00 00 8a 00 00 00 b2 00 00 00 46 00 00 00 25 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 02:54:45:682
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
0019h lea rcx,[7ff7c6b6abe0h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 40 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[7ff7c6b6aa8ah]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
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
00deh mov rcx,7ff7c68837c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 37 88 c6 f7 7f 00 00}
00e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 c1 33 5f}
00edh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00f0h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00f4h mov rcx,7ff7c6349ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 34 c6 f7 7f 00 00}
00feh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 44 2e 5f}
0103h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0106h call 7ff7c6a1e780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 3b eb ff}
010bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
010dh mov rcx,7ff7c6585850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 58 58 c6 f7 7f 00 00}
0117h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 c1 33 5f}
011ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
011fh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0124h mov rdx,7ff7c65ad200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 d2 5a c6 f7 7f 00 00}
012eh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 59 46 5f}
0133h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0136h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0138h call 7ff7c639bf90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 13 83 ff}
013dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0140h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0143h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0146h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 95 80 ff}
014bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
014eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0151h call 7ff7c638ee10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 42 82 ff}
0156h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0159h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 0d 2b 5f}
015eh int 3                                   ; INT3 || CC || encoded[1]{cc}
015fh add [rax+rax],dh                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 34 00}
0162h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0164h cmp eax,[rax]                           ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b 00}
0166h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0168h rol byte ptr [rax],0                    ; ROL r/m8, imm8 || C0 /0 ib || encoded[3]{c0 00 00}
016bh add [rax-55000000h],al                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 80 00 00 00 ab}
0171h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0173h add [rbp+67000000h],al                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 85 00 00 00 67}
0179h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
017bh add [rcx],dl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 51 00}
017eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0180h pop rcx                                 ; POP r64 || 58+ro || encoded[1]{59}
0181h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0183h add [rdx],dh                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 72 00}
0186h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0188h xchg edx,eax                            ; XCHG r32, EAX || o32 90+rd || encoded[1]{92}
0189h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
018bh add [rdx-76000000h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 9a 00 00 00 8a}
0191h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0193h add [rdx+46000000h],dh                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 b2 00 00 00 46}
0199h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
019bh (bad)                                   ; <invalid> || <invalid> || encoded[3]{00 25 00}
