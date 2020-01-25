; bit eval<long>(ComparisonKind:byte kind, long a, long b)
; cmp~eval_g8u[7ff7c6d0dec0h, 7ff7c6d0dfceh][270] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 61 8b c0 48 8d 0d da 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 49 3b d0 0f 94 c0 0f b6 c0 eb 35 49 3b d0 0f 95 c0 0f b6 c0 eb 2a 49 3b d0 0f 9c c0 0f b6 c0 eb 1f 49 3b d0 0f 9e c0 0f b6 c0 eb 14 49 3b d0 0f 9f c0 0f b6 c0 eb 09 49 3b d0 0f 9d c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 98 65 93 c6 f7 7f 00 00 e8 6b 8d 19 5f 48 8b f8 40 88 77 08 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 95 10 14 5f 48 8b c8 e8 fd e5 d0 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 3c 8d 19 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 25 26 2c 5f 48 8b e8 8b ce e8 c3 e1 d0 ff 4c 8b c0 48 8b cd 48 8b d7 e8 95 61 68 ff 48 8b d0 48 8b cb e8 b2 f8 69 ff 48 8b cb e8 4a d9 10 5f cc 00 23 00 00 00 39 00 00 00 44 00 00 00 4f 00 00 00 5a 00 00 00 2e 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:48:619
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
0017h lea rcx,[7ff7c6d0dfb8h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d da 00 00 00}
001eh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0021h lea r9,[7ff7c6d0decah]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e2 ff ff ff}
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
0076h mov rcx,7ff7c6936598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 65 93 c6 f7 7f 00 00}
0080h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 8d 19 5f}
0085h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0088h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
008ch mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0096h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 10 14 5f}
009bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
009eh call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd e5 d0 ff}
00a3h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00a5h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
00afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 8d 19 5f}
00b4h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00b7h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00bch mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
00c6h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 26 2c 5f}
00cbh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00ceh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00d0h call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 e1 d0 ff}
00d5h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00d8h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00dbh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00deh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 61 68 ff}
00e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00e6h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e9h call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 f8 69 ff}
00eeh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a d9 10 5f}
00f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
00f7h add [rbx],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 23}
00f9h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00fbh add [rcx],bh                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 39}
00fdh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
00ffh add [rax+rax],al                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 44 00 00}
0103h add [rdi],cl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 4f 00}
0106h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0108h pop rdx                                 ; POP r64 || 58+ro || encoded[1]{5a}
0109h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
010bh add [rsi],ch                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 2e}
010dh (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
