------------------------------------------------------------------------------------------------------------------------
; BinaryPred<byte> lookup<byte>(ComparisonKind:byte kind)
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 00 35 e9 c6 f7 7f 00 00 e8 d0 42 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 01 34 00 5f 48 b9 e0 db 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 f1 b9 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 00 35 e9 c6 f7 7f 00 00 e8 91 42 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 33 00 5f 48 b9 e0 db 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 fa b9 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 00 35 e9 c6 f7 7f 00 00 e8 52 42 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 33 00 5f 48 b9 e0 db 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 fb b9 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 00 35 e9 c6 f7 7f 00 00 e8 13 42 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 33 00 5f 48 b9 e0 db 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 fb b9 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 00 35 e9 c6 f7 7f 00 00 e8 d7 41 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 33 00 5f 48 b9 e0 db 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 fb b9 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 00 35 e9 c6 f7 7f 00 00 e8 9b 41 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 cc 32 00 5f 48 b8 e0 db 27 c6 f7 7f 00 00 48 89 46 18 48 b8 50 fc b9 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6e93500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 35 e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 42 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 34 00 5f}
004fh mov rcx,7ff7c627dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6b9f1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f1 b9 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e93500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 35 e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 42 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 33 00 5f}
008eh mov rcx,7ff7c627dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6b9fad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fa b9 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e93500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 35 e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 42 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 33 00 5f}
00cdh mov rcx,7ff7c627dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6b9fb30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 fb b9 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6e93500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 35 e9 c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 42 00 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 33 00 5f}
010ch mov rcx,7ff7c627dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6b9fb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fb b9 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6e93500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 35 e9 c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 41 00 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 33 00 5f}
0148h mov rcx,7ff7c627dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6b9fbf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 fb b9 c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6e93500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 35 e9 c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 41 00 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 32 00 5f}
0184h mov rax,7ff7c627dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 db 27 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6b9fc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 fc b9 c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 39 e9 c6 f7 7f 00 00 e8 60 40 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 91 31 00 5f 48 b9 e0 dd 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 fd b9 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 39 e9 c6 f7 7f 00 00 e8 21 40 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 31 00 5f 48 b9 e0 dd 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 fd b9 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 39 e9 c6 f7 7f 00 00 e8 e2 3f 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 31 00 5f 48 b9 e0 dd 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 fd b9 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 39 e9 c6 f7 7f 00 00 e8 a3 3f 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 30 00 5f 48 b9 e0 dd 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 fe b9 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 39 e9 c6 f7 7f 00 00 e8 67 3f 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 30 00 5f 48 b9 e0 dd 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 01 ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b0 39 e9 c6 f7 7f 00 00 e8 2b 3f 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c 30 00 5f 48 b8 e0 dd 27 c6 f7 7f 00 00 48 89 46 18 48 b8 30 02 ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6e939b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 39 e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 40 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 31 00 5f}
004fh mov rcx,7ff7c627dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6b9fd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 fd b9 c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e939b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 39 e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 40 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 31 00 5f}
008eh mov rcx,7ff7c627dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6b9fda0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 fd b9 c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e939b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 39 e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 3f 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 31 00 5f}
00cdh mov rcx,7ff7c627dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6b9fdf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 fd b9 c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6e939b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 39 e9 c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 3f 00 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 30 00 5f}
010ch mov rcx,7ff7c627dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6b9fe40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 fe b9 c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6e939b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 39 e9 c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 3f 00 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 30 00 5f}
0148h mov rcx,7ff7c627dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ba01e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 01 ba c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6e939b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 39 e9 c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 3f 00 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 30 00 5f}
0184h mov rax,7ff7c627dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 dd 27 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ba0230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 02 ba c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 3b e9 c6 f7 7f 00 00 e8 f0 3d 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 21 2f 00 5f 48 b9 20 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 03 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 3b e9 c6 f7 7f 00 00 e8 b1 3d 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 2e 00 5f 48 b9 20 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 03 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 3b e9 c6 f7 7f 00 00 e8 72 3d 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 2e 00 5f 48 b9 20 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 03 ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 3b e9 c6 f7 7f 00 00 e8 33 3d 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 2e 00 5f 48 b9 20 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 03 ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 3b e9 c6 f7 7f 00 00 e8 f7 3c 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 2e 00 5f 48 b9 20 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 03 ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 3b e9 c6 f7 7f 00 00 e8 bb 3c 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 ec 2d 00 5f 48 b8 20 de 27 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 03 ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6e93bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 3b e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 3d 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 2f 00 5f}
004fh mov rcx,7ff7c627de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ba0300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 03 ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e93bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 3b e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 3d 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 2e 00 5f}
008eh mov rcx,7ff7c627de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ba0350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 03 ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e93bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 3b e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 3d 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 2e 00 5f}
00cdh mov rcx,7ff7c627de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ba0380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 03 ba c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6e93bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 3b e9 c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 3d 00 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 2e 00 5f}
010ch mov rcx,7ff7c627de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ba03a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 03 ba c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6e93bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 3b e9 c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 3c 00 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 2e 00 5f}
0148h mov rcx,7ff7c627de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ba03c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 03 ba c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6e93bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 3b e9 c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 3c 00 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 2d 00 5f}
0184h mov rax,7ff7c627de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 de 27 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ba03e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 03 ba c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<Int16> lookup<Int16>(ComparisonKind:byte kind)
; cmp~lookup_g8u[250] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 3d e9 c6 f7 7f 00 00 e8 80 3b 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 2c 00 5f 48 b9 60 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 04 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 3d e9 c6 f7 7f 00 00 e8 41 3b 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 2c 00 5f 48 b9 60 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 04 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 3d e9 c6 f7 7f 00 00 e8 02 3b 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 2c 00 5f 48 b9 60 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 05 ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 3d e9 c6 f7 7f 00 00 e8 c3}
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
0031h mov rcx,7ff7c6e93dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 3d e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 3b 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 2c 00 5f}
004fh mov rcx,7ff7c627de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ba0480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 04 ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e93dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 3d e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 3b 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 2c 00 5f}
008eh mov rcx,7ff7c627de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ba04e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 04 ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e93dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 3d e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 3b 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 2c 00 5f}
00cdh mov rcx,7ff7c627de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ba0520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 05 ba c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6e93dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 3d e9 c6 f7 7f 00 00}
00f8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<uint> lookup<uint>(ComparisonKind:byte kind)
; cmp~lookup_g8u[202] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e0 3f e9 c6 f7 7f 00 00 e8 10 39 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 2a 00 5f 48 b9 a0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 0a ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 3f e9 c6 f7 7f 00 00 e8 d1 38 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 2a 00 5f 48 b9 a0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 0a ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 3f e9 c6 f7 7f 00 00 e8 92 38 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
0031h mov rcx,7ff7c6e93fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 3f e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 39 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 2a 00 5f}
004fh mov rcx,7ff7c627dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ba0a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 0a ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e93fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 3f e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 38 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 2a 00 5f}
008eh mov rcx,7ff7c627dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ba0a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 0a ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e93fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 3f e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 38 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<int> lookup<int>(ComparisonKind:byte kind)
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 41 e9 c6 f7 7f 00 00 e8 a0 36 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 27 00 5f 48 b9 e0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 0b ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 41 e9 c6 f7 7f 00 00 e8 61 36 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 27 00 5f 48 b9 e0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 0c ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 41 e9 c6 f7 7f 00 00 e8 22 36 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 27 00 5f 48 b9 e0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 0c ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 41 e9 c6 f7 7f 00 00 e8 e3 35 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 27 00 5f 48 b9 e0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 0c ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 41 e9 c6 f7 7f 00 00 e8 a7 35 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 26 00 5f 48 b9 e0 de 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 0c ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f0 41 e9 c6 f7 7f 00 00 e8 6b 35 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 26 00 5f 48 b8 e0 de 27 c6 f7 7f 00 00 48 89 46 18 48 b8 20 0d ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6e941f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 41 e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 36 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 27 00 5f}
004fh mov rcx,7ff7c627dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ba0bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 0b ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e941f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 41 e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 36 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 27 00 5f}
008eh mov rcx,7ff7c627dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ba0c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 0c ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e941f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 41 e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 36 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 27 00 5f}
00cdh mov rcx,7ff7c627dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ba0c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 0c ba c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6e941f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 41 e9 c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 35 00 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 27 00 5f}
010ch mov rcx,7ff7c627dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ba0ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0c ba c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6e941f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 41 e9 c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 35 00 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 26 00 5f}
0148h mov rcx,7ff7c627dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ba0ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 0c ba c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6e941f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 41 e9 c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 35 00 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 26 00 5f}
0184h mov rax,7ff7c627dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 de 27 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ba0d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 0d ba c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 00 44 e9 c6 f7 7f 00 00 e8 30 34 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 25 00 5f 48 b9 20 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 12 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 00 44 e9 c6 f7 7f 00 00 e8 f1 33 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 25 00 5f 48 b9 20 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 13 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 00 44 e9 c6 f7 7f 00 00 e8 b2 33 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 24 00 5f 48 b9 20 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 13 ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 00 44 e9 c6 f7 7f 00 00 e8 73 33 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 24 00 5f 48 b9 20 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 13 ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 00 44 e9 c6 f7 7f 00 00 e8 37 33 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 24 00 5f 48 b9 20 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 13 ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 00 44 e9 c6 f7 7f 00 00 e8 fb 32 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 24 00 5f 48 b8 20 df 27 c6 f7 7f 00 00 48 89 46 18 48 b8 e8 13 ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6e94400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 44 e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 34 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 25 00 5f}
004fh mov rcx,7ff7c627df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ba12d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 12 ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e94400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 44 e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 33 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 25 00 5f}
008eh mov rcx,7ff7c627df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ba1328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 13 ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e94400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 44 e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 33 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 24 00 5f}
00cdh mov rcx,7ff7c627df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ba1358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 13 ba c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6e94400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 44 e9 c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 33 00 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 24 00 5f}
010ch mov rcx,7ff7c627df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ba1388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 13 ba c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6e94400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 44 e9 c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 33 00 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 24 00 5f}
0148h mov rcx,7ff7c627df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ba13b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 13 ba c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6e94400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 44 e9 c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 32 00 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 24 00 5f}
0184h mov rax,7ff7c627df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 df 27 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ba13e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 13 ba c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 46 e9 c6 f7 7f 00 00 e8 c0 31 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 22 00 5f 48 b9 60 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 14 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 46 e9 c6 f7 7f 00 00 e8 81 31 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 22 00 5f 48 b9 60 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 14 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 46 e9 c6 f7 7f 00 00 e8 42 31 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 22 00 5f 48 b9 60 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 15 ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 10 46 e9 c6 f7 7f 00 00 e8 03 31 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 22 00 5f 48 b9 60 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 15 ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 10 46 e9 c6 f7 7f 00 00 e8 c7 30 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 21 00 5f 48 b9 60 df 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 15 ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 10 46 e9 c6 f7 7f 00 00 e8 8b 30 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 21 00 5f 48 b8 60 df 27 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 15 ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6e94610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 46 e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 31 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 22 00 5f}
004fh mov rcx,7ff7c627df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 27 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6ba1498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 14 ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e94610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 46 e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 31 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 22 00 5f}
008eh mov rcx,7ff7c627df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 27 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6ba14f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 14 ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e94610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 46 e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 31 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 22 00 5f}
00cdh mov rcx,7ff7c627df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 27 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6ba1538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 15 ba c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6e94610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 46 e9 c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 31 00 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 22 00 5f}
010ch mov rcx,7ff7c627df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 27 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6ba1578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 15 ba c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6e94610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 46 e9 c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 30 00 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 21 00 5f}
0148h mov rcx,7ff7c627df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 27 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6ba15b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 15 ba c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6e94610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 46 e9 c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 30 00 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 21 00 5f}
0184h mov rax,7ff7c627df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 df 27 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6ba15f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 15 ba c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
