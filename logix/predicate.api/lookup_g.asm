------------------------------------------------------------------------------------------------------------------------
; BinaryPred<byte> lookup<byte>(ComparisonKind:byte kind)
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 41 d4 c8 f7 7f 00 00 e8 d0 ab ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 9d ae 5e 48 b9 a0 e4 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 6f 28 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 41 d4 c8 f7 7f 00 00 e8 91 ab ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 9c ae 5e 48 b9 a0 e4 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 95 28 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 41 d4 c8 f7 7f 00 00 e8 52 ab ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 9c ae 5e 48 b9 a0 e4 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 85 28 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 41 d4 c8 f7 7f 00 00 e8 13 ab ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 9c ae 5e 48 b9 a0 e4 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 8c 28 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 41 d4 c8 f7 7f 00 00 e8 d7 aa ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 9c ae 5e 48 b9 a0 e4 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 7d 28 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 41 d4 c8 f7 7f 00 00 e8 9b aa ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 9b ae 5e 48 b8 a0 e4 63 c7 f7 7f 00 00 48 89 46 18 48 b8 50 84 28 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8d44148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 41 d4 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 ab ae 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 9d ae 5e}
004fh mov rcx,7ff7c763e4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e4 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8286ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 28 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8d44148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 41 d4 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 ab ae 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 9c ae 5e}
008eh mov rcx,7ff7c763e4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e4 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c82895a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 95 28 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8d44148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 41 d4 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 ab ae 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 9c ae 5e}
00cdh mov rcx,7ff7c763e4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e4 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8288590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 85 28 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8d44148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 41 d4 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 ab ae 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 9c ae 5e}
010ch mov rcx,7ff7c763e4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e4 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8288c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8c 28 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8d44148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 41 d4 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 aa ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 9c ae 5e}
0148h mov rcx,7ff7c763e4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e4 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c8287d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 7d 28 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8d44148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 41 d4 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b aa ae 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 9b ae 5e}
0184h mov rax,7ff7c763e4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e4 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c8288450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 84 28 c8 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f8 45 d4 c8 f7 7f 00 00 e8 60 a9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 9a ae 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 70 28 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f8 45 d4 c8 f7 7f 00 00 e8 21 a9 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 9a ae 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 99 28 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f8 45 d4 c8 f7 7f 00 00 e8 e2 a8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 9a ae 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 85 28 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f8 45 d4 c8 f7 7f 00 00 e8 a3 a8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 99 ae 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 8c 28 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f8 45 d4 c8 f7 7f 00 00 e8 67 a8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 99 ae 5e 48 b9 a0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 7d 28 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f8 45 d4 c8 f7 7f 00 00 e8 2b a8 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 99 ae 5e 48 b8 a0 e6 63 c7 f7 7f 00 00 48 89 46 18 48 b8 80 84 28 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8d445f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 45 d4 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 a9 ae 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 9a ae 5e}
004fh mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8287020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 70 28 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8d445f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 45 d4 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 a9 ae 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 9a ae 5e}
008eh mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c82899d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 99 28 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8d445f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 45 d4 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 a8 ae 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 9a ae 5e}
00cdh mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c82885c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 85 28 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8d445f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 45 d4 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 a8 ae 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 99 ae 5e}
010ch mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8288ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8c 28 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8d445f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 45 d4 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 a8 ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 99 ae 5e}
0148h mov rcx,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e6 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c8287da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7d 28 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8d445f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 45 d4 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b a8 ae 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 99 ae 5e}
0184h mov rax,7ff7c763e6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e6 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c8288480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 84 28 c8 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 08 48 d4 c8 f7 7f 00 00 e8 f0 a6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 98 ae 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 74 28 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 08 48 d4 c8 f7 7f 00 00 e8 b1 a6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 97 ae 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 9a 28 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 08 48 d4 c8 f7 7f 00 00 e8 72 a6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 97 ae 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 f0 85 28 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 08 48 d4 c8 f7 7f 00 00 e8 33 a6 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 97 ae 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 8c 28 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 08 48 d4 c8 f7 7f 00 00 e8 f7 a5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 97 ae 5e 48 b9 e0 e6 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 d0 7d 28 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 08 48 d4 c8 f7 7f 00 00 e8 bb a5 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec 96 ae 5e 48 b8 e0 e6 63 c7 f7 7f 00 00 48 89 46 18 48 b8 b0 84 28 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8d44808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 48 d4 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 a6 ae 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 98 ae 5e}
004fh mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8287460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 74 28 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8d44808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 48 d4 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 a6 ae 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 97 ae 5e}
008eh mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8289a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 9a 28 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8d44808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 48 d4 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 a6 ae 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 97 ae 5e}
00cdh mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c82885f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 85 28 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8d44808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 48 d4 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 a6 ae 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 97 ae 5e}
010ch mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8288cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 8c 28 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8d44808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 48 d4 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 a5 ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 97 ae 5e}
0148h mov rcx,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e6 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c8287dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 7d 28 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8d44808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 48 d4 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb a5 ae 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 96 ae 5e}
0184h mov rax,7ff7c763e6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e6 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c82884b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 84 28 c8 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[250] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 18 4a d4 c8 f7 7f 00 00 e8 80 a0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 91 ae 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 74 28 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 18 4a d4 c8 f7 7f 00 00 e8 41 a0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 91 ae 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 30 9a 28 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 18 4a d4 c8 f7 7f 00 00 e8 02 a0 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 91 ae 5e 48 b9 20 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 86 28 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 18 4a d4 c8 f7 7f 00 00 e8 c3}
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
0031h mov rcx,7ff7c8d44a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4a d4 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 a0 ae 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 91 ae 5e}
004fh mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8287490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 74 28 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8d44a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4a d4 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 a0 ae 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 91 ae 5e}
008eh mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8289a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 9a 28 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8d44a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4a d4 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 a0 ae 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 91 ae 5e}
00cdh mov rcx,7ff7c763e720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e7 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8288620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 86 28 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8d44a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4a d4 c8 f7 7f 00 00}
00f8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<uint> lookup<uint>(ComparisonKind:byte kind)
; lookup_gComparisonKind~8u[202] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 28 4c d4 c8 f7 7f 00 00 e8 10 9e ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 8f ae 5e 48 b9 60 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 74 28 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 28 4c d4 c8 f7 7f 00 00 e8 d1 9d ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 8f ae 5e 48 b9 60 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 60 9a 28 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 28 4c d4 c8 f7 7f 00 00 e8 92 9d ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
0031h mov rcx,7ff7c8d44c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c d4 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 9e ae 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 8f ae 5e}
004fh mov rcx,7ff7c763e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c82874c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 74 28 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8d44c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c d4 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 9d ae 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 8f ae 5e}
008eh mov rcx,7ff7c763e760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e7 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8289a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 9a 28 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8d44c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4c d4 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 9d ae 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<int> lookup<int>(ComparisonKind:byte kind)
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 38 4e d4 c8 f7 7f 00 00 e8 a0 9b ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 8c ae 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 e0 74 28 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 4e d4 c8 f7 7f 00 00 e8 61 9b ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 8c ae 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 80 9a 28 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 38 4e d4 c8 f7 7f 00 00 e8 22 9b ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 8c ae 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 86 28 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 38 4e d4 c8 f7 7f 00 00 e8 e3 9a ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 8c ae 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 8d 28 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 38 4e d4 c8 f7 7f 00 00 e8 a7 9a ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 8b ae 5e 48 b9 a0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 50 7e 28 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 38 4e d4 c8 f7 7f 00 00 e8 6b 9a ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 8b ae 5e 48 b8 a0 e7 63 c7 f7 7f 00 00 48 89 46 18 48 b8 30 85 28 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8d44e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4e d4 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 9b ae 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 8c ae 5e}
004fh mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c82874e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 74 28 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8d44e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4e d4 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 9b ae 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 8c ae 5e}
008eh mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8289a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9a 28 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8d44e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4e d4 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 9b ae 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 8c ae 5e}
00cdh mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8288670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 86 28 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8d44e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4e d4 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 9a ae 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 8c ae 5e}
010ch mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8288d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 8d 28 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8d44e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4e d4 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 9a ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 8b ae 5e}
0148h mov rcx,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c8287e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7e 28 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8d44e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4e d4 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 9a ae 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 8b ae 5e}
0184h mov rax,7ff7c763e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 e7 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c8288530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 85 28 c8 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 50 d4 c8 f7 7f 00 00 e8 30 99 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 8a ae 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 00 75 28 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 50 d4 c8 f7 7f 00 00 e8 f1 98 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 8a ae 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 a0 9a 28 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 50 d4 c8 f7 7f 00 00 e8 b2 98 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 89 ae 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 86 28 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 50 d4 c8 f7 7f 00 00 e8 73 98 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 89 ae 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 8d 28 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 50 d4 c8 f7 7f 00 00 e8 37 98 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 89 ae 5e 48 b9 e0 e7 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 70 7e 28 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 50 d4 c8 f7 7f 00 00 e8 fb 97 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 89 ae 5e 48 b8 e0 e7 63 c7 f7 7f 00 00 48 89 46 18 48 b8 50 85 28 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8d45048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 50 d4 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 99 ae 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 8a ae 5e}
004fh mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8287500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 75 28 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8d45048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 50 d4 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 98 ae 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 8a ae 5e}
008eh mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8289aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9a 28 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8d45048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 50 d4 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 98 ae 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 89 ae 5e}
00cdh mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c8288690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 86 28 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8d45048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 50 d4 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 98 ae 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 89 ae 5e}
010ch mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8288d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8d 28 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8d45048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 50 d4 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 98 ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 89 ae 5e}
0148h mov rcx,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e7 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c8287e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 7e 28 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8d45048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 50 d4 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 97 ae 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 89 ae 5e}
0184h mov rax,7ff7c763e7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 e7 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c8288550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 85 28 c8 f7 7f 00 00}
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
; lookup_gComparisonKind~8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 58 52 d4 c8 f7 7f 00 00 e8 c0 96 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 87 ae 5e 48 b9 20 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 20 75 28 c8 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 52 d4 c8 f7 7f 00 00 e8 81 96 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 87 ae 5e 48 b9 20 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 c0 9a 28 c8 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 52 d4 c8 f7 7f 00 00 e8 42 96 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 87 ae 5e 48 b9 20 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 b0 86 28 c8 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 52 d4 c8 f7 7f 00 00 e8 03 96 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 87 ae 5e 48 b9 20 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 8d 28 c8 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 52 d4 c8 f7 7f 00 00 e8 c7 95 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 86 ae 5e 48 b9 20 e8 63 c7 f7 7f 00 00 48 89 4e 18 48 b9 90 7e 28 c8 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 52 d4 c8 f7 7f 00 00 e8 8b 95 ae 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 86 ae 5e 48 b8 20 e8 63 c7 f7 7f 00 00 48 89 46 18 48 b8 70 85 28 c8 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c8d45258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 52 d4 c8 f7 7f 00 00}
003bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 96 ae 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 87 ae 5e}
004fh mov rcx,7ff7c763e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e8 63 c7 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c8287520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 75 28 c8 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c8d45258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 52 d4 c8 f7 7f 00 00}
007ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 96 ae 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 87 ae 5e}
008eh mov rcx,7ff7c763e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e8 63 c7 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c8289ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 9a 28 c8 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c8d45258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 52 d4 c8 f7 7f 00 00}
00b9h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 96 ae 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 87 ae 5e}
00cdh mov rcx,7ff7c763e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e8 63 c7 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c82886b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 86 28 c8 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c8d45258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 52 d4 c8 f7 7f 00 00}
00f8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 96 ae 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 87 ae 5e}
010ch mov rcx,7ff7c763e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e8 63 c7 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c8288d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8d 28 c8 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c8d45258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 52 d4 c8 f7 7f 00 00}
0134h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 95 ae 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 86 ae 5e}
0148h mov rcx,7ff7c763e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 e8 63 c7 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c8287e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7e 28 c8 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c8d45258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 52 d4 c8 f7 7f 00 00}
0170h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 95 ae 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff827265df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 86 ae 5e}
0184h mov rax,7ff7c763e820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 e8 63 c7 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c8288570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 85 28 c8 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
