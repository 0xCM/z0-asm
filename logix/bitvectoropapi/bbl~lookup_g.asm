------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<byte>> lookup<byte>(BinaryBitLogicKind:byte kind)
; bbl~lookup_g8u[95] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 e7 6e c7 f7 7f 00 00 e8 d2 52 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 44 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 c3}
; Capture completion code = ZEDx6_RET
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
002fh mov rcx,7ff7c76ee7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 6e c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 52 ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 44 ba 5e}
004dh mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh (bad)                                   ; <invalid> || <invalid> || encoded[4]{48 b9 28 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<sbyte>> lookup<sbyte>(BinaryBitLogicKind:byte kind)
; bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 30 f0 6e c7 f7 7f 00 00 e8 c2 4d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 3e ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 db 2f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 30 f0 6e c7 f7 7f 00 00 e8 83 4d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 3e ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 e0 2f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 30 f0 6e c7 f7 7f 00 00 e8 44 4d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 3e ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 e0 2f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 30 f0 6e c7 f7 7f 00 00 e8 05 4d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 3e ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 dc 2f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 30 f0 6e c7 f7 7f 00 00 e8 c6 4c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 3d ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 dc 2f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 30 f0 6e c7 f7 7f 00 00 e8 87 4c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 3d ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 dc 2f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 30 f0 6e c7 f7 7f 00 00 e8 48 4c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 3d ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 dc 2f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 30 f0 6e c7 f7 7f 00 00 e8 09 4c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3a 3d ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 dc 2f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 30 f0 6e c7 f7 7f 00 00 e8 ca 4b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fb 3c ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 dc 2f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 30 f0 6e c7 f7 7f 00 00 e8 8b 4b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 3c ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 dc 2f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 30 f0 6e c7 f7 7f 00 00 e8 4c 4b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 3c ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 dc 2f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 30 f0 6e c7 f7 7f 00 00 e8 0d 4b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3e 3c ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 dc 2f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 30 f0 6e c7 f7 7f 00 00 e8 ce 4a ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ff 3b ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 dc 2f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 30 f0 6e c7 f7 7f 00 00 e8 8f 4a ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c0 3b ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 dc 2f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 30 f0 6e c7 f7 7f 00 00 e8 53 4a ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 84 3b ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 dc 2f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 30 f0 6e c7 f7 7f 00 00 e8 17 4a ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 3b ba 5e 48 b8 10 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 c8 dc 2f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
002fh mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 4d ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 3e ba 5e}
004dh mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c72fdbf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 db 2f c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 4d ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 3e ba 5e}
008ch mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c72fe078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e0 2f c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 4d ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 3e ba 5e}
00cbh mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c72fe068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e0 2f c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 4d ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 3e ba 5e}
010ah mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c72fdc08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 dc 2f c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 4c ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 3d ba 5e}
0149h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c72fdc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 dc 2f c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 4c ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 3d ba 5e}
0188h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c72fdc68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 dc 2f c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 4c ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 3d ba 5e}
01c7h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c72fdc88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dc 2f c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 4c ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 3d ba 5e}
0206h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c72fdc58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 dc 2f c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 4b ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 3c ba 5e}
0245h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c72fdcb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 dc 2f c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 4b ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 3c ba 5e}
0284h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c72fdc98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 dc 2f c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 4b ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 3c ba 5e}
02c3h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c72fdc28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 dc 2f c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 4b ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 3c ba 5e}
0302h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c72fdc48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 dc 2f c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 4a ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 3b ba 5e}
0341h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c72fdc38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 dc 2f c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 4a ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 3b ba 5e}
0380h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c72fdca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 dc 2f c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 4a ba 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 3b ba 5e}
03bch mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c72fdc18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 dc 2f c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76ef030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 6e c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 4a ba 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 3b ba 5e}
03f8h mov rax,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e1 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c72fdcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 dc 2f c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<ushort>> lookup<ushort>(BinaryBitLogicKind:byte kind)
; bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 40 f2 6e c7 f7 7f 00 00 e8 b2 48 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 39 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 e1 2f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 40 f2 6e c7 f7 7f 00 00 e8 73 48 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 39 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 e2 2f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 40 f2 6e c7 f7 7f 00 00 e8 34 48 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 39 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 e2 2f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 40 f2 6e c7 f7 7f 00 00 e8 f5 47 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 39 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 e1 2f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 40 f2 6e c7 f7 7f 00 00 e8 b6 47 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 38 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 e2 2f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 40 f2 6e c7 f7 7f 00 00 e8 77 47 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 38 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 e2 2f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 40 f2 6e c7 f7 7f 00 00 e8 38 47 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 38 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 e2 2f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 40 f2 6e c7 f7 7f 00 00 e8 f9 46 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 38 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 e2 2f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 40 f2 6e c7 f7 7f 00 00 e8 ba 46 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 37 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 e2 2f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 40 f2 6e c7 f7 7f 00 00 e8 7b 46 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 37 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 e2 2f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 40 f2 6e c7 f7 7f 00 00 e8 3c 46 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 37 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 e1 2f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 40 f2 6e c7 f7 7f 00 00 e8 fd 45 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 37 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 e2 2f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 40 f2 6e c7 f7 7f 00 00 e8 be 45 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 36 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 e1 2f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 40 f2 6e c7 f7 7f 00 00 e8 7f 45 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 36 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 e2 2f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 40 f2 6e c7 f7 7f 00 00 e8 43 45 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 36 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 e1 2f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 40 f2 6e c7 f7 7f 00 00 e8 07 45 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 36 ba 5e 48 b8 10 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 88 e2 2f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
002fh mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 48 ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 39 ba 5e}
004dh mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c72fe1b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 e1 2f c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 48 ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 39 ba 5e}
008ch mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c72fe2a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 e2 2f c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 48 ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 39 ba 5e}
00cbh mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c72fe298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e2 2f c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 47 ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 39 ba 5e}
010ah mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c72fe1c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 e1 2f c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 47 ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 38 ba 5e}
0149h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c72fe238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e2 2f c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 47 ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 38 ba 5e}
0188h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c72fe228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e2 2f c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 47 ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 38 ba 5e}
01c7h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c72fe248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e2 2f c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 46 ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 38 ba 5e}
0206h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c72fe218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e2 2f c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 46 ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 37 ba 5e}
0245h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c72fe278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e2 2f c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 46 ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 37 ba 5e}
0284h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c72fe258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e2 2f c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 46 ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 37 ba 5e}
02c3h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c72fe1e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 e1 2f c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 45 ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 37 ba 5e}
0302h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c72fe208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e2 2f c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 45 ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 36 ba 5e}
0341h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c72fe1f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 e1 2f c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 45 ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 36 ba 5e}
0380h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c72fe268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e2 2f c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 45 ba 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 36 ba 5e}
03bch mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c72fe1d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e1 2f c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76ef240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f2 6e c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 45 ba 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 36 ba 5e}
03f8h mov rax,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e1 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c72fe288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 e2 2f c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<short>> lookup<short>(BinaryBitLogicKind:byte kind)
; bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 f4 6e c7 f7 7f 00 00 e8 a2 43 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 34 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 e3 2f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 50 f4 6e c7 f7 7f 00 00 e8 63 43 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 34 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 e9 2f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 50 f4 6e c7 f7 7f 00 00 e8 24 43 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 34 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 e9 2f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 50 f4 6e c7 f7 7f 00 00 e8 e5 42 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 34 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 e3 2f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 50 f4 6e c7 f7 7f 00 00 e8 a6 42 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 33 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 e9 2f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 50 f4 6e c7 f7 7f 00 00 e8 67 42 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 33 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 e4 2f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 50 f4 6e c7 f7 7f 00 00 e8 28 42 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 33 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 e9 2f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 50 f4 6e c7 f7 7f 00 00 e8 e9 41 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a 33 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 e4 2f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 50 f4 6e c7 f7 7f 00 00 e8 aa 41 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 32 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 e9 2f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 50 f4 6e c7 f7 7f 00 00 e8 6b 41 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 32 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 e9 2f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 50 f4 6e c7 f7 7f 00 00 e8 2c 41 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 32 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 e4 2f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 50 f4 6e c7 f7 7f 00 00 e8 ed 40 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 32 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 e4 2f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 50 f4 6e c7 f7 7f 00 00 e8 ae 40 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 31 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 e4 2f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 50 f4 6e c7 f7 7f 00 00 e8 6f 40 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 31 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 e9 2f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 50 f4 6e c7 f7 7f 00 00 e8 33 40 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 31 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 e4 2f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 50 f4 6e c7 f7 7f 00 00 e8 f7 3f ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 31 ba 5e 48 b8 10 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 58 e9 2f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
002fh mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 43 ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 34 ba 5e}
004dh mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c72fe3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 e3 2f c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 43 ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 34 ba 5e}
008ch mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c72fe978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e9 2f c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 43 ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 34 ba 5e}
00cbh mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c72fe968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e9 2f c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 42 ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 34 ba 5e}
010ah mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c72fe3f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 e3 2f c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 42 ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 33 ba 5e}
0149h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c72fe908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e9 2f c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 42 ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 33 ba 5e}
0188h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c72fe458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e4 2f c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 42 ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 33 ba 5e}
01c7h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c72fe918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e9 2f c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 41 ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 33 ba 5e}
0206h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c72fe448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e4 2f c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 41 ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 32 ba 5e}
0245h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c72fe948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e9 2f c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 41 ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 32 ba 5e}
0284h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c72fe928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e9 2f c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 41 ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 32 ba 5e}
02c3h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c72fe418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e4 2f c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 40 ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 32 ba 5e}
0302h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c72fe438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e4 2f c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 40 ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 31 ba 5e}
0341h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c72fe428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e4 2f c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 40 ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 31 ba 5e}
0380h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c72fe938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e9 2f c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 40 ba 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 31 ba 5e}
03bch mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c72fe408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e4 2f c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76ef450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f4 6e c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 3f ba 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 31 ba 5e}
03f8h mov rax,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e1 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c72fe958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 e9 2f c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<uint>> lookup<uint>(BinaryBitLogicKind:byte kind)
; bbl~lookup_g8u[74] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 f6 6e c7 f7 7f 00 00 e8 92 3e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
; Capture completion code = ZEDx6_RET
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
002fh mov rcx,7ff7c76ef660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f6 6e c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 3e ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<int>> lookup<int>(BinaryBitLogicKind:byte kind)
; bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 f8 6e c7 f7 7f 00 00 e8 82 39 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 2a ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 ec 2f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 70 f8 6e c7 f7 7f 00 00 e8 43 39 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 2a ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 f1 2f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 70 f8 6e c7 f7 7f 00 00 e8 04 39 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 2a ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 f1 2f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 70 f8 6e c7 f7 7f 00 00 e8 c5 38 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 29 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 ec 2f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 70 f8 6e c7 f7 7f 00 00 e8 86 38 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 29 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 f1 2f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 70 f8 6e c7 f7 7f 00 00 e8 47 38 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 29 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 f1 2f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 70 f8 6e c7 f7 7f 00 00 e8 08 38 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 29 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 f1 2f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 70 f8 6e c7 f7 7f 00 00 e8 c9 37 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa 28 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 f1 2f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 70 f8 6e c7 f7 7f 00 00 e8 8a 37 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 28 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 f1 2f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 70 f8 6e c7 f7 7f 00 00 e8 4b 37 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c 28 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 f1 2f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 70 f8 6e c7 f7 7f 00 00 e8 0c 37 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 28 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 f1 2f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 f8 6e c7 f7 7f 00 00 e8 cd 36 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe 27 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 f1 2f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 f8 6e c7 f7 7f 00 00 e8 8e 36 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf 27 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 f1 2f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 f8 6e c7 f7 7f 00 00 e8 4f 36 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 27 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 f1 2f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 f8 6e c7 f7 7f 00 00 e8 13 36 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 27 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 f1 2f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 f8 6e c7 f7 7f 00 00 e8 d7 35 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 27 ba 5e 48 b8 10 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 f1 2f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
002fh mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 39 ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 2a ba 5e}
004dh mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c72fece8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ec 2f c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 39 ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 2a ba 5e}
008ch mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c72ff1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 f1 2f c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 39 ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 2a ba 5e}
00cbh mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c72ff1e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f1 2f c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 38 ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 29 ba 5e}
010ah mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c72fecf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ec 2f c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 38 ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 29 ba 5e}
0149h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c72ff180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f1 2f c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 38 ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 29 ba 5e}
0188h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c72ff170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f1 2f c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 38 ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 29 ba 5e}
01c7h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c72ff190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f1 2f c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 37 ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 28 ba 5e}
0206h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c72ff160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f1 2f c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 37 ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 28 ba 5e}
0245h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c72ff1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f1 2f c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 37 ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 28 ba 5e}
0284h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c72ff1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f1 2f c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 37 ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 28 ba 5e}
02c3h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c72ff130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f1 2f c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 36 ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 27 ba 5e}
0302h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c72ff150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f1 2f c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 36 ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 27 ba 5e}
0341h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c72ff140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f1 2f c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 36 ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 27 ba 5e}
0380h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c72ff1b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 f1 2f c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 36 ba 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 27 ba 5e}
03bch mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c72ff120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f1 2f c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76ef870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f8 6e c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 35 ba 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 27 ba 5e}
03f8h mov rax,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e1 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c72ff1d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 f1 2f c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<ulong>> lookup<ulong>(BinaryBitLogicKind:byte kind)
; bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 fa 6e c7 f7 7f 00 00 e8 72 34 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 25 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 f3 2f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 fa 6e c7 f7 7f 00 00 e8 33 34 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 25 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 f4 2f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 fa 6e c7 f7 7f 00 00 e8 f4 33 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 25 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 f4 2f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 fa 6e c7 f7 7f 00 00 e8 b5 33 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 24 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 f3 2f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 fa 6e c7 f7 7f 00 00 e8 76 33 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 24 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 f3 2f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 fa 6e c7 f7 7f 00 00 e8 37 33 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 24 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 f3 2f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 fa 6e c7 f7 7f 00 00 e8 f8 32 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 24 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 f3 2f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 fa 6e c7 f7 7f 00 00 e8 b9 32 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 23 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 f3 2f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 fa 6e c7 f7 7f 00 00 e8 7a 32 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 23 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 f3 2f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 fa 6e c7 f7 7f 00 00 e8 3b 32 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 23 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 f3 2f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 fa 6e c7 f7 7f 00 00 e8 fc 31 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 23 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 f3 2f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 fa 6e c7 f7 7f 00 00 e8 bd 31 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 22 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 f3 2f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 fa 6e c7 f7 7f 00 00 e8 7e 31 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af 22 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 f3 2f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 fa 6e c7 f7 7f 00 00 e8 3f 31 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 22 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 f3 2f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 fa 6e c7 f7 7f 00 00 e8 03 31 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 22 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 f3 2f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 fa 6e c7 f7 7f 00 00 e8 c7 30 ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 21 ba 5e 48 b8 10 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 00 f4 2f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
002fh mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 34 ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 25 ba 5e}
004dh mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c72ff330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f3 2f c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 34 ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 25 ba 5e}
008ch mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c72ff420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f4 2f c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 33 ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 25 ba 5e}
00cbh mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c72ff410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f4 2f c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 33 ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 24 ba 5e}
010ah mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c72ff340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f3 2f c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 33 ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 24 ba 5e}
0149h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c72ff3b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 f3 2f c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 33 ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 24 ba 5e}
0188h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c72ff3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f3 2f c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 32 ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 24 ba 5e}
01c7h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c72ff3c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f3 2f c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 32 ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 23 ba 5e}
0206h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c72ff390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f3 2f c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 32 ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 23 ba 5e}
0245h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c72ff3f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 f3 2f c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 32 ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 23 ba 5e}
0284h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c72ff3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 f3 2f c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 31 ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 23 ba 5e}
02c3h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c72ff360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f3 2f c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 31 ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 22 ba 5e}
0302h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c72ff380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f3 2f c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 31 ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 22 ba 5e}
0341h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c72ff370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f3 2f c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 31 ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 22 ba 5e}
0380h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c72ff3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f3 2f c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 31 ba 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 22 ba 5e}
03bch mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c72ff350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f3 2f c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76efa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa 6e c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 30 ba 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 21 ba 5e}
03f8h mov rax,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e1 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c72ff400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 f4 2f c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<long>> lookup<long>(BinaryBitLogicKind:byte kind)
; bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 fc 6e c7 f7 7f 00 00 e8 62 2f ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 20 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 f7 2f c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 90 fc 6e c7 f7 7f 00 00 e8 23 2f ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 20 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 f8 2f c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 90 fc 6e c7 f7 7f 00 00 e8 e4 2e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 20 ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 f8 2f c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 90 fc 6e c7 f7 7f 00 00 e8 a5 2e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 1f ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 f7 2f c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 90 fc 6e c7 f7 7f 00 00 e8 66 2e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 1f ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 f7 2f c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 90 fc 6e c7 f7 7f 00 00 e8 27 2e ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 1f ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 f7 2f c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 90 fc 6e c7 f7 7f 00 00 e8 e8 2d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 1f ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 f7 2f c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 90 fc 6e c7 f7 7f 00 00 e8 a9 2d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da 1e ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 f7 2f c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 90 fc 6e c7 f7 7f 00 00 e8 6a 2d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b 1e ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 f7 2f c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 90 fc 6e c7 f7 7f 00 00 e8 2b 2d ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 1e ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 f7 2f c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 90 fc 6e c7 f7 7f 00 00 e8 ec 2c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 1e ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 f7 2f c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 fc 6e c7 f7 7f 00 00 e8 ad 2c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de 1d ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 f7 2f c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 fc 6e c7 f7 7f 00 00 e8 6e 2c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f 1d ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 f7 2f c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 fc 6e c7 f7 7f 00 00 e8 2f 2c ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 1d ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 f7 2f c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 fc 6e c7 f7 7f 00 00 e8 f3 2b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 1d ba 5e 48 b9 10 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 f7 2f c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 fc 6e c7 f7 7f 00 00 e8 b7 2b ba 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 1c ba 5e 48 b8 10 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 f7 2f c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
002fh mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 2f ba 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 20 ba 5e}
004dh mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c72ff720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f7 2f c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 2f ba 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 20 ba 5e}
008ch mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c72ff810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f8 2f c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 2e ba 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 20 ba 5e}
00cbh mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c72ff800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f8 2f c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 2e ba 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 1f ba 5e}
010ah mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c72ff730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f7 2f c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 2e ba 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 1f ba 5e}
0149h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c72ff7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f7 2f c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 2e ba 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 1f ba 5e}
0188h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c72ff790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f7 2f c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 2d ba 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 1f ba 5e}
01c7h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c72ff7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 f7 2f c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 2d ba 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 1e ba 5e}
0206h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c72ff780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f7 2f c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 2d ba 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 1e ba 5e}
0245h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c72ff7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f7 2f c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 2d ba 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 1e ba 5e}
0284h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c72ff7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f7 2f c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 2c ba 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 1e ba 5e}
02c3h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c72ff750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f7 2f c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 2c ba 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 1d ba 5e}
0302h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c72ff770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f7 2f c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 2c ba 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 1d ba 5e}
0341h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c72ff760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f7 2f c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 2c ba 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 1d ba 5e}
0380h mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c72ff7d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 f7 2f c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 2b ba 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 1d ba 5e}
03bch mov rcx,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c72ff740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f7 2f c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c76efc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc 6e c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 2b ba 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 1c ba 5e}
03f8h mov rax,7ff7c624e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e1 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c72ff7f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 f7 2f c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
