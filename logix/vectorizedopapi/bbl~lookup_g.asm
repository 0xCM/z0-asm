------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<byte>> lookup<byte>(N256 w, BinaryBitLogicKind:byte kind)
; bbl~lookup_gn256_0o[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 f1 dd c6 f7 7f 00 00 e8 b2 c2 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 b3 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 91 cf c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 50 f1 dd c6 f7 7f 00 00 e8 73 c2 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 b3 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 95 cf c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 50 f1 dd c6 f7 7f 00 00 e8 34 c2 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 b3 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 95 cf c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 50 f1 dd c6 f7 7f 00 00 e8 f5 c1 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 b3 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 91 cf c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 50 f1 dd c6 f7 7f 00 00 e8 b6 c1 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 b2 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 92 cf c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 50 f1 dd c6 f7 7f 00 00 e8 77 c1 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 b2 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 92 cf c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 50 f1 dd c6 f7 7f 00 00 e8 38 c1 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 b2 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 92 cf c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 50 f1 dd c6 f7 7f 00 00 e8 f9 c0 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a b2 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 91 cf c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 50 f1 dd c6 f7 7f 00 00 e8 ba c0 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb b1 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 92 cf c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 50 f1 dd c6 f7 7f 00 00 e8 7b c0 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac b1 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 92 cf c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 50 f1 dd c6 f7 7f 00 00 e8 3c c0 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d b1 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 91 cf c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 50 f1 dd c6 f7 7f 00 00 e8 fd bf 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e b1 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 91 cf c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 50 f1 dd c6 f7 7f 00 00 e8 be bf 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef b0 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 91 cf c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 50 f1 dd c6 f7 7f 00 00 e8 7f bf 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 b0 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 92 cf c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 50 f1 dd c6 f7 7f 00 00 e8 43 bf 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 b0 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 91 cf c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 50 f1 dd c6 f7 7f 00 00 e8 07 bf 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 b0 19 5f 48 b8 70 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 95 cf c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 c2 19 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 b3 19 5f}
004dh mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c6cf9120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 91 cf c6 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 c2 19 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 b3 19 5f}
008ch mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c6cf95f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 95 cf c6 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 c2 19 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 b3 19 5f}
00cbh mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c6cf95d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 95 cf c6 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 c1 19 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 b3 19 5f}
010ah mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c6cf9140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 91 cf c6 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 c1 19 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 b2 19 5f}
0149h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c6cf9220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 92 cf c6 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 c1 19 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 b2 19 5f}
0188h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c6cf9200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 92 cf c6 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 c1 19 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 b2 19 5f}
01c7h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c6cf9240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 92 cf c6 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 c0 19 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a b2 19 5f}
0206h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c6cf91e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 91 cf c6 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba c0 19 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb b1 19 5f}
0245h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c6cf92a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 92 cf c6 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b c0 19 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac b1 19 5f}
0284h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c6cf9260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 92 cf c6 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c c0 19 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d b1 19 5f}
02c3h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c6cf9180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 91 cf c6 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd bf 19 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e b1 19 5f}
0302h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c6cf91c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 91 cf c6 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be bf 19 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef b0 19 5f}
0341h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c6cf91a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 91 cf c6 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f bf 19 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 b0 19 5f}
0380h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c6cf9280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 92 cf c6 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 bf 19 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 b0 19 5f}
03bch mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c6cf9160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 91 cf c6 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c6ddf150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 dd c6 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 bf 19 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 b0 19 5f}
03f8h mov rax,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e4 27 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c6cf95b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 95 cf c6 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, BinaryBitLogicKind:byte kind)
; bbl~lookup_gn256_0o[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 a2 bd 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 ae 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 99 cf c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 63 bd 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 ae 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 9d cf c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 24 bd 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 ae 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 9d cf c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 e5 bc 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 ae 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 99 cf c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 a6 bc 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 ad 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 9c cf c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 67 bc 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 ad 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 9c cf c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 28 bc 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 ad 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 9c cf c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 e9 bb 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a ad 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 9c cf c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 aa bb 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 db ac 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 9d cf c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 6b bb 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c ac 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 9d cf c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 2c bb 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d ac 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 9c cf c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 ed ba 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e ac 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 9c cf c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 ae ba 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 df ab 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 9c cf c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 6f ba 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 ab 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 9d cf c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 33 ba 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 ab 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 99 cf c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 f4 dd c6 f7 7f 00 00 e8 f7 b9 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 ab 19 5f 48 b8 70 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 38 9d cf c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 bd 19 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 ae 19 5f}
004dh mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c6cf9970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 99 cf c6 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 bd 19 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 ae 19 5f}
008ch mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c6cf9d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 9d cf c6 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 bd 19 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 ae 19 5f}
00cbh mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c6cf9d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 9d cf c6 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 bc 19 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 ae 19 5f}
010ah mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c6cf9980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 99 cf c6 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 bc 19 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 ad 19 5f}
0149h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c6cf9ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 9c cf c6 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 bc 19 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 ad 19 5f}
0188h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c6cf9cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 9c cf c6 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 bc 19 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 ad 19 5f}
01c7h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c6cf9cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 9c cf c6 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 bb 19 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a ad 19 5f}
0206h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c6cf9cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 9c cf c6 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa bb 19 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db ac 19 5f}
0245h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c6cf9d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 9d cf c6 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b bb 19 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c ac 19 5f}
0284h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c6cf9d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9d cf c6 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c bb 19 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d ac 19 5f}
02c3h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c6cf9c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 9c cf c6 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed ba 19 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e ac 19 5f}
0302h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c6cf9cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 9c cf c6 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae ba 19 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df ab 19 5f}
0341h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c6cf9ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9c cf c6 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f ba 19 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 ab 19 5f}
0380h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c6cf9d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 9d cf c6 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 ba 19 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 ab 19 5f}
03bch mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c6cf9990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 99 cf c6 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c6ddf4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f4 dd c6 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b9 19 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 ab 19 5f}
03f8h mov rax,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e4 27 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c6cf9d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 9d cf c6 f7 7f 00 00}
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
; bbl~lookup_gn256_0o[74] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f0 f6 dd c6 f7 7f 00 00 e8 92 b8 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
002fh mov rcx,7ff7c6ddf6f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 f6 dd c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 b8 19 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<Int16>> lookup<Int16>(N256 w, BinaryBitLogicKind:byte kind)
; bbl~lookup_gn256_0o[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 00 f9 dd c6 f7 7f 00 00 e8 82 b3 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 a4 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 a2 cf c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 00 f9 dd c6 f7 7f 00 00 e8 43 b3 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 a4 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 a3 cf c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 00 f9 dd c6 f7 7f 00 00 e8 04 b3 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 a4 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 a3 cf c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 00 f9 dd c6 f7 7f 00 00 e8 c5 b2 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 a3 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 a2 cf c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 00 f9 dd c6 f7 7f 00 00 e8 86 b2 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 a3 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 a2 cf c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 00 f9 dd c6 f7 7f 00 00 e8 47 b2 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 a3 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 a2 cf c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 00 f9 dd c6 f7 7f 00 00 e8 08 b2 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 a3 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 a2 cf c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 00 f9 dd c6 f7 7f 00 00 e8 c9 b1 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa a2 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 a2 cf c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 00 f9 dd c6 f7 7f 00 00 e8 8a b1 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb a2 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 a3 cf c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 00 f9 dd c6 f7 7f 00 00 e8 4b b1 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c a2 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 a2 cf c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 00 f9 dd c6 f7 7f 00 00 e8 0c b1 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d a2 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 a2 cf c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 00 f9 dd c6 f7 7f 00 00 e8 cd b0 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe a1 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 a2 cf c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 00 f9 dd c6 f7 7f 00 00 e8 8e b0 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf a1 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 a2 cf c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 00 f9 dd c6 f7 7f 00 00 e8 4f b0 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 a1 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 a2 cf c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 00 f9 dd c6 f7 7f 00 00 e8 13 b0 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 a1 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 a2 cf c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 00 f9 dd c6 f7 7f 00 00 e8 d7 af 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 a1 19 5f 48 b8 70 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 10 a3 cf c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 b3 19 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 a4 19 5f}
004dh mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c6cfa240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a2 cf c6 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 b3 19 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 a4 19 5f}
008ch mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c6cfa330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 a3 cf c6 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 b3 19 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 a4 19 5f}
00cbh mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c6cfa320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a3 cf c6 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 b2 19 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 a3 19 5f}
010ah mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c6cfa250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a2 cf c6 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 b2 19 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 a3 19 5f}
0149h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c6cfa2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a2 cf c6 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 b2 19 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 a3 19 5f}
0188h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c6cfa2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a2 cf c6 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 b2 19 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 a3 19 5f}
01c7h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c6cfa2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a2 cf c6 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 b1 19 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa a2 19 5f}
0206h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c6cfa2a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 a2 cf c6 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a b1 19 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb a2 19 5f}
0245h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c6cfa300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a3 cf c6 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b b1 19 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c a2 19 5f}
0284h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c6cfa2e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a2 cf c6 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c b1 19 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d a2 19 5f}
02c3h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c6cfa270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 a2 cf c6 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd b0 19 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe a1 19 5f}
0302h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c6cfa290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a2 cf c6 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e b0 19 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf a1 19 5f}
0341h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c6cfa280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a2 cf c6 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f b0 19 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 a1 19 5f}
0380h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c6cfa2f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a2 cf c6 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 b0 19 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 a1 19 5f}
03bch mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c6cfa260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 a2 cf c6 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c6ddf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 dd c6 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 af 19 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 a1 19 5f}
03f8h mov rax,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e4 27 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c6cfa310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 a3 cf c6 f7 7f 00 00}
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
; bbl~lookup_gn256_0o[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 10 fb dd c6 f7 7f 00 00 e8 72 ae 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 9f 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ac cf c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 10 fb dd c6 f7 7f 00 00 e8 33 ae 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 9f 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ad cf c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 10 fb dd c6 f7 7f 00 00 e8 f4 ad 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 9f 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 ad cf c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 10 fb dd c6 f7 7f 00 00 e8 b5 ad 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 9e 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ac cf c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 10 fb dd c6 f7 7f 00 00 e8 76 ad 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 9e 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ac cf c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 10 fb dd c6 f7 7f 00 00 e8 37 ad 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 9e 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 ac cf c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 10 fb dd c6 f7 7f 00 00 e8 f8 ac 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 9e 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ac cf c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 10 fb dd c6 f7 7f 00 00 e8 b9 ac 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 9d 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ac cf c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 10 fb dd c6 f7 7f 00 00 e8 7a ac 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 9d 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ad cf c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 10 fb dd c6 f7 7f 00 00 e8 3b ac 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 9d 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ac cf c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 10 fb dd c6 f7 7f 00 00 e8 fc ab 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 9d 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ac cf c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 fb dd c6 f7 7f 00 00 e8 bd ab 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 9c 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 ac cf c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 fb dd c6 f7 7f 00 00 e8 7e ab 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 af 9c 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 ac cf c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 10 fb dd c6 f7 7f 00 00 e8 3f ab 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 9c 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ac cf c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 10 fb dd c6 f7 7f 00 00 e8 03 ab 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 9c 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ac cf c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 10 fb dd c6 f7 7f 00 00 e8 c7 aa 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 9b 19 5f 48 b8 70 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 18 ad cf c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 ae 19 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 9f 19 5f}
004dh mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c6cfac48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ac cf c6 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 ae 19 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 9f 19 5f}
008ch mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c6cfad38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ad cf c6 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 ad 19 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 9f 19 5f}
00cbh mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c6cfad28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ad cf c6 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 ad 19 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 9e 19 5f}
010ah mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c6cfac58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ac cf c6 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 ad 19 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 9e 19 5f}
0149h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c6cfacc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ac cf c6 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 ad 19 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 9e 19 5f}
0188h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c6cfacb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ac cf c6 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 ac 19 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 9e 19 5f}
01c7h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c6cfacd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ac cf c6 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 ac 19 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 9d 19 5f}
0206h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c6cfaca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ac cf c6 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a ac 19 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 9d 19 5f}
0245h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c6cfad08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ad cf c6 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b ac 19 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 9d 19 5f}
0284h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c6cface8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ac cf c6 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc ab 19 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 9d 19 5f}
02c3h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c6cfac78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ac cf c6 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd ab 19 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 9c 19 5f}
0302h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c6cfac98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ac cf c6 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e ab 19 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 9c 19 5f}
0341h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c6cfac88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ac cf c6 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f ab 19 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 9c 19 5f}
0380h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c6cfacf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ac cf c6 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 ab 19 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 9c 19 5f}
03bch mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c6cfac68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ac cf c6 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c6ddfb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fb dd c6 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 aa 19 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 9b 19 5f}
03f8h mov rax,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e4 27 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c6cfad18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 ad cf c6 f7 7f 00 00}
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
; bbl~lookup_gn256_0o[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 20 fd dd c6 f7 7f 00 00 e8 62 a9 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 9a 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 ad cf c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 20 fd dd c6 f7 7f 00 00 e8 23 a9 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 9a 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 ae cf c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 20 fd dd c6 f7 7f 00 00 e8 e4 a8 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 9a 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 ae cf c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 20 fd dd c6 f7 7f 00 00 e8 a5 a8 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 99 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 ad cf c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 20 fd dd c6 f7 7f 00 00 e8 66 a8 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 99 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 ad cf c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 20 fd dd c6 f7 7f 00 00 e8 27 a8 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 99 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 ad cf c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 20 fd dd c6 f7 7f 00 00 e8 e8 a7 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 99 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ad cf c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 20 fd dd c6 f7 7f 00 00 e8 a9 a7 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 98 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 ad cf c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 20 fd dd c6 f7 7f 00 00 e8 6a a7 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 98 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 ae cf c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 20 fd dd c6 f7 7f 00 00 e8 2b a7 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 98 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ad cf c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 20 fd dd c6 f7 7f 00 00 e8 ec a6 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 98 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 ad cf c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 fd dd c6 f7 7f 00 00 e8 ad a6 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 de 97 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 ad cf c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 fd dd c6 f7 7f 00 00 e8 6e a6 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f 97 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 ad cf c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 fd dd c6 f7 7f 00 00 e8 2f a6 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 97 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 ae cf c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 fd dd c6 f7 7f 00 00 e8 f3 a5 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 97 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 ad cf c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 fd dd c6 f7 7f 00 00 e8 b7 a5 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 96 19 5f 48 b8 70 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 28 ae cf c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 a9 19 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 9a 19 5f}
004dh mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c6cfad58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ad cf c6 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 a9 19 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 9a 19 5f}
008ch mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c6cfae48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ae cf c6 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 a8 19 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 9a 19 5f}
00cbh mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c6cfae38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ae cf c6 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 a8 19 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 99 19 5f}
010ah mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c6cfad68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ad cf c6 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 a8 19 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 99 19 5f}
0149h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c6cfadd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ad cf c6 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 a8 19 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 99 19 5f}
0188h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c6cfadc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ad cf c6 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 a7 19 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 99 19 5f}
01c7h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c6cfade8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ad cf c6 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 a7 19 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 98 19 5f}
0206h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c6cfadb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ad cf c6 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a a7 19 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 98 19 5f}
0245h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c6cfae18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ae cf c6 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b a7 19 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 98 19 5f}
0284h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c6cfadf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ad cf c6 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec a6 19 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 98 19 5f}
02c3h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c6cfad88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ad cf c6 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad a6 19 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 97 19 5f}
0302h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c6cfada8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ad cf c6 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e a6 19 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 97 19 5f}
0341h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c6cfad98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ad cf c6 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f a6 19 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 97 19 5f}
0380h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c6cfae08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ae cf c6 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 a5 19 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 97 19 5f}
03bch mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c6cfad78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ad cf c6 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c6ddfd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd dd c6 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 a5 19 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 96 19 5f}
03f8h mov rax,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e4 27 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c6cfae28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 ae cf c6 f7 7f 00 00}
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
; bbl~lookup_gn256_0o[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 48 00 df c6 f7 7f 00 00 e8 52 a4 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 95 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 b7 cf c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 00 df c6 f7 7f 00 00 e8 13 a4 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 95 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 b8 cf c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 48 00 df c6 f7 7f 00 00 e8 d4 a3 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 95 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 b8 cf c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 48 00 df c6 f7 7f 00 00 e8 95 a3 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 94 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 b7 cf c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 48 00 df c6 f7 7f 00 00 e8 56 a3 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 94 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 b7 cf c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 48 00 df c6 f7 7f 00 00 e8 17 a3 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 94 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 b7 cf c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 48 00 df c6 f7 7f 00 00 e8 d8 a2 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 94 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 b7 cf c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 48 00 df c6 f7 7f 00 00 e8 99 a2 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 93 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 b7 cf c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 48 00 df c6 f7 7f 00 00 e8 5a a2 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 93 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 b8 cf c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 48 00 df c6 f7 7f 00 00 e8 1b a2 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 93 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 b7 cf c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 48 00 df c6 f7 7f 00 00 e8 dc a1 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 93 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 b7 cf c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 00 df c6 f7 7f 00 00 e8 9d a1 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce 92 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 b7 cf c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 00 df c6 f7 7f 00 00 e8 5e a1 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f 92 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 b7 cf c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 00 df c6 f7 7f 00 00 e8 1f a1 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 92 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 b8 cf c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 00 df c6 f7 7f 00 00 e8 e3 a0 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 92 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 b7 cf c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 00 df c6 f7 7f 00 00 e8 a7 a0 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 91 19 5f 48 b8 70 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 28 b8 cf c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 a4 19 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 95 19 5f}
004dh mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c6cfb758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b7 cf c6 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 a4 19 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 95 19 5f}
008ch mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c6cfb848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b8 cf c6 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 a3 19 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 95 19 5f}
00cbh mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c6cfb838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 cf c6 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 a3 19 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 94 19 5f}
010ah mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c6cfb768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 b7 cf c6 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 a3 19 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 94 19 5f}
0149h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c6cfb7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b7 cf c6 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 a3 19 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 94 19 5f}
0188h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c6cfb7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b7 cf c6 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 a2 19 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 94 19 5f}
01c7h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c6cfb7e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 b7 cf c6 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 a2 19 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 93 19 5f}
0206h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c6cfb7b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b7 cf c6 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a a2 19 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 93 19 5f}
0245h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c6cfb818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b8 cf c6 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b a2 19 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 93 19 5f}
0284h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c6cfb7f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 b7 cf c6 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc a1 19 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 93 19 5f}
02c3h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c6cfb788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 b7 cf c6 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d a1 19 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 92 19 5f}
0302h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c6cfb7a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b7 cf c6 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e a1 19 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 92 19 5f}
0341h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c6cfb798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b7 cf c6 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f a1 19 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 92 19 5f}
0380h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c6cfb808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b8 cf c6 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 a0 19 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 92 19 5f}
03bch mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c6cfb778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 b7 cf c6 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c6df0048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 df c6 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 a0 19 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 91 19 5f}
03f8h mov rax,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e4 27 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c6cfb828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 b8 cf c6 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Vector256<long>> lookup<long>(N256 w, BinaryBitLogicKind:byte kind)
; bbl~lookup_gn256_0o[1056] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 58 02 df c6 f7 7f 00 00 e8 42 9f 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 90 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 be cf c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 58 02 df c6 f7 7f 00 00 e8 03 9f 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 90 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 bf cf c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 58 02 df c6 f7 7f 00 00 e8 c4 9e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 8f 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 bf cf c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 58 02 df c6 f7 7f 00 00 e8 85 9e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 8f 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 be cf c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 58 02 df c6 f7 7f 00 00 e8 46 9e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 8f 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 be cf c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 58 02 df c6 f7 7f 00 00 e8 07 9e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 8f 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 be cf c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 58 02 df c6 f7 7f 00 00 e8 c8 9d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 8e 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 be cf c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 58 02 df c6 f7 7f 00 00 e8 89 9d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba 8e 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 be cf c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 58 02 df c6 f7 7f 00 00 e8 4a 9d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b 8e 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 bf cf c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 58 02 df c6 f7 7f 00 00 e8 0b 9d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 8e 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 be cf c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 58 02 df c6 f7 7f 00 00 e8 cc 9c 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 8d 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 be cf c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 02 df c6 f7 7f 00 00 e8 8d 9c 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 be 8d 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 be cf c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 02 df c6 f7 7f 00 00 e8 4e 9c 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f 8d 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 be cf c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 02 df c6 f7 7f 00 00 e8 0f 9c 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 8d 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 be cf c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 02 df c6 f7 7f 00 00 e8 d3 9b 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 8d 19 5f 48 b9 70 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 be cf c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 02 df c6 f7 7f 00 00 e8 97 9b 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 8c 19 5f 48 b8 70 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 18 bf cf c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 9f 19 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 90 19 5f}
004dh mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c6cfbe48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 be cf c6 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 9f 19 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 90 19 5f}
008ch mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c6cfbf38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bf cf c6 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 9e 19 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 8f 19 5f}
00cbh mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c6cfbf28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 bf cf c6 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 9e 19 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 8f 19 5f}
010ah mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c6cfbe58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 be cf c6 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 9e 19 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 8f 19 5f}
0149h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c6cfbec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 be cf c6 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 9e 19 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 8f 19 5f}
0188h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c6cfbeb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 be cf c6 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 9d 19 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 8e 19 5f}
01c7h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c6cfbed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 be cf c6 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 9d 19 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 8e 19 5f}
0206h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c6cfbea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 be cf c6 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 9d 19 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 8e 19 5f}
0245h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c6cfbf08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 bf cf c6 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 9d 19 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 8e 19 5f}
0284h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c6cfbee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 be cf c6 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 9c 19 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 8d 19 5f}
02c3h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c6cfbe78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 be cf c6 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 9c 19 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 8d 19 5f}
0302h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c6cfbe98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 be cf c6 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 9c 19 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 8d 19 5f}
0341h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c6cfbe88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 be cf c6 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 9c 19 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 8d 19 5f}
0380h mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c6cfbef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 be cf c6 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 9b 19 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 8d 19 5f}
03bch mov rcx,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e4 27 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c6cfbe68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 be cf c6 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c6df0258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 df c6 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 9b 19 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 8c 19 5f}
03f8h mov rax,7ff7c627e470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 e4 27 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c6cfbf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 bf cf c6 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
