------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<byte>> lookup<byte>(N256 w, TernaryBitLogicKind:byte kind)
; tbl~lookup_gn256_0o[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 18 d2 dc c6 f7 7f 00 00 e8 f0 46 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 38 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 25 d1 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 b1 46 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 37 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 25 d1 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 72 46 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 37 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 25 d1 c6 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 33 46 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 37 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 24 d1 c6 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 f4 45 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 37 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 24 d1 c6 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 b5 45 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 36 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 24 d1 c6 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 76 45 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 36 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 24 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 37 45 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 36 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 24 d1 c6 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 f8 44 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 36 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 24 d1 c6 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 b9 44 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea 35 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 24 d1 c6 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 7a 44 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab 35 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 24 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 3b 44 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 35 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 23 d1 c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 fc 43 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 35 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 23 d1 c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 bd 43 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee 34 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 23 d1 c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 7e 43 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 af 34 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 23 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 3f 43 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 34 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 23 d1 c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 00 43 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 34 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 23 d1 c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 c1 42 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 33 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 23 d1 c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 82 42 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 33 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 23 d1 c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 43 42 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 33 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 22 d1 c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 04 42 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 33 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 22 d1 c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 c5 41 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 32 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 22 d1 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 86 41 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 32 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 22 d1 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 47 41 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 32 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 22 d1 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 18 d2 dc c6 f7 7f 00 00 e8 08 41 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 32 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 22 d1 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 18 d2 dc c6 f7 7f 00 00 e8 cc 40 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 31 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 22 d1 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 18 d2 dc c6 f7 7f 00 00 e8 90 40 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 31 19 5f 48 b8 f0 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 08 22 d1 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+736h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 36 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 46 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 38 19 5f}
004fh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d12548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 25 d1 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 46 19 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 37 19 5f}
008eh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d12528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 25 d1 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 46 19 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 37 19 5f}
00cdh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6d12508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 25 d1 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 46 19 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 37 19 5f}
010ch mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6d124e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 24 d1 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 45 19 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 37 19 5f}
014bh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c6d124c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 24 d1 c6 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 45 19 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 36 19 5f}
018ah mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c6d124a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 24 d1 c6 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 45 19 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 36 19 5f}
01c9h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c6d12488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 24 d1 c6 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 45 19 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 36 19 5f}
0208h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c6d12468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 24 d1 c6 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 44 19 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 36 19 5f}
0247h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c6d12448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 24 d1 c6 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 44 19 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 35 19 5f}
0286h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c6d12428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 24 d1 c6 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 44 19 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 35 19 5f}
02c5h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c6d12408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 24 d1 c6 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 44 19 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 35 19 5f}
0304h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c6d123e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 23 d1 c6 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 43 19 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 35 19 5f}
0343h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c6d123c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 23 d1 c6 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 43 19 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 34 19 5f}
0382h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c6d123a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 23 d1 c6 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 43 19 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 34 19 5f}
03c1h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c6d12388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 23 d1 c6 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 43 19 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 34 19 5f}
0400h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c6d12368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 23 d1 c6 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 43 19 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 34 19 5f}
043fh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c6d12348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 23 d1 c6 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 42 19 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 33 19 5f}
047eh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c6d12328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 23 d1 c6 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 42 19 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 33 19 5f}
04bdh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c6d12308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 23 d1 c6 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 42 19 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 33 19 5f}
04fch mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c6d122e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 22 d1 c6 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 42 19 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 33 19 5f}
053bh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c6d122c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 22 d1 c6 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 41 19 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 32 19 5f}
057ah mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c6d122a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 22 d1 c6 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 41 19 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 32 19 5f}
05b9h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c6d12288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 22 d1 c6 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 41 19 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 32 19 5f}
05f8h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c6d12268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 22 d1 c6 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 41 19 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 32 19 5f}
0637h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c6d12248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 22 d1 c6 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 40 19 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 31 19 5f}
0673h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c6d12228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 22 d1 c6 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c6dcd218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d2 dc c6 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 40 19 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 31 19 5f}
06afh mov rax,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e4 27 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c6d12208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 22 d1 c6 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<sbyte>> lookup<sbyte>(N256 w, TernaryBitLogicKind:byte kind)
; tbl~lookup_gn256_0o[1210] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 38 d6 dc c6 f7 7f 00 00 e8 00 3b 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 2c 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 2f d1 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 c1 3a 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 2b 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 82 3a 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 2b 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 43 3a 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 2b 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 04 3a 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 2b 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 c5 39 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 2a 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 86 39 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 2a 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 47 39 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 2a 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 08 39 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 2a 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 c9 38 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa 29 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 8a 38 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb 29 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 4b 38 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c 29 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 0c 38 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 29 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 cd 37 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe 28 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 8e 37 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf 28 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 4f 37 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 28 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 10 37 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 28 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 2e d1 c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 d1 36 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 28 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 2d d1 c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 38 d6 dc c6 f7 7f 00 00 e8 92 36 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+736h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 36 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 3b 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 2c 19 5f}
004fh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d12f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 2f d1 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 3a 19 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 2b 19 5f}
008eh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d12ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 2e d1 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 3a 19 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 2b 19 5f}
00cdh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6d12ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 2e d1 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 3a 19 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 2b 19 5f}
010ch mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6d12ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2e d1 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 3a 19 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 2b 19 5f}
014bh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c6d12ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2e d1 c6 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 39 19 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 2a 19 5f}
018ah mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c6d12eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2e d1 c6 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 39 19 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 2a 19 5f}
01c9h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c6d12ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 2e d1 c6 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 39 19 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 2a 19 5f}
0208h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c6d12e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 2e d1 c6 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 39 19 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 2a 19 5f}
0247h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c6d12e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 2e d1 c6 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 38 19 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 29 19 5f}
0286h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c6d12e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 2e d1 c6 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 38 19 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 29 19 5f}
02c5h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c6d12e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 2e d1 c6 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 38 19 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 29 19 5f}
0304h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c6d12e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 2e d1 c6 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 38 19 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 29 19 5f}
0343h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c6d12e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 2e d1 c6 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 37 19 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 28 19 5f}
0382h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c6d12e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 2e d1 c6 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 37 19 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 28 19 5f}
03c1h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c6d12e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2e d1 c6 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 37 19 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 28 19 5f}
0400h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c6d12e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 2e d1 c6 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 37 19 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 28 19 5f}
043fh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c6d12e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 2e d1 c6 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 36 19 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 28 19 5f}
047eh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c6d12df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 2d d1 c6 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c6dcd638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d6 dc c6 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 36 19 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ushort>> lookup<ushort>(N256 w, TernaryBitLogicKind:byte kind)
; tbl~lookup_gn256_0o[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 20 33 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 24 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 30 d1 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 e1 32 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 24 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 30 d1 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 a2 32 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 23 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 30 d1 c6 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 63 32 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 23 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 30 d1 c6 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 24 32 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 23 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 30 d1 c6 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 e5 31 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 16 23 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 30 d1 c6 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 a6 31 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d7 22 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 30 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 67 31 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 22 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 30 d1 c6 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 28 31 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 22 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 30 d1 c6 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 e9 30 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1a 22 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 30 d1 c6 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 aa 30 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 db 21 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 30 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 6b 30 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 21 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 30 d1 c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 2c 30 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 21 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 2f d1 c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 ed 2f 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1e 21 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 2f d1 c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 ae 2f 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 df 20 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 2f d1 c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 6f 2f 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a0 20 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 2f d1 c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 30 2f 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 20 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 2f d1 c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 f1 2e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 20 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 2f d1 c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 b2 2e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 1f 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 2f d1 c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 73 2e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 1f 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 2f d1 c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 34 2e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 1f 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 2f d1 c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 f5 2d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 1f 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 2f d1 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 b6 2d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 1e 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 2f d1 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 77 2d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 1e 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 2f d1 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 38 2d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 1e 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 2f d1 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 fc 2c 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d 1e 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 2f d1 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 d8 dc c6 f7 7f 00 00 e8 c0 2c 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 1d 19 5f 48 b8 f0 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 10 2f d1 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+736h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 36 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 33 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 24 19 5f}
004fh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d130b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 30 d1 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 32 19 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 24 19 5f}
008eh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d130a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 30 d1 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 32 19 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 23 19 5f}
00cdh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6d13090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 30 d1 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 32 19 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 23 19 5f}
010ch mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6d13080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 30 d1 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 32 19 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 23 19 5f}
014bh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c6d13070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 30 d1 c6 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 31 19 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 23 19 5f}
018ah mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c6d13060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 30 d1 c6 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 31 19 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 22 19 5f}
01c9h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c6d13050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 30 d1 c6 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 31 19 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 22 19 5f}
0208h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c6d13040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 30 d1 c6 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 31 19 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 22 19 5f}
0247h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c6d13030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 30 d1 c6 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 30 19 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 22 19 5f}
0286h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c6d13020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 30 d1 c6 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 30 19 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 21 19 5f}
02c5h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c6d13010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 30 d1 c6 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 30 19 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 21 19 5f}
0304h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c6d13000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 30 d1 c6 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 30 19 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 21 19 5f}
0343h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c6d12ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 2f d1 c6 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 2f 19 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 21 19 5f}
0382h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c6d12fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 2f d1 c6 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 2f 19 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 20 19 5f}
03c1h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c6d12fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2f d1 c6 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 2f 19 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 20 19 5f}
0400h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c6d12fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 2f d1 c6 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 2f 19 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 20 19 5f}
043fh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c6d12fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 2f d1 c6 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 2e 19 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 20 19 5f}
047eh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c6d12fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 2f d1 c6 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 2e 19 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 1f 19 5f}
04bdh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c6d12f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 2f d1 c6 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 2e 19 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 1f 19 5f}
04fch mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c6d12f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 2f d1 c6 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 2e 19 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 1f 19 5f}
053bh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c6d12f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 2f d1 c6 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 2d 19 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 1f 19 5f}
057ah mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c6d12f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 2f d1 c6 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 2d 19 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 1e 19 5f}
05b9h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c6d12f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 2f d1 c6 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 2d 19 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 1e 19 5f}
05f8h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c6d12f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 2f d1 c6 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 2d 19 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 1e 19 5f}
0637h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c6d12f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 2f d1 c6 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 2c 19 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 1e 19 5f}
0673h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c6d12f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2f d1 c6 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c6dcd8a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d8 dc c6 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 2c 19 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 1d 19 5f}
06afh mov rax,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e4 27 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c6d12f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 2f d1 c6 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<Int16>> lookup<Int16>(N256 w, TernaryBitLogicKind:byte kind)
; tbl~lookup_gn256_0o[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 18 db dc c6 f7 7f 00 00 e8 30 27 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 18 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 42 d1 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 f1 26 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 18 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 42 d1 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 b2 26 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 17 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 42 d1 c6 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 73 26 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 17 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 42 d1 c6 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 34 26 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 17 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 41 d1 c6 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 f5 25 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 26 17 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 41 d1 c6 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 b6 25 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e7 16 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 41 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 77 25 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 16 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 41 d1 c6 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 38 25 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 16 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 41 d1 c6 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 f9 24 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2a 16 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 41 d1 c6 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 ba 24 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 eb 15 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 41 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 7b 24 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 15 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 41 d1 c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 3c 24 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 15 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 41 d1 c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 fd 23 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2e 15 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 41 d1 c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 be 23 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ef 14 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 41 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 7f 23 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b0 14 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 41 d1 c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 40 23 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 14 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 41 d1 c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 01 23 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 14 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 31 d1 c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 c2 22 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 13 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 31 d1 c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 83 22 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 13 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 31 d1 c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 44 22 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 13 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 31 d1 c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 05 22 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 36 13 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 31 d1 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 c6 21 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f7 12 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 31 d1 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 87 21 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 12 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 30 d1 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 18 db dc c6 f7 7f 00 00 e8 48 21 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 79 12 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 30 d1 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 18 db dc c6 f7 7f 00 00 e8 0c 21 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d 12 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 30 d1 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 18 db dc c6 f7 7f 00 00 e8 d0 20 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 12 19 5f 48 b8 f0 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 30 d1 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+736h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 36 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 27 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 18 19 5f}
004fh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d14230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 42 d1 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 26 19 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 18 19 5f}
008eh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d14220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 42 d1 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 26 19 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 17 19 5f}
00cdh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6d14210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 42 d1 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 26 19 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 17 19 5f}
010ch mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6d14200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 42 d1 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 26 19 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 17 19 5f}
014bh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c6d141f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 41 d1 c6 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 25 19 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 17 19 5f}
018ah mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c6d141e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 41 d1 c6 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 25 19 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 16 19 5f}
01c9h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c6d141d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 41 d1 c6 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 25 19 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 16 19 5f}
0208h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c6d141c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 41 d1 c6 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 25 19 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 16 19 5f}
0247h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c6d141b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 41 d1 c6 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 24 19 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 16 19 5f}
0286h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c6d141a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 41 d1 c6 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 24 19 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 15 19 5f}
02c5h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c6d14190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 41 d1 c6 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 24 19 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 15 19 5f}
0304h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c6d14180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 41 d1 c6 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 24 19 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 15 19 5f}
0343h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c6d14170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 41 d1 c6 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 23 19 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 15 19 5f}
0382h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c6d14160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 41 d1 c6 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 23 19 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 14 19 5f}
03c1h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c6d14150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 41 d1 c6 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 23 19 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 14 19 5f}
0400h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c6d14140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 41 d1 c6 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 23 19 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 14 19 5f}
043fh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c6d14130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 41 d1 c6 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 23 19 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 14 19 5f}
047eh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c6d13150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 31 d1 c6 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 22 19 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 13 19 5f}
04bdh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c6d13140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 31 d1 c6 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 22 19 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 13 19 5f}
04fch mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c6d13130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 31 d1 c6 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 22 19 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 13 19 5f}
053bh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c6d13120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 31 d1 c6 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 22 19 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 13 19 5f}
057ah mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c6d13110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 31 d1 c6 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 21 19 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 12 19 5f}
05b9h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c6d13100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 31 d1 c6 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 21 19 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 12 19 5f}
05f8h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c6d130f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 30 d1 c6 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 21 19 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 12 19 5f}
0637h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c6d130e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 30 d1 c6 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 21 19 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 12 19 5f}
0673h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c6d130d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 30 d1 c6 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c6dcdb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 db dc c6 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 20 19 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 12 19 5f}
06afh mov rax,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e4 27 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c6d130c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 30 d1 c6 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<uint>> lookup<uint>(N256 w, TernaryBitLogicKind:byte kind)
; tbl~lookup_gn256_0o[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 88 dd dc c6 f7 7f 00 00 e8 50 1f 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 10 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 43 d1 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 11 1f 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 10 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 43 d1 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 d2 1e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 10 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 43 d1 c6 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 93 1e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 0f 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 43 d1 c6 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 54 1e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 0f 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 43 d1 c6 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 15 1e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 46 0f 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 43 d1 c6 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 d6 1d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 07 0f 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 43 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 97 1d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 0e 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 43 d1 c6 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 58 1d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 0e 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 43 d1 c6 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 19 1d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4a 0e 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 43 d1 c6 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 da 1c 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 0b 0e 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 43 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 9b 1c 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 0d 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 43 d1 c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 5c 1c 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d 0d 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 43 d1 c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 1d 1c 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4e 0d 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 43 d1 c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 de 1b 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 0f 0d 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 43 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 9f 1b 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d0 0c 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 42 d1 c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 60 1b 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 0c 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 42 d1 c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 21 1b 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 0c 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 42 d1 c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 e2 1a 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 0c 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 42 d1 c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 a3 1a 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 0b 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 42 d1 c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 64 1a 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 0b 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 42 d1 c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 25 1a 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 0b 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 42 d1 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 e6 19 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 0b 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 42 d1 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 a7 19 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 0a 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 42 d1 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 88 dd dc c6 f7 7f 00 00 e8 68 19 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 0a 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 42 d1 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 88 dd dc c6 f7 7f 00 00 e8 2c 19 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 0a 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 42 d1 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 88 dd dc c6 f7 7f 00 00 e8 f0 18 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 0a 19 5f 48 b8 f0 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 40 42 d1 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+736h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 36 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 1f 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 10 19 5f}
004fh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d143e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 43 d1 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 1f 19 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 10 19 5f}
008eh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d143d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 43 d1 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 1e 19 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 10 19 5f}
00cdh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6d143c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 43 d1 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 1e 19 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 0f 19 5f}
010ch mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6d143b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 43 d1 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 1e 19 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 0f 19 5f}
014bh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c6d143a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 43 d1 c6 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 1e 19 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 0f 19 5f}
018ah mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c6d14390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 43 d1 c6 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 1d 19 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 0f 19 5f}
01c9h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c6d14380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 43 d1 c6 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 1d 19 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 0e 19 5f}
0208h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c6d14370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 43 d1 c6 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 1d 19 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 0e 19 5f}
0247h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c6d14360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 43 d1 c6 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 1d 19 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 0e 19 5f}
0286h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c6d14350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 43 d1 c6 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 1c 19 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 0e 19 5f}
02c5h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c6d14340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 43 d1 c6 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 1c 19 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 0d 19 5f}
0304h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c6d14330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 43 d1 c6 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 1c 19 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 0d 19 5f}
0343h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c6d14320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 43 d1 c6 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 1c 19 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 0d 19 5f}
0382h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c6d14310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 43 d1 c6 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 1b 19 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 0d 19 5f}
03c1h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c6d14300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 43 d1 c6 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 1b 19 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 0c 19 5f}
0400h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c6d142f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 42 d1 c6 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 1b 19 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 0c 19 5f}
043fh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c6d142e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 42 d1 c6 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 1b 19 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 0c 19 5f}
047eh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c6d142d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 42 d1 c6 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 1a 19 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 0c 19 5f}
04bdh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c6d142c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 42 d1 c6 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 1a 19 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 0b 19 5f}
04fch mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c6d142b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 42 d1 c6 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 1a 19 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 0b 19 5f}
053bh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c6d142a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 42 d1 c6 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 1a 19 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 0b 19 5f}
057ah mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c6d14290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 42 d1 c6 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 19 19 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 0b 19 5f}
05b9h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c6d14280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 42 d1 c6 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 19 19 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 0a 19 5f}
05f8h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c6d14270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 42 d1 c6 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 19 19 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 0a 19 5f}
0637h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c6d14260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 42 d1 c6 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 19 19 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 0a 19 5f}
0673h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c6d14250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 42 d1 c6 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c6dcdd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 dd dc c6 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 18 19 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 0a 19 5f}
06afh mov rax,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e4 27 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c6d14240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 42 d1 c6 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<int>> lookup<int>(N256 w, TernaryBitLogicKind:byte kind)
; tbl~lookup_gn256_0o[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f8 df dc c6 f7 7f 00 00 e8 60 13 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 04 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 55 d1 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 21 13 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 04 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 55 d1 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 e2 12 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 04 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 55 d1 c6 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 a3 12 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 03 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 55 d1 c6 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 64 12 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 03 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 55 d1 c6 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 25 12 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 03 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 55 d1 c6 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 e6 11 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 03 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 55 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 a7 11 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 02 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 45 d1 c6 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 68 11 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 02 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 45 d1 c6 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 29 11 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 02 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 45 d1 c6 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 ea 10 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 02 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 44 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 ab 10 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 01 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 44 d1 c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 6c 10 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 01 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 44 d1 c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 2d 10 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e 01 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 44 d1 c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 ee 0f 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f 01 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 44 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 af 0f 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 00 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 44 d1 c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 70 0f 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 00 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 44 d1 c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 31 0f 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 00 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 44 d1 c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 f2 0e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 00 19 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 44 d1 c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 b3 0e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 ff 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 44 d1 c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 74 0e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 ff 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 44 d1 c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 35 0e 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 ff 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 44 d1 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 f6 0d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 ff 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 44 d1 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 b7 0d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 fe 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 44 d1 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f8 df dc c6 f7 7f 00 00 e8 78 0d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 fe 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 44 d1 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f8 df dc c6 f7 7f 00 00 e8 3c 0d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d fe 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 44 d1 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f8 df dc c6 f7 7f 00 00 e8 00 0d 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 fe 18 5f 48 b8 f0 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 43 d1 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+736h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 36 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 13 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 04 19 5f}
004fh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d15560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 55 d1 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 13 19 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 04 19 5f}
008eh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d15550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 55 d1 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 12 19 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 04 19 5f}
00cdh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6d15540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 55 d1 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 12 19 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 03 19 5f}
010ch mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6d15530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 d1 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 12 19 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 03 19 5f}
014bh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c6d15520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 55 d1 c6 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 12 19 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 03 19 5f}
018ah mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c6d15510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 55 d1 c6 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 11 19 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 03 19 5f}
01c9h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c6d15500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 55 d1 c6 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 11 19 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 02 19 5f}
0208h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c6d14520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 45 d1 c6 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 11 19 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 02 19 5f}
0247h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c6d14510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 45 d1 c6 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 11 19 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 02 19 5f}
0286h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c6d14500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 45 d1 c6 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 10 19 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 02 19 5f}
02c5h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c6d144f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 44 d1 c6 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 10 19 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 01 19 5f}
0304h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c6d144e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 44 d1 c6 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 10 19 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 01 19 5f}
0343h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c6d144d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 44 d1 c6 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 10 19 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 01 19 5f}
0382h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c6d144c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 44 d1 c6 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 0f 19 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 01 19 5f}
03c1h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c6d144b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 44 d1 c6 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 0f 19 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 00 19 5f}
0400h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c6d144a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 44 d1 c6 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 0f 19 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 00 19 5f}
043fh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c6d14490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 44 d1 c6 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 0f 19 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 00 19 5f}
047eh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c6d14480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 44 d1 c6 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 0e 19 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 00 19 5f}
04bdh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c6d14470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 44 d1 c6 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 0e 19 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 ff 18 5f}
04fch mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c6d14460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 44 d1 c6 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 0e 19 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 ff 18 5f}
053bh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c6d14450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 44 d1 c6 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 0e 19 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 ff 18 5f}
057ah mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c6d14440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 44 d1 c6 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 0d 19 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 ff 18 5f}
05b9h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c6d14430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 44 d1 c6 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 0d 19 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 fe 18 5f}
05f8h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c6d14420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 44 d1 c6 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 0d 19 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 fe 18 5f}
0637h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c6d14410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 44 d1 c6 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 0d 19 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d fe 18 5f}
0673h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c6d14400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 44 d1 c6 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c6dcdff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 df dc c6 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 0d 19 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 fe 18 5f}
06afh mov rax,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e4 27 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c6d143f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 43 d1 c6 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ulong>> lookup<ulong>(N256 w, TernaryBitLogicKind:byte kind)
; tbl~lookup_gn256_0o[250] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 e2 dc c6 f7 7f 00 00 e8 80 0b 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 fc 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 57 d1 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 68 e2 dc c6 f7 7f 00 00 e8 41 0b 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 fc 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 57 d1 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 68 e2 dc c6 f7 7f 00 00 e8 02 0b 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 fc 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 56 d1 c6 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 68 e2 dc c6 f7 7f 00 00 e8 c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+736h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 36 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6dce268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e2 dc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 0b 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 fc 18 5f}
004fh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d15710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 57 d1 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dce268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e2 dc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 0b 19 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 fc 18 5f}
008eh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d15700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 57 d1 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dce268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e2 dc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 0b 19 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 fc 18 5f}
00cdh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6d156f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 56 d1 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c6dce268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e2 dc c6 f7 7f 00 00}
00f8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<long>> lookup<long>(N256 w, TernaryBitLogicKind:byte kind)
; tbl~lookup_gn256_0o[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 a0 03 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 f4 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 58 d1 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 61 03 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 f4 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 58 d1 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 22 03 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 f4 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 58 d1 c6 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 e3 02 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 f4 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 58 d1 c6 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 a4 02 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 f3 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 58 d1 c6 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 65 02 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 f3 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 58 d1 c6 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 26 02 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 f3 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 58 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 e7 01 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 f3 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 58 d1 c6 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 a8 01 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 f2 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 58 d1 c6 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 69 01 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a f2 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 58 d1 c6 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 2a 01 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b f2 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 58 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 eb 00 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c f2 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 58 d1 c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 ac 00 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd f1 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 58 d1 c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 6d 00 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e f1 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 57 d1 c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 2e 00 19 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f f1 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 57 d1 c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 ef ff 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 f1 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 57 d1 c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 b0 ff 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 f0 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 57 d1 c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 71 ff 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 f0 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 57 d1 c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 32 ff 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 f0 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 57 d1 c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 f3 fe 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 f0 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 57 d1 c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 b4 fe 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 ef 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 57 d1 c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 75 fe 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 ef 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 57 d1 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 36 fe 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 ef 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 57 d1 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 f7 fd 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 ef 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 57 d1 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 b8 fd 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 ee 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 57 d1 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 7c fd 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad ee 18 5f 48 b9 f0 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 57 d1 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d8 e4 dc c6 f7 7f 00 00 e8 40 fd 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 ee 18 5f 48 b8 f0 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 20 57 d1 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,1ah                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 1a}
0013h ja near ptr 06d7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 be 06 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+736h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 36 07 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 03 19 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f4 18 5f}
004fh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d158c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 58 d1 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 03 19 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f4 18 5f}
008eh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d158b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 58 d1 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 03 19 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 f4 18 5f}
00cdh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6d158a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 58 d1 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 02 19 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 f4 18 5f}
010ch mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6d15890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 58 d1 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 02 19 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 f3 18 5f}
014bh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c6d15880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 d1 c6 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 02 19 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f3 18 5f}
018ah mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c6d15870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 58 d1 c6 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 02 19 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 f3 18 5f}
01c9h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c6d15860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 58 d1 c6 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 01 19 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 f3 18 5f}
0208h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c6d15850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 58 d1 c6 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 01 19 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f2 18 5f}
0247h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c6d15840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 58 d1 c6 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 01 19 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a f2 18 5f}
0286h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c6d15830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 58 d1 c6 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 01 19 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b f2 18 5f}
02c5h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c6d15820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 58 d1 c6 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 00 19 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c f2 18 5f}
0304h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c6d15810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 58 d1 c6 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 00 19 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd f1 18 5f}
0343h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c6d15800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 58 d1 c6 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 00 19 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e f1 18 5f}
0382h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c6d157f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 57 d1 c6 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 00 19 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f1 18 5f}
03c1h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c6d157e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 57 d1 c6 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef ff 18 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 f1 18 5f}
0400h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c6d157d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 57 d1 c6 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 ff 18 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 f0 18 5f}
043fh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c6d157c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 57 d1 c6 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 ff 18 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 f0 18 5f}
047eh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c6d157b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 57 d1 c6 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 ff 18 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 f0 18 5f}
04bdh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c6d157a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 57 d1 c6 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fe 18 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 f0 18 5f}
04fch mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c6d15790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 57 d1 c6 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 fe 18 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ef 18 5f}
053bh mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c6d15780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 57 d1 c6 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 fe 18 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 ef 18 5f}
057ah mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c6d15770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 57 d1 c6 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 fe 18 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 ef 18 5f}
05b9h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c6d15760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 57 d1 c6 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 fd 18 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 ef 18 5f}
05f8h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c6d15750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 57 d1 c6 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 fd 18 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 ee 18 5f}
0637h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c6d15740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 57 d1 c6 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c fd 18 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad ee 18 5f}
0673h mov rcx,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 27 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c6d15730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 57 d1 c6 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c6dce4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 dc c6 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 fd 18 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 ee 18 5f}
06afh mov rax,7ff7c627e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e4 27 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c6d15720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 57 d1 c6 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
