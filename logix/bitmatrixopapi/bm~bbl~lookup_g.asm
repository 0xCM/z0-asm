------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<byte> lookup<byte>(BinaryBitLogicKind:byte kind)
; bm~bbl~lookup_g8u[74] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 08 ac 71 c7 f7 7f 00 00 e8 92 15 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c771ac08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ac 71 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 15 b8 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<sbyte> lookup<sbyte>(BinaryBitLogicKind:byte kind)
; bm~bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 38 b5 71 c7 f7 7f 00 00 e8 82 0c b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 fd b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 47 32 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 38 b5 71 c7 f7 7f 00 00 e8 43 0c b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 fd b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 47 32 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 38 b5 71 c7 f7 7f 00 00 e8 04 0c b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 fd b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 16 32 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 38 b5 71 c7 f7 7f 00 00 e8 c5 0b b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 fc b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 15 32 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 38 b5 71 c7 f7 7f 00 00 e8 86 0b b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 fc b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 16 32 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 38 b5 71 c7 f7 7f 00 00 e8 47 0b b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 fc b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 16 32 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 38 b5 71 c7 f7 7f 00 00 e8 08 0b b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 fc b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 16 32 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 38 b5 71 c7 f7 7f 00 00 e8 c9 0a b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa fb b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 16 32 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 38 b5 71 c7 f7 7f 00 00 e8 8a 0a b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb fb b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 16 32 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 38 b5 71 c7 f7 7f 00 00 e8 4b 0a b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c fb b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 16 32 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 38 b5 71 c7 f7 7f 00 00 e8 0c 0a b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d fb b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 16 32 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 b5 71 c7 f7 7f 00 00 e8 cd 09 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe fa b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 16 32 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 38 b5 71 c7 f7 7f 00 00 e8 8e 09 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf fa b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 16 32 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 38 b5 71 c7 f7 7f 00 00 e8 4f 09 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 fa b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 16 32 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 38 b5 71 c7 f7 7f 00 00 e8 13 09 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 fa b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 15 32 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 38 b5 71 c7 f7 7f 00 00 e8 d7 08 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 fa b7 5e 48 b8 a0 e3 24 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 16 32 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 0c b8 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 fd b7 5e}
004dh mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7324768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 47 32 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 0c b8 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 fd b7 5e}
008ch mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7324778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 47 32 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 0c b8 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 fd b7 5e}
00cbh mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c73216b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 16 32 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 0b b8 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 fc b7 5e}
010ah mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c73215e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 15 32 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 0b b8 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 fc b7 5e}
0149h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7321650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 16 32 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 0b b8 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 fc b7 5e}
0188h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7321640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 16 32 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 0b b8 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 fc b7 5e}
01c7h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7321660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 16 32 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 0a b8 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa fb b7 5e}
0206h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7321630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 16 32 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 0a b8 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb fb b7 5e}
0245h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7321690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 16 32 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 0a b8 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c fb b7 5e}
0284h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c7321600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 16 32 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 0a b8 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d fb b7 5e}
02c3h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7321670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 16 32 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 09 b8 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe fa b7 5e}
0302h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7321620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 16 32 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 09 b8 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf fa b7 5e}
0341h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7321610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 16 32 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 09 b8 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 fa b7 5e}
0380h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7321680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 16 32 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 09 b8 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 fa b7 5e}
03bch mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c73215f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 15 32 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c771b538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b5 71 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 08 b8 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 fa b7 5e}
03f8h mov rax,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c73216a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 16 32 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<ushort> lookup<ushort>(BinaryBitLogicKind:byte kind)
; bm~bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 08 b8 71 c7 f7 7f 00 00 e8 72 07 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 f8 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 5c 32 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 08 b8 71 c7 f7 7f 00 00 e8 33 07 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 f8 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 5c 32 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 08 b8 71 c7 f7 7f 00 00 e8 f4 06 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 f8 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 20 32 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 08 b8 71 c7 f7 7f 00 00 e8 b5 06 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 f7 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 17 32 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 08 b8 71 c7 f7 7f 00 00 e8 76 06 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 f7 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 1f 32 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 08 b8 71 c7 f7 7f 00 00 e8 37 06 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 f7 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 1f 32 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 08 b8 71 c7 f7 7f 00 00 e8 f8 05 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 f7 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 1f 32 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 08 b8 71 c7 f7 7f 00 00 e8 b9 05 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea f6 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 1f 32 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 08 b8 71 c7 f7 7f 00 00 e8 7a 05 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab f6 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 1f 32 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 08 b8 71 c7 f7 7f 00 00 e8 3b 05 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c f6 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 17 32 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 08 b8 71 c7 f7 7f 00 00 e8 fc 04 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d f6 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 1f 32 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 08 b8 71 c7 f7 7f 00 00 e8 bd 04 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee f5 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 17 32 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 08 b8 71 c7 f7 7f 00 00 e8 7e 04 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af f5 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 17 32 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 08 b8 71 c7 f7 7f 00 00 e8 3f 04 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 f5 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 1f 32 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 08 b8 71 c7 f7 7f 00 00 e8 03 04 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 f5 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 17 32 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 08 b8 71 c7 f7 7f 00 00 e8 c7 03 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 f4 b7 5e 48 b8 a0 e3 24 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 1f 32 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 07 b8 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 f8 b7 5e}
004dh mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7325c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5c 32 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 07 b8 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 f8 b7 5e}
008ch mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7325c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 5c 32 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 06 b8 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 f8 b7 5e}
00cbh mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7322000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 20 32 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 06 b8 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 f7 b7 5e}
010ah mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c73217b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 17 32 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 06 b8 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 f7 b7 5e}
0149h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7321fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 1f 32 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 06 b8 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 f7 b7 5e}
0188h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7321f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 1f 32 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 05 b8 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 f7 b7 5e}
01c7h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7321fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1f 32 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 05 b8 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea f6 b7 5e}
0206h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7321f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 1f 32 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 05 b8 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab f6 b7 5e}
0245h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7321fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 1f 32 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 05 b8 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c f6 b7 5e}
0284h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73217d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 17 32 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 04 b8 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d f6 b7 5e}
02c3h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7321fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 1f 32 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 04 b8 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee f5 b7 5e}
0302h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c73217f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 17 32 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 04 b8 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af f5 b7 5e}
0341h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c73217e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 17 32 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 04 b8 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 f5 b7 5e}
0380h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7321fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 1f 32 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 04 b8 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 f5 b7 5e}
03bch mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c73217c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 17 32 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c771b808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 71 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 03 b8 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 f4 b7 5e}
03f8h mov rax,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7321ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1f 32 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<short> lookup<short>(BinaryBitLogicKind:byte kind)
; bm~bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 62 02 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 f3 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 5c 32 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 23 02 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 f3 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 5c 32 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 e4 01 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 f3 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 21 32 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 a5 01 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 f2 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 21 32 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 66 01 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 f2 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 21 32 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 27 01 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 f2 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 21 32 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 e8 00 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 f2 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 21 32 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 a9 00 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da f1 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 21 32 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 6a 00 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b f1 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 21 32 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 2b 00 b8 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c f1 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 21 32 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 ec ff b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d f1 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 21 32 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 ad ff b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de f0 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 21 32 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 6e ff b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f f0 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 21 32 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 2f ff b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 f0 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 21 32 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 f3 fe b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 f0 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 21 32 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d8 ba 71 c7 f7 7f 00 00 e8 b7 fe b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 ef b7 5e 48 b8 a0 e3 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 21 32 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 02 b8 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 f3 b7 5e}
004dh mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7325ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 5c 32 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 02 b8 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 f3 b7 5e}
008ch mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7325cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 5c 32 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 01 b8 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 f3 b7 5e}
00cbh mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c73221d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 21 32 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 01 b8 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 f2 b7 5e}
010ah mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7322100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 21 32 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 01 b8 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 f2 b7 5e}
0149h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7322170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 21 32 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 01 b8 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 f2 b7 5e}
0188h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7322160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 21 32 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 00 b8 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f2 b7 5e}
01c7h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7322180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 21 32 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 00 b8 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da f1 b7 5e}
0206h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7322150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 21 32 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 00 b8 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f1 b7 5e}
0245h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73221b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 21 32 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 00 b8 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c f1 b7 5e}
0284h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c7322120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 21 32 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec ff b7 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d f1 b7 5e}
02c3h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7322190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 21 32 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad ff b7 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de f0 b7 5e}
0302h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7322140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 21 32 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e ff b7 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f f0 b7 5e}
0341h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7322130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 21 32 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f ff b7 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 f0 b7 5e}
0380h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c73221a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 21 32 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fe b7 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 f0 b7 5e}
03bch mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7322110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 21 32 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c771bad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ba 71 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 fe b7 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 ef b7 5e}
03f8h mov rax,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c73221c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 21 32 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<uint> lookup<uint>(BinaryBitLogicKind:byte kind)
; bm~bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 52 fd b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 ee b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 5c 32 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 13 fd b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 ee b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 5d 32 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 d4 fc b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 ee b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 30 32 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 95 fc b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 ed b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 22 32 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 56 fc b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 ed b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 23 32 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 17 fc b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 ed b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 23 32 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 d8 fb b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 ed b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 23 32 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 99 fb b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca ec b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 23 32 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 5a fb b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b ec b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 30 32 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 1b fb b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c ec b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 22 32 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 dc fa b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d ec b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 23 32 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 9d fa b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce eb b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 23 32 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 5e fa b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f eb b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 23 32 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 1f fa b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 eb b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 23 32 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 e3 f9 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 eb b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 22 32 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 bd 71 c7 f7 7f 00 00 e8 a7 f9 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 ea b7 5e 48 b8 a0 e3 24 c6 f7 7f 00 00 48 89 46 18 48 b8 48 30 32 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 fd b7 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 ee b7 5e}
004dh mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7325cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5c 32 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 fd b7 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 ee b7 5e}
008ch mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7325d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 5d 32 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 fc b7 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 ee b7 5e}
00cbh mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7323058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 30 32 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 fc b7 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 ed b7 5e}
010ah mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c73222d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 22 32 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 fc b7 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 ed b7 5e}
0149h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7322340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 23 32 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 fc b7 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 ed b7 5e}
0188h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7322330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 23 32 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 fb b7 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 ed b7 5e}
01c7h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7322350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 23 32 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 fb b7 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca ec b7 5e}
0206h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7322320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 23 32 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a fb b7 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b ec b7 5e}
0245h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7323038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 30 32 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b fb b7 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c ec b7 5e}
0284h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73222f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 22 32 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc fa b7 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d ec b7 5e}
02c3h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7322360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 23 32 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d fa b7 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce eb b7 5e}
0302h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7322310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 23 32 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e fa b7 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f eb b7 5e}
0341h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7322300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 23 32 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f fa b7 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 eb b7 5e}
0380h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7322370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 23 32 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 f9 b7 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 eb b7 5e}
03bch mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c73222e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 22 32 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c771bda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bd 71 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 f9 b7 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 ea b7 5e}
03f8h mov rax,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7323048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 30 32 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<int> lookup<int>(BinaryBitLogicKind:byte kind)
; bm~bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 78 c0 71 c7 f7 7f 00 00 e8 42 f8 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 e9 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 5d 32 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 78 c0 71 c7 f7 7f 00 00 e8 03 f8 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 e9 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 5d 32 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 78 c0 71 c7 f7 7f 00 00 e8 c4 f7 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 e8 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 32 32 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 78 c0 71 c7 f7 7f 00 00 e8 85 f7 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 e8 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 31 32 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 78 c0 71 c7 f7 7f 00 00 e8 46 f7 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 e8 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 31 32 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 78 c0 71 c7 f7 7f 00 00 e8 07 f7 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 e8 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 31 32 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 78 c0 71 c7 f7 7f 00 00 e8 c8 f6 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 e7 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 31 32 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 78 c0 71 c7 f7 7f 00 00 e8 89 f6 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba e7 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 31 32 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 78 c0 71 c7 f7 7f 00 00 e8 4a f6 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b e7 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 31 32 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 78 c0 71 c7 f7 7f 00 00 e8 0b f6 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c e7 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 31 32 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 78 c0 71 c7 f7 7f 00 00 e8 cc f5 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd e6 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 31 32 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 c0 71 c7 f7 7f 00 00 e8 8d f5 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 be e6 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 31 32 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 c0 71 c7 f7 7f 00 00 e8 4e f5 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f e6 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 31 32 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 c0 71 c7 f7 7f 00 00 e8 0f f5 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 e6 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 31 32 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 c0 71 c7 f7 7f 00 00 e8 d3 f4 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 e6 b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 31 32 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 c0 71 c7 f7 7f 00 00 e8 97 f4 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 e5 b7 5e 48 b8 a0 e3 24 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 31 32 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 f8 b7 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 e9 b7 5e}
004dh mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7325d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 5d 32 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f8 b7 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 e9 b7 5e}
008ch mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7325d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5d 32 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 f7 b7 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 e8 b7 5e}
00cbh mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7323208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 32 32 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 f7 b7 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 e8 b7 5e}
010ah mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7323138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 31 32 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f7 b7 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 e8 b7 5e}
0149h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c73231a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 31 32 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 f7 b7 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 e8 b7 5e}
0188h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7323198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 31 32 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 f6 b7 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 e7 b7 5e}
01c7h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c73231b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 31 32 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f6 b7 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba e7 b7 5e}
0206h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7323188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 31 32 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a f6 b7 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b e7 b7 5e}
0245h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73231e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 31 32 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f6 b7 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c e7 b7 5e}
0284h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c7323158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 31 32 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc f5 b7 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd e6 b7 5e}
02c3h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c73231c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 31 32 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d f5 b7 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be e6 b7 5e}
0302h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7323178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 31 32 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e f5 b7 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f e6 b7 5e}
0341h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7323168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 31 32 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f f5 b7 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 e6 b7 5e}
0380h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c73231d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 31 32 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 f4 b7 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 e6 b7 5e}
03bch mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7323148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 31 32 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c771c078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c0 71 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 f4 b7 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 e5 b7 5e}
03f8h mov rax,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c73231f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 31 32 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<ulong> lookup<ulong>(BinaryBitLogicKind:byte kind)
; bm~bbl~lookup_g8u[51] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 48 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b9 48 c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<long> lookup<long>(BinaryBitLogicKind:byte kind)
; bm~bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 18 c6 71 c7 f7 7f 00 00 e8 22 ee b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 df b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 5e 32 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 18 c6 71 c7 f7 7f 00 00 e8 e3 ed b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 df b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 5e 32 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 18 c6 71 c7 f7 7f 00 00 e8 a4 ed b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 de b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 44 32 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 18 c6 71 c7 f7 7f 00 00 e8 65 ed b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 de b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 44 32 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 18 c6 71 c7 f7 7f 00 00 e8 26 ed b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 de b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 44 32 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 18 c6 71 c7 f7 7f 00 00 e8 e7 ec b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 de b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 44 32 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 18 c6 71 c7 f7 7f 00 00 e8 a8 ec b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 dd b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 44 32 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 18 c6 71 c7 f7 7f 00 00 e8 69 ec b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a dd b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 44 32 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 18 c6 71 c7 f7 7f 00 00 e8 2a ec b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b dd b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 44 32 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 18 c6 71 c7 f7 7f 00 00 e8 eb eb b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c dd b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 44 32 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 18 c6 71 c7 f7 7f 00 00 e8 ac eb b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd dc b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 44 32 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 18 c6 71 c7 f7 7f 00 00 e8 6d eb b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e dc b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 44 32 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 18 c6 71 c7 f7 7f 00 00 e8 2e eb b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f dc b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 44 32 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 18 c6 71 c7 f7 7f 00 00 e8 ef ea b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 dc b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 44 32 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 18 c6 71 c7 f7 7f 00 00 e8 b3 ea b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 db b7 5e 48 b9 a0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 44 32 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 18 c6 71 c7 f7 7f 00 00 e8 77 ea b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 db b7 5e 48 b8 a0 e3 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 44 32 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 ee b7 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 df b7 5e}
004dh mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7325e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 5e 32 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 ed b7 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 df b7 5e}
008ch mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7325e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5e 32 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 ed b7 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 de b7 5e}
00cbh mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c73244d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 44 32 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 ed b7 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 de b7 5e}
010ah mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7324408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 44 32 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 ed b7 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 de b7 5e}
0149h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7324478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 44 32 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 ec b7 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 de b7 5e}
0188h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7324468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 44 32 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 ec b7 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 dd b7 5e}
01c7h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7324488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 44 32 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 ec b7 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a dd b7 5e}
0206h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7324458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 44 32 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a ec b7 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b dd b7 5e}
0245h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73244b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 44 32 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb eb b7 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c dd b7 5e}
0284h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c7324428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 44 32 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac eb b7 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd dc b7 5e}
02c3h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7324498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 44 32 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d eb b7 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e dc b7 5e}
0302h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7324448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 44 32 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e eb b7 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f dc b7 5e}
0341h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7324438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 44 32 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef ea b7 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 dc b7 5e}
0380h mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c73244a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 44 32 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 ea b7 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 db b7 5e}
03bch mov rcx,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7324418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 44 32 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c771c618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c6 71 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 ea b7 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 db b7 5e}
03f8h mov rax,7ff7c624e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c73244c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 44 32 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
