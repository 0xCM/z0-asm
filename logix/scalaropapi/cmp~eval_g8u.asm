; long eval<long>(ComparisonKind:byte kind, long a, long b)
; cmp~eval_g8u[7ff7c6b6d410h, 7ff7c6b6d57ah][362] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 d0 00 00 00 8b c0 48 8d 0d 4e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 49 3b d0 0f 94 c2 0f b6 d2 85 d2 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f e9 8f 00 00 00 49 3b d0 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f eb 72 49 3b d0 0f 9c c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f eb 55 49 3b d0 0f 9e c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f eb 38 49 3b d0 0f 9f c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f eb 1b 49 3b d0 0f 9d c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f 48 83 c4 28 5b 5d 5e 5f c3 48 b9 48 d5 88 c6 f7 7f 00 00 e8 a8 97 33 5f 48 8b f8 40 88 77 08 48 b9 a8 9e 34 c6 f7 7f 00 00 e8 d2 1a 2e 5f 48 8b c8 e8 5a 12 eb ff 8b f0 48 b9 50 58 58 c6 f7 7f 00 00 e8 79 97 33 5f 48 8b d8 b9 68 04 00 00 48 ba 00 d2 5a c6 f7 7f 00 00 e8 62 30 46 5f 48 8b e8 8b ce e8 38 ea 82 ff 4c 8b c0 48 8b cd 48 8b d7 e8 d2 6b 80 ff 48 8b d0 48 8b cb e8 9f 18 82 ff 48 8b cb e8 87 e3 2a 5f cc}
; Capture completion code, ZEDx6
; 2020-01-24 02:54:45:728
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
001bh lea rcx,[7ff7c6b6d580h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 4e 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[7ff7c6b6d41ah]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
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
00e9h mov rcx,7ff7c688d548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d5 88 c6 f7 7f 00 00}
00f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 97 33 5f}
00f8h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00fbh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00ffh mov rcx,7ff7c6349ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 34 c6 f7 7f 00 00}
0109h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 1a 2e 5f}
010eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0111h call 7ff7c6a1e780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 12 eb ff}
0116h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0118h mov rcx,7ff7c6585850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 58 58 c6 f7 7f 00 00}
0122h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 97 33 5f}
0127h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
012ah mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
012fh mov rdx,7ff7c65ad200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 d2 5a c6 f7 7f 00 00}
0139h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 30 46 5f}
013eh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0141h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0143h call 7ff7c639bf90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 ea 82 ff}
0148h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
014bh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
014eh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0151h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 6b 80 ff}
0156h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0159h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
015ch call 7ff7c638ee10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 18 82 ff}
0161h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0164h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 e3 2a 5f}
0169h int 3                                   ; INT3 || CC || encoded[1]{cc}
