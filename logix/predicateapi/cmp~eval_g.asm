------------------------------------------------------------------------------------------------------------------------
; bit eval<byte>(ComparisonKind:byte kind, byte a, byte b)
; cmp~eval_g8u[167] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 8e 00 00 00 8b c0 48 8d 0d 06 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 0f b6 d2 45 0f b6 c0 0f b6 c2 41 3b c0 0f 94 c0 0f b6 c0 eb 58 0f b6 c2 41 0f b6 d0 44 0f b6 c0 44 3b c2 0f 95 c0 0f b6 c0 eb 42 0f b6 c2 41 0f b6 d0 3b c2 0f 92 c0 0f b6 c0 eb 31 0f b6 c2 41 0f b6 d0 3b c2 0f 96 c0 0f b6 c0 eb 20 0f b6 c2 41 0f b6 d0 3b c2 0f 97 c0 0f b6 c0 eb 0f 0f b6 c2 41 0f b6 c8 3b c1 0f 93 c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
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
001bh lea rcx,[rip+106h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 06 01 00 00}
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
------------------------------------------------------------------------------------------------------------------------
; bit eval<sbyte>(ComparisonKind:byte kind, sbyte a, sbyte b)
; cmp~eval_g8u[174] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 95 00 00 00 8b c0 48 8d 0d 0e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 48 0f be d2 4d 0f be c0 48 0f be c2 41 3b c0 0f 94 c0 0f b6 c0 eb 5d 48 0f be c2 49 0f be d0 4c 0f be c0 44 3b c2 0f 95 c0 0f b6 c0 eb 46 48 0f be c2 49 0f be d0 3b c2 0f 9c c0 0f b6 c0 eb 34 48 0f be c2 49 0f be d0 3b c2 0f 9e c0 0f b6 c0 eb 22 48 0f be c2 49 0f be d0 3b c2 0f 9f c0 0f b6 c0 eb 10 48 0f be c2 49 0f be c8 3b c1 0f 9d c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
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
------------------------------------------------------------------------------------------------------------------------
; bit eval<ushort>(ComparisonKind:byte kind, ushort a, ushort b)
; cmp~eval_g8u[167] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 8e 00 00 00 8b c0 48 8d 0d 06 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 0f b7 d2 45 0f b7 c0 0f b7 c2 41 3b c0 0f 94 c0 0f b6 c0 eb 58 0f b7 c2 41 0f b7 d0 44 0f b7 c0 44 3b c2 0f 95 c0 0f b6 c0 eb 42 0f b7 c2 41 0f b7 d0 3b c2 0f 92 c0 0f b6 c0 eb 31 0f b7 c2 41 0f b7 d0 3b c2 0f 96 c0 0f b6 c0 eb 20 0f b7 c2 41 0f b7 d0 3b c2 0f 97 c0 0f b6 c0 eb 0f 0f b7 c2 41 0f b7 c8 3b c1 0f 93 c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
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
001bh lea rcx,[rip+106h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 06 01 00 00}
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
------------------------------------------------------------------------------------------------------------------------
; bit eval<short>(ComparisonKind:byte kind, short a, short b)
; cmp~eval_g8u[174] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 95 00 00 00 8b c0 48 8d 0d 0e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 48 0f bf d2 4d 0f bf c0 48 0f bf c2 41 3b c0 0f 94 c0 0f b6 c0 eb 5d 48 0f bf c2 49 0f bf d0 4c 0f bf c0 44 3b c2 0f 95 c0 0f b6 c0 eb 46 48 0f bf c2 49 0f bf d0 3b c2 0f 9c c0 0f b6 c0 eb 34 48 0f bf c2 49 0f bf d0 3b c2 0f 9e c0 0f b6 c0 eb 22 48 0f bf c2 49 0f bf d0 3b c2 0f 9f c0 0f b6 c0 eb 10 48 0f bf c2 49 0f bf c8 3b c1 0f 9d c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
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
------------------------------------------------------------------------------------------------------------------------
; bit eval<uint>(ComparisonKind:byte kind, uint a, uint b)
; cmp~eval_g8u[118] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 61 8b c0 48 8d 0d da 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 41 3b d0 0f 94 c0 0f b6 c0 eb 35 41 3b d0 0f 95 c0 0f b6 c0 eb 2a 41 3b d0 0f 92 c0 0f b6 c0 eb 1f 41 3b d0 0f 96 c0 0f b6 c0 eb 14 41 3b d0 0f 97 c0 0f b6 c0 eb 09 41 3b d0 0f 93 c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
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
------------------------------------------------------------------------------------------------------------------------
; bit eval<int>(ComparisonKind:byte kind, int a, int b)
; cmp~eval_g8u[118] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 61 8b c0 48 8d 0d da 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 41 3b d0 0f 94 c0 0f b6 c0 eb 35 41 3b d0 0f 95 c0 0f b6 c0 eb 2a 41 3b d0 0f 9c c0 0f b6 c0 eb 1f 41 3b d0 0f 9e c0 0f b6 c0 eb 14 41 3b d0 0f 9f c0 0f b6 c0 eb 09 41 3b d0 0f 9d c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
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
------------------------------------------------------------------------------------------------------------------------
; bit eval<ulong>(ComparisonKind:byte kind, ulong a, ulong b)
; cmp~eval_g8u[118] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 61 8b c0 48 8d 0d da 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 49 3b d0 0f 94 c0 0f b6 c0 eb 35 49 3b d0 0f 95 c0 0f b6 c0 eb 2a 49 3b d0 0f 92 c0 0f b6 c0 eb 1f 49 3b d0 0f 96 c0 0f b6 c0 eb 14 49 3b d0 0f 97 c0 0f b6 c0 eb 09 49 3b d0 0f 93 c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
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
------------------------------------------------------------------------------------------------------------------------
; bit eval<long>(ComparisonKind:byte kind, long a, long b)
; cmp~eval_g8u[118] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 77 61 8b c0 48 8d 0d da 00 00 00 8b 0c 81 4c 8d 0d e2 ff ff ff 49 03 c9 ff e1 49 3b d0 0f 94 c0 0f b6 c0 eb 35 49 3b d0 0f 95 c0 0f b6 c0 eb 2a 49 3b d0 0f 9c c0 0f b6 c0 eb 1f 49 3b d0 0f 9e c0 0f b6 c0 eb 14 49 3b d0 0f 9f c0 0f b6 c0 eb 09 49 3b d0 0f 9d c0 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
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
