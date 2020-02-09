------------------------------------------------------------------------------------------------------------------------
; BinaryPred<byte> lookup<byte>(ComparisonKind:byte kind)
; lookup_g[8u](ComparisonKind~8u)[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e8 fa c6 c8 f7 7f 00 00 e8 e0 72 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 64 b7 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 e1 1b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e8 fa c6 c8 f7 7f 00 00 e8 a1 72 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 63 b7 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 07 1c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e8 fa c6 c8 f7 7f 00 00 e8 62 72 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 63 b7 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 f7 1b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e8 fa c6 c8 f7 7f 00 00 e8 23 72 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 63 b7 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 fa 1b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e8 fa c6 c8 f7 7f 00 00 e8 e7 71 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 63 b7 5e 48 b9 00 e7 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 ef 1b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e8 fa c6 c8 f7 7f 00 00 e8 ab 71 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 62 b7 5e 48 b8 00 e7 61 c7 f7 7f 00 00 48 89 46 18 48 b8 30 f2 1b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c8c6fae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fa c6 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 72 b7 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 64 b7 5e}
004fh mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c81be1d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e1 1b c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c6fae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fa c6 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 72 b7 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 63 b7 5e}
008eh mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c81c07a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 07 1c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c6fae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fa c6 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 72 b7 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 63 b7 5e}
00cdh mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c81bf780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f7 1b c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c6fae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fa c6 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 72 b7 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 63 b7 5e}
010ch mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c81bfa60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 fa 1b c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c6fae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fa c6 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 71 b7 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 63 b7 5e}
0148h mov rcx,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 61 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c81bef50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ef 1b c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c6fae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fa c6 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 71 b7 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 62 b7 5e}
0184h mov rax,7ff7c761e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e7 61 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c81bf230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 f2 1b c8 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
; lookup_g[8i](ComparisonKind~8u)[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 00 c9 c8 f7 7f 00 00 e8 70 70 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 61 b7 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 e2 1b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 00 c9 c8 f7 7f 00 00 e8 31 70 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 61 b7 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 07 1c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 00 c9 c8 f7 7f 00 00 e8 f2 6f b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 61 b7 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 f7 1b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 00 c9 c8 f7 7f 00 00 e8 b3 6f b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 60 b7 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 fa 1b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 00 c9 c8 f7 7f 00 00 e8 77 6f b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 60 b7 5e 48 b9 00 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 ef 1b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 00 c9 c8 f7 7f 00 00 e8 3b 6f b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 60 b7 5e 48 b8 00 e9 61 c7 f7 7f 00 00 48 89 46 18 48 b8 60 f2 1b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c8c90048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 70 b7 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 61 b7 5e}
004fh mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c81be200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e2 1b c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c90048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 70 b7 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 61 b7 5e}
008eh mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c81c07d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 07 1c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c90048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 6f b7 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 61 b7 5e}
00cdh mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c81bf7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 f7 1b c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c90048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 6f b7 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 60 b7 5e}
010ch mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c81bfa90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fa 1b c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c90048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 6f b7 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 60 b7 5e}
0148h mov rcx,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e9 61 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c81bef80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ef 1b c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c90048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 6f b7 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 60 b7 5e}
0184h mov rax,7ff7c761e900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e9 61 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c81bf260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 f2 1b c8 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<ushort> lookup<ushort>(ComparisonKind:byte kind)
; lookup_g[16u](ComparisonKind~8u)[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 58 02 c9 c8 f7 7f 00 00 e8 00 6e b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 5f b7 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 e2 1b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 02 c9 c8 f7 7f 00 00 e8 c1 6d b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 5e b7 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 08 1c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 02 c9 c8 f7 7f 00 00 e8 82 6d b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 5e b7 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 f7 1b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 02 c9 c8 f7 7f 00 00 e8 43 6d b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 5e b7 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 fa 1b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 02 c9 c8 f7 7f 00 00 e8 07 6d b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 5e b7 5e 48 b9 40 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 ef 1b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 02 c9 c8 f7 7f 00 00 e8 cb 6c b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc 5d b7 5e 48 b8 40 e9 61 c7 f7 7f 00 00 48 89 46 18 48 b8 90 f2 1b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c8c90258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 6e b7 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 5f b7 5e}
004fh mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c81be230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e2 1b c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c90258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 6d b7 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 5e b7 5e}
008eh mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c81c0800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 08 1c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c90258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 6d b7 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 5e b7 5e}
00cdh mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c81bf7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f7 1b c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c90258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 6d b7 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 5e b7 5e}
010ch mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c81bfac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 fa 1b c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c90258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 6d b7 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 5e b7 5e}
0148h mov rcx,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e9 61 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c81befb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ef 1b c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c90258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 6c b7 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 5d b7 5e}
0184h mov rax,7ff7c761e940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e9 61 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c81bf290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 f2 1b c8 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<short> lookup<short>(ComparisonKind:byte kind)
; lookup_g[16i](ComparisonKind~8u)[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 04 c9 c8 f7 7f 00 00 e8 90 67 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 58 b7 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 e2 1b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 68 04 c9 c8 f7 7f 00 00 e8 51 67 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 58 b7 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 08 1c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 68 04 c9 c8 f7 7f 00 00 e8 12 67 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 58 b7 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 f8 1b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 68 04 c9 c8 f7 7f 00 00 e8 d3 66 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 58 b7 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 fa 1b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 68 04 c9 c8 f7 7f 00 00 e8 97 66 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 57 b7 5e 48 b9 80 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 ef 1b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 68 04 c9 c8 f7 7f 00 00 e8 5b 66 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8c 57 b7 5e 48 b8 80 e9 61 c7 f7 7f 00 00 48 89 46 18 48 b8 c0 f2 1b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c8c90468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 04 c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 67 b7 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 58 b7 5e}
004fh mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c81be260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e2 1b c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c90468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 04 c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 67 b7 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 58 b7 5e}
008eh mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c81c0830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 08 1c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c90468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 04 c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 67 b7 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 58 b7 5e}
00cdh mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c81bf810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f8 1b c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c90468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 04 c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 66 b7 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 58 b7 5e}
010ch mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c81bfaf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 fa 1b c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c90468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 04 c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 66 b7 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 57 b7 5e}
0148h mov rcx,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 61 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c81befe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 ef 1b c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c90468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 04 c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 66 b7 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 57 b7 5e}
0184h mov rax,7ff7c761e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e9 61 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c81bf2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 f2 1b c8 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<uint> lookup<uint>(ComparisonKind:byte kind)
; lookup_g[32u](ComparisonKind~8u)[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 06 c9 c8 f7 7f 00 00 e8 20 65 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 56 b7 5e 48 b9 c0 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 e2 1b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 06 c9 c8 f7 7f 00 00 e8 e1 64 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 56 b7 5e 48 b9 c0 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 08 1c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 06 c9 c8 f7 7f 00 00 e8 a2 64 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 55 b7 5e 48 b9 c0 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 40 f8 1b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 06 c9 c8 f7 7f 00 00 e8 63 64 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 55 b7 5e 48 b9 c0 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 fb 1b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 06 c9 c8 f7 7f 00 00 e8 27 64 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 55 b7 5e 48 b9 c0 e9 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 10 f0 1b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 06 c9 c8 f7 7f 00 00 e8 eb 63 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 55 b7 5e 48 b8 c0 e9 61 c7 f7 7f 00 00 48 89 46 18 48 b8 f0 f2 1b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c8c90678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 06 c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 65 b7 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 56 b7 5e}
004fh mov rcx,7ff7c761e9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e9 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c81be290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e2 1b c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c90678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 06 c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 64 b7 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 56 b7 5e}
008eh mov rcx,7ff7c761e9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e9 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c81c0860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 08 1c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c90678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 06 c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 64 b7 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 55 b7 5e}
00cdh mov rcx,7ff7c761e9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e9 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c81bf840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f8 1b c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c90678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 06 c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 64 b7 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 55 b7 5e}
010ch mov rcx,7ff7c761e9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e9 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c81bfb20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fb 1b c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c90678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 06 c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 64 b7 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 55 b7 5e}
0148h mov rcx,7ff7c761e9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e9 61 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c81bf010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f0 1b c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c90678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 06 c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 63 b7 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 55 b7 5e}
0184h mov rax,7ff7c761e9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e9 61 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c81bf2f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 f2 1b c8 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<int> lookup<int>(ComparisonKind:byte kind)
; lookup_g[32i](ComparisonKind~8u)[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 88 08 c9 c8 f7 7f 00 00 e8 b0 62 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 53 b7 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 e2 1b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 88 08 c9 c8 f7 7f 00 00 e8 71 62 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 53 b7 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 08 1c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 88 08 c9 c8 f7 7f 00 00 e8 32 62 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 53 b7 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 f8 1b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 88 08 c9 c8 f7 7f 00 00 e8 f3 61 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 53 b7 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 ff 1b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 88 08 c9 c8 f7 7f 00 00 e8 b7 61 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 52 b7 5e 48 b9 00 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 f0 1b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 88 08 c9 c8 f7 7f 00 00 e8 7b 61 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 52 b7 5e 48 b8 00 ea 61 c7 f7 7f 00 00 48 89 46 18 48 b8 10 f3 1b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c8c90888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 08 c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 62 b7 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 53 b7 5e}
004fh mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c81be2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e2 1b c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c90888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 08 c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 62 b7 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 53 b7 5e}
008eh mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c81c0880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 08 1c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c90888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 08 c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 62 b7 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 53 b7 5e}
00cdh mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c81bf860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 1b c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c90888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 08 c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 61 b7 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 53 b7 5e}
010ch mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c81bff50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ff 1b c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c90888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 08 c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 61 b7 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 52 b7 5e}
0148h mov rcx,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 ea 61 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c81bf030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f0 1b c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c90888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 08 c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 61 b7 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 52 b7 5e}
0184h mov rax,7ff7c761ea00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ea 61 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c81bf310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 f3 1b c8 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<ulong> lookup<ulong>(ComparisonKind:byte kind)
; lookup_g[64u](ComparisonKind~8u)[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 0a c9 c8 f7 7f 00 00 e8 40 60 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 51 b7 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 e2 1b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 98 0a c9 c8 f7 7f 00 00 e8 01 60 b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 51 b7 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 08 1c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 98 0a c9 c8 f7 7f 00 00 e8 c2 5f b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 50 b7 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 f8 1b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 98 0a c9 c8 f7 7f 00 00 e8 83 5f b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 50 b7 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 ff 1b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 98 0a c9 c8 f7 7f 00 00 e8 47 5f b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 50 b7 5e 48 b9 40 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 f0 1b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 98 0a c9 c8 f7 7f 00 00 e8 0b 5f b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 50 b7 5e 48 b8 40 ea 61 c7 f7 7f 00 00 48 89 46 18 48 b8 40 f7 1b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c8c90a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0a c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 60 b7 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 51 b7 5e}
004fh mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c81be2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e2 1b c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c90a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0a c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 60 b7 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 51 b7 5e}
008eh mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c81c08a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 08 1c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c90a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0a c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 5f b7 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 50 b7 5e}
00cdh mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c81bf880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f8 1b c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c90a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0a c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 5f b7 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 50 b7 5e}
010ch mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c81bff70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ff 1b c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c90a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0a c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 5f b7 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 50 b7 5e}
0148h mov rcx,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ea 61 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c81bf050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f0 1b c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c90a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0a c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 5f b7 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 50 b7 5e}
0184h mov rax,7ff7c761ea40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 ea 61 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c81bf740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 f7 1b c8 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<long> lookup<long>(ComparisonKind:byte kind)
; lookup_g[64i](ComparisonKind~8u)[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 0c c9 c8 f7 7f 00 00 e8 d0 5d b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 4f b7 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 e2 1b c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 0c c9 c8 f7 7f 00 00 e8 91 5d b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 4e b7 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 08 1c c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 0c c9 c8 f7 7f 00 00 e8 52 5d b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 4e b7 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 f8 1b c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 0c c9 c8 f7 7f 00 00 e8 13 5d b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 4e b7 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 ff 1b c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 0c c9 c8 f7 7f 00 00 e8 d7 5c b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 4e b7 5e 48 b9 80 ea 61 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 f0 1b c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 0c c9 c8 f7 7f 00 00 e8 9b 5c b7 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 4d b7 5e 48 b8 80 ea 61 c7 f7 7f 00 00 48 89 46 18 48 b8 60 f7 1b c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0013h ja near ptr 01ach                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 93 01 00 00}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rax,[rip+20eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0e 02 00 00}
0022h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0025h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002ch add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0031h mov rcx,7ff7c8c90ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0c c9 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 5d b7 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 4f b7 5e}
004fh mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c81be2f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e2 1b c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8c90ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0c c9 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 5d b7 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 4e b7 5e}
008eh mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c81c08c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 08 1c c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8c90ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0c c9 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 5d b7 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 4e b7 5e}
00cdh mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c81bf8a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f8 1b c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8c90ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0c c9 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 5d b7 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 4e b7 5e}
010ch mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c81bff90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ff 1b c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8c90ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0c c9 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 5c b7 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 4e b7 5e}
0148h mov rcx,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea 61 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c81bf070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f0 1b c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8c90ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0c c9 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 5c b7 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 4d b7 5e}
0184h mov rax,7ff7c761ea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 ea 61 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c81bf760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 f7 1b c8 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
