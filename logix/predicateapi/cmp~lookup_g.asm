------------------------------------------------------------------------------------------------------------------------
; BinaryPred<byte> lookup<byte>(ComparisonKind:byte kind)
; cmp~lookup_g8u[250] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e0 4c e9 c6 f7 7f 00 00 e8 80 3e 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b1 2f 00 5f 48 b9 e0 db 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 f2 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 4c e9 c6 f7 7f 00 00 e8 41 3e 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 2f 00 5f 48 b9 e0 db 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 f3 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 4c e9 c6 f7 7f 00 00 e8 02 3e 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 2f 00 5f 48 b9 e0 db 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 fa ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 4c e9 c6 f7 7f 00 00 e8 c3}
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
0031h mov rcx,7ff7c6e94ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 4c e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 3e 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 2f 00 5f}
004fh mov rcx,7ff7c626dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6baf2e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f2 ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e94ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 4c e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 3e 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 2f 00 5f}
008eh mov rcx,7ff7c626dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6baf380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f3 ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e94ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 4c e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 3e 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 2f 00 5f}
00cdh mov rcx,7ff7c626dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bafa90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fa ba c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6e94ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 4c e9 c6 f7 7f 00 00}
00f8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
; cmp~lookup_g8u[202] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 90 51 e9 c6 f7 7f 00 00 e8 10 3c 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 2d 00 5f 48 b9 e0 dd 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 fc ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 90 51 e9 c6 f7 7f 00 00 e8 d1 3b 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 2d 00 5f 48 b9 e0 dd 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 fd ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 90 51 e9 c6 f7 7f 00 00 e8 92 3b 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
0031h mov rcx,7ff7c6e95190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 51 e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 3c 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 2d 00 5f}
004fh mov rcx,7ff7c626dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bafc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 fc ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e95190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 51 e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 3b 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 2d 00 5f}
008eh mov rcx,7ff7c626dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bafd00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fd ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e95190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 51 e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 3b 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<ushort> lookup<ushort>(ComparisonKind:byte kind)
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 a0 53 e9 c6 f7 7f 00 00 e8 a0 35 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 26 00 5f 48 b9 20 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 02 bb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 a0 53 e9 c6 f7 7f 00 00 e8 61 35 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 26 00 5f 48 b9 20 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 02 bb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 a0 53 e9 c6 f7 7f 00 00 e8 22 35 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 26 00 5f 48 b9 20 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 02 bb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 a0 53 e9 c6 f7 7f 00 00 e8 e3 34 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 26 00 5f 48 b9 20 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 03 bb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 a0 53 e9 c6 f7 7f 00 00 e8 a7 34 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 25 00 5f 48 b9 20 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 03 bb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 a0 53 e9 c6 f7 7f 00 00 e8 6b 34 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 25 00 5f 48 b8 20 de 26 c6 f7 7f 00 00 48 89 46 18 48 b8 40 03 bb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6e953a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 35 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 26 00 5f}
004fh mov rcx,7ff7c626de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bb0260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 02 bb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e953a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 35 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 26 00 5f}
008eh mov rcx,7ff7c626de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bb02b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 02 bb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e953a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 35 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 26 00 5f}
00cdh mov rcx,7ff7c626de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bb02e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 02 bb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6e953a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 e9 c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 34 00 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 26 00 5f}
010ch mov rcx,7ff7c626de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6bb0300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 03 bb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6e953a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 e9 c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 34 00 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 25 00 5f}
0148h mov rcx,7ff7c626de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 26 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6bb0320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 03 bb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6e953a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 53 e9 c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 34 00 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 25 00 5f}
0184h mov rax,7ff7c626de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 de 26 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6bb0340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 03 bb c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 b0 55 e9 c6 f7 7f 00 00 e8 30 33 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 24 00 5f 48 b9 60 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 03 bb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 b0 55 e9 c6 f7 7f 00 00 e8 f1 32 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 24 00 5f 48 b9 60 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 04 bb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 b0 55 e9 c6 f7 7f 00 00 e8 b2 32 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 23 00 5f 48 b9 60 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 04 bb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 b0 55 e9 c6 f7 7f 00 00 e8 73 32 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 23 00 5f 48 b9 60 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 04 bb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 b0 55 e9 c6 f7 7f 00 00 e8 37 32 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 23 00 5f 48 b9 60 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 04 bb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 b0 55 e9 c6 f7 7f 00 00 e8 fb 31 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 23 00 5f 48 b8 60 de 26 c6 f7 7f 00 00 48 89 46 18 48 b8 10 05 bb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6e955b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 55 e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 33 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 24 00 5f}
004fh mov rcx,7ff7c626de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bb03e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 03 bb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e955b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 55 e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 32 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 24 00 5f}
008eh mov rcx,7ff7c626de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bb0440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 04 bb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e955b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 55 e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 32 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 23 00 5f}
00cdh mov rcx,7ff7c626de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bb0480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 04 bb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6e955b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 55 e9 c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 32 00 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 23 00 5f}
010ch mov rcx,7ff7c626de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6bb04b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 04 bb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6e955b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 55 e9 c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 32 00 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 23 00 5f}
0148h mov rcx,7ff7c626de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 26 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6bb04e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 04 bb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6e955b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 55 e9 c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 31 00 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 23 00 5f}
0184h mov rax,7ff7c626de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 de 26 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6bb0510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 05 bb c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 57 e9 c6 f7 7f 00 00 e8 c0 30 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 21 00 5f 48 b9 a0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 0b bb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 57 e9 c6 f7 7f 00 00 e8 81 30 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 21 00 5f 48 b9 a0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 0b bb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 57 e9 c6 f7 7f 00 00 e8 42 30 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 21 00 5f 48 b9 a0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 0b bb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 57 e9 c6 f7 7f 00 00 e8 03 30 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 21 00 5f 48 b9 a0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 0b bb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 57 e9 c6 f7 7f 00 00 e8 c7 2f 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 20 00 5f 48 b9 a0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 0c bb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 57 e9 c6 f7 7f 00 00 e8 8b 2f 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 20 00 5f 48 b8 a0 de 26 c6 f7 7f 00 00 48 89 46 18 48 b8 38 0c bb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6e957c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 57 e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 30 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 21 00 5f}
004fh mov rcx,7ff7c626dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bb0b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 0b bb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e957c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 57 e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 30 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 21 00 5f}
008eh mov rcx,7ff7c626dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bb0b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 0b bb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e957c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 57 e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 30 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 21 00 5f}
00cdh mov rcx,7ff7c626dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bb0ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0b bb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6e957c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 57 e9 c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 30 00 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 21 00 5f}
010ch mov rcx,7ff7c626dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6bb0bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0b bb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6e957c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 57 e9 c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 2f 00 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 20 00 5f}
0148h mov rcx,7ff7c626dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 26 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6bb0c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 0c bb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6e957c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 57 e9 c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 2f 00 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 20 00 5f}
0184h mov rax,7ff7c626dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 de 26 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6bb0c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 0c bb c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 59 e9 c6 f7 7f 00 00 e8 50 2e 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 1f 00 5f 48 b9 e0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 0c bb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 59 e9 c6 f7 7f 00 00 e8 11 2e 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 1f 00 5f 48 b9 e0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 0d bb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 59 e9 c6 f7 7f 00 00 e8 d2 2d 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 1f 00 5f 48 b9 e0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 0d bb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 59 e9 c6 f7 7f 00 00 e8 93 2d 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 1e 00 5f 48 b9 e0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 0d bb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 59 e9 c6 f7 7f 00 00 e8 57 2d 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 88 1e 00 5f 48 b9 e0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 0e bb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 59 e9 c6 f7 7f 00 00 e8 1b 2d 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 1e 00 5f 48 b8 e0 de 26 c6 f7 7f 00 00 48 89 46 18 48 b8 48 0e bb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6e959d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 59 e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 2e 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 1f 00 5f}
004fh mov rcx,7ff7c626dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bb0ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0c bb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e959d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 59 e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 2e 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 1f 00 5f}
008eh mov rcx,7ff7c626dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bb0d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 0d bb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e959d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 59 e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 2d 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 1f 00 5f}
00cdh mov rcx,7ff7c626dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bb0d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0d bb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6e959d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 59 e9 c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 2d 00 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 1e 00 5f}
010ch mov rcx,7ff7c626dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6bb0dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0d bb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6e959d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 59 e9 c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 2d 00 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 1e 00 5f}
0148h mov rcx,7ff7c626dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 26 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6bb0e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 0e bb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6e959d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 59 e9 c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 2d 00 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 1e 00 5f}
0184h mov rax,7ff7c626dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 de 26 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6bb0e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 0e bb c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e0 5b e9 c6 f7 7f 00 00 e8 e0 2b 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 1d 00 5f 48 b9 20 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 0f bb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 5b e9 c6 f7 7f 00 00 e8 a1 2b 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 1c 00 5f 48 b9 20 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 12 bb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 5b e9 c6 f7 7f 00 00 e8 62 2b 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 1c 00 5f 48 b9 20 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 12 bb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 5b e9 c6 f7 7f 00 00 e8 23 2b 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 1c 00 5f 48 b9 20 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 12 bb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 5b e9 c6 f7 7f 00 00 e8 e7 2a 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 1c 00 5f 48 b9 20 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 13 bb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 5b e9 c6 f7 7f 00 00 e8 ab 2a 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 1b 00 5f 48 b8 20 df 26 c6 f7 7f 00 00 48 89 46 18 48 b8 38 13 bb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6e95be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5b e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 2b 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 1d 00 5f}
004fh mov rcx,7ff7c626df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bb0f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 0f bb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e95be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5b e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 2b 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 1c 00 5f}
008eh mov rcx,7ff7c626df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bb1278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 12 bb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e95be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5b e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 2b 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 1c 00 5f}
00cdh mov rcx,7ff7c626df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bb12a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 12 bb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6e95be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5b e9 c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 2b 00 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 1c 00 5f}
010ch mov rcx,7ff7c626df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6bb12d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 12 bb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6e95be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5b e9 c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 2a 00 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 1c 00 5f}
0148h mov rcx,7ff7c626df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 26 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6bb1308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 13 bb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6e95be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 5b e9 c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 2a 00 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 1b 00 5f}
0184h mov rax,7ff7c626df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 df 26 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6bb1338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 13 bb c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 5d e9 c6 f7 7f 00 00 e8 70 29 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 1a 00 5f 48 b9 60 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 13 bb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 5d e9 c6 f7 7f 00 00 e8 31 29 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 1a 00 5f 48 b9 60 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 14 bb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 5d e9 c6 f7 7f 00 00 e8 f2 28 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 1a 00 5f 48 b9 60 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 14 bb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 5d e9 c6 f7 7f 00 00 e8 b3 28 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 19 00 5f 48 b9 60 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 14 bb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 5d e9 c6 f7 7f 00 00 e8 77 28 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 19 00 5f 48 b9 60 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 15 bb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f0 5d e9 c6 f7 7f 00 00 e8 3b 28 00 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 19 00 5f 48 b8 60 df 26 c6 f7 7f 00 00 48 89 46 18 48 b8 48 15 bb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6e95df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5d e9 c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 29 00 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 1a 00 5f}
004fh mov rcx,7ff7c626df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bb13e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 13 bb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6e95df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5d e9 c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 29 00 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 1a 00 5f}
008eh mov rcx,7ff7c626df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bb1448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 14 bb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6e95df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5d e9 c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 28 00 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 1a 00 5f}
00cdh mov rcx,7ff7c626df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bb1488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 14 bb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6e95df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5d e9 c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 28 00 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 19 00 5f}
010ch mov rcx,7ff7c626df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6bb14c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 14 bb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6e95df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5d e9 c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 28 00 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 19 00 5f}
0148h mov rcx,7ff7c626df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 26 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6bb1508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 15 bb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6e95df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5d e9 c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 28 00 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 19 00 5f}
0184h mov rax,7ff7c626df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 df 26 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6bb1548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 15 bb c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
