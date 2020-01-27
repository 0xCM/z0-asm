------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, BinaryBitLogicKind:byte kind)
; bbl~lookup_gn256_0o[347] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a0 8e 78 c7 f7 7f 00 00 e8 f2 cc b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 be b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 c2 33 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 8e 78 c7 f7 7f 00 00 e8 b3 cc b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 bd b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 c4 33 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a0 8e 78 c7 f7 7f 00 00 e8 74 cc b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 bd b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 c4 33 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a0 8e 78 c7 f7 7f 00 00 e8 35 cc b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 bd b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 c2 33 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a0 8e 78 c7 f7 7f 00 00 e8 f6 cb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 bd b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c7788ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8e 78 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 cc b5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 be b5 5e}
004dh mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c733c250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 c2 33 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c7788ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8e 78 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 cc b5 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 bd b5 5e}
008ch mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c733c430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c4 33 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c7788ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8e 78 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 cc b5 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 bd b5 5e}
00cbh mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c733c410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 c4 33 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c7788ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8e 78 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 cc b5 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 bd b5 5e}
010ah mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c733c270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c2 33 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c7788ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8e 78 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 cb b5 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 bd b5 5e}
0149h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b9 50 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, BinaryBitLogicKind:byte kind)
; bbl~lookup_gn256_0o[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 30 92 78 c7 f7 7f 00 00 e8 e2 c7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 b9 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 c5 33 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 30 92 78 c7 f7 7f 00 00 e8 a3 c7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 b8 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 c6 33 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 30 92 78 c7 f7 7f 00 00 e8 64 c7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 b8 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 c6 33 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 30 92 78 c7 f7 7f 00 00 e8 25 c7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 b8 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 c5 33 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 30 92 78 c7 f7 7f 00 00 e8 e6 c6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 b8 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 c5 33 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 30 92 78 c7 f7 7f 00 00 e8 a7 c6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 b7 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 c5 33 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 30 92 78 c7 f7 7f 00 00 e8 68 c6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 b7 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 c5 33 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 30 92 78 c7 f7 7f 00 00 e8 29 c6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a b7 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 c5 33 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 30 92 78 c7 f7 7f 00 00 e8 ea c5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b b7 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 c5 33 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 30 92 78 c7 f7 7f 00 00 e8 ab c5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc b6 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 c5 33 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 30 92 78 c7 f7 7f 00 00 e8 6c c5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d b6 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 c5 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 30 92 78 c7 f7 7f 00 00 e8 2d c5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e b6 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 c5 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 30 92 78 c7 f7 7f 00 00 e8 ee c4 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f b6 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 c5 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 30 92 78 c7 f7 7f 00 00 e8 af c4 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 b5 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 c5 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 30 92 78 c7 f7 7f 00 00 e8 73 c4 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 b5 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 c5 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 30 92 78 c7 f7 7f 00 00 e8 37 c4 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 b5 b5 5e 48 b8 60 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 00 c6 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 c7 b5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 b9 b5 5e}
004dh mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c733c530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c5 33 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 c7 b5 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 b8 b5 5e}
008ch mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c733c620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c6 33 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 c7 b5 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 b8 b5 5e}
00cbh mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c733c610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 c6 33 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c7 b5 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 b8 b5 5e}
010ah mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c733c540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 c5 33 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 c6 b5 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 b8 b5 5e}
0149h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c733c5b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c5 33 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 c6 b5 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 b7 b5 5e}
0188h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c733c5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 c5 33 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 c6 b5 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 b7 b5 5e}
01c7h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c733c5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 c5 33 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 c6 b5 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a b7 b5 5e}
0206h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c733c590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 c5 33 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea c5 b5 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b b7 b5 5e}
0245h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c733c5f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 c5 33 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab c5 b5 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc b6 b5 5e}
0284h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c733c5d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c5 33 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c c5 b5 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d b6 b5 5e}
02c3h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c733c560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 c5 33 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d c5 b5 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e b6 b5 5e}
0302h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c733c580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 c5 33 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee c4 b5 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f b6 b5 5e}
0341h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c733c570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c5 33 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af c4 b5 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 b5 b5 5e}
0380h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c733c5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 c5 33 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 c4 b5 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 b5 b5 5e}
03bch mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c733c550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 c5 33 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c7789230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 78 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 c4 b5 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 b5 b5 5e}
03f8h mov rax,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e9 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c733c600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 c6 33 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ushort>> lookup<ushort>(N256 w, BinaryBitLogicKind:byte kind)
; bbl~lookup_gn256_0o[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 40 94 78 c7 f7 7f 00 00 e8 d2 c2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 b4 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 c6 33 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 40 94 78 c7 f7 7f 00 00 e8 93 c2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 b3 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 cd 33 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 40 94 78 c7 f7 7f 00 00 e8 54 c2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 b3 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 cd 33 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 40 94 78 c7 f7 7f 00 00 e8 15 c2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 b3 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 cc 33 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 40 94 78 c7 f7 7f 00 00 e8 d6 c1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 b3 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 cc 33 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 40 94 78 c7 f7 7f 00 00 e8 97 c1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 b2 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 cc 33 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 40 94 78 c7 f7 7f 00 00 e8 58 c1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 b2 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 cc 33 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 40 94 78 c7 f7 7f 00 00 e8 19 c1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a b2 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 cc 33 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 40 94 78 c7 f7 7f 00 00 e8 da c0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b b2 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 cc 33 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 40 94 78 c7 f7 7f 00 00 e8 9b c0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc b1 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 cc 33 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 40 94 78 c7 f7 7f 00 00 e8 5c c0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d b1 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 cc 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 40 94 78 c7 f7 7f 00 00 e8 1d c0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e b1 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 cc 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 40 94 78 c7 f7 7f 00 00 e8 de bf b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f b1 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 cc 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 40 94 78 c7 f7 7f 00 00 e8 9f bf b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 b0 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 cc 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 40 94 78 c7 f7 7f 00 00 e8 63 bf b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 b0 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 cc 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 40 94 78 c7 f7 7f 00 00 e8 27 bf b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 b0 b5 5e 48 b8 60 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 cc 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 c2 b5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 b4 b5 5e}
004dh mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c733c640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 c6 33 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 c2 b5 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 b3 b5 5e}
008ch mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c733cd18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cd 33 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 c2 b5 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b3 b5 5e}
00cbh mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c733cd08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 cd 33 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 c2 b5 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 b3 b5 5e}
010ah mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c733cc38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cc 33 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 c1 b5 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 b3 b5 5e}
0149h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c733cca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cc 33 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 c1 b5 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 b2 b5 5e}
0188h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c733cc98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 cc 33 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 c1 b5 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 b2 b5 5e}
01c7h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c733ccb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 cc 33 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 c1 b5 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a b2 b5 5e}
0206h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c733cc88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 cc 33 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da c0 b5 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b b2 b5 5e}
0245h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c733cce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 cc 33 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b c0 b5 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc b1 b5 5e}
0284h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c733ccc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 cc 33 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c0 b5 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d b1 b5 5e}
02c3h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c733cc58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 cc 33 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d c0 b5 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e b1 b5 5e}
0302h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c733cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc 33 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de bf b5 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f b1 b5 5e}
0341h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c733cc68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 cc 33 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f bf b5 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 b0 b5 5e}
0380h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c733ccd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 cc 33 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 bf b5 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 b0 b5 5e}
03bch mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c733cc48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 cc 33 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c7789440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 94 78 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 bf b5 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 b0 b5 5e}
03f8h mov rax,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e9 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c733ccf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 cc 33 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<short>> lookup<short>(N256 w, BinaryBitLogicKind:byte kind)
; bbl~lookup_gn256_0o[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 96 78 c7 f7 7f 00 00 e8 c2 bd b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 ae b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 cd 33 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 50 96 78 c7 f7 7f 00 00 e8 83 bd b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 ae b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ce 33 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 50 96 78 c7 f7 7f 00 00 e8 44 bd b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 ae b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ce 33 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 50 96 78 c7 f7 7f 00 00 e8 05 bd b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 ae b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 cd 33 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 50 96 78 c7 f7 7f 00 00 e8 c6 bc b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 ad b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 cd 33 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 50 96 78 c7 f7 7f 00 00 e8 87 bc b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 ad b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 cd 33 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 50 96 78 c7 f7 7f 00 00 e8 48 bc b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 ad b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 cd 33 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 50 96 78 c7 f7 7f 00 00 e8 09 bc b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a ad b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 cd 33 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 50 96 78 c7 f7 7f 00 00 e8 ca bb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb ac b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 cd 33 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 50 96 78 c7 f7 7f 00 00 e8 8b bb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc ac b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 cd 33 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 50 96 78 c7 f7 7f 00 00 e8 4c bb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d ac b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 cd 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 50 96 78 c7 f7 7f 00 00 e8 0d bb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e ac b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 cd 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 50 96 78 c7 f7 7f 00 00 e8 ce ba b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff ab b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 cd 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 50 96 78 c7 f7 7f 00 00 e8 8f ba b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 ab b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 cd 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 50 96 78 c7 f7 7f 00 00 e8 53 ba b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 84 ab b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 cd 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 50 96 78 c7 f7 7f 00 00 e8 17 ba b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 ab b5 5e 48 b8 60 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 08 ce 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 bd b5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 ae b5 5e}
004dh mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c733cd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cd 33 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 bd b5 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 ae b5 5e}
008ch mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c733ce28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ce 33 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 bd b5 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 ae b5 5e}
00cbh mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c733ce18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ce 33 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 bd b5 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 ae b5 5e}
010ah mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c733cd48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 cd 33 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 bc b5 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 ad b5 5e}
0149h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c733cdb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 cd 33 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 bc b5 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 ad b5 5e}
0188h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c733cda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cd 33 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 bc b5 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 ad b5 5e}
01c7h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c733cdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 cd 33 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 bc b5 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a ad b5 5e}
0206h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c733cd98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 cd 33 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca bb b5 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb ac b5 5e}
0245h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c733cdf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 cd 33 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b bb b5 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc ac b5 5e}
0284h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c733cdd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 cd 33 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c bb b5 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d ac b5 5e}
02c3h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c733cd68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 cd 33 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d bb b5 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e ac b5 5e}
0302h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c733cd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 cd 33 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce ba b5 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff ab b5 5e}
0341h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c733cd78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cd 33 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f ba b5 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 ab b5 5e}
0380h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c733cde8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 cd 33 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 ba b5 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 ab b5 5e}
03bch mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c733cd58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 cd 33 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c7789650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 96 78 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 ba b5 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 ab b5 5e}
03f8h mov rax,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e9 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c733ce08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 ce 33 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<uint>> lookup<uint>(N256 w, BinaryBitLogicKind:byte kind)
; bbl~lookup_gn256_0o[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 98 78 c7 f7 7f 00 00 e8 b2 b8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 a9 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ce 33 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 60 98 78 c7 f7 7f 00 00 e8 73 b8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 a9 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 cf 33 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 60 98 78 c7 f7 7f 00 00 e8 34 b8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 a9 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 cf 33 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 60 98 78 c7 f7 7f 00 00 e8 f5 b7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 a9 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ce 33 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 60 98 78 c7 f7 7f 00 00 e8 b6 b7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 a8 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ce 33 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 60 98 78 c7 f7 7f 00 00 e8 77 b7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 a8 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 ce 33 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 60 98 78 c7 f7 7f 00 00 e8 38 b7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 a8 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ce 33 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 60 98 78 c7 f7 7f 00 00 e8 f9 b6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a a8 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ce 33 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 60 98 78 c7 f7 7f 00 00 e8 ba b6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb a7 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 cf 33 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 60 98 78 c7 f7 7f 00 00 e8 7b b6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac a7 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ce 33 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 60 98 78 c7 f7 7f 00 00 e8 3c b6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d a7 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ce 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 98 78 c7 f7 7f 00 00 e8 fd b5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e a7 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 ce 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 98 78 c7 f7 7f 00 00 e8 be b5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef a6 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 ce 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 98 78 c7 f7 7f 00 00 e8 7f b5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 a6 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ce 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 98 78 c7 f7 7f 00 00 e8 43 b5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 a6 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ce 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 98 78 c7 f7 7f 00 00 e8 07 b5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 a6 b5 5e 48 b8 60 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 18 cf 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 b8 b5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 a9 b5 5e}
004dh mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c733ce48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ce 33 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 b8 b5 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 a9 b5 5e}
008ch mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c733cf38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cf 33 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 b8 b5 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 a9 b5 5e}
00cbh mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c733cf28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cf 33 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 b7 b5 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 a9 b5 5e}
010ah mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c733ce58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ce 33 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 b7 b5 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 a8 b5 5e}
0149h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c733cec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ce 33 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b7 b5 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 a8 b5 5e}
0188h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c733ceb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ce 33 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 b7 b5 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 a8 b5 5e}
01c7h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c733ced8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ce 33 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 b6 b5 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a a8 b5 5e}
0206h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c733cea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ce 33 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba b6 b5 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb a7 b5 5e}
0245h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c733cf08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 cf 33 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b b6 b5 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac a7 b5 5e}
0284h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c733cee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 33 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c b6 b5 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d a7 b5 5e}
02c3h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c733ce78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ce 33 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd b5 b5 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e a7 b5 5e}
0302h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c733ce98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ce 33 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be b5 b5 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef a6 b5 5e}
0341h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c733ce88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ce 33 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f b5 b5 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 a6 b5 5e}
0380h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c733cef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ce 33 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 b5 b5 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 a6 b5 5e}
03bch mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c733ce68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ce 33 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c7789860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 98 78 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 b5 b5 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 a6 b5 5e}
03f8h mov rax,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e9 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c733cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 cf 33 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<int>> lookup<int>(N256 w, BinaryBitLogicKind:byte kind)
; bbl~lookup_gn256_0o[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 9a 78 c7 f7 7f 00 00 e8 a2 b3 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 a4 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 cf 33 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 70 9a 78 c7 f7 7f 00 00 e8 63 b3 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 a4 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 d9 33 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 70 9a 78 c7 f7 7f 00 00 e8 24 b3 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 a4 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 d9 33 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 70 9a 78 c7 f7 7f 00 00 e8 e5 b2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 a4 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 cf 33 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 70 9a 78 c7 f7 7f 00 00 e8 a6 b2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 a3 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 cf 33 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 70 9a 78 c7 f7 7f 00 00 e8 67 b2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 a3 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 cf 33 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 70 9a 78 c7 f7 7f 00 00 e8 28 b2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 a3 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 cf 33 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 70 9a 78 c7 f7 7f 00 00 e8 e9 b1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a a3 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 cf 33 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 70 9a 78 c7 f7 7f 00 00 e8 aa b1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db a2 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 d0 33 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 70 9a 78 c7 f7 7f 00 00 e8 6b b1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c a2 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 cf 33 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 70 9a 78 c7 f7 7f 00 00 e8 2c b1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d a2 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 cf 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 9a 78 c7 f7 7f 00 00 e8 ed b0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e a2 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 cf 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 9a 78 c7 f7 7f 00 00 e8 ae b0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 df a1 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 cf 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 9a 78 c7 f7 7f 00 00 e8 6f b0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 a1 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 d0 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 9a 78 c7 f7 7f 00 00 e8 33 b0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 a1 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 cf 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 9a 78 c7 f7 7f 00 00 e8 f7 af b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 a1 b5 5e 48 b8 60 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 28 d0 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 b3 b5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 a4 b5 5e}
004dh mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c733cf58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 cf 33 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 b3 b5 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 a4 b5 5e}
008ch mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c733d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 33 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 b3 b5 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 a4 b5 5e}
00cbh mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c733d908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 d9 33 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 b2 b5 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 a4 b5 5e}
010ah mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c733cf68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 cf 33 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 b2 b5 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 a3 b5 5e}
0149h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c733cfd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 cf 33 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 b2 b5 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 a3 b5 5e}
0188h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c733cfc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 cf 33 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 b2 b5 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 a3 b5 5e}
01c7h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c733cfe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 cf 33 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 b1 b5 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a a3 b5 5e}
0206h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c733cfb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 cf 33 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa b1 b5 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db a2 b5 5e}
0245h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c733d018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d0 33 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b b1 b5 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c a2 b5 5e}
0284h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c733cff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 cf 33 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c b1 b5 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d a2 b5 5e}
02c3h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c733cf88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 cf 33 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed b0 b5 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e a2 b5 5e}
0302h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c733cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf 33 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae b0 b5 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df a1 b5 5e}
0341h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c733cf98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 cf 33 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f b0 b5 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 a1 b5 5e}
0380h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c733d008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 d0 33 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 b0 b5 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 a1 b5 5e}
03bch mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c733cf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 33 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c7789a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 78 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 af b5 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 a1 b5 5e}
03f8h mov rax,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e9 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c733d028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 d0 33 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<ulong>> lookup<ulong>(N256 w, BinaryBitLogicKind:byte kind)
; bbl~lookup_gn256_0o[74] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 9c 78 c7 f7 7f 00 00 e8 92 ae b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c7789c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9c 78 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 ae b5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, BinaryBitLogicKind:byte kind)
; bbl~lookup_gn256_0o[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 9e 78 c7 f7 7f 00 00 e8 82 a9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 9a b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 da 33 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 90 9e 78 c7 f7 7f 00 00 e8 43 a9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 9a b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 db 33 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 90 9e 78 c7 f7 7f 00 00 e8 04 a9 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 9a b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 db 33 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 90 9e 78 c7 f7 7f 00 00 e8 c5 a8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 99 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 da 33 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 90 9e 78 c7 f7 7f 00 00 e8 86 a8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 99 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 da 33 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 90 9e 78 c7 f7 7f 00 00 e8 47 a8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 99 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 da 33 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 90 9e 78 c7 f7 7f 00 00 e8 08 a8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 99 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 da 33 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 90 9e 78 c7 f7 7f 00 00 e8 c9 a7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa 98 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 da 33 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 90 9e 78 c7 f7 7f 00 00 e8 8a a7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 98 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 db 33 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 90 9e 78 c7 f7 7f 00 00 e8 4b a7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c 98 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 da 33 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 90 9e 78 c7 f7 7f 00 00 e8 0c a7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 98 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 da 33 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 9e 78 c7 f7 7f 00 00 e8 cd a6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe 97 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 da 33 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 9e 78 c7 f7 7f 00 00 e8 8e a6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf 97 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 da 33 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 9e 78 c7 f7 7f 00 00 e8 4f a6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 97 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 da 33 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 9e 78 c7 f7 7f 00 00 e8 13 a6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 97 b5 5e 48 b9 60 e9 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 da 33 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 9e 78 c7 f7 7f 00 00 e8 d7 a5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 97 b5 5e 48 b8 60 e9 24 c6 f7 7f 00 00 48 89 46 18 48 b8 18 db 33 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 a9 b5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 9a b5 5e}
004dh mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c733da48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 da 33 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 a9 b5 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 9a b5 5e}
008ch mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c733db38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 db 33 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 a9 b5 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 9a b5 5e}
00cbh mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c733db28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 db 33 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 a8 b5 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 99 b5 5e}
010ah mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c733da58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 da 33 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 a8 b5 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 99 b5 5e}
0149h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c733dac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 da 33 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a8 b5 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 99 b5 5e}
0188h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c733dab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 da 33 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 a8 b5 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 99 b5 5e}
01c7h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c733dad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 da 33 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 a7 b5 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 98 b5 5e}
0206h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c733daa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 da 33 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a a7 b5 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 98 b5 5e}
0245h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c733db08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 db 33 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b a7 b5 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 98 b5 5e}
0284h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c733dae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 da 33 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c a7 b5 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 98 b5 5e}
02c3h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c733da78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 da 33 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd a6 b5 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 97 b5 5e}
0302h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c733da98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 da 33 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e a6 b5 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 97 b5 5e}
0341h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c733da88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 da 33 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f a6 b5 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 97 b5 5e}
0380h mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c733daf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 da 33 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 a6 b5 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 97 b5 5e}
03bch mov rcx,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e9 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c733da68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 da 33 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c7789e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9e 78 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 a5 b5 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 97 b5 5e}
03f8h mov rax,7ff7c624e960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e9 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c733db18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 db 33 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
