------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(ComparisonKind:byte kind, byte a, byte b)
; eval_g[8u](ComparisonKind~8u,8u,8u)[297] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 8e 00 00 00 8b c0 48 8d 0d 0e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 0f b6 d2 45 0f b6 c0 0f b6 c2 41 3b c0 0f 94 c0 0f b6 c0 eb 58 0f b6 c2 41 0f b6 d0 44 0f b6 c0 44 3b c2 0f 95 c0 0f b6 c0 eb 42 0f b6 c2 41 0f b6 d0 3b c2 0f 92 c0 0f b6 c0 eb 31 0f b6 c2 41 0f b6 d0 3b c2 0f 96 c0 0f b6 c0 eb 20 0f b6 c2 41 0f b6 d0 3b c2 0f 97 c0 0f b6 c0 eb 0f 0f b6 c2 41 0f b6 c8 3b c1 0f 93 c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 aa 0a ce 5e 48 8b f8 40 88 77 08 48 b9 58 77 73 c7 f7 7f 00 00 e8 d4 8d c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 82 0a ce 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 6b a3 e0 5e 48 8b e8 48 8b ce e8 10 e1 1f ff 8b c8 e8 21 db 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 d3 de 1d ff 48 8b d0 48 8b cb e8 98 23 20 ff 48 8b cb e8 88 56 c5 5e cc}
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
00a7h mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
00b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 0a ce 5e}
00b6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00b9h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00bdh mov rcx,7ff7c7737758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 73 c7 f7 7f 00 00}
00c7h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 8d c8 5e}
00cch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00cfh mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
00d9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 0a ce 5e}
00deh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00e1h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00e6h mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
00f0h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b a3 e0 5e}
00f5h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 e1 1f ff}
0100h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0102h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 db 1f ff}
0107h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010ah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
010dh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0110h call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 de 1d ff}
0115h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0118h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011bh call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 23 20 ff}
0120h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0123h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 56 c5 5e}
0128h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(ComparisonKind:byte kind, sbyte a, sbyte b)
; eval_g[8i](ComparisonKind~8u,8i,8i)[345] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 95 00 00 00 8b c0 48 8d 0d 0e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 48 0f be d2 4d 0f be c0 48 0f be c2 41 3b c0 0f 94 c0 0f b6 c0 eb 5d 48 0f be c2 49 0f be d0 4c 0f be c0 44 3b c2 0f 95 c0 0f b6 c0 eb 46 48 0f be c2 49 0f be d0 3b c2 0f 9c c0 0f b6 c0 eb 34 48 0f be c2 49 0f be d0 3b c2 0f 9e c0 0f b6 c0 eb 22 48 0f be c2 49 0f be d0 3b c2 0f 9f c0 0f b6 c0 eb 10 48 0f be c2 49 0f be c8 3b c1 0f 9d c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 33 09 ce 5e 48 8b f8 40 88 77 08 48 b9 68 6f 73 c7 f7 7f 00 00 e8 5d 8c c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 0b 09 ce 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 f4 a1 e0 5e 48 8b e8 48 8b ce e8 99 df 1f ff 8b c8 e8 aa d9 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 5c dd 1d ff 48 8b d0 48 8b cb e8 21 22 20 ff 48 8b cb e8 11 55 c5 5e cc 27 00 00 00 55 00 00 00 67 00 00 00 79 00 00 00 8b 00 00 00 3e 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
00aeh mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
00b8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 09 ce 5e}
00bdh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00c0h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00c4h mov rcx,7ff7c7736f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 73 c7 f7 7f 00 00}
00ceh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 8c c8 5e}
00d3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00d6h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
00e0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 09 ce 5e}
00e5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00e8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00edh mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
00f7h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 a1 e0 5e}
00fch mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00ffh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0102h call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 df 1f ff}
0107h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0109h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa d9 1f ff}
010eh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0111h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0114h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0117h call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c dd 1d ff}
011ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
011fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0122h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 22 20 ff}
0127h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
012ah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 55 c5 5e}
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
; eval_g[16u](ComparisonKind~8u,16u,16u)[297] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 8e 00 00 00 8b c0 48 8d 0d 0e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 0f b7 d2 45 0f b7 c0 0f b7 c2 41 3b c0 0f 94 c0 0f b6 c0 eb 58 0f b7 c2 41 0f b7 d0 44 0f b7 c0 44 3b c2 0f 95 c0 0f b6 c0 eb 42 0f b7 c2 41 0f b7 d0 3b c2 0f 92 c0 0f b6 c0 eb 31 0f b7 c2 41 0f b7 d0 3b c2 0f 96 c0 0f b6 c0 eb 20 0f b7 c2 41 0f b7 d0 3b c2 0f 97 c0 0f b6 c0 eb 0f 0f b7 c2 41 0f b7 c8 3b c1 0f 93 c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 ca 07 ce 5e 48 8b f8 40 88 77 08 48 b9 38 87 73 c7 f7 7f 00 00 e8 f4 8a c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 a2 07 ce 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 8b a0 e0 5e 48 8b e8 48 8b ce e8 30 de 1f ff 8b c8 e8 41 d8 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 f3 db 1d ff 48 8b d0 48 8b cb e8 b8 20 20 ff 48 8b cb e8 a8 53 c5 5e cc}
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
00a7h mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
00b1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 07 ce 5e}
00b6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00b9h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00bdh mov rcx,7ff7c7738738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 73 c7 f7 7f 00 00}
00c7h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 8a c8 5e}
00cch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00cfh mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
00d9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 07 ce 5e}
00deh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00e1h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00e6h mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
00f0h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b a0 e0 5e}
00f5h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 de 1f ff}
0100h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0102h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 d8 1f ff}
0107h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010ah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
010dh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0110h call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 db 1d ff}
0115h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0118h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011bh call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 20 20 ff}
0120h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0123h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 53 c5 5e}
0128h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(ComparisonKind:byte kind, short a, short b)
; eval_g[16i](ComparisonKind~8u,16i,16i)[345] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 95 00 00 00 8b c0 48 8d 0d 0e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 48 0f bf d2 4d 0f bf c0 48 0f bf c2 41 3b c0 0f 94 c0 0f b6 c0 eb 5d 48 0f bf c2 49 0f bf d0 4c 0f bf c0 44 3b c2 0f 95 c0 0f b6 c0 eb 46 48 0f bf c2 49 0f bf d0 3b c2 0f 9c c0 0f b6 c0 eb 34 48 0f bf c2 49 0f bf d0 3b c2 0f 9e c0 0f b6 c0 eb 22 48 0f bf c2 49 0f bf d0 3b c2 0f 9f c0 0f b6 c0 eb 10 48 0f bf c2 49 0f bf c8 3b c1 0f 9d c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 53 06 ce 5e 48 8b f8 40 88 77 08 48 b9 48 7f 73 c7 f7 7f 00 00 e8 7d 89 c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 2b 06 ce 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 14 9f e0 5e 48 8b e8 48 8b ce e8 b9 dc 1f ff 8b c8 e8 ca d6 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 7c da 1d ff 48 8b d0 48 8b cb e8 41 1f 20 ff 48 8b cb e8 31 52 c5 5e cc 27 00 00 00 55 00 00 00 67 00 00 00 79 00 00 00 8b 00 00 00 3e 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
00aeh mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
00b8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 06 ce 5e}
00bdh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00c0h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00c4h mov rcx,7ff7c7737f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 73 c7 f7 7f 00 00}
00ceh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 89 c8 5e}
00d3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00d6h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
00e0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 06 ce 5e}
00e5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00e8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00edh mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
00f7h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 9f e0 5e}
00fch mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00ffh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0102h call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 dc 1f ff}
0107h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0109h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca d6 1f ff}
010eh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0111h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0114h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0117h call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c da 1d ff}
011ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
011fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0122h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 1f 20 ff}
0127h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
012ah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 52 c5 5e}
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
; eval_g[32u](ComparisonKind~8u,32u,32u)[289] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 61 8b c0 48 8d 0d da 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 41 3b d0 0f 94 c0 0f b6 c0 eb 35 41 3b d0 0f 95 c0 0f b6 c0 eb 2a 41 3b d0 0f 92 c0 0f b6 c0 eb 1f 41 3b d0 0f 96 c0 0f b6 c0 eb 14 41 3b d0 0f 97 c0 0f b6 c0 eb 09 41 3b d0 0f 93 c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 1b 05 ce 5e 48 8b f8 40 88 77 08 48 b9 d8 96 73 c7 f7 7f 00 00 e8 45 88 c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 f3 04 ce 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 dc 9d e0 5e 48 8b e8 48 8b ce e8 81 db 1f ff 8b c8 e8 92 d5 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 44 d9 1d ff 48 8b d0 48 8b cb e8 09 1e 20 ff 48 8b cb e8 f9 50 c5 5e cc 23 00 00 00 39 00 00 00 44 00 00 00 4f 00 00 00 5a 00 00 00 2e 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
0076h mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
0080h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 05 ce 5e}
0085h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0088h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
008ch mov rcx,7ff7c77396d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 73 c7 f7 7f 00 00}
0096h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 88 c8 5e}
009bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
009eh mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
00a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 04 ce 5e}
00adh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00b0h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b5h mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
00bfh call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 9d e0 5e}
00c4h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00c7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00cah call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 db 1f ff}
00cfh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d1h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 d5 1f ff}
00d6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00d9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00dch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00dfh call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 d9 1d ff}
00e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00e7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00eah call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 1e 20 ff}
00efh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 50 c5 5e}
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
; eval_g[32i](ComparisonKind~8u,32i,32i)[289] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 61 8b c0 48 8d 0d da 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 41 3b d0 0f 94 c0 0f b6 c0 eb 35 41 3b d0 0f 95 c0 0f b6 c0 eb 2a 41 3b d0 0f 9c c0 0f b6 c0 eb 1f 41 3b d0 0f 9e c0 0f b6 c0 eb 14 41 3b d0 0f 9f c0 0f b6 c0 eb 09 41 3b d0 0f 9d c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 eb 03 ce 5e 48 8b f8 40 88 77 08 48 b9 08 8f 73 c7 f7 7f 00 00 e8 15 87 c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 c3 03 ce 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 ac 9c e0 5e 48 8b e8 48 8b ce e8 51 da 1f ff 8b c8 e8 62 d4 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 14 d8 1d ff 48 8b d0 48 8b cb e8 d9 1c 20 ff 48 8b cb e8 c9 4f c5 5e cc 23 00 00 00 39 00 00 00 44 00 00 00 4f 00 00 00 5a 00 00 00 2e 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
0076h mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
0080h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 03 ce 5e}
0085h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0088h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
008ch mov rcx,7ff7c7738f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 73 c7 f7 7f 00 00}
0096h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 87 c8 5e}
009bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
009eh mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
00a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 03 ce 5e}
00adh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00b0h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b5h mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
00bfh call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 9c e0 5e}
00c4h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00c7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00cah call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 da 1f ff}
00cfh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d1h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 d4 1f ff}
00d6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00d9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00dch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00dfh call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 d8 1d ff}
00e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00e7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00eah call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 1c 20 ff}
00efh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 4f c5 5e}
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
; eval_g[64u](ComparisonKind~8u,64u,64u)[289] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 61 8b c0 48 8d 0d da 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 49 3b d0 0f 94 c0 0f b6 c0 eb 35 49 3b d0 0f 95 c0 0f b6 c0 eb 2a 49 3b d0 0f 92 c0 0f b6 c0 eb 1f 49 3b d0 0f 96 c0 0f b6 c0 eb 14 49 3b d0 0f 97 c0 0f b6 c0 eb 09 49 3b d0 0f 93 c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 bb 02 ce 5e 48 8b f8 40 88 77 08 48 b9 78 a6 73 c7 f7 7f 00 00 e8 e5 85 c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 93 02 ce 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 7c 9b e0 5e 48 8b e8 48 8b ce e8 21 d9 1f ff 8b c8 e8 32 d3 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 e4 d6 1d ff 48 8b d0 48 8b cb e8 a9 1b 20 ff 48 8b cb e8 99 4e c5 5e cc 23 00 00 00 39 00 00 00 44 00 00 00 4f 00 00 00 5a 00 00 00 2e 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
0076h mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
0080h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 02 ce 5e}
0085h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0088h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
008ch mov rcx,7ff7c773a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 73 c7 f7 7f 00 00}
0096h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 85 c8 5e}
009bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
009eh mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
00a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 02 ce 5e}
00adh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00b0h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b5h mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
00bfh call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 9b e0 5e}
00c4h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00c7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00cah call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 d9 1f ff}
00cfh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d1h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 d3 1f ff}
00d6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00d9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00dch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00dfh call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 d6 1d ff}
00e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00e7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00eah call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 1b 20 ff}
00efh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 4e c5 5e}
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
; eval_g[64i](ComparisonKind~8u,64i,64i)[289] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 61 8b c0 48 8d 0d da 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 49 3b d0 0f 94 c0 0f b6 c0 eb 35 49 3b d0 0f 95 c0 0f b6 c0 eb 2a 49 3b d0 0f 9c c0 0f b6 c0 eb 1f 49 3b d0 0f 9e c0 0f b6 c0 eb 14 49 3b d0 0f 9f c0 0f b6 c0 eb 09 49 3b d0 0f 9d c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 8b 01 ce 5e 48 8b f8 40 88 77 08 48 b9 a8 9e 73 c7 f7 7f 00 00 e8 b5 84 c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 63 01 ce 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 4c 9a e0 5e 48 8b e8 48 8b ce e8 f1 d7 1f ff 8b c8 e8 02 d2 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 b4 d5 1d ff 48 8b d0 48 8b cb e8 79 1a 20 ff 48 8b cb e8 69 4d c5 5e cc 23 00 00 00 39 00 00 00 44 00 00 00 4f 00 00 00 5a 00 00 00 2e 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
0076h mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
0080h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 01 ce 5e}
0085h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0088h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
008ch mov rcx,7ff7c7739ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 73 c7 f7 7f 00 00}
0096h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 84 c8 5e}
009bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
009eh mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
00a8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 01 ce 5e}
00adh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00b0h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b5h mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
00bfh call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 9a e0 5e}
00c4h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00c7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00cah call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 d7 1f ff}
00cfh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d1h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 d2 1f ff}
00d6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00d9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00dch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00dfh call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 d5 1d ff}
00e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00e7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00eah call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 1a 20 ff}
00efh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 4d c5 5e}
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
; lookup_g[8u](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 51 85 c8 f7 7f 00 00 e8 90 fc cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 ed cd 5e 48 b9 30 e0 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 c4 d5 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 51 85 c8 f7 7f 00 00 e8 51 fc cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 ed cd 5e 48 b9 30 e0 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 eb d5 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 51 85 c8 f7 7f 00 00 e8 12 fc cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 ed cd 5e 48 b9 30 e0 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 db d5 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 51 85 c8 f7 7f 00 00 e8 d3 fb cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 ed cd 5e 48 b9 30 e0 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 de d5 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 51 85 c8 f7 7f 00 00 e8 97 fb cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 ec cd 5e 48 b9 30 e0 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 d3 d5 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 51 85 c8 f7 7f 00 00 e8 5b fb cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8c ec cd 5e 48 b8 30 e0 63 c7 f7 7f 00 00 48 89 46 18 48 b8 40 d6 d5 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 15 fb cd 5e 48 8b f8 40 88 77 08 48 b9 58 77 73 c7 f7 7f 00 00 e8 3f 7e c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 ed fa cd 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 d6 93 e0 5e 48 8b e8 48 8b ce e8 7b d1 1f ff 8b c8 e8 8c cb 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 3e cf 1d ff 48 8b d0 48 8b cb e8 03 14 20 ff 48 8b cb e8 f3 46 c5 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
0031h mov rcx,7ff7c88551a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 51 85 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 fc cd 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 ed cd 5e}
004fh mov rcx,7ff7c763e030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e0 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7d5c480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 c4 d5 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c88551a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 51 85 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 fc cd 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 ed cd 5e}
008eh mov rcx,7ff7c763e030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e0 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7d5eb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 eb d5 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c88551a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 51 85 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 fc cd 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 ed cd 5e}
00cdh mov rcx,7ff7c763e030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e0 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7d5db80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 db d5 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c88551a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 51 85 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 fb cd 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 ed cd 5e}
010ch mov rcx,7ff7c763e030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e0 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7d5de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de d5 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c88551a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 51 85 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 fb cd 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 ec cd 5e}
0148h mov rcx,7ff7c763e030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e0 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7d5d360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d3 d5 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c88551a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 51 85 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b fb cd 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c ec cd 5e}
0184h mov rax,7ff7c763e030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e0 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7d5d640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 d6 d5 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
01b6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 fb cd 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c7737758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 73 c7 f7 7f 00 00}
01cch call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 7e c8 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01deh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed fa cd 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
01f5h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 93 e0 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b d1 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c cb 1f ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e cf 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 14 20 ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 46 c5 5e}
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
; lookup_g[8i](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 58 56 85 c8 f7 7f 00 00 e8 20 fa cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 eb cd 5e 48 b9 30 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 c8 d5 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 56 85 c8 f7 7f 00 00 e8 e1 f9 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 eb cd 5e 48 b9 30 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 eb d5 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 56 85 c8 f7 7f 00 00 e8 a2 f9 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 ea cd 5e 48 b9 30 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 db d5 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 56 85 c8 f7 7f 00 00 e8 63 f9 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 ea cd 5e 48 b9 30 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 de d5 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 56 85 c8 f7 7f 00 00 e8 27 f9 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 ea cd 5e 48 b9 30 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 d3 d5 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 56 85 c8 f7 7f 00 00 e8 eb f8 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c ea cd 5e 48 b8 30 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 70 d6 d5 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 a5 f8 cd 5e 48 8b f8 40 88 77 08 48 b9 68 6f 73 c7 f7 7f 00 00 e8 cf 7b c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 7d f8 cd 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 66 91 e0 5e 48 8b e8 48 8b ce e8 0b cf 1f ff 8b c8 e8 1c c9 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 ce cc 1d ff 48 8b d0 48 8b cb e8 93 11 20 ff 48 8b cb e8 83 44 c5 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
0031h mov rcx,7ff7c8855658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 56 85 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 fa cd 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 eb cd 5e}
004fh mov rcx,7ff7c763e230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e2 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7d5c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c8 d5 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8855658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 56 85 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 f9 cd 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 eb cd 5e}
008eh mov rcx,7ff7c763e230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e2 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7d5ebc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 eb d5 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8855658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 56 85 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 f9 cd 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 ea cd 5e}
00cdh mov rcx,7ff7c763e230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e2 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7d5dbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 db d5 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8855658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 56 85 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 f9 cd 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 ea cd 5e}
010ch mov rcx,7ff7c763e230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e2 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7d5de90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 de d5 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8855658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 56 85 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 f9 cd 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 ea cd 5e}
0148h mov rcx,7ff7c763e230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e2 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7d5d390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 d3 d5 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8855658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 56 85 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb f8 cd 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c ea cd 5e}
0184h mov rax,7ff7c763e230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e2 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7d5d670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 d6 d5 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
01b6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 f8 cd 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c7736f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 73 c7 f7 7f 00 00}
01cch call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 7b c8 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01deh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f8 cd 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
01f5h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 91 e0 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b cf 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c c9 1f ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce cc 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 11 20 ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 44 c5 5e}
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
; lookup_g[16u](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 58 85 c8 f7 7f 00 00 e8 b0 f7 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 e8 cd 5e 48 b9 70 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 c8 d5 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 68 58 85 c8 f7 7f 00 00 e8 71 f7 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 e8 cd 5e 48 b9 70 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 eb d5 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 68 58 85 c8 f7 7f 00 00 e8 32 f7 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 e8 cd 5e 48 b9 70 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 db d5 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 68 58 85 c8 f7 7f 00 00 e8 f3 f6 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 e8 cd 5e 48 b9 70 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 e2 d5 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 68 58 85 c8 f7 7f 00 00 e8 b7 f6 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 e7 cd 5e 48 b9 70 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 d3 d5 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 68 58 85 c8 f7 7f 00 00 e8 7b f6 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac e7 cd 5e 48 b8 70 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 a0 d6 d5 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 35 f6 cd 5e 48 8b f8 40 88 77 08 48 b9 38 87 73 c7 f7 7f 00 00 e8 5f 79 c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 0d f6 cd 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 f6 8e e0 5e 48 8b e8 48 8b ce e8 9b cc 1f ff 8b c8 e8 ac c6 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 5e ca 1d ff 48 8b d0 48 8b cb e8 23 0f 20 ff 48 8b cb e8 13 42 c5 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
0031h mov rcx,7ff7c8855868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 58 85 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 f7 cd 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 e8 cd 5e}
004fh mov rcx,7ff7c763e270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e2 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7d5c8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 c8 d5 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8855868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 58 85 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 f7 cd 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 e8 cd 5e}
008eh mov rcx,7ff7c763e270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e2 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7d5ebf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 eb d5 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8855868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 58 85 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f7 cd 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 e8 cd 5e}
00cdh mov rcx,7ff7c763e270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e2 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7d5dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db d5 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8855868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 58 85 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f6 cd 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 e8 cd 5e}
010ch mov rcx,7ff7c763e270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e2 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7d5e2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e2 d5 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8855868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 58 85 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 f6 cd 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 e7 cd 5e}
0148h mov rcx,7ff7c763e270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e2 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7d5d3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d3 d5 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8855868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 58 85 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b f6 cd 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac e7 cd 5e}
0184h mov rax,7ff7c763e270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e2 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7d5d6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 d6 d5 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
01b6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 f6 cd 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c7738738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 73 c7 f7 7f 00 00}
01cch call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 79 c8 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01deh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d f6 cd 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
01f5h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 8e e0 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b cc 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac c6 1f ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e ca 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 0f 20 ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 42 c5 5e}
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
; lookup_g[16i](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 5a 85 c8 f7 7f 00 00 e8 40 f5 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 e6 cd 5e 48 b9 b0 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 c9 d5 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 5a 85 c8 f7 7f 00 00 e8 01 f5 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 e6 cd 5e 48 b9 b0 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 ec d5 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 5a 85 c8 f7 7f 00 00 e8 c2 f4 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 e5 cd 5e 48 b9 b0 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 dc d5 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 5a 85 c8 f7 7f 00 00 e8 83 f4 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 e5 cd 5e 48 b9 b0 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 e2 d5 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 5a 85 c8 f7 7f 00 00 e8 47 f4 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 e5 cd 5e 48 b9 b0 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 d3 d5 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 5a 85 c8 f7 7f 00 00 e8 0b f4 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c e5 cd 5e 48 b8 b0 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 d0 da d5 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 c5 f3 cd 5e 48 8b f8 40 88 77 08 48 b9 48 7f 73 c7 f7 7f 00 00 e8 ef 76 c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 9d f3 cd 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 86 8c e0 5e 48 8b e8 48 8b ce e8 2b ca 1f ff 8b c8 e8 3c c4 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 ee c7 1d ff 48 8b d0 48 8b cb e8 b3 0c 20 ff 48 8b cb e8 a3 3f c5 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
0031h mov rcx,7ff7c8855a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5a 85 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 f5 cd 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 e6 cd 5e}
004fh mov rcx,7ff7c763e2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e2 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7d5c910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 c9 d5 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8855a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5a 85 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 f5 cd 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 e6 cd 5e}
008eh mov rcx,7ff7c763e2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e2 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7d5ec20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ec d5 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8855a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5a 85 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 f4 cd 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 e5 cd 5e}
00cdh mov rcx,7ff7c763e2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e2 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7d5dc10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 dc d5 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8855a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5a 85 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 f4 cd 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 e5 cd 5e}
010ch mov rcx,7ff7c763e2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e2 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7d5e2f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e2 d5 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8855a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5a 85 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f4 cd 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 e5 cd 5e}
0148h mov rcx,7ff7c763e2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e2 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7d5d3f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d3 d5 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8855a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5a 85 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f4 cd 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c e5 cd 5e}
0184h mov rax,7ff7c763e2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 e2 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7d5dad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 da d5 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
01b6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 f3 cd 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c7737f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 73 c7 f7 7f 00 00}
01cch call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 76 c8 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01deh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d f3 cd 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
01f5h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 8c e0 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b ca 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c c4 1f ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee c7 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 0c 20 ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 3f c5 5e}
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
; lookup_g[32u](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 88 5c 85 c8 f7 7f 00 00 e8 d0 f2 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 e4 cd 5e 48 b9 f0 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 c9 d5 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 88 5c 85 c8 f7 7f 00 00 e8 91 f2 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 e3 cd 5e 48 b9 f0 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 ec d5 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 88 5c 85 c8 f7 7f 00 00 e8 52 f2 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 e3 cd 5e 48 b9 f0 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 dc d5 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 88 5c 85 c8 f7 7f 00 00 e8 13 f2 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 e3 cd 5e 48 b9 f0 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 e3 d5 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 88 5c 85 c8 f7 7f 00 00 e8 d7 f1 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 e3 cd 5e 48 b9 f0 e2 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 d4 d5 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 88 5c 85 c8 f7 7f 00 00 e8 9b f1 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc e2 cd 5e 48 b8 f0 e2 63 c7 f7 7f 00 00 48 89 46 18 48 b8 00 db d5 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 55 f1 cd 5e 48 8b f8 40 88 77 08 48 b9 d8 96 73 c7 f7 7f 00 00 e8 7f 74 c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 2d f1 cd 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 16 8a e0 5e 48 8b e8 48 8b ce e8 bb c7 1f ff 8b c8 e8 cc c1 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 7e c5 1d ff 48 8b d0 48 8b cb e8 43 0a 20 ff 48 8b cb e8 33 3d c5 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
0031h mov rcx,7ff7c8855c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5c 85 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 f2 cd 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 e4 cd 5e}
004fh mov rcx,7ff7c763e2f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e2 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7d5c940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 c9 d5 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8855c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5c 85 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 f2 cd 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 e3 cd 5e}
008eh mov rcx,7ff7c763e2f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e2 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7d5ec50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ec d5 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8855c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5c 85 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 f2 cd 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 e3 cd 5e}
00cdh mov rcx,7ff7c763e2f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e2 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7d5dc40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 dc d5 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8855c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5c 85 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 f2 cd 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 e3 cd 5e}
010ch mov rcx,7ff7c763e2f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e2 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7d5e320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e3 d5 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8855c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5c 85 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 f1 cd 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 e3 cd 5e}
0148h mov rcx,7ff7c763e2f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e2 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7d5d420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d4 d5 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8855c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5c 85 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f1 cd 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc e2 cd 5e}
0184h mov rax,7ff7c763e2f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e2 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7d5db00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 db d5 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
01b6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 f1 cd 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c77396d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 73 c7 f7 7f 00 00}
01cch call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 74 c8 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01deh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d f1 cd 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
01f5h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 8a e0 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb c7 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc c1 1f ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e c5 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 0a 20 ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 3d c5 5e}
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
; lookup_g[32i](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 5e 85 c8 f7 7f 00 00 e8 60 f0 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 e1 cd 5e 48 b9 30 e3 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 c9 d5 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 98 5e 85 c8 f7 7f 00 00 e8 21 f0 cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 e1 cd 5e 48 b9 30 e3 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 f0 d5 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 98 5e 85 c8 f7 7f 00 00 e8 e2 ef cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 e1 cd 5e 48 b9 30 e3 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 dc d5 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 98 5e 85 c8 f7 7f 00 00 e8 a3 ef cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 e0 cd 5e 48 b9 30 e3 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 e3 d5 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 98 5e 85 c8 f7 7f 00 00 e8 67 ef cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 e0 cd 5e 48 b9 30 e3 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 d4 d5 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 98 5e 85 c8 f7 7f 00 00 e8 2b ef cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c e0 cd 5e 48 b8 30 e3 63 c7 f7 7f 00 00 48 89 46 18 48 b8 20 db d5 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 e5 ee cd 5e 48 8b f8 40 88 77 08 48 b9 08 8f 73 c7 f7 7f 00 00 e8 0f 72 c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 bd ee cd 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 a6 87 e0 5e 48 8b e8 48 8b ce e8 4b c5 1f ff 8b c8 e8 5c bf 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 0e c3 1d ff 48 8b d0 48 8b cb e8 d3 07 20 ff 48 8b cb e8 c3 3a c5 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
0031h mov rcx,7ff7c8855e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5e 85 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 f0 cd 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 e1 cd 5e}
004fh mov rcx,7ff7c763e330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e3 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7d5c960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 c9 d5 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8855e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5e 85 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 f0 cd 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 e1 cd 5e}
008eh mov rcx,7ff7c763e330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e3 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7d5f080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f0 d5 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8855e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5e 85 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ef cd 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 e1 cd 5e}
00cdh mov rcx,7ff7c763e330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e3 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7d5dc60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 dc d5 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8855e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5e 85 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 ef cd 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 e0 cd 5e}
010ch mov rcx,7ff7c763e330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e3 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7d5e340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e3 d5 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8855e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5e 85 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 ef cd 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 e0 cd 5e}
0148h mov rcx,7ff7c763e330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e3 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7d5d440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d4 d5 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8855e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5e 85 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b ef cd 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c e0 cd 5e}
0184h mov rax,7ff7c763e330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 e3 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7d5db20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 db d5 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
01b6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ee cd 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c7738f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 73 c7 f7 7f 00 00}
01cch call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 72 c8 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01deh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd ee cd 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
01f5h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 87 e0 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b c5 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c bf 1f ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e c3 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 07 20 ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 3a c5 5e}
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
; lookup_g[64u](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 60 85 c8 f7 7f 00 00 e8 f0 ed cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 df cd 5e 48 b9 70 e3 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 c9 d5 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 60 85 c8 f7 7f 00 00 e8 b1 ed cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 de cd 5e 48 b9 70 e3 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 f0 d5 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 60 85 c8 f7 7f 00 00 e8 72 ed cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 de cd 5e 48 b9 70 e3 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 dc d5 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 60 85 c8 f7 7f 00 00 e8 33 ed cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 de cd 5e 48 b9 70 e3 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 e3 d5 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 60 85 c8 f7 7f 00 00 e8 f7 ec cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 de cd 5e 48 b9 70 e3 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 d4 d5 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 60 85 c8 f7 7f 00 00 e8 bb ec cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec dd cd 5e 48 b8 70 e3 63 c7 f7 7f 00 00 48 89 46 18 48 b8 40 db d5 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 75 ec cd 5e 48 8b f8 40 88 77 08 48 b9 78 a6 73 c7 f7 7f 00 00 e8 9f 6f c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 4d ec cd 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 36 85 e0 5e 48 8b e8 48 8b ce e8 db c2 1f ff 8b c8 e8 ec bc 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 9e c0 1d ff 48 8b d0 48 8b cb e8 63 05 20 ff 48 8b cb e8 53 38 c5 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
0031h mov rcx,7ff7c88560a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 60 85 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 ed cd 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 df cd 5e}
004fh mov rcx,7ff7c763e370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e3 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7d5c980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 c9 d5 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c88560a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 60 85 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 ed cd 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 de cd 5e}
008eh mov rcx,7ff7c763e370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e3 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7d5f0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f0 d5 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c88560a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 60 85 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 ed cd 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 de cd 5e}
00cdh mov rcx,7ff7c763e370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e3 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7d5dc80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 dc d5 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c88560a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 60 85 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 ed cd 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 de cd 5e}
010ch mov rcx,7ff7c763e370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e3 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7d5e360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e3 d5 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c88560a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 60 85 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 ec cd 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 de cd 5e}
0148h mov rcx,7ff7c763e370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e3 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7d5d460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d4 d5 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c88560a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 60 85 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb ec cd 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec dd cd 5e}
0184h mov rax,7ff7c763e370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e3 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7d5db40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 db d5 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
01b6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 ec cd 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c773a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 73 c7 f7 7f 00 00}
01cch call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 6f c8 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01deh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d ec cd 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
01f5h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 85 e0 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db c2 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec bc 1f ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e c0 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 05 20 ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 38 c5 5e}
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
; lookup_g[64i](ComparisonKind~8u)[601] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b8 62 85 c8 f7 7f 00 00 e8 80 eb cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 dc cd 5e 48 b9 b0 e3 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 c9 d5 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b8 62 85 c8 f7 7f 00 00 e8 41 eb cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 dc cd 5e 48 b9 b0 e3 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 f0 d5 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b8 62 85 c8 f7 7f 00 00 e8 02 eb cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 dc cd 5e 48 b9 b0 e3 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 dc d5 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b8 62 85 c8 f7 7f 00 00 e8 c3 ea cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f4 db cd 5e 48 b9 b0 e3 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 e3 d5 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b8 62 85 c8 f7 7f 00 00 e8 87 ea cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 db cd 5e 48 b9 b0 e3 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 d4 d5 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b8 62 85 c8 f7 7f 00 00 e8 4b ea cd 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c db cd 5e 48 b8 b0 e3 63 c7 f7 7f 00 00 48 89 46 18 48 b8 60 db d5 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c0 76 77 c8 f7 7f 00 00 e8 05 ea cd 5e 48 8b f8 40 88 77 08 48 b9 a8 9e 73 c7 f7 7f 00 00 e8 2f 6d c8 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 dd e9 cd 5e 48 8b d8 b9 4c 04 00 00 48 ba b0 c8 b8 c7 f7 7f 00 00 e8 c6 82 e0 5e 48 8b e8 48 8b ce e8 6b c0 1f ff 8b c8 e8 7c ba 1f ff 4c 8b c0 48 8b cd 48 8b d7 e8 2e be 1d ff 48 8b d0 48 8b cb e8 f3 02 20 ff 48 8b cb e8 e3 35 c5 5e cc 00 00 27 00 00 00 a5 00 00 00 e4 00 00 00 20 01 00 00 5c 01 00 00 66 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
0031h mov rcx,7ff7c88562b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 62 85 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 eb cd 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 dc cd 5e}
004fh mov rcx,7ff7c763e3b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e3 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c7d5c9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 c9 d5 c7 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c88562b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 62 85 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 eb cd 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 dc cd 5e}
008eh mov rcx,7ff7c763e3b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e3 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c7d5f0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f0 d5 c7 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c88562b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 62 85 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 eb cd 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 dc cd 5e}
00cdh mov rcx,7ff7c763e3b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e3 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c7d5dca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 dc d5 c7 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c88562b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 62 85 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 ea cd 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 db cd 5e}
010ch mov rcx,7ff7c763e3b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e3 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c7d5e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 d5 c7 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c88562b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 62 85 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 ea cd 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 db cd 5e}
0148h mov rcx,7ff7c763e3b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e3 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c7d5d480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d4 d5 c7 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c88562b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 62 85 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b ea cd 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c db cd 5e}
0184h mov rax,7ff7c763e3b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 e3 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c7d5db60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 db d5 c7 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
01ach mov rcx,7ff7c87776c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 77 c8 f7 7f 00 00}
01b6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 ea cd 5e}
01bbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01beh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01c2h mov rcx,7ff7c7739ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 73 c7 f7 7f 00 00}
01cch call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 6d c8 5e}
01d1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01d4h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01deh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd e9 cd 5e}
01e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
01e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01ebh mov rdx,7ff7c7b8c8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba b0 c8 b8 c7 f7 7f 00 00}
01f5h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 82 e0 5e}
01fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0200h call 7ff7c7784360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b c0 1f ff}
0205h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0207h call 7ff7c7783d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c ba 1f ff}
020ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
020fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0212h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0215h call 7ff7c7764138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e be 1d ff}
021ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
021dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0220h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 02 20 ff}
0225h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0228h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 35 c5 5e}
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
