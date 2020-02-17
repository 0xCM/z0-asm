------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(ComparisonKind:byte kind, byte a, byte b)
; eval_g[8u](ComparisonKind~8u,8u,8u)[297] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 8e 00 00 00 8b c0 48 8d 0d 0e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 0f b6 d2 45 0f b6 c0 0f b6 c2 41 3b c0 0f 94 c0 0f b6 c0 eb 58 0f b6 c2 41 0f b6 d0 44 0f b6 c0 44 3b c2 0f 95 c0 0f b6 c0 eb 42 0f b6 c2 41 0f b6 d0 3b c2 0f 92 c0 0f b6 c0 eb 31 0f b6 c2 41 0f b6 d0 3b c2 0f 96 c0 0f b6 c0 eb 20 0f b6 c2 41 0f b6 d0 3b c2 0f 97 c0 0f b6 c0 eb 0f 0f b6 c2 41 0f b6 c8 3b c1 0f 93 c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 1a 61 cf 5e 48 8b f8 40 88 77 08 48 b9 58 77 35 c6 f7 7f 00 00 e8 44 e4 c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 f2 60 cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 db f9 e1 5e 48 8b e8 48 8b ce e8 b0 20 1f ff 8b c8 e8 11 f8 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 43 35 1d ff 48 8b d0 48 8b cb e8 00 84 1f ff 48 8b cb e8 f8 ac c6 5e cc}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 00a7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 8e 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+10eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 0e 01 00 00}
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
0044h jmp short 009eh                         ; JMP rel8 || EB cb || encoded[2]{eb 58}
0046h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0049h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
004dh movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
0051h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0054h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0057h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005ah jmp short 009eh                         ; JMP rel8 || EB cb || encoded[2]{eb 42}
005ch movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
005fh movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0063h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0065h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0068h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006bh jmp short 009eh                         ; JMP rel8 || EB cb || encoded[2]{eb 31}
006dh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0070h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0074h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0076h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0079h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
007ch jmp short 009eh                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
007eh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0081h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0085h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0087h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
008ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
008dh jmp short 009eh                         ; JMP rel8 || EB cb || encoded[2]{eb 0f}
008fh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0092h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0096h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0098h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
009bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00a2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a6h ret                                     ; RET || C3 || encoded[1]{c3}
00a7h mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
00b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 61 cf 5e}
00b6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00b9h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00bdh mov rcx,7ff7c6357758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 35 c6 f7 7f 00 00}
00c7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 e4 c9 5e}
00cch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00cfh mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
00d9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 60 cf 5e}
00deh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00e1h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00e6h mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
00f0h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db f9 e1 5e}
00f5h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 20 1f ff}
0100h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0102h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 f8 1e ff}
0107h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010ah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
010dh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0110h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 35 1d ff}
0115h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0118h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011bh call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 84 1f ff}
0120h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0123h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 ac c6 5e}
0128h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(ComparisonKind:byte kind, sbyte a, sbyte b)
; eval_g[8i](ComparisonKind~8u,8i,8i)[345] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 95 00 00 00 8b c0 48 8d 0d 0e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 48 0f be d2 4d 0f be c0 48 0f be c2 41 3b c0 0f 94 c0 0f b6 c0 eb 5d 48 0f be c2 49 0f be d0 4c 0f be c0 44 3b c2 0f 95 c0 0f b6 c0 eb 46 48 0f be c2 49 0f be d0 3b c2 0f 9c c0 0f b6 c0 eb 34 48 0f be c2 49 0f be d0 3b c2 0f 9e c0 0f b6 c0 eb 22 48 0f be c2 49 0f be d0 3b c2 0f 9f c0 0f b6 c0 eb 10 48 0f be c2 49 0f be c8 3b c1 0f 9d c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 a3 5f cf 5e 48 8b f8 40 88 77 08 48 b9 68 6f 35 c6 f7 7f 00 00 e8 cd e2 c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 7b 5f cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 64 f8 e1 5e 48 8b e8 48 8b ce e8 39 1f 1f ff 8b c8 e8 9a f6 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 cc 33 1d ff 48 8b d0 48 8b cb e8 89 82 1f ff 48 8b cb e8 81 ab c6 5e cc 27 00 00 00 55 00 00 00 67 00 00 00 79 00 00 00 8b 00 00 00 3e 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 00aeh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 95 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+10eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 0e 01 00 00}
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
0046h jmp short 00a5h                         ; JMP rel8 || EB cb || encoded[2]{eb 5d}
0048h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
004ch movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0050h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
0054h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0057h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
005ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005dh jmp short 00a5h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
005fh movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0063h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0067h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0069h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
006ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006fh jmp short 00a5h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0071h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0075h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0079h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
007bh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
007eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0081h jmp short 00a5h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0083h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0087h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
008bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
008dh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0090h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0093h jmp short 00a5h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
0095h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0099h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
009dh cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
009fh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00a2h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a5h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00a9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00aah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00abh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00ach pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00adh ret                                     ; RET || C3 || encoded[1]{c3}
00aeh mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 5f cf 5e}
00bdh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00c0h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00c4h mov rcx,7ff7c6356f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 35 c6 f7 7f 00 00}
00ceh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd e2 c9 5e}
00d3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00d6h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
00e0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 5f cf 5e}
00e5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00e8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00edh mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
00f7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 f8 e1 5e}
00fch mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00ffh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0102h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 1f 1f ff}
0107h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0109h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a f6 1e ff}
010eh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0111h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0114h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0117h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 33 1d ff}
011ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
011fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0122h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 82 1f ff}
0127h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
012ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 ab c6 5e}
012fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0130h (bad)                                   ; <invalid> || <invalid> || encoded[2]{27 00}
0132h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0134h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0135h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0137h add [rdi],ah                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 67 00}
013ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
013ch jns short 013eh                         ; JNS rel8 || 79 cb || encoded[2]{79 00}
013eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0140h mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
0142h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0144h add ds:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{3e 00 00}
0147h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0149h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
014fh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0151h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0152h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0155h jo short 0157h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0157h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(ComparisonKind:byte kind, ushort a, ushort b)
; eval_g[16u](ComparisonKind~8u,16u,16u)[297] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 8e 00 00 00 8b c0 48 8d 0d 0e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 0f b7 d2 45 0f b7 c0 0f b7 c2 41 3b c0 0f 94 c0 0f b6 c0 eb 58 0f b7 c2 41 0f b7 d0 44 0f b7 c0 44 3b c2 0f 95 c0 0f b6 c0 eb 42 0f b7 c2 41 0f b7 d0 3b c2 0f 92 c0 0f b6 c0 eb 31 0f b7 c2 41 0f b7 d0 3b c2 0f 96 c0 0f b6 c0 eb 20 0f b7 c2 41 0f b7 d0 3b c2 0f 97 c0 0f b6 c0 eb 0f 0f b7 c2 41 0f b7 c8 3b c1 0f 93 c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 3a 5e cf 5e 48 8b f8 40 88 77 08 48 b9 38 87 35 c6 f7 7f 00 00 e8 64 e1 c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 12 5e cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 fb f6 e1 5e 48 8b e8 48 8b ce e8 d0 1d 1f ff 8b c8 e8 31 f5 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 63 32 1d ff 48 8b d0 48 8b cb e8 20 81 1f ff 48 8b cb e8 18 aa c6 5e cc}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 00a7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 8e 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+10eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 0e 01 00 00}
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
0044h jmp short 009eh                         ; JMP rel8 || EB cb || encoded[2]{eb 58}
0046h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0049h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
004dh movzx r8d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c0}
0051h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0054h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0057h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005ah jmp short 009eh                         ; JMP rel8 || EB cb || encoded[2]{eb 42}
005ch movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
005fh movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0063h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0065h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0068h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006bh jmp short 009eh                         ; JMP rel8 || EB cb || encoded[2]{eb 31}
006dh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0070h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0074h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0076h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0079h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
007ch jmp short 009eh                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
007eh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0081h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0085h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0087h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
008ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
008dh jmp short 009eh                         ; JMP rel8 || EB cb || encoded[2]{eb 0f}
008fh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0092h movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
0096h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0098h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
009bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00a2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a6h ret                                     ; RET || C3 || encoded[1]{c3}
00a7h mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
00b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 5e cf 5e}
00b6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00b9h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00bdh mov rcx,7ff7c6358738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 35 c6 f7 7f 00 00}
00c7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 e1 c9 5e}
00cch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00cfh mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
00d9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 5e cf 5e}
00deh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00e1h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00e6h mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
00f0h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb f6 e1 5e}
00f5h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 1d 1f ff}
0100h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0102h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 f5 1e ff}
0107h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010ah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
010dh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0110h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 32 1d ff}
0115h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0118h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011bh call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 81 1f ff}
0120h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0123h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 aa c6 5e}
0128h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(ComparisonKind:byte kind, short a, short b)
; eval_g[16i](ComparisonKind~8u,16i,16i)[345] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 95 00 00 00 8b c0 48 8d 0d 0e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 48 0f bf d2 4d 0f bf c0 48 0f bf c2 41 3b c0 0f 94 c0 0f b6 c0 eb 5d 48 0f bf c2 49 0f bf d0 4c 0f bf c0 44 3b c2 0f 95 c0 0f b6 c0 eb 46 48 0f bf c2 49 0f bf d0 3b c2 0f 9c c0 0f b6 c0 eb 34 48 0f bf c2 49 0f bf d0 3b c2 0f 9e c0 0f b6 c0 eb 22 48 0f bf c2 49 0f bf d0 3b c2 0f 9f c0 0f b6 c0 eb 10 48 0f bf c2 49 0f bf c8 3b c1 0f 9d c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 c3 5c cf 5e 48 8b f8 40 88 77 08 48 b9 48 7f 35 c6 f7 7f 00 00 e8 ed df c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 9b 5c cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 84 f5 e1 5e 48 8b e8 48 8b ce e8 59 1c 1f ff 8b c8 e8 ba f3 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 ec 30 1d ff 48 8b d0 48 8b cb e8 a9 7f 1f ff 48 8b cb e8 a1 a8 c6 5e cc 27 00 00 00 55 00 00 00 67 00 00 00 79 00 00 00 8b 00 00 00 3e 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 00aeh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 95 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+10eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 0e 01 00 00}
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
0046h jmp short 00a5h                         ; JMP rel8 || EB cb || encoded[2]{eb 5d}
0048h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
004ch movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0050h movsx r8,ax                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c0}
0054h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0057h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
005ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005dh jmp short 00a5h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
005fh movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0063h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0067h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0069h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
006ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006fh jmp short 00a5h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0071h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0075h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0079h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
007bh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
007eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0081h jmp short 00a5h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0083h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0087h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
008bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
008dh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0090h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0093h jmp short 00a5h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
0095h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0099h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
009dh cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
009fh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00a2h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a5h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00a9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00aah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00abh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00ach pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00adh ret                                     ; RET || C3 || encoded[1]{c3}
00aeh mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 5c cf 5e}
00bdh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00c0h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00c4h mov rcx,7ff7c6357f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 35 c6 f7 7f 00 00}
00ceh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed df c9 5e}
00d3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00d6h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
00e0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 5c cf 5e}
00e5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00e8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00edh mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
00f7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 f5 e1 5e}
00fch mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00ffh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0102h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 1c 1f ff}
0107h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0109h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba f3 1e ff}
010eh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0111h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0114h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0117h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 30 1d ff}
011ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
011fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0122h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 7f 1f ff}
0127h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
012ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 a8 c6 5e}
012fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0130h (bad)                                   ; <invalid> || <invalid> || encoded[2]{27 00}
0132h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0134h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0135h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0137h add [rdi],ah                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 67 00}
013ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
013ch jns short 013eh                         ; JNS rel8 || 79 cb || encoded[2]{79 00}
013eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0140h mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
0142h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0144h add ds:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{3e 00 00}
0147h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0149h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
014fh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0151h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0152h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0155h jo short 0157h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0157h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(ComparisonKind:byte kind, uint a, uint b)
; eval_g[32u](ComparisonKind~8u,32u,32u)[289] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 61 8b c0 48 8d 0d da 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 41 3b d0 0f 94 c0 0f b6 c0 eb 35 41 3b d0 0f 95 c0 0f b6 c0 eb 2a 41 3b d0 0f 92 c0 0f b6 c0 eb 1f 41 3b d0 0f 96 c0 0f b6 c0 eb 14 41 3b d0 0f 97 c0 0f b6 c0 eb 09 41 3b d0 0f 93 c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 8b 5b cf 5e 48 8b f8 40 88 77 08 48 b9 d8 96 35 c6 f7 7f 00 00 e8 b5 de c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 63 5b cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 4c f4 e1 5e 48 8b e8 48 8b ce e8 21 1b 1f ff 8b c8 e8 82 f2 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 b4 2f 1d ff 48 8b d0 48 8b cb e8 71 7e 1f ff 48 8b cb e8 69 a7 c6 5e cc 23 00 00 00 39 00 00 00 44 00 00 00 4f 00 00 00 5a 00 00 00 2e 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja short 0076h                          ; JA rel8 || 77 cb || encoded[2]{77 61}
0015h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0017h lea rcx,[rip+0dah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d da 00 00 00}
001eh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0021h lea r9,[rip-1eh]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e2 ff ff ff}
0028h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002bh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002dh cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0030h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0033h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0036h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 35}
0038h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
003bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
003eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0041h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 2a}
0043h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0046h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0049h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004ch jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 1f}
004eh cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0051h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0054h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0057h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 14}
0059h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
005ch seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
005fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0062h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0064h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0067h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
006ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
0076h mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
0080h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 5b cf 5e}
0085h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0088h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
008ch mov rcx,7ff7c63596d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 35 c6 f7 7f 00 00}
0096h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 de c9 5e}
009bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
009eh mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
00a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 5b cf 5e}
00adh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00b0h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b5h mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
00bfh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c f4 e1 5e}
00c4h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00c7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00cah call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 1b 1f ff}
00cfh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d1h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 f2 1e ff}
00d6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00d9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00dch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00dfh call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 2f 1d ff}
00e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00e7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00eah call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 7e 1f ff}
00efh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f2h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 a7 c6 5e}
00f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
00f8h and eax,[rax]                           ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 00}
00fah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00fch cmp [rax],eax                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 00}
00feh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0100h add [rax],r8b                           ; ADD r/m8, r8 || 00 /r || encoded[3]{44 00 00}
0103h add [rdi],cl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 4f 00}
0106h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0108h pop rdx                                 ; POP r64 || 58+ro || encoded[1]{5a}
0109h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
010bh add [rsi],ch                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 2e}
010dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
010fh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0111h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
0117h xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0119h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
011ah add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
011dh jo short 011fh                          ; JO rel8 || 70 cb || encoded[2]{70 00}
011fh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(ComparisonKind:byte kind, int a, int b)
; eval_g[32i](ComparisonKind~8u,32i,32i)[289] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 61 8b c0 48 8d 0d da 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 41 3b d0 0f 94 c0 0f b6 c0 eb 35 41 3b d0 0f 95 c0 0f b6 c0 eb 2a 41 3b d0 0f 9c c0 0f b6 c0 eb 1f 41 3b d0 0f 9e c0 0f b6 c0 eb 14 41 3b d0 0f 9f c0 0f b6 c0 eb 09 41 3b d0 0f 9d c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 5b 5a cf 5e 48 8b f8 40 88 77 08 48 b9 08 8f 35 c6 f7 7f 00 00 e8 85 dd c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 33 5a cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 1c f3 e1 5e 48 8b e8 48 8b ce e8 f1 19 1f ff 8b c8 e8 52 f1 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 84 2e 1d ff 48 8b d0 48 8b cb e8 41 7d 1f ff 48 8b cb e8 39 a6 c6 5e cc 23 00 00 00 39 00 00 00 44 00 00 00 4f 00 00 00 5a 00 00 00 2e 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja short 0076h                          ; JA rel8 || 77 cb || encoded[2]{77 61}
0015h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0017h lea rcx,[rip+0dah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d da 00 00 00}
001eh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0021h lea r9,[rip-1eh]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e2 ff ff ff}
0028h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002bh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002dh cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0030h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0033h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0036h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 35}
0038h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
003bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
003eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0041h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 2a}
0043h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0046h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0049h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004ch jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 1f}
004eh cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0051h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0054h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0057h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 14}
0059h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
005ch setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
005fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0062h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0064h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0067h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
006ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
0076h mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
0080h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 5a cf 5e}
0085h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0088h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
008ch mov rcx,7ff7c6358f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 35 c6 f7 7f 00 00}
0096h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 dd c9 5e}
009bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
009eh mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
00a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 5a cf 5e}
00adh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00b0h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b5h mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
00bfh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c f3 e1 5e}
00c4h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00c7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00cah call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 19 1f ff}
00cfh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d1h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 f1 1e ff}
00d6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00d9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00dch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00dfh call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 2e 1d ff}
00e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00e7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00eah call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 7d 1f ff}
00efh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f2h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 a6 c6 5e}
00f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
00f8h and eax,[rax]                           ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 00}
00fah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00fch cmp [rax],eax                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 00}
00feh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0100h add [rax],r8b                           ; ADD r/m8, r8 || 00 /r || encoded[3]{44 00 00}
0103h add [rdi],cl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 4f 00}
0106h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0108h pop rdx                                 ; POP r64 || 58+ro || encoded[1]{5a}
0109h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
010bh add [rsi],ch                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 2e}
010dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
010fh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0111h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
0117h xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0119h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
011ah add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
011dh jo short 011fh                          ; JO rel8 || 70 cb || encoded[2]{70 00}
011fh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<ulong>(ComparisonKind:byte kind, ulong a, ulong b)
; eval_g[64u](ComparisonKind~8u,64u,64u)[289] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 61 8b c0 48 8d 0d da 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 49 3b d0 0f 94 c0 0f b6 c0 eb 35 49 3b d0 0f 95 c0 0f b6 c0 eb 2a 49 3b d0 0f 92 c0 0f b6 c0 eb 1f 49 3b d0 0f 96 c0 0f b6 c0 eb 14 49 3b d0 0f 97 c0 0f b6 c0 eb 09 49 3b d0 0f 93 c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 2b 59 cf 5e 48 8b f8 40 88 77 08 48 b9 78 a6 35 c6 f7 7f 00 00 e8 55 dc c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 03 59 cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 ec f1 e1 5e 48 8b e8 48 8b ce e8 c1 18 1f ff 8b c8 e8 22 f0 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 54 2d 1d ff 48 8b d0 48 8b cb e8 11 7c 1f ff 48 8b cb e8 09 a5 c6 5e cc 23 00 00 00 39 00 00 00 44 00 00 00 4f 00 00 00 5a 00 00 00 2e 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja short 0076h                          ; JA rel8 || 77 cb || encoded[2]{77 61}
0015h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0017h lea rcx,[rip+0dah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d da 00 00 00}
001eh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0021h lea r9,[rip-1eh]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e2 ff ff ff}
0028h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002bh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002dh cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0030h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0033h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0036h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 35}
0038h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
003bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
003eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0041h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 2a}
0043h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0046h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0049h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004ch jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 1f}
004eh cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0051h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0054h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0057h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 14}
0059h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
005ch seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
005fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0062h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0064h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0067h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
006ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
0076h mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
0080h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 59 cf 5e}
0085h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0088h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
008ch mov rcx,7ff7c635a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 35 c6 f7 7f 00 00}
0096h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 dc c9 5e}
009bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
009eh mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
00a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 59 cf 5e}
00adh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00b0h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b5h mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
00bfh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec f1 e1 5e}
00c4h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00c7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00cah call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 18 1f ff}
00cfh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d1h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 f0 1e ff}
00d6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00d9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00dch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00dfh call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 2d 1d ff}
00e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00e7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00eah call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 7c 1f ff}
00efh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f2h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 a5 c6 5e}
00f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
00f8h and eax,[rax]                           ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 00}
00fah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00fch cmp [rax],eax                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 00}
00feh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0100h add [rax],r8b                           ; ADD r/m8, r8 || 00 /r || encoded[3]{44 00 00}
0103h add [rdi],cl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 4f 00}
0106h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0108h pop rdx                                 ; POP r64 || 58+ro || encoded[1]{5a}
0109h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
010bh add [rsi],ch                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 2e}
010dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
010fh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0111h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
0117h xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0119h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
011ah add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
011dh jo short 011fh                          ; JO rel8 || 70 cb || encoded[2]{70 00}
011fh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(ComparisonKind:byte kind, long a, long b)
; eval_g[64i](ComparisonKind~8u,64i,64i)[289] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 61 8b c0 48 8d 0d da 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 49 3b d0 0f 94 c0 0f b6 c0 eb 35 49 3b d0 0f 95 c0 0f b6 c0 eb 2a 49 3b d0 0f 9c c0 0f b6 c0 eb 1f 49 3b d0 0f 9e c0 0f b6 c0 eb 14 49 3b d0 0f 9f c0 0f b6 c0 eb 09 49 3b d0 0f 9d c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 fb 57 cf 5e 48 8b f8 40 88 77 08 48 b9 a8 9e 35 c6 f7 7f 00 00 e8 25 db c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 d3 57 cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 bc f0 e1 5e 48 8b e8 48 8b ce e8 91 17 1f ff 8b c8 e8 f2 ee 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 24 2c 1d ff 48 8b d0 48 8b cb e8 e1 7a 1f ff 48 8b cb e8 d9 a3 c6 5e cc 23 00 00 00 39 00 00 00 44 00 00 00 4f 00 00 00 5a 00 00 00 2e 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja short 0076h                          ; JA rel8 || 77 cb || encoded[2]{77 61}
0015h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0017h lea rcx,[rip+0dah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d da 00 00 00}
001eh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0021h lea r9,[rip-1eh]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e2 ff ff ff}
0028h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002bh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002dh cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0030h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0033h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0036h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 35}
0038h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
003bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
003eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0041h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 2a}
0043h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0046h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0049h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004ch jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 1f}
004eh cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0051h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0054h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0057h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 14}
0059h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
005ch setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
005fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0062h jmp short 006dh                         ; JMP rel8 || EB cb || encoded[2]{eb 09}
0064h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0067h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
006ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
0076h mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
0080h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 57 cf 5e}
0085h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0088h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
008ch mov rcx,7ff7c6359ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 35 c6 f7 7f 00 00}
0096h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 db c9 5e}
009bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
009eh mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
00a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 57 cf 5e}
00adh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00b0h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b5h mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
00bfh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc f0 e1 5e}
00c4h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00c7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00cah call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 17 1f ff}
00cfh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d1h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 ee 1e ff}
00d6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00d9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00dch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00dfh call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 2c 1d ff}
00e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00e7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00eah call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 7a 1f ff}
00efh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f2h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 a3 c6 5e}
00f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
00f8h and eax,[rax]                           ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 00}
00fah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00fch cmp [rax],eax                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 00}
00feh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0100h add [rax],r8b                           ; ADD r/m8, r8 || 00 /r || encoded[3]{44 00 00}
0103h add [rdi],cl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 4f 00}
0106h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0108h pop rdx                                 ; POP r64 || 58+ro || encoded[1]{5a}
0109h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
010bh add [rsi],ch                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 2e}
010dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
010fh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0111h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
0117h xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0119h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
011ah add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
011dh jo short 011fh                          ; JO rel8 || 70 cb || encoded[2]{70 00}
011fh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<byte> lookup<byte>(ComparisonKind:byte kind)
; lookup_g[8u](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 a1 49 c7 f7 7f 00 00 e8 00 53 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 44 cf 5e 48 b9 c0 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 a7 98 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 a1 49 c7 f7 7f 00 00 e8 c1 52 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 43 cf 5e 48 b9 c0 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 ce 98 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 a1 49 c7 f7 7f 00 00 e8 82 52 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 43 cf 5e 48 b9 c0 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 be 98 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 a1 49 c7 f7 7f 00 00 e8 43 52 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 43 cf 5e 48 b9 c0 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 c1 98 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 a1 49 c7 f7 7f 00 00 e8 07 52 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 43 cf 5e 48 b9 c0 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 b2 98 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 a1 49 c7 f7 7f 00 00 e8 cb 51 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc 42 cf 5e 48 b8 c0 e0 25 c6 f7 7f 00 00 48 89 46 18 48 b8 00 b9 98 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 85 51 cf 5e 48 8b f8 40 88 77 08 48 b9 58 77 35 c6 f7 7f 00 00 e8 af d4 c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 5d 51 cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 46 ea e1 5e 48 8b e8 48 8b ce e8 1b 11 1f ff 8b c8 e8 7c e8 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 ae 25 1d ff 48 8b d0 48 8b cb e8 6b 74 1f ff 48 8b cb e8 63 9d c6 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c749a1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a1 49 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 53 cf 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 44 cf 5e}
004fh mov rcx,7ff7c625e0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e0 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c698a730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 a7 98 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c749a1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a1 49 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 52 cf 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 43 cf 5e}
008eh mov rcx,7ff7c625e0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e0 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c698ce70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ce 98 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c749a1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a1 49 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 52 cf 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 43 cf 5e}
00cdh mov rcx,7ff7c625e0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e0 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c698be50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 be 98 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c749a1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a1 49 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 52 cf 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 43 cf 5e}
010ch mov rcx,7ff7c625e0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e0 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c698c130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c1 98 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c749a1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a1 49 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 52 cf 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 43 cf 5e}
0148h mov rcx,7ff7c625e0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e0 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c698b220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b2 98 c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c749a1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a1 49 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 51 cf 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 42 cf 5e}
0184h mov rax,7ff7c625e0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e0 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c698b900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 b9 98 c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
01b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 51 cf 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c6357758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 35 c6 f7 7f 00 00}
01cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af d4 c9 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
01deh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 51 cf 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
01f5h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 ea e1 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 11 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c e8 1e ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 25 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 74 1f ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 9d c6 5e}
022dh int 3                                   ; INT3 || CC || encoded[1]{cc}
022eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0230h (bad)                                   ; <invalid> || <invalid> || encoded[2]{27 00}
0232h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0234h movsd                                   ; MOVSD || o32 A5 || encoded[1]{a5}
0235h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0237h add ah,ah                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 e4}
0239h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
023bh add [rax],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 20}
023dh add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
023fh add [rcx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 01 00}
0243h add [rsi],ah                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 66 00}
0246h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0248h sbb [rax],ecx                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 08}
024ah add eax,4420800h                        ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 00 08 42 04}
024fh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0251h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0252h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0255h jo short 0257h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0257h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
; lookup_g[8i](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 58 a6 49 c7 f7 7f 00 00 e8 90 50 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 41 cf 5e 48 b9 c0 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 a7 98 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 a6 49 c7 f7 7f 00 00 e8 51 50 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 41 cf 5e 48 b9 c0 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 ce 98 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 a6 49 c7 f7 7f 00 00 e8 12 50 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 41 cf 5e 48 b9 c0 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 be 98 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 a6 49 c7 f7 7f 00 00 e8 d3 4f cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 41 cf 5e 48 b9 c0 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 c1 98 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 a6 49 c7 f7 7f 00 00 e8 97 4f cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 40 cf 5e 48 b9 c0 e2 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 b6 98 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 a6 49 c7 f7 7f 00 00 e8 5b 4f cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8c 40 cf 5e 48 b8 c0 e2 25 c6 f7 7f 00 00 48 89 46 18 48 b8 30 b9 98 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 15 4f cf 5e 48 8b f8 40 88 77 08 48 b9 68 6f 35 c6 f7 7f 00 00 e8 3f d2 c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 ed 4e cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 d6 e7 e1 5e 48 8b e8 48 8b ce e8 ab 0e 1f ff 8b c8 e8 0c e6 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 3e 23 1d ff 48 8b d0 48 8b cb e8 fb 71 1f ff 48 8b cb e8 f3 9a c6 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c749a658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a6 49 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 50 cf 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 41 cf 5e}
004fh mov rcx,7ff7c625e2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e2 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c698a760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 a7 98 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c749a658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a6 49 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 50 cf 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 41 cf 5e}
008eh mov rcx,7ff7c625e2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e2 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c698cea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ce 98 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c749a658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a6 49 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 50 cf 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 41 cf 5e}
00cdh mov rcx,7ff7c625e2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e2 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c698be80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 be 98 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c749a658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a6 49 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 4f cf 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 41 cf 5e}
010ch mov rcx,7ff7c625e2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e2 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c698c160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 c1 98 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c749a658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a6 49 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 4f cf 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 40 cf 5e}
0148h mov rcx,7ff7c625e2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e2 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c698b650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b6 98 c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c749a658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a6 49 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 4f cf 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 40 cf 5e}
0184h mov rax,7ff7c625e2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e2 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c698b930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 b9 98 c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
01b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 4f cf 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c6356f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 35 c6 f7 7f 00 00}
01cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f d2 c9 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
01deh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 4e cf 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
01f5h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 e7 e1 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 0e 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c e6 1e ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 23 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 71 1f ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 9a c6 5e}
022dh int 3                                   ; INT3 || CC || encoded[1]{cc}
022eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0230h (bad)                                   ; <invalid> || <invalid> || encoded[2]{27 00}
0232h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0234h movsd                                   ; MOVSD || o32 A5 || encoded[1]{a5}
0235h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0237h add ah,ah                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 e4}
0239h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
023bh add [rax],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 20}
023dh add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
023fh add [rcx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 01 00}
0243h add [rsi],ah                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 66 00}
0246h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0248h sbb [rax],ecx                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 08}
024ah add eax,4420800h                        ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 00 08 42 04}
024fh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0251h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0252h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0255h jo short 0257h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0257h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<ushort> lookup<ushort>(ComparisonKind:byte kind)
; lookup_g[16u](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 a8 49 c7 f7 7f 00 00 e8 20 4e cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 3f cf 5e 48 b9 00 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 a7 98 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 68 a8 49 c7 f7 7f 00 00 e8 e1 4d cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 3f cf 5e 48 b9 00 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 ce 98 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 68 a8 49 c7 f7 7f 00 00 e8 a2 4d cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 3e cf 5e 48 b9 00 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 be 98 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 68 a8 49 c7 f7 7f 00 00 e8 63 4d cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 3e cf 5e 48 b9 00 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 c1 98 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 68 a8 49 c7 f7 7f 00 00 e8 27 4d cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 3e cf 5e 48 b9 00 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 b6 98 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 68 a8 49 c7 f7 7f 00 00 e8 eb 4c cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 3e cf 5e 48 b8 00 e3 25 c6 f7 7f 00 00 48 89 46 18 48 b8 60 b9 98 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 a5 4c cf 5e 48 8b f8 40 88 77 08 48 b9 38 87 35 c6 f7 7f 00 00 e8 cf cf c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 7d 4c cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 66 e5 e1 5e 48 8b e8 48 8b ce e8 3b 0c 1f ff 8b c8 e8 9c e3 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 ce 20 1d ff 48 8b d0 48 8b cb e8 8b 6f 1f ff 48 8b cb e8 83 98 c6 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c749a868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a8 49 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 4e cf 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 3f cf 5e}
004fh mov rcx,7ff7c625e300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e3 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c698a790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a7 98 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c749a868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a8 49 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 4d cf 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 3f cf 5e}
008eh mov rcx,7ff7c625e300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e3 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c698ced0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ce 98 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c749a868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a8 49 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 4d cf 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 3e cf 5e}
00cdh mov rcx,7ff7c625e300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e3 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c698beb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 be 98 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c749a868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a8 49 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 4d cf 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 3e cf 5e}
010ch mov rcx,7ff7c625e300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e3 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c698c190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 c1 98 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c749a868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a8 49 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 4d cf 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 3e cf 5e}
0148h mov rcx,7ff7c625e300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e3 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c698b680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b6 98 c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c749a868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a8 49 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 4c cf 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 3e cf 5e}
0184h mov rax,7ff7c625e300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e3 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c698b960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 b9 98 c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
01b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 4c cf 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c6358738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 35 c6 f7 7f 00 00}
01cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf cf c9 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
01deh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 4c cf 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
01f5h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 e5 e1 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 0c 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c e3 1e ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 20 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 6f 1f ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 98 c6 5e}
022dh int 3                                   ; INT3 || CC || encoded[1]{cc}
022eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0230h (bad)                                   ; <invalid> || <invalid> || encoded[2]{27 00}
0232h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0234h movsd                                   ; MOVSD || o32 A5 || encoded[1]{a5}
0235h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0237h add ah,ah                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 e4}
0239h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
023bh add [rax],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 20}
023dh add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
023fh add [rcx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 01 00}
0243h add [rsi],ah                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 66 00}
0246h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0248h sbb [rax],ecx                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 08}
024ah add eax,4420800h                        ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 00 08 42 04}
024fh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0251h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0252h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0255h jo short 0257h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0257h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<short> lookup<short>(ComparisonKind:byte kind)
; lookup_g[16i](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 aa 49 c7 f7 7f 00 00 e8 b0 4b cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 3c cf 5e 48 b9 40 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 a7 98 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 aa 49 c7 f7 7f 00 00 e8 71 4b cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 3c cf 5e 48 b9 40 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 cf 98 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 aa 49 c7 f7 7f 00 00 e8 32 4b cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 3c cf 5e 48 b9 40 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 be 98 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 aa 49 c7 f7 7f 00 00 e8 f3 4a cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 3c cf 5e 48 b9 40 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 c1 98 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 aa 49 c7 f7 7f 00 00 e8 b7 4a cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 3b cf 5e 48 b9 40 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 b6 98 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 aa 49 c7 f7 7f 00 00 e8 7b 4a cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 3b cf 5e 48 b8 40 e3 25 c6 f7 7f 00 00 48 89 46 18 48 b8 90 b9 98 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 35 4a cf 5e 48 8b f8 40 88 77 08 48 b9 48 7f 35 c6 f7 7f 00 00 e8 5f cd c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 0d 4a cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 f6 e2 e1 5e 48 8b e8 48 8b ce e8 cb 09 1f ff 8b c8 e8 2c e1 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 5e 1e 1d ff 48 8b d0 48 8b cb e8 1b 6d 1f ff 48 8b cb e8 13 96 c6 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c749aa78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 aa 49 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 4b cf 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 3c cf 5e}
004fh mov rcx,7ff7c625e340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e3 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c698a7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a7 98 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c749aa78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 aa 49 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 4b cf 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 3c cf 5e}
008eh mov rcx,7ff7c625e340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e3 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c698cf00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 cf 98 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c749aa78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 aa 49 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 4b cf 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 3c cf 5e}
00cdh mov rcx,7ff7c625e340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e3 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c698bee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 be 98 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c749aa78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 aa 49 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 4a cf 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 3c cf 5e}
010ch mov rcx,7ff7c625e340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e3 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c698c1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 c1 98 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c749aa78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 aa 49 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 4a cf 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 3b cf 5e}
0148h mov rcx,7ff7c625e340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e3 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c698b6b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 b6 98 c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c749aa78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 aa 49 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 4a cf 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 3b cf 5e}
0184h mov rax,7ff7c625e340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e3 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c698b990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 b9 98 c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
01b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 4a cf 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c6357f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 35 c6 f7 7f 00 00}
01cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f cd c9 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
01deh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 4a cf 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
01f5h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 e2 e1 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 09 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c e1 1e ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 1e 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 6d 1f ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 96 c6 5e}
022dh int 3                                   ; INT3 || CC || encoded[1]{cc}
022eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0230h (bad)                                   ; <invalid> || <invalid> || encoded[2]{27 00}
0232h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0234h movsd                                   ; MOVSD || o32 A5 || encoded[1]{a5}
0235h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0237h add ah,ah                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 e4}
0239h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
023bh add [rax],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 20}
023dh add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
023fh add [rcx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 01 00}
0243h add [rsi],ah                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 66 00}
0246h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0248h sbb [rax],ecx                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 08}
024ah add eax,4420800h                        ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 00 08 42 04}
024fh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0251h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0252h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0255h jo short 0257h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0257h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<uint> lookup<uint>(ComparisonKind:byte kind)
; lookup_g[32u](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 88 ac 49 c7 f7 7f 00 00 e8 40 49 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 3a cf 5e 48 b9 80 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 a7 98 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 88 ac 49 c7 f7 7f 00 00 e8 01 49 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 3a cf 5e 48 b9 80 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 cf 98 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 88 ac 49 c7 f7 7f 00 00 e8 c2 48 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 39 cf 5e 48 b9 80 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 bf 98 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 88 ac 49 c7 f7 7f 00 00 e8 83 48 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 39 cf 5e 48 b9 80 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 c1 98 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 88 ac 49 c7 f7 7f 00 00 e8 47 48 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 39 cf 5e 48 b9 80 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 b6 98 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 88 ac 49 c7 f7 7f 00 00 e8 0b 48 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 39 cf 5e 48 b8 80 e3 25 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 b9 98 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 c5 47 cf 5e 48 8b f8 40 88 77 08 48 b9 d8 96 35 c6 f7 7f 00 00 e8 ef ca c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 9d 47 cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 86 e0 e1 5e 48 8b e8 48 8b ce e8 5b 07 1f ff 8b c8 e8 bc de 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 ee 1b 1d ff 48 8b d0 48 8b cb e8 ab 6a 1f ff 48 8b cb e8 a3 93 c6 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c749ac88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ac 49 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 49 cf 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 3a cf 5e}
004fh mov rcx,7ff7c625e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c698a7f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a7 98 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c749ac88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ac 49 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 49 cf 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 3a cf 5e}
008eh mov rcx,7ff7c625e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c698cf30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 cf 98 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c749ac88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ac 49 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 48 cf 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 39 cf 5e}
00cdh mov rcx,7ff7c625e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c698bf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 bf 98 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c749ac88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ac 49 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 48 cf 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 39 cf 5e}
010ch mov rcx,7ff7c625e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c698c1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 c1 98 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c749ac88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ac 49 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 48 cf 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 39 cf 5e}
0148h mov rcx,7ff7c625e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c698b6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 b6 98 c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c749ac88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ac 49 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 48 cf 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 39 cf 5e}
0184h mov rax,7ff7c625e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e3 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c698b9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 b9 98 c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
01b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 47 cf 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c63596d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 35 c6 f7 7f 00 00}
01cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef ca c9 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
01deh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 47 cf 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
01f5h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 e0 e1 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 07 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc de 1e ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 1b 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 6a 1f ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 93 c6 5e}
022dh int 3                                   ; INT3 || CC || encoded[1]{cc}
022eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0230h (bad)                                   ; <invalid> || <invalid> || encoded[2]{27 00}
0232h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0234h movsd                                   ; MOVSD || o32 A5 || encoded[1]{a5}
0235h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0237h add ah,ah                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 e4}
0239h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
023bh add [rax],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 20}
023dh add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
023fh add [rcx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 01 00}
0243h add [rsi],ah                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 66 00}
0246h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0248h sbb [rax],ecx                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 08}
024ah add eax,4420800h                        ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 00 08 42 04}
024fh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0251h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0252h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0255h jo short 0257h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0257h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<int> lookup<int>(ComparisonKind:byte kind)
; lookup_g[32i](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 ae 49 c7 f7 7f 00 00 e8 d0 46 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 38 cf 5e 48 b9 c0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 a8 98 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 98 ae 49 c7 f7 7f 00 00 e8 91 46 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 37 cf 5e 48 b9 c0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 cf 98 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 98 ae 49 c7 f7 7f 00 00 e8 52 46 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 37 cf 5e 48 b9 c0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 bf 98 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 98 ae 49 c7 f7 7f 00 00 e8 13 46 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 37 cf 5e 48 b9 c0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 c2 98 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 98 ae 49 c7 f7 7f 00 00 e8 d7 45 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 37 cf 5e 48 b9 c0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 b7 98 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 98 ae 49 c7 f7 7f 00 00 e8 9b 45 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 36 cf 5e 48 b8 c0 e3 25 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 b9 98 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 55 45 cf 5e 48 8b f8 40 88 77 08 48 b9 08 8f 35 c6 f7 7f 00 00 e8 7f c8 c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 2d 45 cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 16 de e1 5e 48 8b e8 48 8b ce e8 eb 04 1f ff 8b c8 e8 4c dc 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 7e 19 1d ff 48 8b d0 48 8b cb e8 3b 68 1f ff 48 8b cb e8 33 91 c6 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c749ae98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ae 49 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 46 cf 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 38 cf 5e}
004fh mov rcx,7ff7c625e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c698a810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 98 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c749ae98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ae 49 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 46 cf 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 37 cf 5e}
008eh mov rcx,7ff7c625e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c698cf50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cf 98 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c749ae98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ae 49 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 46 cf 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 37 cf 5e}
00cdh mov rcx,7ff7c625e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c698bf30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 bf 98 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c749ae98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ae 49 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 46 cf 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 37 cf 5e}
010ch mov rcx,7ff7c625e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c698c210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 c2 98 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c749ae98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ae 49 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 45 cf 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 37 cf 5e}
0148h mov rcx,7ff7c625e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e3 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c698b700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b7 98 c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c749ae98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ae 49 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 45 cf 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 36 cf 5e}
0184h mov rax,7ff7c625e3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e3 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c698b9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 b9 98 c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
01b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 45 cf 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c6358f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 35 c6 f7 7f 00 00}
01cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f c8 c9 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
01deh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 45 cf 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
01f5h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 de e1 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 04 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c dc 1e ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 19 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 68 1f ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 91 c6 5e}
022dh int 3                                   ; INT3 || CC || encoded[1]{cc}
022eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0230h (bad)                                   ; <invalid> || <invalid> || encoded[2]{27 00}
0232h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0234h movsd                                   ; MOVSD || o32 A5 || encoded[1]{a5}
0235h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0237h add ah,ah                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 e4}
0239h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
023bh add [rax],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 20}
023dh add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
023fh add [rcx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 01 00}
0243h add [rsi],ah                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 66 00}
0246h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0248h sbb [rax],ecx                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 08}
024ah add eax,4420800h                        ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 00 08 42 04}
024fh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0251h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0252h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0255h jo short 0257h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0257h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<ulong> lookup<ulong>(ComparisonKind:byte kind)
; lookup_g[64u](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 b0 49 c7 f7 7f 00 00 e8 60 44 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 35 cf 5e 48 b9 00 e4 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 ac 98 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 b0 49 c7 f7 7f 00 00 e8 21 44 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 35 cf 5e 48 b9 00 e4 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 cf 98 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 b0 49 c7 f7 7f 00 00 e8 e2 43 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 35 cf 5e 48 b9 00 e4 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 bf 98 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 b0 49 c7 f7 7f 00 00 e8 a3 43 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 34 cf 5e 48 b9 00 e4 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 c2 98 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 b0 49 c7 f7 7f 00 00 e8 67 43 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 34 cf 5e 48 b9 00 e4 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 b7 98 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 b0 49 c7 f7 7f 00 00 e8 2b 43 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 34 cf 5e 48 b8 00 e4 25 c6 f7 7f 00 00 48 89 46 18 48 b8 00 ba 98 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 e5 42 cf 5e 48 8b f8 40 88 77 08 48 b9 78 a6 35 c6 f7 7f 00 00 e8 0f c6 c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 bd 42 cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 a6 db e1 5e 48 8b e8 48 8b ce e8 7b 02 1f ff 8b c8 e8 dc d9 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 0e 17 1d ff 48 8b d0 48 8b cb e8 cb 65 1f ff 48 8b cb e8 c3 8e c6 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c749b0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b0 49 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 44 cf 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 35 cf 5e}
004fh mov rcx,7ff7c625e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c698ac40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ac 98 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c749b0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b0 49 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 44 cf 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 35 cf 5e}
008eh mov rcx,7ff7c625e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c698cf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 cf 98 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c749b0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b0 49 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 43 cf 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 35 cf 5e}
00cdh mov rcx,7ff7c625e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c698bf50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 bf 98 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c749b0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b0 49 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 43 cf 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 34 cf 5e}
010ch mov rcx,7ff7c625e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c698c230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c2 98 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c749b0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b0 49 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 43 cf 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 34 cf 5e}
0148h mov rcx,7ff7c625e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c698b720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b7 98 c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c749b0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b0 49 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 43 cf 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 34 cf 5e}
0184h mov rax,7ff7c625e400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e4 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c698ba00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ba 98 c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
01b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 42 cf 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c635a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 35 c6 f7 7f 00 00}
01cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f c6 c9 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
01deh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 42 cf 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
01f5h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 db e1 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 02 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc d9 1e ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 17 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 65 1f ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 8e c6 5e}
022dh int 3                                   ; INT3 || CC || encoded[1]{cc}
022eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0230h (bad)                                   ; <invalid> || <invalid> || encoded[2]{27 00}
0232h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0234h movsd                                   ; MOVSD || o32 A5 || encoded[1]{a5}
0235h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0237h add ah,ah                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 e4}
0239h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
023bh add [rax],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 20}
023dh add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
023fh add [rcx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 01 00}
0243h add [rsi],ah                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 66 00}
0246h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0248h sbb [rax],ecx                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 08}
024ah add eax,4420800h                        ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 00 08 42 04}
024fh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0251h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0252h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0255h jo short 0257h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0257h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<long> lookup<long>(ComparisonKind:byte kind)
; lookup_g[64i](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b8 b2 49 c7 f7 7f 00 00 e8 f0 41 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 33 cf 5e 48 b9 40 e4 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 ac 98 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b8 b2 49 c7 f7 7f 00 00 e8 b1 41 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 32 cf 5e 48 b9 40 e4 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 cf 98 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b8 b2 49 c7 f7 7f 00 00 e8 72 41 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 32 cf 5e 48 b9 40 e4 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 bf 98 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b8 b2 49 c7 f7 7f 00 00 e8 33 41 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 32 cf 5e 48 b9 40 e4 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 c6 98 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b8 b2 49 c7 f7 7f 00 00 e8 f7 40 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 32 cf 5e 48 b9 40 e4 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 b7 98 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b8 b2 49 c7 f7 7f 00 00 e8 bb 40 cf 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec 31 cf 5e 48 b8 40 e4 25 c6 f7 7f 00 00 48 89 46 18 48 b8 20 ba 98 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 30 c7 3c c7 f7 7f 00 00 e8 75 40 cf 5e 48 8b f8 40 88 77 08 48 b9 a8 9e 35 c6 f7 7f 00 00 e8 9f c3 c9 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 4d 40 cf 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 36 d9 e1 5e 48 8b e8 48 8b ce e8 0b 00 1f ff 8b c8 e8 6c d7 1e ff 4c 8b c0 48 8b cd 48 8b d7 e8 9e 14 1d ff 48 8b d0 48 8b cb e8 5b 63 1f ff 48 8b cb e8 53 8c c6 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c749b2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b2 49 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 41 cf 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 33 cf 5e}
004fh mov rcx,7ff7c625e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c698ac60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ac 98 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c749b2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b2 49 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 41 cf 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 32 cf 5e}
008eh mov rcx,7ff7c625e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c698cf90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 cf 98 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c749b2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b2 49 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 41 cf 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 32 cf 5e}
00cdh mov rcx,7ff7c625e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c698bf70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 bf 98 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c749b2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b2 49 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 41 cf 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 32 cf 5e}
010ch mov rcx,7ff7c625e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c698c660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 c6 98 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c749b2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b2 49 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 40 cf 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 32 cf 5e}
0148h mov rcx,7ff7c625e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c698b740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b7 98 c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c749b2b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b2 49 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 40 cf 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 31 cf 5e}
0184h mov rax,7ff7c625e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e4 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c698ba20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 ba 98 c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c73cc730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c7 3c c7 f7 7f 00 00}
01b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 40 cf 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c6359ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 35 c6 f7 7f 00 00}
01cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c3 c9 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
01deh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 40 cf 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
01f5h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 d9 e1 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 00 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c d7 1e ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 14 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 63 1f ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 8c c6 5e}
022dh int 3                                   ; INT3 || CC || encoded[1]{cc}
022eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0230h (bad)                                   ; <invalid> || <invalid> || encoded[2]{27 00}
0232h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0234h movsd                                   ; MOVSD || o32 A5 || encoded[1]{a5}
0235h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0237h add ah,ah                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 e4}
0239h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
023bh add [rax],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 20}
023dh add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
023fh add [rcx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 01 00}
0243h add [rsi],ah                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 66 00}
0246h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0248h sbb [rax],ecx                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 08}
024ah add eax,4420800h                        ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 00 08 42 04}
024fh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0251h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0252h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0255h jo short 0257h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0257h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
