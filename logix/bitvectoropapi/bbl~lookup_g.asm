------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<byte>> lookup<byte>(BinaryBitLogicKind:byte kind)
; bbl~lookup_g8u[74] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 f0 83 c7 c6 f7 7f 00 00 e8 92 f0 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
002fh mov rcx,7ff7c6c783f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 83 c7 c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f0 2f 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<sbyte>> lookup<sbyte>(BinaryBitLogicKind:byte kind)
; bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 60 8c c7 c6 f7 7f 00 00 e8 82 eb 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 dc 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 29 ba c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 60 8c c7 c6 f7 7f 00 00 e8 43 eb 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 dc 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 2c ba c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 60 8c c7 c6 f7 7f 00 00 e8 04 eb 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 dc 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 2c ba c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 60 8c c7 c6 f7 7f 00 00 e8 c5 ea 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 db 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 29 ba c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 60 8c c7 c6 f7 7f 00 00 e8 86 ea 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 db 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 2b ba c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 60 8c c7 c6 f7 7f 00 00 e8 47 ea 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 db 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 2b ba c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 60 8c c7 c6 f7 7f 00 00 e8 08 ea 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 db 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 2c ba c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 60 8c c7 c6 f7 7f 00 00 e8 c9 e9 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa da 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 2b ba c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 60 8c c7 c6 f7 7f 00 00 e8 8a e9 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb da 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 2c ba c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 60 8c c7 c6 f7 7f 00 00 e8 4b e9 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c da 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 2c ba c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 60 8c c7 c6 f7 7f 00 00 e8 0c e9 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d da 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 29 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 8c c7 c6 f7 7f 00 00 e8 cd e8 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe d9 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 2b ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 8c c7 c6 f7 7f 00 00 e8 8e e8 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf d9 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 29 ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 8c c7 c6 f7 7f 00 00 e8 4f e8 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 d9 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 2c ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 8c c7 c6 f7 7f 00 00 e8 13 e8 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 d9 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 29 ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 8c c7 c6 f7 7f 00 00 e8 d7 e7 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 d9 2f 5f 48 b8 c0 d8 26 c6 f7 7f 00 00 48 89 46 18 48 b8 48 2c ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 eb 2f 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 dc 2f 5f}
004dh mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c6ba2938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 29 ba c6 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 eb 2f 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 dc 2f 5f}
008ch mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c6ba2c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2c ba c6 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 eb 2f 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 dc 2f 5f}
00cbh mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c6ba2c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 2c ba c6 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 ea 2f 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 db 2f 5f}
010ah mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c6ba2948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 29 ba c6 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 ea 2f 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 db 2f 5f}
0149h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c6ba2bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 2b ba c6 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 ea 2f 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 db 2f 5f}
0188h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c6ba2be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 2b ba c6 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 ea 2f 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 db 2f 5f}
01c7h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c6ba2c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 2c ba c6 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 e9 2f 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa da 2f 5f}
0206h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c6ba2bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2b ba c6 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a e9 2f 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb da 2f 5f}
0245h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c6ba2c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2c ba c6 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b e9 2f 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c da 2f 5f}
0284h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c6ba2c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 2c ba c6 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c e9 2f 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d da 2f 5f}
02c3h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c6ba2968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 29 ba c6 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd e8 2f 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe d9 2f 5f}
0302h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c6ba2bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 2b ba c6 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e e8 2f 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf d9 2f 5f}
0341h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c6ba2978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 29 ba c6 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f e8 2f 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 d9 2f 5f}
0380h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c6ba2c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 2c ba c6 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 e8 2f 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 d9 2f 5f}
03bch mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c6ba2958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 29 ba c6 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c6c78c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 8c c7 c6 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 e7 2f 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 d9 2f 5f}
03f8h mov rax,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 d8 26 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c6ba2c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 2c ba c6 f7 7f 00 00}
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
; bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 70 8e c7 c6 f7 7f 00 00 e8 72 e6 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 d7 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 32 ba c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 70 8e c7 c6 f7 7f 00 00 e8 33 e6 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 d7 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 33 ba c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 70 8e c7 c6 f7 7f 00 00 e8 f4 e5 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 d7 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 33 ba c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 70 8e c7 c6 f7 7f 00 00 e8 b5 e5 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 d6 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 32 ba c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 70 8e c7 c6 f7 7f 00 00 e8 76 e5 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 d6 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 33 ba c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 70 8e c7 c6 f7 7f 00 00 e8 37 e5 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 d6 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 33 ba c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 70 8e c7 c6 f7 7f 00 00 e8 f8 e4 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 d6 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 33 ba c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 70 8e c7 c6 f7 7f 00 00 e8 b9 e4 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea d5 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 33 ba c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 70 8e c7 c6 f7 7f 00 00 e8 7a e4 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab d5 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 33 ba c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 70 8e c7 c6 f7 7f 00 00 e8 3b e4 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c d5 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 33 ba c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 70 8e c7 c6 f7 7f 00 00 e8 fc e3 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d d5 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 33 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 8e c7 c6 f7 7f 00 00 e8 bd e3 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee d4 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 33 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 8e c7 c6 f7 7f 00 00 e8 7e e3 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 af d4 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 33 ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 8e c7 c6 f7 7f 00 00 e8 3f e3 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 d4 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 33 ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 8e c7 c6 f7 7f 00 00 e8 03 e3 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 d4 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 32 ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 8e c7 c6 f7 7f 00 00 e8 c7 e2 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 d3 2f 5f 48 b8 c0 d8 26 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 33 ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 e6 2f 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 d7 2f 5f}
004dh mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c6ba32d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 32 ba c6 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 e6 2f 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 d7 2f 5f}
008ch mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c6ba33c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 33 ba c6 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 e5 2f 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 d7 2f 5f}
00cbh mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c6ba33b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 33 ba c6 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 e5 2f 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 d6 2f 5f}
010ah mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c6ba32e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 32 ba c6 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 e5 2f 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 d6 2f 5f}
0149h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c6ba3350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 33 ba c6 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 e5 2f 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 d6 2f 5f}
0188h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c6ba3340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 33 ba c6 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 e4 2f 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 d6 2f 5f}
01c7h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c6ba3360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 33 ba c6 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 e4 2f 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea d5 2f 5f}
0206h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c6ba3330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 33 ba c6 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a e4 2f 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab d5 2f 5f}
0245h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c6ba3390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 33 ba c6 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b e4 2f 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c d5 2f 5f}
0284h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c6ba3370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 33 ba c6 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc e3 2f 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d d5 2f 5f}
02c3h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c6ba3300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 33 ba c6 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd e3 2f 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee d4 2f 5f}
0302h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c6ba3320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 33 ba c6 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e e3 2f 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af d4 2f 5f}
0341h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c6ba3310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 33 ba c6 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f e3 2f 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 d4 2f 5f}
0380h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c6ba3380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 33 ba c6 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 e3 2f 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 d4 2f 5f}
03bch mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c6ba32f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 32 ba c6 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c6c78e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8e c7 c6 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 e2 2f 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 d3 2f 5f}
03f8h mov rax,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 d8 26 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c6ba33a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 33 ba c6 f7 7f 00 00}
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
; bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 90 c7 c6 f7 7f 00 00 e8 62 e1 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 d2 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 39 ba c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 90 c7 c6 f7 7f 00 00 e8 23 e1 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 d2 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 3d ba c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 90 c7 c6 f7 7f 00 00 e8 e4 e0 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 d2 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 3d ba c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 90 c7 c6 f7 7f 00 00 e8 a5 e0 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 d1 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 3a ba c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 90 c7 c6 f7 7f 00 00 e8 66 e0 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 d1 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 3c ba c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 90 c7 c6 f7 7f 00 00 e8 27 e0 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 d1 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 3c ba c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 90 c7 c6 f7 7f 00 00 e8 e8 df 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 d1 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 3c ba c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 90 c7 c6 f7 7f 00 00 e8 a9 df 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 da d0 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 3c ba c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 90 c7 c6 f7 7f 00 00 e8 6a df 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b d0 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 3c ba c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 90 c7 c6 f7 7f 00 00 e8 2b df 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c d0 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 3c ba c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 90 c7 c6 f7 7f 00 00 e8 ec de 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d d0 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 3a ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 90 c7 c6 f7 7f 00 00 e8 ad de 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 de cf 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 3c ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 90 c7 c6 f7 7f 00 00 e8 6e de 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f cf 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 3c ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 90 c7 c6 f7 7f 00 00 e8 2f de 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 cf 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 3c ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 90 c7 c6 f7 7f 00 00 e8 f3 dd 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 cf 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 3a ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 90 c7 c6 f7 7f 00 00 e8 b7 dd 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 ce 2f 5f 48 b8 c0 d8 26 c6 f7 7f 00 00 48 89 46 18 48 b8 08 3d ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 e1 2f 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 d2 2f 5f}
004dh mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c6ba39f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 39 ba c6 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 e1 2f 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 d2 2f 5f}
008ch mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c6ba3d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3d ba c6 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 e0 2f 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 d2 2f 5f}
00cbh mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c6ba3d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 3d ba c6 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 e0 2f 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 d1 2f 5f}
010ah mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c6ba3a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 3a ba c6 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 e0 2f 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 d1 2f 5f}
0149h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c6ba3cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 3c ba c6 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 e0 2f 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 d1 2f 5f}
0188h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c6ba3ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 3c ba c6 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 df 2f 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 d1 2f 5f}
01c7h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c6ba3cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 3c ba c6 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 df 2f 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da d0 2f 5f}
0206h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c6ba3c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 3c ba c6 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a df 2f 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b d0 2f 5f}
0245h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c6ba3cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 3c ba c6 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b df 2f 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c d0 2f 5f}
0284h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c6ba3cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 3c ba c6 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec de 2f 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d d0 2f 5f}
02c3h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c6ba3a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3a ba c6 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad de 2f 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de cf 2f 5f}
0302h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c6ba3c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 3c ba c6 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e de 2f 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f cf 2f 5f}
0341h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c6ba3c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 3c ba c6 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f de 2f 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 cf 2f 5f}
0380h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c6ba3ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 3c ba c6 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 dd 2f 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 cf 2f 5f}
03bch mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c6ba3a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 3a ba c6 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c6c79080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 c7 c6 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 dd 2f 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 ce 2f 5f}
03f8h mov rax,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 d8 26 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c6ba3d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 3d ba c6 f7 7f 00 00}
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
; bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 90 92 c7 c6 f7 7f 00 00 e8 52 dc 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 cd 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 41 ba c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 90 92 c7 c6 f7 7f 00 00 e8 13 dc 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 cd 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 42 ba c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 90 92 c7 c6 f7 7f 00 00 e8 d4 db 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 cd 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 42 ba c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 90 92 c7 c6 f7 7f 00 00 e8 95 db 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 cc 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 41 ba c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 90 92 c7 c6 f7 7f 00 00 e8 56 db 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 cc 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 42 ba c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 90 92 c7 c6 f7 7f 00 00 e8 17 db 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 cc 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 42 ba c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 90 92 c7 c6 f7 7f 00 00 e8 d8 da 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 cc 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 42 ba c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 90 92 c7 c6 f7 7f 00 00 e8 99 da 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca cb 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 41 ba c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 90 92 c7 c6 f7 7f 00 00 e8 5a da 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b cb 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 42 ba c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 90 92 c7 c6 f7 7f 00 00 e8 1b da 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c cb 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 42 ba c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 90 92 c7 c6 f7 7f 00 00 e8 dc d9 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d cb 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 41 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 92 c7 c6 f7 7f 00 00 e8 9d d9 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce ca 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 41 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 92 c7 c6 f7 7f 00 00 e8 5e d9 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f ca 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 41 ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 90 92 c7 c6 f7 7f 00 00 e8 1f d9 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 ca 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 42 ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 90 92 c7 c6 f7 7f 00 00 e8 e3 d8 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 ca 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 41 ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 90 92 c7 c6 f7 7f 00 00 e8 a7 d8 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 c9 2f 5f 48 b8 c0 d8 26 c6 f7 7f 00 00 48 89 46 18 48 b8 60 42 ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 dc 2f 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 cd 2f 5f}
004dh mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c6ba4190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 41 ba c6 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 dc 2f 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 cd 2f 5f}
008ch mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c6ba4280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 42 ba c6 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 db 2f 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 cd 2f 5f}
00cbh mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c6ba4270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 42 ba c6 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 db 2f 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 cc 2f 5f}
010ah mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c6ba41a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 41 ba c6 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 db 2f 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 cc 2f 5f}
0149h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c6ba4210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 42 ba c6 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 db 2f 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 cc 2f 5f}
0188h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c6ba4200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 42 ba c6 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 da 2f 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 cc 2f 5f}
01c7h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c6ba4220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 42 ba c6 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 da 2f 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca cb 2f 5f}
0206h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c6ba41f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 41 ba c6 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a da 2f 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b cb 2f 5f}
0245h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c6ba4250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 42 ba c6 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b da 2f 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c cb 2f 5f}
0284h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c6ba4230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 42 ba c6 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc d9 2f 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d cb 2f 5f}
02c3h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c6ba41c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 41 ba c6 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d d9 2f 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce ca 2f 5f}
0302h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c6ba41e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 41 ba c6 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e d9 2f 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f ca 2f 5f}
0341h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c6ba41d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 41 ba c6 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f d9 2f 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 ca 2f 5f}
0380h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c6ba4240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 42 ba c6 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 d8 2f 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 ca 2f 5f}
03bch mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c6ba41b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 41 ba c6 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c6c79290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 92 c7 c6 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 d8 2f 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 c9 2f 5f}
03f8h mov rax,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 d8 26 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c6ba4260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 42 ba c6 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<int>> lookup<int>(BinaryBitLogicKind:byte kind)
; bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 42 d7 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 c8 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 49 ba c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 03 d7 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 c8 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 4a ba c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 c4 d6 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 c7 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 4a ba c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 85 d6 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 c7 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 49 ba c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 46 d6 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 c7 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 49 ba c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 07 d6 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 c7 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 49 ba c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 c8 d5 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 c6 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 49 ba c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 89 d5 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ba c6 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 49 ba c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 4a d5 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7b c6 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 49 ba c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 0b d5 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c c6 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 49 ba c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 cc d4 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd c5 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 49 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 8d d4 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 be c5 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 49 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 4e d4 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7f c5 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 49 ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 0f d4 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 40 c5 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 49 ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 d3 d3 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 c5 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 49 ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 94 c7 c6 f7 7f 00 00 e8 97 d3 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 c4 2f 5f 48 b8 c0 d8 26 c6 f7 7f 00 00 48 89 46 18 48 b8 08 4a ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 d7 2f 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 c8 2f 5f}
004dh mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c6ba4938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 49 ba c6 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 d7 2f 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 c8 2f 5f}
008ch mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c6ba4a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4a ba c6 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 d6 2f 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 c7 2f 5f}
00cbh mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c6ba4a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4a ba c6 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 d6 2f 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 c7 2f 5f}
010ah mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c6ba4948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 49 ba c6 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 d6 2f 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 c7 2f 5f}
0149h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c6ba49b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 49 ba c6 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 d6 2f 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 c7 2f 5f}
0188h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c6ba49a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 49 ba c6 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 d5 2f 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 c6 2f 5f}
01c7h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c6ba49c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 49 ba c6 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 d5 2f 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba c6 2f 5f}
0206h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c6ba4998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 49 ba c6 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a d5 2f 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b c6 2f 5f}
0245h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c6ba49f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 49 ba c6 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b d5 2f 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c c6 2f 5f}
0284h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c6ba49d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 49 ba c6 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc d4 2f 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd c5 2f 5f}
02c3h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c6ba4968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 49 ba c6 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d d4 2f 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be c5 2f 5f}
0302h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c6ba4988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 49 ba c6 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e d4 2f 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f c5 2f 5f}
0341h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c6ba4978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 49 ba c6 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f d4 2f 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 c5 2f 5f}
0380h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c6ba49e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 49 ba c6 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 d3 2f 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 c5 2f 5f}
03bch mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c6ba4958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 49 ba c6 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c6c794a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 94 c7 c6 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 d3 2f 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 c4 2f 5f}
03f8h mov rax,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 d8 26 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c6ba4a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 4a ba c6 f7 7f 00 00}
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
; bbl~lookup_g8u[75] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b0 96 c7 c6 f7 7f 00 00 e8 32 d2 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 c3}
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
002fh mov rcx,7ff7c6c796b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 96 c7 c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 d2 2f 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 63 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<long>> lookup<long>(BinaryBitLogicKind:byte kind)
; bbl~lookup_g8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 22 cd 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 be 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 53 ba c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 e3 cc 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 be 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 54 ba c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 a4 cc 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 bd 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 54 ba c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 65 cc 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 bd 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 53 ba c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 26 cc 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 bd 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 53 ba c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 e7 cb 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 bd 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 53 ba c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 a8 cb 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 bc 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 53 ba c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 69 cb 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a bc 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 53 ba c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 2a cb 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b bc 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 54 ba c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 eb ca 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c bc 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 53 ba c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 ac ca 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd bb 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 53 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 6d ca 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e bb 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 53 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 2e ca 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f bb 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 53 ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 ef c9 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 bb 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 54 ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 b3 c9 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 ba 2f 5f 48 b9 c0 d8 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 53 ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 98 c7 c6 f7 7f 00 00 e8 77 c9 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 ba 2f 5f 48 b8 c0 d8 26 c6 f7 7f 00 00 48 89 46 18 48 b8 28 54 ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 cd 2f 5f}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 be 2f 5f}
004dh mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c6ba5358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 53 ba c6 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 cc 2f 5f}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 be 2f 5f}
008ch mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c6ba5448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 54 ba c6 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 cc 2f 5f}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 bd 2f 5f}
00cbh mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c6ba5438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 54 ba c6 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 cc 2f 5f}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 bd 2f 5f}
010ah mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c6ba5368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 53 ba c6 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 cc 2f 5f}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 bd 2f 5f}
0149h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c6ba53d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 53 ba c6 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 cb 2f 5f}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 bd 2f 5f}
0188h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c6ba53c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 53 ba c6 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 cb 2f 5f}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 bc 2f 5f}
01c7h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c6ba53e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 53 ba c6 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 cb 2f 5f}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a bc 2f 5f}
0206h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c6ba53b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 53 ba c6 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a cb 2f 5f}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b bc 2f 5f}
0245h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c6ba5418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 54 ba c6 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb ca 2f 5f}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c bc 2f 5f}
0284h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c6ba53f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 53 ba c6 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac ca 2f 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd bb 2f 5f}
02c3h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c6ba5388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 53 ba c6 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d ca 2f 5f}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e bb 2f 5f}
0302h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c6ba53a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 53 ba c6 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e ca 2f 5f}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f bb 2f 5f}
0341h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c6ba5398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 53 ba c6 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef c9 2f 5f}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 bb 2f 5f}
0380h mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c6ba5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 ba c6 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 c9 2f 5f}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 ba 2f 5f}
03bch mov rcx,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d8 26 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c6ba5378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 53 ba c6 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c6c798c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 98 c7 c6 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 c9 2f 5f}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 ba 2f 5f}
03f8h mov rax,7ff7c626d8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 d8 26 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c6ba5428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 54 ba c6 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
