------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<byte>> lookup<byte>(N256 w, TernaryBitLogicKind:byte kind)
; tbl~lookup_gn256_0o[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 ed dc c6 f7 7f 00 00 e8 60 36 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 27 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 32 d2 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 21 36 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 27 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 32 d2 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 e2 35 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 27 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 29 d2 c6 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 a3 35 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 26 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 29 d2 c6 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 64 35 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 26 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 29 d2 c6 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 25 35 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 56 26 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 29 d2 c6 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 e6 34 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 17 26 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 29 d2 c6 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 a7 34 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 25 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 29 d2 c6 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 68 34 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 25 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 29 d2 c6 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 29 34 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5a 25 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 29 d2 c6 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 ea 33 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1b 25 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 28 d2 c6 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 ab 33 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 24 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 28 d2 c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 6c 33 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d 24 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 28 d2 c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 2d 33 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5e 24 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 28 d2 c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 ee 32 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1f 24 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 28 d2 c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 af 32 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e0 23 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 28 d2 c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 70 32 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 23 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 28 d2 c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 31 32 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 23 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 28 d2 c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 f2 31 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 23 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 27 d2 c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 b3 31 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 22 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 27 d2 c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 74 31 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 22 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 27 d2 c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 35 31 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 66 22 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 27 d2 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 f6 30 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 27 22 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 27 d2 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 b7 30 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 21 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 27 d2 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 ed dc c6 f7 7f 00 00 e8 78 30 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 21 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 27 d2 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 ed dc c6 f7 7f 00 00 e8 3c 30 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 21 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 27 d2 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 ed dc c6 f7 7f 00 00 e8 00 30 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 21 18 5f 48 b8 f0 e4 26 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 26 d2 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 36 18 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 27 18 5f}
004fh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d23230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 32 d2 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 36 18 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 27 18 5f}
008eh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d23210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 32 d2 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 35 18 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 27 18 5f}
00cdh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6d229f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 29 d2 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 35 18 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 26 18 5f}
010ch mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6d229d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 29 d2 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 35 18 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 26 18 5f}
014bh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c6d229b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 29 d2 c6 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 35 18 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 26 18 5f}
018ah mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c6d22998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 29 d2 c6 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 34 18 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 26 18 5f}
01c9h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c6d22978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 29 d2 c6 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 34 18 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 25 18 5f}
0208h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c6d22958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 29 d2 c6 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 34 18 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 25 18 5f}
0247h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c6d22938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 29 d2 c6 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 34 18 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 25 18 5f}
0286h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c6d22918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 29 d2 c6 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 33 18 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 25 18 5f}
02c5h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c6d228f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 28 d2 c6 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 33 18 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 24 18 5f}
0304h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c6d228d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 28 d2 c6 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 33 18 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 24 18 5f}
0343h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c6d228b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 28 d2 c6 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 33 18 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 24 18 5f}
0382h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c6d22898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 28 d2 c6 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 32 18 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 24 18 5f}
03c1h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c6d22878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 28 d2 c6 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 32 18 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 23 18 5f}
0400h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c6d22858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 28 d2 c6 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 32 18 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 23 18 5f}
043fh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c6d22838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 28 d2 c6 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 32 18 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 23 18 5f}
047eh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c6d22818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 28 d2 c6 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 31 18 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 23 18 5f}
04bdh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c6d227f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 27 d2 c6 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 31 18 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 22 18 5f}
04fch mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c6d227d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 27 d2 c6 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 31 18 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 22 18 5f}
053bh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c6d227b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 27 d2 c6 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 31 18 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 22 18 5f}
057ah mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c6d22798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 27 d2 c6 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 30 18 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 22 18 5f}
05b9h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c6d22778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 27 d2 c6 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 30 18 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 21 18 5f}
05f8h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c6d22758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 27 d2 c6 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 30 18 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 21 18 5f}
0637h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c6d22738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 27 d2 c6 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 30 18 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 21 18 5f}
0673h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c6d22718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 27 d2 c6 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c6dced78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed dc c6 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 30 18 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 21 18 5f}
06afh mov rax,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e4 26 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c6d226f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 26 d2 c6 f7 7f 00 00}
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
; tbl~lookup_gn256_0o[250] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 f1 dc c6 f7 7f 00 00 e8 80 2e 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 1f 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 33 d2 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 98 f1 dc c6 f7 7f 00 00 e8 41 2e 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 1f 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 33 d2 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 98 f1 dc c6 f7 7f 00 00 e8 02 2e 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 1f 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 33 d2 c6 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 98 f1 dc c6 f7 7f 00 00 e8 c3}
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
0031h mov rcx,7ff7c6dcf198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f1 dc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 2e 18 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 1f 18 5f}
004fh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d233f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 33 d2 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dcf198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f1 dc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 2e 18 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 1f 18 5f}
008eh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d233e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 33 d2 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dcf198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f1 dc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 2e 18 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 1f 18 5f}
00cdh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6d233d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 33 d2 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c6dcf198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f1 dc c6 f7 7f 00 00}
00f8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<ushort>> lookup<ushort>(N256 w, TernaryBitLogicKind:byte kind)
; tbl~lookup_gn256_0o[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 08 f4 dc c6 f7 7f 00 00 e8 a0 26 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 17 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 35 d2 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 61 26 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 17 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 35 d2 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 22 26 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 17 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 35 d2 c6 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 e3 25 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 17 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 35 d2 c6 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 a4 25 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 16 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 35 d2 c6 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 65 25 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 16 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 35 d2 c6 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 26 25 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 16 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 35 d2 c6 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 e7 24 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 16 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 35 d2 c6 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 a8 24 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 15 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 35 d2 c6 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 69 24 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a 15 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 35 d2 c6 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 2a 24 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b 15 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 35 d2 c6 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 eb 23 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 15 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 34 d2 c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 ac 23 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd 14 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 34 d2 c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 6d 23 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e 14 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 34 d2 c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 2e 23 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f 14 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 34 d2 c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 ef 22 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 14 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 34 d2 c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 b0 22 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 13 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 34 d2 c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 71 22 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 13 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 34 d2 c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 32 22 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 13 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 34 d2 c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 f3 21 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 13 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 34 d2 c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 b4 21 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 12 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 34 d2 c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 75 21 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 12 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 34 d2 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 36 21 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 12 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 34 d2 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 f7 20 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 12 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 34 d2 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 08 f4 dc c6 f7 7f 00 00 e8 b8 20 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 11 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 34 d2 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 08 f4 dc c6 f7 7f 00 00 e8 7c 20 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 11 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 34 d2 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 08 f4 dc c6 f7 7f 00 00 e8 40 20 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 11 18 5f 48 b8 f0 e4 26 c6 f7 7f 00 00 48 89 46 18 48 b8 00 34 d2 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 26 18 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 17 18 5f}
004fh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d235a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 35 d2 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 26 18 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 17 18 5f}
008eh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d23590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 35 d2 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 26 18 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 17 18 5f}
00cdh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6d23580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 35 d2 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 25 18 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 17 18 5f}
010ch mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6d23570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 35 d2 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 25 18 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 16 18 5f}
014bh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c6d23560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 35 d2 c6 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 25 18 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 16 18 5f}
018ah mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c6d23550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 35 d2 c6 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 25 18 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 16 18 5f}
01c9h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c6d23540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 35 d2 c6 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 24 18 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 16 18 5f}
0208h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c6d23530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 35 d2 c6 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 24 18 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 15 18 5f}
0247h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c6d23520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 35 d2 c6 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 24 18 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 15 18 5f}
0286h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c6d23510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 35 d2 c6 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 24 18 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 15 18 5f}
02c5h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c6d23500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 35 d2 c6 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 23 18 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 15 18 5f}
0304h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c6d234f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 34 d2 c6 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 23 18 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 14 18 5f}
0343h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c6d234e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 34 d2 c6 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 23 18 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 14 18 5f}
0382h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c6d234d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 34 d2 c6 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 23 18 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 14 18 5f}
03c1h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c6d234c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 34 d2 c6 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 22 18 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 14 18 5f}
0400h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c6d234b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 34 d2 c6 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 22 18 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 13 18 5f}
043fh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c6d234a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 34 d2 c6 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 22 18 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 13 18 5f}
047eh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c6d23490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 34 d2 c6 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 22 18 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 13 18 5f}
04bdh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c6d23480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 34 d2 c6 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 21 18 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 13 18 5f}
04fch mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c6d23470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 34 d2 c6 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 21 18 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 12 18 5f}
053bh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c6d23460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 34 d2 c6 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 21 18 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 12 18 5f}
057ah mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c6d23450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 34 d2 c6 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 21 18 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 12 18 5f}
05b9h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c6d23440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 34 d2 c6 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 20 18 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 12 18 5f}
05f8h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c6d23430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 34 d2 c6 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 20 18 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 11 18 5f}
0637h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c6d23420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 34 d2 c6 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 20 18 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 11 18 5f}
0673h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c6d23410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 34 d2 c6 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c6dcf408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f4 dc c6 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 20 18 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 11 18 5f}
06afh mov rax,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e4 26 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c6d23400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 34 d2 c6 f7 7f 00 00}
06c7h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
06cbh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
06ceh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
06d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
06d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
06d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
06d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
06d6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<short>> lookup<short>(N256 w, TernaryBitLogicKind:byte kind)
; tbl~lookup_gn256_0o[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 f6 dc c6 f7 7f 00 00 e8 b0 1a 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 0b 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 4f d2 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 71 1a 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 0b 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 32 1a 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 0b 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 f3 19 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 0b 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 b4 19 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 0a 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 75 19 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 0a 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 36 19 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 0a 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 f7 18 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 0a 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 b8 18 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 09 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 79 18 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa 09 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 3a 18 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b 09 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 fb 17 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 09 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 bc 17 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed 08 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 7d 17 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae 08 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 3e 17 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f 08 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 ff 16 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 08 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 c0 16 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 07 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 4e d2 c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 81 16 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 07 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 4d d2 c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 42 16 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 07 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 4d d2 c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 03 16 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 07 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 4d d2 c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 c4 15 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 06 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 4d d2 c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 85 15 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b6 06 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 4d d2 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 46 15 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 77 06 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 35 d2 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 07 15 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 06 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 35 d2 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 f6 dc c6 f7 7f 00 00 e8 c8 14 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 05 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 35 d2 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 f6 dc c6 f7 7f 00 00 e8 8c 14 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bd 05 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 35 d2 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 f6 dc c6 f7 7f 00 00 e8 50 14 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 05 18 5f 48 b8 f0 e4 26 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 35 d2 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 1a 18 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 0b 18 5f}
004fh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d24f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 4f d2 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 1a 18 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 0b 18 5f}
008eh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d24ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 4e d2 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 1a 18 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 0b 18 5f}
00cdh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6d24ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 4e d2 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 19 18 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 0b 18 5f}
010ch mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6d24ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 4e d2 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 19 18 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 0a 18 5f}
014bh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c6d24ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 4e d2 c6 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 19 18 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 0a 18 5f}
018ah mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c6d24eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 4e d2 c6 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 19 18 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 0a 18 5f}
01c9h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c6d24ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 4e d2 c6 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 18 18 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 0a 18 5f}
0208h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c6d24e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 4e d2 c6 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 18 18 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 09 18 5f}
0247h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c6d24e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4e d2 c6 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 18 18 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 09 18 5f}
0286h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c6d24e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 4e d2 c6 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 18 18 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 09 18 5f}
02c5h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c6d24e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 4e d2 c6 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 17 18 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 09 18 5f}
0304h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c6d24e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 4e d2 c6 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 17 18 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 08 18 5f}
0343h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c6d24e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 4e d2 c6 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 17 18 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 08 18 5f}
0382h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c6d24e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 4e d2 c6 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 17 18 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 08 18 5f}
03c1h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c6d24e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 4e d2 c6 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 16 18 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 08 18 5f}
0400h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c6d24e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 4e d2 c6 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 16 18 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 07 18 5f}
043fh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c6d24e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 4e d2 c6 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 16 18 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 07 18 5f}
047eh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c6d24df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 4d d2 c6 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 16 18 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 07 18 5f}
04bdh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c6d24de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 4d d2 c6 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 16 18 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 07 18 5f}
04fch mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c6d24dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 4d d2 c6 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 15 18 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 06 18 5f}
053bh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c6d24dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 4d d2 c6 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 15 18 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 06 18 5f}
057ah mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c6d24db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 4d d2 c6 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 15 18 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 06 18 5f}
05b9h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c6d235f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 35 d2 c6 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 15 18 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 06 18 5f}
05f8h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c6d235e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 35 d2 c6 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 14 18 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 05 18 5f}
0637h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c6d235d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 35 d2 c6 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 14 18 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 05 18 5f}
0673h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c6d235c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 35 d2 c6 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c6dcf678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f6 dc c6 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 14 18 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 05 18 5f}
06afh mov rax,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e4 26 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c6d235b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 35 d2 c6 f7 7f 00 00}
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
; tbl~lookup_gn256_0o[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 d0 12 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 04 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 50 d2 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 91 12 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 03 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 50 d2 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 52 12 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 03 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 50 d2 c6 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 13 12 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 03 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 50 d2 c6 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 d4 11 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 03 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 50 d2 c6 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 95 11 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c6 02 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 50 d2 c6 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 56 11 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 87 02 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 50 d2 c6 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 17 11 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 48 02 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 50 d2 c6 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 d8 10 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 09 02 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 50 d2 c6 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 99 10 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ca 01 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 50 d2 c6 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 5a 10 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8b 01 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 50 d2 c6 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 1b 10 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 01 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 50 d2 c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 dc 0f 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 01 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 4f d2 c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 9d 0f 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ce 00 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 4f d2 c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 5e 0f 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8f 00 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 4f d2 c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 1f 0f 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 50 00 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 4f d2 c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 e0 0e 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 00 18 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 4f d2 c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 a1 0e 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 ff 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 4f d2 c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 62 0e 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 ff 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 4f d2 c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 23 0e 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 ff 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 4f d2 c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 e4 0d 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 ff 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 4f d2 c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 a5 0d 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 fe 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 4f d2 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 66 0d 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 fe 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 4f d2 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 27 0d 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 fe 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 4f d2 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 e8 0c 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 fe 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 4f d2 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 ac 0c 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd fd 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 4f d2 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e8 f8 dc c6 f7 7f 00 00 e8 70 0c 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 fd 17 5f 48 b8 f0 e4 26 c6 f7 7f 00 00 48 89 46 18 48 b8 10 4f d2 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 12 18 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 04 18 5f}
004fh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d250b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 50 d2 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 12 18 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 03 18 5f}
008eh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d250a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 50 d2 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 12 18 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 03 18 5f}
00cdh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6d25090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 50 d2 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 12 18 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 03 18 5f}
010ch mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6d25080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 50 d2 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 11 18 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 03 18 5f}
014bh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c6d25070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 50 d2 c6 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 11 18 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 02 18 5f}
018ah mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c6d25060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 50 d2 c6 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 11 18 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 02 18 5f}
01c9h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c6d25050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 50 d2 c6 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 11 18 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 02 18 5f}
0208h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c6d25040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 50 d2 c6 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 10 18 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 02 18 5f}
0247h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c6d25030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 50 d2 c6 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 10 18 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 01 18 5f}
0286h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c6d25020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 50 d2 c6 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 10 18 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 01 18 5f}
02c5h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c6d25010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 50 d2 c6 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 10 18 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 01 18 5f}
0304h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c6d25000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 50 d2 c6 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 0f 18 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 01 18 5f}
0343h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c6d24ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 4f d2 c6 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 0f 18 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 00 18 5f}
0382h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c6d24fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 4f d2 c6 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 0f 18 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 00 18 5f}
03c1h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c6d24fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 4f d2 c6 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 0f 18 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 00 18 5f}
0400h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c6d24fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 4f d2 c6 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 0e 18 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 00 18 5f}
043fh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c6d24fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 4f d2 c6 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 0e 18 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 ff 17 5f}
047eh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c6d24fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 4f d2 c6 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 0e 18 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 ff 17 5f}
04bdh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c6d24f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 4f d2 c6 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 0e 18 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 ff 17 5f}
04fch mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c6d24f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4f d2 c6 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 0d 18 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 ff 17 5f}
053bh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c6d24f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 4f d2 c6 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 0d 18 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 fe 17 5f}
057ah mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c6d24f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 4f d2 c6 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 0d 18 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 fe 17 5f}
05b9h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c6d24f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 4f d2 c6 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 0d 18 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 fe 17 5f}
05f8h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c6d24f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 4f d2 c6 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 0c 18 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 fe 17 5f}
0637h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c6d24f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 4f d2 c6 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 0c 18 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd fd 17 5f}
0673h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c6d24f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 4f d2 c6 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c6dcf8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f8 dc c6 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 0c 18 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 fd 17 5f}
06afh mov rax,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e4 26 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c6d24f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 4f d2 c6 f7 7f 00 00}
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
; tbl~lookup_gn256_0o[1751] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 58 fb dc c6 f7 7f 00 00 e8 e0 06 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 f8 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 62 d2 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 a1 06 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 f7 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 62 d2 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 62 06 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 f7 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 62 d2 c6 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 23 06 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 f7 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 62 d2 c6 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 e4 05 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 f7 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 61 d2 c6 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 a5 05 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 f6 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 61 d2 c6 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 66 05 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 f6 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 61 d2 c6 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 27 05 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 f6 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 61 d2 c6 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 e8 04 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 f6 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 61 d2 c6 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 a9 04 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 da f5 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 61 d2 c6 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 6a 04 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b f5 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 61 d2 c6 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 2b 04 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c f5 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 61 d2 c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 ec 03 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d f5 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 51 d2 c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 ad 03 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 de f4 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 51 d2 c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 6e 03 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f f4 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 51 d2 c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 2f 03 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 f4 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 51 d2 c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 f0 02 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 f4 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 51 d2 c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 b1 02 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 f3 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 51 d2 c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 72 02 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 f3 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 51 d2 c6 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 33 02 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 f3 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 51 d2 c6 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 f4 01 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 f3 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 51 d2 c6 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 b5 01 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 f2 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 51 d2 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 76 01 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 f2 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 51 d2 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 37 01 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 f2 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 50 d2 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 fb dc c6 f7 7f 00 00 e8 f8 00 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 f2 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 50 d2 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 fb dc c6 f7 7f 00 00 e8 bc 00 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed f1 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 50 d2 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 fb dc c6 f7 7f 00 00 e8 80 00 18 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 f1 17 5f 48 b8 f0 e4 26 c6 f7 7f 00 00 48 89 46 18 48 b8 c0 50 d2 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 06 18 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 f8 17 5f}
004fh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d26230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 62 d2 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 06 18 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 f7 17 5f}
008eh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d26220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 62 d2 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 06 18 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 f7 17 5f}
00cdh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6d26210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 62 d2 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 06 18 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 f7 17 5f}
010ch mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6d26200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 62 d2 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 05 18 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 f7 17 5f}
014bh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c6d261f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 61 d2 c6 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 05 18 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 f6 17 5f}
018ah mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c6d261e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 61 d2 c6 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 05 18 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 f6 17 5f}
01c9h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c6d261d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 61 d2 c6 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 05 18 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 f6 17 5f}
0208h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c6d261c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 61 d2 c6 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 04 18 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f6 17 5f}
0247h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c6d261b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 61 d2 c6 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 04 18 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da f5 17 5f}
0286h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c6d261a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 61 d2 c6 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 04 18 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f5 17 5f}
02c5h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c6d26190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 61 d2 c6 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 04 18 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c f5 17 5f}
0304h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c6d26180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 61 d2 c6 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 03 18 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d f5 17 5f}
0343h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c6d251a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 51 d2 c6 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 03 18 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de f4 17 5f}
0382h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c6d25190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 51 d2 c6 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 03 18 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f f4 17 5f}
03c1h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c6d25180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 51 d2 c6 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 03 18 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 f4 17 5f}
0400h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c6d25170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 51 d2 c6 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 02 18 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 f4 17 5f}
043fh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c6d25160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 51 d2 c6 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 02 18 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 f3 17 5f}
047eh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c6d25150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 51 d2 c6 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 02 18 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 f3 17 5f}
04bdh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
04c7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
04cbh mov rcx,7ff7c6d25140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 51 d2 c6 f7 7f 00 00}
04d5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
04d9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
04deh mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
04e8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 02 18 5f}
04edh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04f0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 f3 17 5f}
04fch mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0506h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
050ah mov rcx,7ff7c6d25130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 51 d2 c6 f7 7f 00 00}
0514h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0518h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
051dh mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
0527h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 01 18 5f}
052ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
052fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0533h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0536h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 f3 17 5f}
053bh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0545h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0549h mov rcx,7ff7c6d25120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 51 d2 c6 f7 7f 00 00}
0553h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0557h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
055ch mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
0566h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 01 18 5f}
056bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
056eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 f2 17 5f}
057ah mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0584h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0588h mov rcx,7ff7c6d25110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 51 d2 c6 f7 7f 00 00}
0592h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0596h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
059bh mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
05a5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 01 18 5f}
05aah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05adh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05b1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05b4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 f2 17 5f}
05b9h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
05c3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
05c7h mov rcx,7ff7c6d25100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 51 d2 c6 f7 7f 00 00}
05d1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
05d5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
05dah mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
05e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 01 18 5f}
05e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
05ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
05f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 f2 17 5f}
05f8h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0602h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0606h mov rcx,7ff7c6d250f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 50 d2 c6 f7 7f 00 00}
0610h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0614h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0619h mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
0623h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 00 18 5f}
0628h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
062bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
062fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0632h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 f2 17 5f}
0637h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0641h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0645h mov rcx,7ff7c6d250e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 50 d2 c6 f7 7f 00 00}
064fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0653h jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0655h mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
065fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 00 18 5f}
0664h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0667h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
066bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f1 17 5f}
0673h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
067dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0681h mov rcx,7ff7c6d250d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 50 d2 c6 f7 7f 00 00}
068bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
068fh jmp short 06cbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0691h mov rcx,7ff7c6dcfb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 fb dc c6 f7 7f 00 00}
069bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 00 18 5f}
06a0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
06a3h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
06a7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06aah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 f1 17 5f}
06afh mov rax,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 e4 26 c6 f7 7f 00 00}
06b9h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
06bdh mov rax,7ff7c6d250c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 50 d2 c6 f7 7f 00 00}
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
; tbl~lookup_gn256_0o[1210] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c8 fd dc c6 f7 7f 00 00 e8 00 ff 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 f0 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 63 d2 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 c1 fe 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 ef 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 63 d2 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 82 fe 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 ef 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 63 d2 c6 f7 7f 00 00 48 89 4e 20 e9 dd 05 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 43 fe 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 ef 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 63 d2 c6 f7 7f 00 00 48 89 4e 20 e9 9e 05 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 04 fe 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 ef 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 63 d2 c6 f7 7f 00 00 48 89 4e 20 e9 5f 05 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 c5 fd 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 ee 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 63 d2 c6 f7 7f 00 00 48 89 4e 20 e9 20 05 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 86 fd 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 ee 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 63 d2 c6 f7 7f 00 00 48 89 4e 20 e9 e1 04 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 47 fd 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 ee 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 63 d2 c6 f7 7f 00 00 48 89 4e 20 e9 a2 04 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 08 fd 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 ee 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 63 d2 c6 f7 7f 00 00 48 89 4e 20 e9 63 04 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 c9 fc 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa ed 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 63 d2 c6 f7 7f 00 00 48 89 4e 20 e9 24 04 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 8a fc 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb ed 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 63 d2 c6 f7 7f 00 00 48 89 4e 20 e9 e5 03 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 4b fc 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c ed 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 63 d2 c6 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 0c fc 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d ed 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 63 d2 c6 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 cd fb 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe ec 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 63 d2 c6 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 8e fb 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf ec 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 63 d2 c6 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 4f fb 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 ec 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 62 d2 c6 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 10 fb 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 ec 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 62 d2 c6 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 d1 fa 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 ec 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 62 d2 c6 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c8 fd dc c6 f7 7f 00 00 e8 92 fa 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
0031h mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 ff 17 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 f0 17 5f}
004fh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d263e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 63 d2 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 fe 17 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 ef 17 5f}
008eh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d263d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 63 d2 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 fe 17 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 ef 17 5f}
00cdh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6d263c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 63 d2 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
00eeh mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 fe 17 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 ef 17 5f}
010ch mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6d263b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 63 d2 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 05 00 00}
012dh mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
0137h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 fe 17 5f}
013ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013fh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 ef 17 5f}
014bh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0155h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0159h mov rcx,7ff7c6d263a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 63 d2 c6 f7 7f 00 00}
0163h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0167h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 05 00 00}
016ch mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
0176h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 fd 17 5f}
017bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017eh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0182h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0185h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 ee 17 5f}
018ah mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0194h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0198h mov rcx,7ff7c6d26390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 63 d2 c6 f7 7f 00 00}
01a2h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a6h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 05 00 00}
01abh mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
01b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fd 17 5f}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c4h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 ee 17 5f}
01c9h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
01d3h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d7h mov rcx,7ff7c6d26380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 63 d2 c6 f7 7f 00 00}
01e1h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e5h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 04 00 00}
01eah mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
01f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 fd 17 5f}
01f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0200h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0203h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 ee 17 5f}
0208h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0212h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0216h mov rcx,7ff7c6d26370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 63 d2 c6 f7 7f 00 00}
0220h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0224h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 04 00 00}
0229h mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
0233h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 fd 17 5f}
0238h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
023bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0242h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 ee 17 5f}
0247h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0251h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0255h mov rcx,7ff7c6d26360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 63 d2 c6 f7 7f 00 00}
025fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0263h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 04 00 00}
0268h mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
0272h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 fc 17 5f}
0277h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
027ah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0281h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa ed 17 5f}
0286h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0290h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0294h mov rcx,7ff7c6d26350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 63 d2 c6 f7 7f 00 00}
029eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a2h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 24 04 00 00}
02a7h mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
02b1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a fc 17 5f}
02b6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b9h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c0h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb ed 17 5f}
02c5h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
02cfh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d3h mov rcx,7ff7c6d26340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 63 d2 c6 f7 7f 00 00}
02ddh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02e1h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 03 00 00}
02e6h mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
02f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b fc 17 5f}
02f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f8h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02ffh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c ed 17 5f}
0304h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
030eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0312h mov rcx,7ff7c6d26330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 63 d2 c6 f7 7f 00 00}
031ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0320h jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
0325h mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
032fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c fc 17 5f}
0334h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0337h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
033bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d ed 17 5f}
0343h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
034dh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0351h mov rcx,7ff7c6d26320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 63 d2 c6 f7 7f 00 00}
035bh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035fh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
0364h mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
036eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd fb 17 5f}
0373h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0376h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
037ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037dh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe ec 17 5f}
0382h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
038ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0390h mov rcx,7ff7c6d26310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 63 d2 c6 f7 7f 00 00}
039ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039eh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
03a3h mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
03adh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e fb 17 5f}
03b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b5h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03bch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf ec 17 5f}
03c1h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
03cbh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cfh mov rcx,7ff7c6d26300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 63 d2 c6 f7 7f 00 00}
03d9h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03ddh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
03e2h mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
03ech call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f fb 17 5f}
03f1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03f4h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03fbh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 ec 17 5f}
0400h mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
040ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
040eh mov rcx,7ff7c6d262f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 62 d2 c6 f7 7f 00 00}
0418h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
041ch jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
0421h mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
042bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 fb 17 5f}
0430h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0433h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0437h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
043ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 ec 17 5f}
043fh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0449h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
044dh mov rcx,7ff7c6d262e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 62 d2 c6 f7 7f 00 00}
0457h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
045bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
0460h mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
046ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 fa 17 5f}
046fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0472h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0476h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0479h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 ec 17 5f}
047eh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0488h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
048ch mov rcx,7ff7c6d262d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 62 d2 c6 f7 7f 00 00}
0496h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
049ah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
049fh mov rcx,7ff7c6dcfdc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fd dc c6 f7 7f 00 00}
04a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 fa 17 5f}
04aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
04b1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
04b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; TernaryOp<Vector256<long>> lookup<long>(N256 w, TernaryBitLogicKind:byte kind)
; tbl~lookup_gn256_0o[202] = {57 56 55 53 48 83 ec 28 8b f2 40 0f b6 ce ff c9 83 f9 1a 0f 87 be 06 00 00 8b c9 48 8d 05 36 07 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 00 dd c6 f7 7f 00 00 e8 10 f3 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 e4 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 75 d2 c6 f7 7f 00 00 48 89 4e 20 e9 5b 06 00 00 48 b9 c0 00 dd c6 f7 7f 00 00 e8 d1 f2 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 e4 17 5f 48 b9 f0 e4 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 75 d2 c6 f7 7f 00 00 48 89 4e 20 e9 1c 06 00 00 48 b9 c0 00 dd c6 f7 7f 00 00 e8 92 f2 17 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
0031h mov rcx,7ff7c6dd00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 dd c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 f3 17 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 e4 17 5f}
004fh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6d27560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 75 d2 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
0070h mov rcx,7ff7c6dd00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 dd c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f2 17 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 e4 17 5f}
008eh mov rcx,7ff7c626e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6d27550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 75 d2 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 06cbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
00afh mov rcx,7ff7c6dd00c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 00 dd c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f2 17 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
