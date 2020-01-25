; Shifter<long> lookup<long>(ShiftOpKind:byte kind)
; shift~lookup_g8u[7ff7c6b78ea0h, 7ff7c6b7907eh][478] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 03 77 18 8b c8 48 8d 05 b2 01 00 00 8b 04 88 48 8d 15 e2 ff ff ff 48 03 c2 ff e0 40 80 fe 08 0f 85 18 01 00 00 48 b9 90 11 c7 c6 f7 7f 00 00 e8 ca dd 32 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb ce 32 5f 48 b8 70 dd 24 c6 f7 7f 00 00 48 89 46 18 48 b8 a8 7e b7 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 90 11 c7 c6 f7 7f 00 00 e8 84 dd 32 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 ce 32 5f 48 b8 70 dd 24 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 7e b7 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 90 11 c7 c6 f7 7f 00 00 e8 3e dd 32 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f ce 32 5f 48 b8 70 dd 24 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 7e b7 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 90 11 c7 c6 f7 7f 00 00 e8 f8 dc 32 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 ce 32 5f 48 b8 70 dd 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 7e b7 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 18 59 88 c6 f7 7f 00 00 e8 b2 dc 32 5f 48 8b f8 40 88 77 08 48 b9 a8 9e 34 c6 f7 7f 00 00 e8 dc 5f 2d 5f 48 8b c8 e8 64 57 ea ff 8b f0 48 b9 50 58 58 c6 f7 7f 00 00 e8 83 dc 32 5f 48 8b d8 b9 68 04 00 00 48 ba 00 d2 5a c6 f7 7f 00 00 e8 6c 75 45 5f 48 8b e8 8b ce e8 42 2f 82 ff 4c 8b c0 48 8b cd 48 8b d7 e8 dc b0 7f ff 48 8b d0 48 8b cb e8 a9 5d 81 ff 48 8b cb e8 91 28 2a 5f cc 73 00 00 00 b9 00 00 00 45 01 00 00 ff 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-24 02:54:45:880
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0013h ja short 002dh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0015h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0017h lea rax,[7ff7c6b79070h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 b2 01 00 00}
001eh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0021h lea rdx,[7ff7c6b78eaah]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e2 ff ff ff}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002dh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0031h jne near ptr 014fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 18 01 00 00}
0037h mov rcx,7ff7c6c71190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 11 c7 c6 f7 7f 00 00}
0041h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca dd 32 5f}
0046h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0049h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
004dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0050h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb ce 32 5f}
0055h mov rax,7ff7c624dd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 dd 24 c6 f7 7f 00 00}
005fh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0063h mov rax,7ff7c6b77ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 7e b7 c6 f7 7f 00 00}
006dh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0071h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0074h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0078h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0079h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ch ret                                     ; RET || C3 || encoded[1]{c3}
007dh mov rcx,7ff7c6c71190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 11 c7 c6 f7 7f 00 00}
0087h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 dd 32 5f}
008ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
008fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0093h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0096h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 ce 32 5f}
009bh mov rax,7ff7c624dd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 dd 24 c6 f7 7f 00 00}
00a5h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
00a9h mov rax,7ff7c6b77ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 7e b7 c6 f7 7f 00 00}
00b3h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
00b7h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00bah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00beh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bfh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c2h ret                                     ; RET || C3 || encoded[1]{c3}
00c3h mov rcx,7ff7c6c71190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 11 c7 c6 f7 7f 00 00}
00cdh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e dd 32 5f}
00d2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00d5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00d9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00dch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f ce 32 5f}
00e1h mov rax,7ff7c624dd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 dd 24 c6 f7 7f 00 00}
00ebh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
00efh mov rax,7ff7c6b77ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 7e b7 c6 f7 7f 00 00}
00f9h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
00fdh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0100h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0104h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0105h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0106h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0107h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0108h ret                                     ; RET || C3 || encoded[1]{c3}
0109h mov rcx,7ff7c6c71190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 11 c7 c6 f7 7f 00 00}
0113h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 dc 32 5f}
0118h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
011bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
011fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0122h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 ce 32 5f}
0127h mov rax,7ff7c624dd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 dd 24 c6 f7 7f 00 00}
0131h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0135h mov rax,7ff7c6b77eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 7e b7 c6 f7 7f 00 00}
013fh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0143h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0146h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
014ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
014bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
014ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
014dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
014eh ret                                     ; RET || C3 || encoded[1]{c3}
014fh mov rcx,7ff7c6885918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 59 88 c6 f7 7f 00 00}
0159h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 dc 32 5f}
015eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0161h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0165h mov rcx,7ff7c6349ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 34 c6 f7 7f 00 00}
016fh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 5f 2d 5f}
0174h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0177h call 7ff7c6a1e780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 57 ea ff}
017ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
017eh mov rcx,7ff7c6585850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 58 58 c6 f7 7f 00 00}
0188h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 dc 32 5f}
018dh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0190h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0195h mov rdx,7ff7c65ad200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 d2 5a c6 f7 7f 00 00}
019fh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 75 45 5f}
01a4h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
01a7h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
01a9h call 7ff7c639bf90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 2f 82 ff}
01aeh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
01b1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
01b4h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
01b7h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc b0 7f ff}
01bch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01bfh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
01c2h call 7ff7c638ee10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 5d 81 ff}
01c7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
01cah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 28 2a 5f}
01cfh int 3                                   ; INT3 || CC || encoded[1]{cc}
01d0h jae short 01d2h                         ; JAE rel8 || 73 cb || encoded[2]{73 00}
01d2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01d4h mov ecx,45000000h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 00 00 00 45}
01d9h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
01dbh add bh,bh                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 ff}
01ddh (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
