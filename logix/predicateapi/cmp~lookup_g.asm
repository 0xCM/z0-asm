------------------------------------------------------------------------------------------------------------------------
; BinaryPred<byte> lookup<byte>(ComparisonKind:byte kind)
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 c4 7e c7 f7 7f 00 00 e8 70 8f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 80 b3 5e 48 b9 d0 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 60 cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 98 c4 7e c7 f7 7f 00 00 e8 31 8f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 80 b3 5e 48 b9 d0 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 86 cd c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 98 c4 7e c7 f7 7f 00 00 e8 f2 8e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 80 b3 5e 48 b9 d0 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 75 cd c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 98 c4 7e c7 f7 7f 00 00 e8 b3 8e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 7f b3 5e 48 b9 d0 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 78 cd c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 98 c4 7e c7 f7 7f 00 00 e8 77 8e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 7f b3 5e 48 b9 d0 e1 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 6d cd c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 98 c4 7e c7 f7 7f 00 00 e8 3b 8e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 7f b3 5e 48 b8 d0 e1 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 70 cd c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
0031h mov rcx,7ff7c77ec498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c4 7e c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 8f b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 80 b3 5e}
004fh mov rcx,7ff7c624e1d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e1 24 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6cd6040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 60 cd c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c77ec498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c4 7e c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 8f b3 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 80 b3 5e}
008eh mov rcx,7ff7c624e1d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e1 24 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6cd8600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 86 cd c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c77ec498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c4 7e c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 8e b3 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 80 b3 5e}
00cdh mov rcx,7ff7c624e1d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e1 24 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6cd75f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 75 cd c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c77ec498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c4 7e c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 8e b3 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 7f b3 5e}
010ch mov rcx,7ff7c624e1d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e1 24 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6cd78d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 78 cd c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c77ec498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c4 7e c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 8e b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 7f b3 5e}
0148h mov rcx,7ff7c624e1d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e1 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6cd6dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 6d cd c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c77ec498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c4 7e c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 8e b3 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 7f b3 5e}
0184h mov rax,7ff7c624e1d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e1 24 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6cd70b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 70 cd c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 c9 7e c7 f7 7f 00 00 e8 00 8d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 7e b3 5e 48 b9 d0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 60 cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 c9 7e c7 f7 7f 00 00 e8 c1 8c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 7d b3 5e 48 b9 d0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 86 cd c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 c9 7e c7 f7 7f 00 00 e8 82 8c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 7d b3 5e 48 b9 d0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 76 cd c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 c9 7e c7 f7 7f 00 00 e8 43 8c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 7d b3 5e 48 b9 d0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 7d cd c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 c9 7e c7 f7 7f 00 00 e8 07 8c b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 7d b3 5e 48 b9 d0 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 6e cd c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 c9 7e c7 f7 7f 00 00 e8 cb 8b b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc 7c b3 5e 48 b8 d0 e3 24 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 70 cd c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
0031h mov rcx,7ff7c77ec948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c9 7e c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 8d b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 7e b3 5e}
004fh mov rcx,7ff7c624e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 24 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6cd6070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 60 cd c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c77ec948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c9 7e c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 8c b3 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 7d b3 5e}
008eh mov rcx,7ff7c624e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 24 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6cd8630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 86 cd c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c77ec948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c9 7e c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 8c b3 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 7d b3 5e}
00cdh mov rcx,7ff7c624e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 24 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6cd7620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 76 cd c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c77ec948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c9 7e c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 8c b3 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 7d b3 5e}
010ch mov rcx,7ff7c624e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 24 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6cd7d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 7d cd c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c77ec948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c9 7e c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 8c b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 7d b3 5e}
0148h mov rcx,7ff7c624e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e3 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6cd6e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 6e cd c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c77ec948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c9 7e c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 8b b3 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 7c b3 5e}
0184h mov rax,7ff7c624e3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e3 24 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6cd70e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 70 cd c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 58 cb 7e c7 f7 7f 00 00 e8 90 8a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 7b b3 5e 48 b9 10 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 60 cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 cb 7e c7 f7 7f 00 00 e8 51 8a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 7b b3 5e 48 b9 10 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 86 cd c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 cb 7e c7 f7 7f 00 00 e8 12 8a b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 7b b3 5e 48 b9 10 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 76 cd c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 cb 7e c7 f7 7f 00 00 e8 d3 89 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 7b b3 5e 48 b9 10 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 7d cd c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 cb 7e c7 f7 7f 00 00 e8 97 89 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 7a b3 5e 48 b9 10 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 6e cd c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 cb 7e c7 f7 7f 00 00 e8 5b 89 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8c 7a b3 5e 48 b8 10 e4 24 c6 f7 7f 00 00 48 89 46 18 48 b8 10 71 cd c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
0031h mov rcx,7ff7c77ecb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 cb 7e c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 8a b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 7b b3 5e}
004fh mov rcx,7ff7c624e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 24 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6cd60a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 60 cd c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c77ecb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 cb 7e c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 8a b3 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 7b b3 5e}
008eh mov rcx,7ff7c624e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 24 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6cd8660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 86 cd c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c77ecb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 cb 7e c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 8a b3 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 7b b3 5e}
00cdh mov rcx,7ff7c624e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 24 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6cd7650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 76 cd c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c77ecb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 cb 7e c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 89 b3 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 7b b3 5e}
010ch mov rcx,7ff7c624e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 24 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6cd7d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 7d cd c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c77ecb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 cb 7e c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 89 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 7a b3 5e}
0148h mov rcx,7ff7c624e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e4 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6cd6e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 6e cd c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c77ecb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 cb 7e c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 89 b3 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 7a b3 5e}
0184h mov rax,7ff7c624e410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e4 24 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6cd7110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 71 cd c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 cd 7e c7 f7 7f 00 00 e8 20 88 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 79 b3 5e 48 b9 50 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 60 cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 68 cd 7e c7 f7 7f 00 00 e8 e1 87 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 79 b3 5e 48 b9 50 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 86 cd c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 68 cd 7e c7 f7 7f 00 00 e8 a2 87 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 78 b3 5e 48 b9 50 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 76 cd c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 68 cd 7e c7 f7 7f 00 00 e8 63 87 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 78 b3 5e 48 b9 50 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 7d cd c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 68 cd 7e c7 f7 7f 00 00 e8 27 87 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 78 b3 5e 48 b9 50 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 6e cd c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 68 cd 7e c7 f7 7f 00 00 e8 eb 86 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 78 b3 5e 48 b8 50 e4 24 c6 f7 7f 00 00 48 89 46 18 48 b8 40 75 cd c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
0031h mov rcx,7ff7c77ecd68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 cd 7e c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 88 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 79 b3 5e}
004fh mov rcx,7ff7c624e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e4 24 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6cd60d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 60 cd c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c77ecd68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 cd 7e c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 87 b3 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 79 b3 5e}
008eh mov rcx,7ff7c624e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e4 24 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6cd8690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 86 cd c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c77ecd68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 cd 7e c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 87 b3 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 78 b3 5e}
00cdh mov rcx,7ff7c624e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e4 24 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6cd7680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 76 cd c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c77ecd68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 cd 7e c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 87 b3 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 78 b3 5e}
010ch mov rcx,7ff7c624e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e4 24 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6cd7d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7d cd c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c77ecd68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 cd 7e c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 87 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 78 b3 5e}
0148h mov rcx,7ff7c624e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e4 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6cd6e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6e cd c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c77ecd68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 cd 7e c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 86 b3 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 78 b3 5e}
0184h mov rax,7ff7c624e450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e4 24 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6cd7540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 75 cd c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 cf 7e c7 f7 7f 00 00 e8 b0 85 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 76 b3 5e 48 b9 90 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 61 cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 cf 7e c7 f7 7f 00 00 e8 71 85 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 76 b3 5e 48 b9 90 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 86 cd c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 cf 7e c7 f7 7f 00 00 e8 32 85 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 76 b3 5e 48 b9 90 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 76 cd c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 cf 7e c7 f7 7f 00 00 e8 f3 84 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 76 b3 5e 48 b9 90 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 7d cd c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 cf 7e c7 f7 7f 00 00 e8 b7 84 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 75 b3 5e 48 b9 90 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 6e cd c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 cf 7e c7 f7 7f 00 00 e8 7b 84 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 75 b3 5e 48 b8 90 e4 24 c6 f7 7f 00 00 48 89 46 18 48 b8 70 75 cd c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
0031h mov rcx,7ff7c77ecf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 7e c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 85 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 76 b3 5e}
004fh mov rcx,7ff7c624e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 24 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6cd6100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 61 cd c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c77ecf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 7e c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 85 b3 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 76 b3 5e}
008eh mov rcx,7ff7c624e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 24 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6cd86c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 86 cd c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c77ecf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 7e c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 85 b3 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 76 b3 5e}
00cdh mov rcx,7ff7c624e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 24 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6cd76b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 76 cd c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c77ecf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 7e c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 84 b3 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 76 b3 5e}
010ch mov rcx,7ff7c624e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 24 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6cd7d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7d cd c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c77ecf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 7e c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 84 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 75 b3 5e}
0148h mov rcx,7ff7c624e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6cd6e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 6e cd c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c77ecf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 7e c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 84 b3 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 75 b3 5e}
0184h mov rax,7ff7c624e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 e4 24 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6cd7570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 75 cd c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 88 d1 7e c7 f7 7f 00 00 e8 40 83 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 74 b3 5e 48 b9 d0 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 61 cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 88 d1 7e c7 f7 7f 00 00 e8 01 83 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 74 b3 5e 48 b9 d0 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 8a cd c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 88 d1 7e c7 f7 7f 00 00 e8 c2 82 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 73 b3 5e 48 b9 d0 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 76 cd c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 88 d1 7e c7 f7 7f 00 00 e8 83 82 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 73 b3 5e 48 b9 d0 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 7d cd c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 88 d1 7e c7 f7 7f 00 00 e8 47 82 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 73 b3 5e 48 b9 d0 e4 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 6e cd c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 88 d1 7e c7 f7 7f 00 00 e8 0b 82 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 73 b3 5e 48 b8 d0 e4 24 c6 f7 7f 00 00 48 89 46 18 48 b8 90 75 cd c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
0031h mov rcx,7ff7c77ed188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d1 7e c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 83 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 74 b3 5e}
004fh mov rcx,7ff7c624e4d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e4 24 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6cd6120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 61 cd c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c77ed188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d1 7e c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 83 b3 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 74 b3 5e}
008eh mov rcx,7ff7c624e4d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e4 24 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6cd8af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8a cd c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c77ed188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d1 7e c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 82 b3 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 73 b3 5e}
00cdh mov rcx,7ff7c624e4d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e4 24 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6cd76d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 76 cd c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c77ed188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d1 7e c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 82 b3 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 73 b3 5e}
010ch mov rcx,7ff7c624e4d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e4 24 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6cd7db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 7d cd c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c77ed188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d1 7e c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 82 b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 73 b3 5e}
0148h mov rcx,7ff7c624e4d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e4 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6cd6eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 6e cd c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c77ed188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d1 7e c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 82 b3 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 73 b3 5e}
0184h mov rax,7ff7c624e4d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 e4 24 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6cd7590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 75 cd c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 98 d3 7e c7 f7 7f 00 00 e8 d0 80 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 72 b3 5e 48 b9 10 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 65 cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 98 d3 7e c7 f7 7f 00 00 e8 91 80 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 71 b3 5e 48 b9 10 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 8b cd c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 98 d3 7e c7 f7 7f 00 00 e8 52 80 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 71 b3 5e 48 b9 10 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 76 cd c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 98 d3 7e c7 f7 7f 00 00 e8 13 80 b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 71 b3 5e 48 b9 10 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 7d cd c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 98 d3 7e c7 f7 7f 00 00 e8 d7 7f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 71 b3 5e 48 b9 10 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 6e cd c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 98 d3 7e c7 f7 7f 00 00 e8 9b 7f b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 70 b3 5e 48 b8 10 e5 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 75 cd c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
0031h mov rcx,7ff7c77ed398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d3 7e c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 80 b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 72 b3 5e}
004fh mov rcx,7ff7c624e510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e5 24 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6cd6550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 65 cd c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c77ed398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d3 7e c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 80 b3 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 71 b3 5e}
008eh mov rcx,7ff7c624e510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e5 24 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6cd8b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 8b cd c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c77ed398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d3 7e c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 80 b3 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 71 b3 5e}
00cdh mov rcx,7ff7c624e510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e5 24 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6cd76f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 76 cd c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c77ed398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d3 7e c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 80 b3 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 71 b3 5e}
010ch mov rcx,7ff7c624e510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e5 24 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6cd7dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 7d cd c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c77ed398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d3 7e c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 7f b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 71 b3 5e}
0148h mov rcx,7ff7c624e510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e5 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6cd6ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 6e cd c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c77ed398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d3 7e c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 7f b3 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 70 b3 5e}
0184h mov rax,7ff7c624e510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 e5 24 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6cd75b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 75 cd c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a8 d5 7e c7 f7 7f 00 00 e8 60 7e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 6f b3 5e 48 b9 50 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 65 cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a8 d5 7e c7 f7 7f 00 00 e8 21 7e b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 6f b3 5e 48 b9 50 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 8b cd c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a8 d5 7e c7 f7 7f 00 00 e8 e2 7d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 6f b3 5e 48 b9 50 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 77 cd c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a8 d5 7e c7 f7 7f 00 00 e8 a3 7d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 6e b3 5e 48 b9 50 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 7d cd c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a8 d5 7e c7 f7 7f 00 00 e8 67 7d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 6e b3 5e 48 b9 50 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 6e cd c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a8 d5 7e c7 f7 7f 00 00 e8 2b 7d b3 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 6e b3 5e 48 b8 50 e5 24 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 75 cd c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
0031h mov rcx,7ff7c77ed5a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d5 7e c7 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 7e b3 5e}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 6f b3 5e}
004fh mov rcx,7ff7c624e550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e5 24 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6cd6570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 65 cd c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c77ed5a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d5 7e c7 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 7e b3 5e}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 6f b3 5e}
008eh mov rcx,7ff7c624e550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e5 24 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6cd8b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 8b cd c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c77ed5a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d5 7e c7 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 7d b3 5e}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 6f b3 5e}
00cdh mov rcx,7ff7c624e550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e5 24 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6cd7710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 77 cd c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c77ed5a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d5 7e c7 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 7d b3 5e}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 6e b3 5e}
010ch mov rcx,7ff7c624e550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e5 24 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6cd7df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 7d cd c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c77ed5a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d5 7e c7 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 7d b3 5e}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 6e b3 5e}
0148h mov rcx,7ff7c624e550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e5 24 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6cd6ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6e cd c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c77ed5a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d5 7e c7 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 7d b3 5e}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 6e b3 5e}
0184h mov rax,7ff7c624e550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 e5 24 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6cd75d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 75 cd c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
