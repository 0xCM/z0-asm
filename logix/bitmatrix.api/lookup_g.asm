------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<byte> lookup<byte>(BinaryBitLogicKind:byte kind)
; lookup_gBinaryBitLogicKind~8u[74] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e8 55 81 c7 f7 7f 00 00 e8 92 fd b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
002fh mov rcx,7ff7c78155e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 55 81 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 fd b5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<ushort> lookup<ushort>(BinaryBitLogicKind:byte kind)
; lookup_gBinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 18 5f 81 c7 f7 7f 00 00 e8 82 f8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 e9 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 6c 34 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 18 5f 81 c7 f7 7f 00 00 e8 43 f8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 e9 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 6c 34 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 18 5f 81 c7 f7 7f 00 00 e8 04 f8 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 e9 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 46 34 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 18 5f 81 c7 f7 7f 00 00 e8 c5 f7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 e8 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 41 34 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 18 5f 81 c7 f7 7f 00 00 e8 86 f7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 e8 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 42 34 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 18 5f 81 c7 f7 7f 00 00 e8 47 f7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 e8 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 41 34 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 18 5f 81 c7 f7 7f 00 00 e8 08 f7 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 e8 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 42 34 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 18 5f 81 c7 f7 7f 00 00 e8 c9 f6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa e7 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 41 34 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 18 5f 81 c7 f7 7f 00 00 e8 8a f6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb e7 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 46 34 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 18 5f 81 c7 f7 7f 00 00 e8 4b f6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c e7 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 41 34 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 18 5f 81 c7 f7 7f 00 00 e8 0c f6 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d e7 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 42 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 18 5f 81 c7 f7 7f 00 00 e8 cd f5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe e6 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 41 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 18 5f 81 c7 f7 7f 00 00 e8 8e f5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf e6 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 41 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 18 5f 81 c7 f7 7f 00 00 e8 4f f5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 e6 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 46 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 18 5f 81 c7 f7 7f 00 00 e8 13 f5 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 e6 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 41 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 18 5f 81 c7 f7 7f 00 00 e8 d7 f4 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 e6 b5 5e 48 b8 a0 e3 25 c6 f7 7f 00 00 48 89 46 18 48 b8 60 46 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 f8 b5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 e9 b5 5e}
004dh mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7346ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6c 34 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 f8 b5 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 e9 b5 5e}
008ch mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7346cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 6c 34 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 f8 b5 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 e9 b5 5e}
00cbh mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7344670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 46 34 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 f7 b5 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 e8 b5 5e}
010ah mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7344198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 41 34 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 f7 b5 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 e8 b5 5e}
0149h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7344208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 42 34 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f7 b5 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 e8 b5 5e}
0188h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c73441f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 41 34 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 f7 b5 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 e8 b5 5e}
01c7h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7344218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 42 34 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f6 b5 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa e7 b5 5e}
0206h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c73441e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 41 34 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a f6 b5 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb e7 b5 5e}
0245h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7344650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 46 34 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b f6 b5 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c e7 b5 5e}
0284h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73441b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 41 34 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c f6 b5 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d e7 b5 5e}
02c3h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7344228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 42 34 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd f5 b5 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe e6 b5 5e}
0302h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c73441d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 41 34 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e f5 b5 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf e6 b5 5e}
0341h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c73441c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 41 34 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f f5 b5 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 e6 b5 5e}
0380h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7344640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 46 34 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 f5 b5 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 e6 b5 5e}
03bch mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c73441a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 41 34 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c7815f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5f 81 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 f4 b5 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 e6 b5 5e}
03f8h mov rax,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7344660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 46 34 c7 f7 7f 00 00}
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
; lookup_gBinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 e8 61 81 c7 f7 7f 00 00 e8 72 f3 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 e4 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 6c 34 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e8 61 81 c7 f7 7f 00 00 e8 33 f3 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 e4 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 6d 34 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e8 61 81 c7 f7 7f 00 00 e8 f4 f2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 e4 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 48 34 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e8 61 81 c7 f7 7f 00 00 e8 b5 f2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 e3 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 47 34 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e8 61 81 c7 f7 7f 00 00 e8 76 f2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 e3 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 47 34 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e8 61 81 c7 f7 7f 00 00 e8 37 f2 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 e3 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 47 34 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e8 61 81 c7 f7 7f 00 00 e8 f8 f1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 e3 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 47 34 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e8 61 81 c7 f7 7f 00 00 e8 b9 f1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea e2 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 47 34 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e8 61 81 c7 f7 7f 00 00 e8 7a f1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab e2 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 47 34 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e8 61 81 c7 f7 7f 00 00 e8 3b f1 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c e2 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 47 34 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e8 61 81 c7 f7 7f 00 00 e8 fc f0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d e2 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 47 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e8 61 81 c7 f7 7f 00 00 e8 bd f0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee e1 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 47 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e8 61 81 c7 f7 7f 00 00 e8 7e f0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af e1 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 47 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e8 61 81 c7 f7 7f 00 00 e8 3f f0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 e1 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 47 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e8 61 81 c7 f7 7f 00 00 e8 03 f0 b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 e1 b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 47 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e8 61 81 c7 f7 7f 00 00 e8 c7 ef b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 e0 b5 5e 48 b8 a0 e3 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 47 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 f3 b5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 e4 b5 5e}
004dh mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7346cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 6c 34 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 f3 b5 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 e4 b5 5e}
008ch mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7346d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 6d 34 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 f2 b5 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 e4 b5 5e}
00cbh mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7344800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 48 34 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 f2 b5 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 e3 b5 5e}
010ah mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7344730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 47 34 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 f2 b5 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 e3 b5 5e}
0149h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c73447a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 47 34 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 f2 b5 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 e3 b5 5e}
0188h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7344790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 47 34 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 f1 b5 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 e3 b5 5e}
01c7h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c73447b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 47 34 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 f1 b5 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea e2 b5 5e}
0206h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7344780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 47 34 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a f1 b5 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab e2 b5 5e}
0245h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c73447e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 47 34 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b f1 b5 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c e2 b5 5e}
0284h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c7344750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 47 34 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc f0 b5 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d e2 b5 5e}
02c3h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c73447c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 47 34 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd f0 b5 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee e1 b5 5e}
0302h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7344770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 47 34 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e f0 b5 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af e1 b5 5e}
0341h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7344760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 47 34 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f f0 b5 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 e1 b5 5e}
0380h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c73447d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 47 34 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f0 b5 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 e1 b5 5e}
03bch mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7344740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 47 34 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c78161e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 61 81 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 ef b5 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 e0 b5 5e}
03f8h mov rax,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c73447f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 47 34 c7 f7 7f 00 00}
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
; lookup_gBinaryBitLogicKind~8u[1056] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 b8 64 81 c7 f7 7f 00 00 e8 62 ee b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 df b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 6d 34 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 b8 64 81 c7 f7 7f 00 00 e8 23 ee b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 df b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 6d 34 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 b8 64 81 c7 f7 7f 00 00 e8 e4 ed b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 df b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 49 34 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 b8 64 81 c7 f7 7f 00 00 e8 a5 ed b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 de b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 48 34 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 b8 64 81 c7 f7 7f 00 00 e8 66 ed b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 de b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 49 34 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 b8 64 81 c7 f7 7f 00 00 e8 27 ed b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 de b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 49 34 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 b8 64 81 c7 f7 7f 00 00 e8 e8 ec b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 de b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 49 34 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 b8 64 81 c7 f7 7f 00 00 e8 a9 ec b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da dd b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 49 34 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 b8 64 81 c7 f7 7f 00 00 e8 6a ec b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b dd b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 49 34 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 b8 64 81 c7 f7 7f 00 00 e8 2b ec b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c dd b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 48 34 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 b8 64 81 c7 f7 7f 00 00 e8 ec eb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d dd b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 49 34 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b8 64 81 c7 f7 7f 00 00 e8 ad eb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de dc b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 49 34 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b8 64 81 c7 f7 7f 00 00 e8 6e eb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f dc b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 48 34 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b8 64 81 c7 f7 7f 00 00 e8 2f eb b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 dc b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 49 34 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b8 64 81 c7 f7 7f 00 00 e8 f3 ea b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 dc b5 5e 48 b9 a0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 48 34 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b8 64 81 c7 f7 7f 00 00 e8 b7 ea b5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 db b5 5e 48 b8 a0 e3 25 c6 f7 7f 00 00 48 89 46 18 48 b8 80 49 34 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
002fh mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 ee b5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 df b5 5e}
004dh mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7346d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6d 34 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 ee b5 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 df b5 5e}
008ch mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7346d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6d 34 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 ed b5 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 df b5 5e}
00cbh mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7344990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 49 34 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 ed b5 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 de b5 5e}
010ah mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c73448c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 48 34 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 ed b5 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 de b5 5e}
0149h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7344930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 49 34 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 ed b5 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 de b5 5e}
0188h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7344920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 49 34 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 ec b5 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 de b5 5e}
01c7h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7344940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 49 34 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 ec b5 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da dd b5 5e}
0206h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7344910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 49 34 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a ec b5 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b dd b5 5e}
0245h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7344970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 49 34 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b ec b5 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c dd b5 5e}
0284h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c73448e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 48 34 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec eb b5 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d dd b5 5e}
02c3h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7344950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 49 34 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad eb b5 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de dc b5 5e}
0302h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7344900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 49 34 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e eb b5 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f dc b5 5e}
0341h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c73448f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 48 34 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f eb b5 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 dc b5 5e}
0380h mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7344960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 49 34 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 ea b5 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 dc b5 5e}
03bch mov rcx,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e3 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c73448d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 48 34 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c78164b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 64 81 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 ea b5 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 db b5 5e}
03f8h mov rax,7ff7c625e3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e3 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7344980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 49 34 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
