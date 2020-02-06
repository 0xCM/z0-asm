------------------------------------------------------------------------------------------------------------------------
; BinaryPred<byte> lookup<byte>(ComparisonKind:byte kind)
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 af 96 c7 f7 7f 00 00 e8 50 b8 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 a9 b0 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 a7 eb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 af 96 c7 f7 7f 00 00 e8 11 b8 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 a9 b0 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 cd eb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 af 96 c7 f7 7f 00 00 e8 d2 b7 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 a9 b0 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 bd eb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 af 96 c7 f7 7f 00 00 e8 93 b7 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 a8 b0 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 c4 eb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 af 96 c7 f7 7f 00 00 e8 57 b7 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 88 a8 b0 5e 48 b9 e0 e3 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 b5 eb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 af 96 c7 f7 7f 00 00 e8 1b b7 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c a8 b0 5e 48 b8 e0 e3 25 c6 f7 7f 00 00 48 89 46 18 48 b8 10 b8 eb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c796af60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 af 96 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 b8 b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 a9 b0 5e}
004fh mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6eba7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a7 eb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c796af60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 af 96 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 b8 b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 a9 b0 5e}
008eh mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ebcd50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cd eb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c796af60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 af 96 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 b7 b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 a9 b0 5e}
00cdh mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ebbd50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 bd eb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c796af60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 af 96 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 b7 b0 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 a8 b0 5e}
010ch mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ebc430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c4 eb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c796af60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 af 96 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 b7 b0 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 a8 b0 5e}
0148h mov rcx,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e3 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ebb530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b5 eb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c796af60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 af 96 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b b7 b0 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c a8 b0 5e}
0184h mov rax,7ff7c625e3e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e3 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ebb810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 b8 eb c6 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 b4 96 c7 f7 7f 00 00 e8 e0 b5 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 a7 b0 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 a7 eb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 b4 96 c7 f7 7f 00 00 e8 a1 b5 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 a6 b0 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 cd eb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 b4 96 c7 f7 7f 00 00 e8 62 b5 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 a6 b0 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 bd eb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 10 b4 96 c7 f7 7f 00 00 e8 23 b5 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 a6 b0 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 c4 eb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 10 b4 96 c7 f7 7f 00 00 e8 e7 b4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 a6 b0 5e 48 b9 e0 e5 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 b5 eb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 10 b4 96 c7 f7 7f 00 00 e8 ab b4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc a5 b0 5e 48 b8 e0 e5 25 c6 f7 7f 00 00 48 89 46 18 48 b8 40 bc eb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c796b410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b4 96 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 b5 b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 a7 b0 5e}
004fh mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6eba7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a7 eb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c796b410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b4 96 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 b5 b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 a6 b0 5e}
008eh mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ebcd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cd eb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c796b410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b4 96 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b5 b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 a6 b0 5e}
00cdh mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ebbd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 bd eb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c796b410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b4 96 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 b5 b0 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 a6 b0 5e}
010ch mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ebc460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 c4 eb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c796b410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b4 96 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 b4 b0 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 a6 b0 5e}
0148h mov rcx,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e5 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ebb560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 b5 eb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c796b410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b4 96 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab b4 b0 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc a5 b0 5e}
0184h mov rax,7ff7c625e5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e5 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ebbc40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 bc eb c6 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 20 b6 96 c7 f7 7f 00 00 e8 70 b3 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 a4 b0 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 a8 eb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 b6 96 c7 f7 7f 00 00 e8 31 b3 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 a4 b0 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 cd eb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 b6 96 c7 f7 7f 00 00 e8 f2 b2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 a4 b0 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 bd eb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 b6 96 c7 f7 7f 00 00 e8 b3 b2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 a3 b0 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 c4 eb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 b6 96 c7 f7 7f 00 00 e8 77 b2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 a3 b0 5e 48 b9 20 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 b5 eb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 b6 96 c7 f7 7f 00 00 e8 3b b2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c a3 b0 5e 48 b8 20 e6 25 c6 f7 7f 00 00 48 89 46 18 48 b8 70 bc eb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c796b620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 96 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 b3 b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 a4 b0 5e}
004fh mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6eba810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a8 eb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c796b620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 96 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 b3 b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 a4 b0 5e}
008eh mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ebcdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cd eb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c796b620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 96 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 b2 b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 a4 b0 5e}
00cdh mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ebbdb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bd eb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c796b620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 96 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 b2 b0 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 a3 b0 5e}
010ch mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ebc490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 c4 eb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c796b620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 96 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b2 b0 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 a3 b0 5e}
0148h mov rcx,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e6 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ebb590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 b5 eb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c796b620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 96 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b b2 b0 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c a3 b0 5e}
0184h mov rax,7ff7c625e620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e6 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ebbc70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 bc eb c6 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 30 b8 96 c7 f7 7f 00 00 e8 00 ad b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 9e b0 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 ac eb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 30 b8 96 c7 f7 7f 00 00 e8 c1 ac b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 9d b0 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 d1 eb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 30 b8 96 c7 f7 7f 00 00 e8 82 ac b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 9d b0 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 bd eb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 30 b8 96 c7 f7 7f 00 00 e8 43 ac b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 9d b0 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 c4 eb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 30 b8 96 c7 f7 7f 00 00 e8 07 ac b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 9d b0 5e 48 b9 60 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 b5 eb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 30 b8 96 c7 f7 7f 00 00 e8 cb ab b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc 9c b0 5e 48 b8 60 e6 25 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 bc eb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c796b830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 96 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 ad b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 9e b0 5e}
004fh mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ebac40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ac eb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c796b830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 96 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 ac b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 9d b0 5e}
008eh mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ebd1e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d1 eb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c796b830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 96 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 ac b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 9d b0 5e}
00cdh mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ebbde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 bd eb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c796b830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 96 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 ac b0 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 9d b0 5e}
010ch mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ebc4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 c4 eb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c796b830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 96 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 ac b0 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 9d b0 5e}
0148h mov rcx,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ebb5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 b5 eb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c796b830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b8 96 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb ab b0 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 9c b0 5e}
0184h mov rax,7ff7c625e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e6 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ebbca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 bc eb c6 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 ba 96 c7 f7 7f 00 00 e8 90 aa b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 9b b0 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 ac eb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 40 ba 96 c7 f7 7f 00 00 e8 51 aa b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 9b b0 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 d2 eb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 40 ba 96 c7 f7 7f 00 00 e8 12 aa b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 9b b0 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 be eb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 40 ba 96 c7 f7 7f 00 00 e8 d3 a9 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 9b b0 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 c4 eb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 40 ba 96 c7 f7 7f 00 00 e8 97 a9 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 9a b0 5e 48 b9 a0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 b5 eb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 40 ba 96 c7 f7 7f 00 00 e8 5b a9 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8c 9a b0 5e 48 b8 a0 e6 25 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 bc eb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c796ba40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ba 96 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 aa b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 9b b0 5e}
004fh mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ebac70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ac eb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c796ba40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ba 96 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 aa b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 9b b0 5e}
008eh mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ebd210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d2 eb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c796ba40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ba 96 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 aa b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 9b b0 5e}
00cdh mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ebbe10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 be eb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c796ba40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ba 96 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 a9 b0 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 9b b0 5e}
010ch mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ebc4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 c4 eb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c796ba40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ba 96 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 a9 b0 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 9a b0 5e}
0148h mov rcx,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ebb5f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 b5 eb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c796ba40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ba 96 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b a9 b0 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 9a b0 5e}
0184h mov rax,7ff7c625e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e6 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ebbcd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 bc eb c6 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 50 bc 96 c7 f7 7f 00 00 e8 20 a8 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 99 b0 5e 48 b9 e0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 ac eb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 50 bc 96 c7 f7 7f 00 00 e8 e1 a7 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 99 b0 5e 48 b9 e0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 d2 eb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 50 bc 96 c7 f7 7f 00 00 e8 a2 a7 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 98 b0 5e 48 b9 e0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 be eb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 50 bc 96 c7 f7 7f 00 00 e8 63 a7 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 98 b0 5e 48 b9 e0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 c5 eb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 50 bc 96 c7 f7 7f 00 00 e8 27 a7 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 98 b0 5e 48 b9 e0 e6 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 b6 eb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 50 bc 96 c7 f7 7f 00 00 e8 eb a6 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 98 b0 5e 48 b8 e0 e6 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 bc eb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c796bc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 bc 96 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 a8 b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 99 b0 5e}
004fh mov rcx,7ff7c625e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ebac90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ac eb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c796bc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 bc 96 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 a7 b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 99 b0 5e}
008eh mov rcx,7ff7c625e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ebd230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 d2 eb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c796bc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 bc 96 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 a7 b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 98 b0 5e}
00cdh mov rcx,7ff7c625e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ebbe30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 be eb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c796bc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 bc 96 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 a7 b0 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 98 b0 5e}
010ch mov rcx,7ff7c625e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ebc510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 c5 eb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c796bc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 bc 96 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 a7 b0 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 98 b0 5e}
0148h mov rcx,7ff7c625e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ebb610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b6 eb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c796bc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 bc 96 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb a6 b0 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 98 b0 5e}
0184h mov rax,7ff7c625e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e6 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ebbcf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 bc eb c6 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 be 96 c7 f7 7f 00 00 e8 b0 a5 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 96 b0 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 ac eb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 be 96 c7 f7 7f 00 00 e8 71 a5 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 96 b0 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 d2 eb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 be 96 c7 f7 7f 00 00 e8 32 a5 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 96 b0 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 be eb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 be 96 c7 f7 7f 00 00 e8 f3 a4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 96 b0 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 c5 eb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 60 be 96 c7 f7 7f 00 00 e8 b7 a4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 95 b0 5e 48 b9 20 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 b6 eb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 60 be 96 c7 f7 7f 00 00 e8 7b a4 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 95 b0 5e 48 b8 20 e7 25 c6 f7 7f 00 00 48 89 46 18 48 b8 10 bd eb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c796be60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 be 96 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 a5 b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 96 b0 5e}
004fh mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ebacb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ac eb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c796be60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 be 96 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 a5 b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 96 b0 5e}
008eh mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ebd250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d2 eb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c796be60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 be 96 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 a5 b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 96 b0 5e}
00cdh mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ebbe50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 be eb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c796be60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 be 96 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 a4 b0 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 96 b0 5e}
010ch mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ebc530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c5 eb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c796be60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 be 96 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 a4 b0 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 95 b0 5e}
0148h mov rcx,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ebb630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b6 eb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c796be60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 be 96 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b a4 b0 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 95 b0 5e}
0184h mov rax,7ff7c625e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e7 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ebbd10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 bd eb c6 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 70 c0 96 c7 f7 7f 00 00 e8 40 a3 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 94 b0 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 ac eb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 70 c0 96 c7 f7 7f 00 00 e8 01 a3 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 94 b0 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 d2 eb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 70 c0 96 c7 f7 7f 00 00 e8 c2 a2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 93 b0 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 be eb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 70 c0 96 c7 f7 7f 00 00 e8 83 a2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 93 b0 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 c5 eb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 70 c0 96 c7 f7 7f 00 00 e8 47 a2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 93 b0 5e 48 b9 60 e7 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 b6 eb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 70 c0 96 c7 f7 7f 00 00 e8 0b a2 b0 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 93 b0 5e 48 b8 60 e7 25 c6 f7 7f 00 00 48 89 46 18 48 b8 30 bd eb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_Zx7_RET
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
0031h mov rcx,7ff7c796c070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c0 96 c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 a3 b0 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 94 b0 5e}
004fh mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ebacd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ac eb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c796c070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c0 96 c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 a3 b0 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 94 b0 5e}
008eh mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ebd270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d2 eb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c796c070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c0 96 c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 a2 b0 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 93 b0 5e}
00cdh mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ebbe70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 be eb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c796c070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c0 96 c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 a2 b0 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 93 b0 5e}
010ch mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ebc550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 c5 eb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c796c070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c0 96 c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a2 b0 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 93 b0 5e}
0148h mov rcx,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 25 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ebb650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b6 eb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c796c070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c0 96 c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b a2 b0 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 93 b0 5e}
0184h mov rax,7ff7c625e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 e7 25 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ebbd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 bd eb c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
