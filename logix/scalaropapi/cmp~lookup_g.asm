------------------------------------------------------------------------------------------------------------------------
; BinaryOp<byte> lookup<byte>(ComparisonKind:byte kind)
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 5c cc c6 f7 7f 00 00 e8 00 98 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 89 2f 5f 48 b9 e0 db 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 f1 b9 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 40 5c cc c6 f7 7f 00 00 e8 c1 97 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 88 2f 5f 48 b9 e0 db 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 f1 b9 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 40 5c cc c6 f7 7f 00 00 e8 82 97 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 88 2f 5f 48 b9 e0 db 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 f1 b9 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 40 5c cc c6 f7 7f 00 00 e8 43 97 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 88 2f 5f 48 b9 e0 db 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 f1 b9 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 40 5c cc c6 f7 7f 00 00 e8 07 97 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 88 2f 5f 48 b9 e0 db 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 f1 b9 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 40 5c cc c6 f7 7f 00 00 e8 cb 96 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc 87 2f 5f 48 b8 e0 db 27 c6 f7 7f 00 00 48 89 46 18 48 b8 20 f1 b9 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc5c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 5c cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 98 2f 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 89 2f 5f}
004fh mov rcx,7ff7c627dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6b9f1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f1 b9 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc5c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 5c cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 97 2f 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 88 2f 5f}
008eh mov rcx,7ff7c627dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6b9f100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f1 b9 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc5c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 5c cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 97 2f 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 88 2f 5f}
00cdh mov rcx,7ff7c627dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6b9f180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f1 b9 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc5c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 5c cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 97 2f 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 88 2f 5f}
010ch mov rcx,7ff7c627dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6b9f160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f1 b9 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc5c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 5c cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 97 2f 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 88 2f 5f}
0148h mov rcx,7ff7c627dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6b9f140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f1 b9 c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc5c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 5c cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 96 2f 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 87 2f 5f}
0184h mov rax,7ff7c627dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 db 27 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6b9f120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 f1 b9 c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 60 cc c6 f7 7f 00 00 e8 90 95 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 86 2f 5f 48 b9 e0 dd 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 fd b9 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 60 cc c6 f7 7f 00 00 e8 51 95 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 86 2f 5f 48 b9 e0 dd 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 fc b9 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 60 cc c6 f7 7f 00 00 e8 12 95 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 86 2f 5f 48 b9 e0 dd 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 fd b9 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 60 cc c6 f7 7f 00 00 e8 d3 94 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 86 2f 5f 48 b9 e0 dd 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 fd b9 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 60 cc c6 f7 7f 00 00 e8 97 94 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 85 2f 5f 48 b9 e0 dd 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 fc b9 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f0 60 cc c6 f7 7f 00 00 e8 5b 94 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8c 85 2f 5f 48 b8 e0 dd 27 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 fc b9 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 95 2f 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 86 2f 5f}
004fh mov rcx,7ff7c627dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6b9fd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd b9 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 95 2f 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 86 2f 5f}
008eh mov rcx,7ff7c627dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6b9fcd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fc b9 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 95 2f 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 86 2f 5f}
00cdh mov rcx,7ff7c627dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6b9fd10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 fd b9 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 94 2f 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 86 2f 5f}
010ch mov rcx,7ff7c627dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6b9fd00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fd b9 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 94 2f 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 85 2f 5f}
0148h mov rcx,7ff7c627dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6b9fcf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 fc b9 c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc60f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 60 cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 94 2f 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 85 2f 5f}
0184h mov rax,7ff7c627dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 dd 27 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6b9fce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 fc b9 c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ushort> lookup<ushort>(ComparisonKind:byte kind)
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 00 63 cc c6 f7 7f 00 00 e8 20 93 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 84 2f 5f 48 b9 20 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 02 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 00 63 cc c6 f7 7f 00 00 e8 e1 92 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 84 2f 5f 48 b9 20 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 02 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 00 63 cc c6 f7 7f 00 00 e8 a2 92 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 83 2f 5f 48 b9 20 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 02 ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 00 63 cc c6 f7 7f 00 00 e8 63 92 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 83 2f 5f 48 b9 20 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 02 ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 00 63 cc c6 f7 7f 00 00 e8 27 92 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 83 2f 5f 48 b9 20 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 02 ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 00 63 cc c6 f7 7f 00 00 e8 eb 91 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 83 2f 5f 48 b8 20 de 27 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 02 ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc6300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 63 cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 93 2f 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 84 2f 5f}
004fh mov rcx,7ff7c627de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ba02f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 02 ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc6300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 63 cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 92 2f 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 84 2f 5f}
008eh mov rcx,7ff7c627de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ba02a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 02 ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc6300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 63 cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 92 2f 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 83 2f 5f}
00cdh mov rcx,7ff7c627de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ba02e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 02 ba c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc6300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 63 cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 92 2f 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 83 2f 5f}
010ch mov rcx,7ff7c627de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ba02d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 02 ba c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc6300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 63 cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 92 2f 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 83 2f 5f}
0148h mov rcx,7ff7c627de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ba02c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 02 ba c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc6300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 63 cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 91 2f 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 83 2f 5f}
0184h mov rax,7ff7c627de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 de 27 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ba02b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 02 ba c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<Int16> lookup<Int16>(ComparisonKind:byte kind)
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 65 cc c6 f7 7f 00 00 e8 b0 90 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e1 81 2f 5f 48 b9 60 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 04 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 65 cc c6 f7 7f 00 00 e8 71 90 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 81 2f 5f 48 b9 60 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 04 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 65 cc c6 f7 7f 00 00 e8 32 90 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 81 2f 5f 48 b9 60 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 04 ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 10 65 cc c6 f7 7f 00 00 e8 f3 8f 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 81 2f 5f 48 b9 60 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 04 ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 10 65 cc c6 f7 7f 00 00 e8 b7 8f 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 80 2f 5f 48 b9 60 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 04 ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 10 65 cc c6 f7 7f 00 00 e8 7b 8f 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ac 80 2f 5f 48 b8 60 de 27 c6 f7 7f 00 00 48 89 46 18 48 b8 30 04 ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc6510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 65 cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 90 2f 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 81 2f 5f}
004fh mov rcx,7ff7c627de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ba0470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 04 ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc6510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 65 cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 90 2f 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 81 2f 5f}
008eh mov rcx,7ff7c627de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ba0420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 04 ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc6510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 65 cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 90 2f 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 81 2f 5f}
00cdh mov rcx,7ff7c627de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ba0460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 04 ba c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc6510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 65 cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 8f 2f 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 81 2f 5f}
010ch mov rcx,7ff7c627de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ba0450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 04 ba c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc6510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 65 cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 8f 2f 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 80 2f 5f}
0148h mov rcx,7ff7c627de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ba0440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 04 ba c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc6510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 65 cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 8f 2f 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 80 2f 5f}
0184h mov rax,7ff7c627de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 de 27 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ba0430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 04 ba c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<uint> lookup<uint>(ComparisonKind:byte kind)
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 20 67 cc c6 f7 7f 00 00 e8 40 8e 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 71 7f 2f 5f 48 b9 a0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 09 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 67 cc c6 f7 7f 00 00 e8 01 8e 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 7f 2f 5f 48 b9 a0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 09 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 67 cc c6 f7 7f 00 00 e8 c2 8d 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 7e 2f 5f 48 b9 a0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 09 ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 67 cc c6 f7 7f 00 00 e8 83 8d 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 7e 2f 5f 48 b9 a0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 09 ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 67 cc c6 f7 7f 00 00 e8 47 8d 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 7e 2f 5f 48 b9 a0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 09 ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 67 cc c6 f7 7f 00 00 e8 0b 8d 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 3c 7e 2f 5f 48 b8 a0 de 27 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 09 ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc6720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 67 cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 8e 2f 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 7f 2f 5f}
004fh mov rcx,7ff7c627dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ba09f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 09 ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc6720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 67 cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 8e 2f 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 7f 2f 5f}
008eh mov rcx,7ff7c627dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ba09a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 09 ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc6720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 67 cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 8d 2f 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 7e 2f 5f}
00cdh mov rcx,7ff7c627dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ba09e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 09 ba c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc6720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 67 cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 8d 2f 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 7e 2f 5f}
010ch mov rcx,7ff7c627dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ba09d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 09 ba c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc6720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 67 cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 8d 2f 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 7e 2f 5f}
0148h mov rcx,7ff7c627dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ba09c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 09 ba c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc6720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 67 cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 8d 2f 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 7e 2f 5f}
0184h mov rax,7ff7c627dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 de 27 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ba09b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 09 ba c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<int> lookup<int>(ComparisonKind:byte kind)
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 30 69 cc c6 f7 7f 00 00 e8 d0 8b 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 7d 2f 5f 48 b9 e0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 0b ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 30 69 cc c6 f7 7f 00 00 e8 91 8b 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 7c 2f 5f 48 b9 e0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 0b ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 30 69 cc c6 f7 7f 00 00 e8 52 8b 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 7c 2f 5f 48 b9 e0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 0b ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 30 69 cc c6 f7 7f 00 00 e8 13 8b 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 7c 2f 5f 48 b9 e0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 0b ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 30 69 cc c6 f7 7f 00 00 e8 d7 8a 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 7c 2f 5f 48 b9 e0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 0b ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 30 69 cc c6 f7 7f 00 00 e8 9b 8a 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 7b 2f 5f 48 b8 e0 de 27 c6 f7 7f 00 00 48 89 46 18 48 b8 70 0b ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc6930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 69 cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 8b 2f 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 7d 2f 5f}
004fh mov rcx,7ff7c627dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ba0bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 0b ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc6930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 69 cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 8b 2f 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 7c 2f 5f}
008eh mov rcx,7ff7c627dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ba0b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 0b ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc6930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 69 cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 8b 2f 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 7c 2f 5f}
00cdh mov rcx,7ff7c627dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ba0ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0b ba c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc6930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 69 cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 8b 2f 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 7c 2f 5f}
010ch mov rcx,7ff7c627dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ba0b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 0b ba c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc6930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 69 cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 8a 2f 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 7c 2f 5f}
0148h mov rcx,7ff7c627dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ba0b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 0b ba c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc6930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 69 cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 8a 2f 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 7b 2f 5f}
0184h mov rax,7ff7c627dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 de 27 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ba0b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 0b ba c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<ulong> lookup<ulong>(ComparisonKind:byte kind)
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 40 6b cc c6 f7 7f 00 00 e8 60 89 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 7a 2f 5f 48 b9 20 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 12 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 40 6b cc c6 f7 7f 00 00 e8 21 89 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 7a 2f 5f 48 b9 20 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 12 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 40 6b cc c6 f7 7f 00 00 e8 e2 88 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 7a 2f 5f 48 b9 20 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 12 ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 40 6b cc c6 f7 7f 00 00 e8 a3 88 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 79 2f 5f 48 b9 20 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 12 ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 40 6b cc c6 f7 7f 00 00 e8 67 88 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 79 2f 5f 48 b9 20 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 12 ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 40 6b cc c6 f7 7f 00 00 e8 2b 88 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 79 2f 5f 48 b8 20 df 27 c6 f7 7f 00 00 48 89 46 18 48 b8 88 12 ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc6b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6b cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 89 2f 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 7a 2f 5f}
004fh mov rcx,7ff7c627df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ba12c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 12 ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc6b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6b cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 89 2f 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 7a 2f 5f}
008eh mov rcx,7ff7c627df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ba1278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 12 ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc6b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6b cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 88 2f 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 7a 2f 5f}
00cdh mov rcx,7ff7c627df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ba12b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 12 ba c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc6b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6b cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 88 2f 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 79 2f 5f}
010ch mov rcx,7ff7c627df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ba12a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 12 ba c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc6b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6b cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 88 2f 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 79 2f 5f}
0148h mov rcx,7ff7c627df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ba1298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 12 ba c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc6b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 6b cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 88 2f 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 79 2f 5f}
0184h mov rax,7ff7c627df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 df 27 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ba1288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 12 ba c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<long> lookup<long>(ComparisonKind:byte kind)
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 50 6d cc c6 f7 7f 00 00 e8 f0 86 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 78 2f 5f 48 b9 60 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 14 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 50 6d cc c6 f7 7f 00 00 e8 b1 86 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 77 2f 5f 48 b9 60 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 14 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 50 6d cc c6 f7 7f 00 00 e8 72 86 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 77 2f 5f 48 b9 60 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 14 ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 50 6d cc c6 f7 7f 00 00 e8 33 86 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 77 2f 5f 48 b9 60 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 14 ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 50 6d cc c6 f7 7f 00 00 e8 f7 85 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 77 2f 5f 48 b9 60 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 14 ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 50 6d cc c6 f7 7f 00 00 e8 bb 85 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec 76 2f 5f 48 b8 60 df 27 c6 f7 7f 00 00 48 89 46 18 48 b8 48 14 ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc6d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6d cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 86 2f 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 78 2f 5f}
004fh mov rcx,7ff7c627df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ba1488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 14 ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc6d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6d cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 86 2f 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 77 2f 5f}
008eh mov rcx,7ff7c627df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ba1438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 14 ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc6d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6d cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 86 2f 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 77 2f 5f}
00cdh mov rcx,7ff7c627df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ba1478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 14 ba c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc6d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6d cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 86 2f 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 77 2f 5f}
010ch mov rcx,7ff7c627df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ba1468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 14 ba c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc6d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6d cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 85 2f 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 77 2f 5f}
0148h mov rcx,7ff7c627df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ba1458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 14 ba c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc6d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6d cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 85 2f 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 76 2f 5f}
0184h mov rax,7ff7c627df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 df 27 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ba1448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 14 ba c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<float> lookup<float>(ComparisonKind:byte kind)
; cmp~lookup_g8u[250] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 60 6f cc c6 f7 7f 00 00 e8 80 84 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 75 2f 5f 48 b9 a0 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 d2 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 60 6f cc c6 f7 7f 00 00 e8 41 84 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 75 2f 5f 48 b9 a0 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 d2 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 60 6f cc c6 f7 7f 00 00 e8 02 84 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 75 2f 5f 48 b9 a0 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 d2 ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 60 6f cc c6 f7 7f 00 00 e8 c3}
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
0031h mov rcx,7ff7c6cc6f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6f cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 84 2f 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 75 2f 5f}
004fh mov rcx,7ff7c627dfa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 df 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bad290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 d2 ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc6f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6f cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 84 2f 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 75 2f 5f}
008eh mov rcx,7ff7c627dfa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 df 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bad240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d2 ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc6f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6f cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 84 2f 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 75 2f 5f}
00cdh mov rcx,7ff7c627dfa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 df 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bad280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d2 ba c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc6f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6f cc c6 f7 7f 00 00}
00f8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<double> lookup<double>(ComparisonKind:byte kind)
; cmp~lookup_g8u[202] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 74 cc c6 f7 7f 00 00 e8 10 82 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 73 2f 5f 48 b9 e0 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 d3 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 74 cc c6 f7 7f 00 00 e8 d1 81 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 73 2f 5f 48 b9 e0 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 d2 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 74 cc c6 f7 7f 00 00 e8 92 81 2f 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
0031h mov rcx,7ff7c6cc7410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 74 cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 82 2f 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 73 2f 5f}
004fh mov rcx,7ff7c627dfe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 df 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bad338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d3 ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc7410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 74 cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 81 2f 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 73 2f 5f}
008eh mov rcx,7ff7c627dfe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 df 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bad2e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d2 ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc7410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 74 cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 81 2f 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
