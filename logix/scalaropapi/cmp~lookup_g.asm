------------------------------------------------------------------------------------------------------------------------
; BinaryOp<byte> lookup<byte>(ComparisonKind:byte kind)
; cmp~lookup_g8u[202] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 7f cc c6 f7 7f 00 00 e8 10 9c 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 41 8d 2e 5f 48 b9 e0 db 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 f2 ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 7f cc c6 f7 7f 00 00 e8 d1 9b 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 8d 2e 5f 48 b9 e0 db 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 f2 ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 7f cc c6 f7 7f 00 00 e8 92 9b 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
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
0031h mov rcx,7ff7c6cc7f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 7f cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 9c 2e 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 8d 2e 5f}
004fh mov rcx,7ff7c626dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6baf2c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f2 ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc7f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 7f cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 9b 2e 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 8d 2e 5f}
008eh mov rcx,7ff7c626dbe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 db 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6baf220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 f2 ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc7f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 7f cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 9b 2e 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c0 83 cc c6 f7 7f 00 00 e8 a0 99 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d1 8a 2e 5f 48 b9 e0 dd 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 fc ba c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c0 83 cc c6 f7 7f 00 00 e8 61 99 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 8a 2e 5f 48 b9 e0 dd 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 fc ba c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c0 83 cc c6 f7 7f 00 00 e8 22 99 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 8a 2e 5f 48 b9 e0 dd 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 fc ba c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c0 83 cc c6 f7 7f 00 00 e8 e3 98 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 8a 2e 5f 48 b9 e0 dd 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 fc ba c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c0 83 cc c6 f7 7f 00 00 e8 a7 98 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d8 89 2e 5f 48 b9 e0 dd 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 fc ba c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c0 83 cc c6 f7 7f 00 00 e8 6b 98 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 9c 89 2e 5f 48 b8 e0 dd 26 c6 f7 7f 00 00 48 89 46 18 48 b8 40 fc ba c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc83c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 83 cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 99 2e 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 8a 2e 5f}
004fh mov rcx,7ff7c626dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bafc80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fc ba c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc83c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 83 cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 99 2e 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 8a 2e 5f}
008eh mov rcx,7ff7c626dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bafc30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 fc ba c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc83c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 83 cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 99 2e 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 8a 2e 5f}
00cdh mov rcx,7ff7c626dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bafc70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 fc ba c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc83c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 83 cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 98 2e 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 8a 2e 5f}
010ch mov rcx,7ff7c626dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6bafc60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 fc ba c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc83c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 83 cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 98 2e 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 89 2e 5f}
0148h mov rcx,7ff7c626dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 dd 26 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6bafc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fc ba c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc83c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 83 cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 98 2e 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 89 2e 5f}
0184h mov rax,7ff7c626dde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 dd 26 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6bafc40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 fc ba c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 85 cc c6 f7 7f 00 00 e8 30 97 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 61 88 2e 5f 48 b9 20 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 02 bb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 85 cc c6 f7 7f 00 00 e8 f1 96 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 88 2e 5f 48 b9 20 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 02 bb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 85 cc c6 f7 7f 00 00 e8 b2 96 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 87 2e 5f 48 b9 20 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 02 bb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 85 cc c6 f7 7f 00 00 e8 73 96 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 87 2e 5f 48 b9 20 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 02 bb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 85 cc c6 f7 7f 00 00 e8 37 96 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 87 2e 5f 48 b9 20 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 02 bb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 85 cc c6 f7 7f 00 00 e8 fb 95 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c 87 2e 5f 48 b8 20 de 26 c6 f7 7f 00 00 48 89 46 18 48 b8 10 02 bb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc85d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 85 cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 97 2e 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 88 2e 5f}
004fh mov rcx,7ff7c626de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bb0250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 02 bb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc85d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 85 cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 96 2e 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 88 2e 5f}
008eh mov rcx,7ff7c626de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bb0200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 02 bb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc85d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 85 cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 96 2e 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 87 2e 5f}
00cdh mov rcx,7ff7c626de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bb0240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 02 bb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc85d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 85 cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 96 2e 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 87 2e 5f}
010ch mov rcx,7ff7c626de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6bb0230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 02 bb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc85d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 85 cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 96 2e 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 87 2e 5f}
0148h mov rcx,7ff7c626de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 de 26 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6bb0220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 02 bb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc85d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 85 cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 95 2e 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 87 2e 5f}
0184h mov rax,7ff7c626de20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 de 26 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6bb0210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 02 bb c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<short> lookup<short>(ComparisonKind:byte kind)
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e0 87 cc c6 f7 7f 00 00 e8 c0 90 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f1 81 2e 5f 48 b9 60 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 03 bb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 87 cc c6 f7 7f 00 00 e8 81 90 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 81 2e 5f 48 b9 60 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 03 bb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 87 cc c6 f7 7f 00 00 e8 42 90 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 81 2e 5f 48 b9 60 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 03 bb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 87 cc c6 f7 7f 00 00 e8 03 90 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 81 2e 5f 48 b9 60 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 03 bb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 87 cc c6 f7 7f 00 00 e8 c7 8f 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 80 2e 5f 48 b9 60 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 03 bb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 87 cc c6 f7 7f 00 00 e8 8b 8f 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 bc 80 2e 5f 48 b8 60 de 26 c6 f7 7f 00 00 48 89 46 18 48 b8 90 03 bb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc87e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 87 cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 90 2e 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 81 2e 5f}
004fh mov rcx,7ff7c626de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bb03d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 03 bb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc87e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 87 cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 90 2e 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 81 2e 5f}
008eh mov rcx,7ff7c626de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bb0380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 03 bb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc87e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 87 cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 90 2e 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 81 2e 5f}
00cdh mov rcx,7ff7c626de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bb03c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 03 bb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc87e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 87 cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 90 2e 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 81 2e 5f}
010ch mov rcx,7ff7c626de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6bb03b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 03 bb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc87e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 87 cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 8f 2e 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 80 2e 5f}
0148h mov rcx,7ff7c626de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de 26 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6bb03a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 03 bb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc87e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 87 cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 8f 2e 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 80 2e 5f}
0184h mov rax,7ff7c626de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 de 26 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6bb0390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 03 bb c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 89 cc c6 f7 7f 00 00 e8 50 8e 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 81 7f 2e 5f 48 b9 a0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 05 bb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 89 cc c6 f7 7f 00 00 e8 11 8e 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 7f 2e 5f 48 b9 a0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 05 bb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 89 cc c6 f7 7f 00 00 e8 d2 8d 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 7f 2e 5f 48 b9 a0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 05 bb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 89 cc c6 f7 7f 00 00 e8 93 8d 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 7e 2e 5f 48 b9 a0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 05 bb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 89 cc c6 f7 7f 00 00 e8 57 8d 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 88 7e 2e 5f 48 b9 a0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 05 bb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f0 89 cc c6 f7 7f 00 00 e8 1b 8d 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 4c 7e 2e 5f 48 b8 a0 de 26 c6 f7 7f 00 00 48 89 46 18 48 b8 70 05 bb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc89f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 89 cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 8e 2e 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 7f 2e 5f}
004fh mov rcx,7ff7c626dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bb05b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 05 bb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc89f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 89 cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 8e 2e 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 7f 2e 5f}
008eh mov rcx,7ff7c626dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bb0560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 05 bb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc89f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 89 cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 8d 2e 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 7f 2e 5f}
00cdh mov rcx,7ff7c626dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bb05a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 05 bb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc89f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 89 cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 8d 2e 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 7e 2e 5f}
010ch mov rcx,7ff7c626dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6bb0590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 05 bb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc89f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 89 cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 8d 2e 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 7e 2e 5f}
0148h mov rcx,7ff7c626dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 de 26 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6bb0580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 05 bb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc89f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 89 cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 8d 2e 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 7e 2e 5f}
0184h mov rax,7ff7c626dea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 de 26 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6bb0570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 05 bb c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 00 8c cc c6 f7 7f 00 00 e8 e0 8b 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 11 7d 2e 5f 48 b9 e0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 0c bb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 00 8c cc c6 f7 7f 00 00 e8 a1 8b 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 7c 2e 5f 48 b9 e0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 0c bb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 00 8c cc c6 f7 7f 00 00 e8 62 8b 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 7c 2e 5f 48 b9 e0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 0c bb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 00 8c cc c6 f7 7f 00 00 e8 23 8b 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 7c 2e 5f 48 b9 e0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 0c bb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 00 8c cc c6 f7 7f 00 00 e8 e7 8a 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 7c 2e 5f 48 b9 e0 de 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 0c bb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 00 8c cc c6 f7 7f 00 00 e8 ab 8a 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 dc 7b 2e 5f 48 b8 e0 de 26 c6 f7 7f 00 00 48 89 46 18 48 b8 98 0c bb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc8c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8c cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 8b 2e 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 7d 2e 5f}
004fh mov rcx,7ff7c626dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bb0cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0c bb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc8c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8c cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 8b 2e 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 7c 2e 5f}
008eh mov rcx,7ff7c626dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bb0c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 0c bb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc8c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8c cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 8b 2e 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 7c 2e 5f}
00cdh mov rcx,7ff7c626dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bb0cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0c bb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc8c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8c cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 8b 2e 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 7c 2e 5f}
010ch mov rcx,7ff7c626dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6bb0cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 0c bb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc8c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8c cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 8a 2e 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 7c 2e 5f}
0148h mov rcx,7ff7c626dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 de 26 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6bb0ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0c bb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc8c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8c cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 8a 2e 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 7b 2e 5f}
0184h mov rax,7ff7c626dee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 de 26 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6bb0c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 0c bb c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 8e cc c6 f7 7f 00 00 e8 70 89 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a1 7a 2e 5f 48 b9 20 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 0e bb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 8e cc c6 f7 7f 00 00 e8 31 89 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 7a 2e 5f 48 b9 20 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 0e bb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 8e cc c6 f7 7f 00 00 e8 f2 88 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 7a 2e 5f 48 b9 20 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 0e bb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 10 8e cc c6 f7 7f 00 00 e8 b3 88 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 79 2e 5f 48 b9 20 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 0e bb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 10 8e cc c6 f7 7f 00 00 e8 77 88 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 79 2e 5f 48 b9 20 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 0e bb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 10 8e cc c6 f7 7f 00 00 e8 3b 88 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c 79 2e 5f 48 b8 20 df 26 c6 f7 7f 00 00 48 89 46 18 48 b8 b8 0e bb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc8e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 8e cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 89 2e 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 7a 2e 5f}
004fh mov rcx,7ff7c626df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bb0ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 0e bb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc8e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 8e cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 89 2e 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 7a 2e 5f}
008eh mov rcx,7ff7c626df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bb0ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0e bb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc8e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 8e cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 88 2e 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 7a 2e 5f}
00cdh mov rcx,7ff7c626df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bb0ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0e bb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc8e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 8e cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 88 2e 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 79 2e 5f}
010ch mov rcx,7ff7c626df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6bb0ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0e bb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc8e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 8e cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 88 2e 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 79 2e 5f}
0148h mov rcx,7ff7c626df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 df 26 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6bb0ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0e bb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc8e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 8e cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 88 2e 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 79 2e 5f}
0184h mov rax,7ff7c626df20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 df 26 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6bb0eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 0e bb c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 20 90 cc c6 f7 7f 00 00 e8 00 87 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 31 78 2e 5f 48 b9 60 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 13 bb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 90 cc c6 f7 7f 00 00 e8 c1 86 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 77 2e 5f 48 b9 60 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 13 bb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 90 cc c6 f7 7f 00 00 e8 82 86 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 77 2e 5f 48 b9 60 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 13 bb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 90 cc c6 f7 7f 00 00 e8 43 86 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 77 2e 5f 48 b9 60 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 13 bb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 90 cc c6 f7 7f 00 00 e8 07 86 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 38 77 2e 5f 48 b9 60 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 13 bb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 90 cc c6 f7 7f 00 00 e8 cb 85 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc 76 2e 5f 48 b8 60 df 26 c6 f7 7f 00 00 48 89 46 18 48 b8 98 13 bb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc9020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 90 cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 87 2e 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 78 2e 5f}
004fh mov rcx,7ff7c626df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bb13d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 13 bb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc9020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 90 cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 86 2e 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 77 2e 5f}
008eh mov rcx,7ff7c626df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bb1388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 13 bb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc9020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 90 cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 86 2e 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 77 2e 5f}
00cdh mov rcx,7ff7c626df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bb13c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 13 bb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc9020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 90 cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 86 2e 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 77 2e 5f}
010ch mov rcx,7ff7c626df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6bb13b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 13 bb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc9020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 90 cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 86 2e 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 77 2e 5f}
0148h mov rcx,7ff7c626df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 df 26 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6bb13a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 13 bb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc9020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 90 cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 85 2e 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 76 2e 5f}
0184h mov rax,7ff7c626df60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 df 26 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6bb1398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 13 bb c6 f7 7f 00 00}
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
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 30 92 cc c6 f7 7f 00 00 e8 90 84 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c1 75 2e 5f 48 b9 a0 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 d9 bb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 30 92 cc c6 f7 7f 00 00 e8 51 84 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 75 2e 5f 48 b9 a0 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 d8 bb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 30 92 cc c6 f7 7f 00 00 e8 12 84 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 75 2e 5f 48 b9 a0 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 d9 bb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 30 92 cc c6 f7 7f 00 00 e8 d3 83 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 75 2e 5f 48 b9 a0 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 d9 bb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 30 92 cc c6 f7 7f 00 00 e8 97 83 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 c8 74 2e 5f 48 b9 a0 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 d9 bb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 30 92 cc c6 f7 7f 00 00 e8 5b 83 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 8c 74 2e 5f 48 b8 a0 df 26 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 d8 bb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc9230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 84 2e 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 75 2e 5f}
004fh mov rcx,7ff7c626dfa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 df 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bbd938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d9 bb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc9230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 84 2e 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 75 2e 5f}
008eh mov rcx,7ff7c626dfa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 df 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bbd8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d8 bb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc9230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 84 2e 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 75 2e 5f}
00cdh mov rcx,7ff7c626dfa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 df 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bbd928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 d9 bb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc9230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 83 2e 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 75 2e 5f}
010ch mov rcx,7ff7c626dfa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 df 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6bbd918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 bb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc9230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 83 2e 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 74 2e 5f}
0148h mov rcx,7ff7c626dfa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 df 26 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6bbd908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 d9 bb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc9230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 92 cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 83 2e 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 74 2e 5f}
0184h mov rax,7ff7c626dfa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 df 26 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6bbd8f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 d8 bb c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<double> lookup<double>(ComparisonKind:byte kind)
; cmp~lookup_g8u[428] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 93 01 00 00 8b c9 48 8d 05 0e 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e0 96 cc c6 f7 7f 00 00 e8 20 82 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 51 73 2e 5f 48 b9 e0 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 d9 bb c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 96 cc c6 f7 7f 00 00 e8 e1 81 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 73 2e 5f 48 b9 e0 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 d9 bb c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 96 cc c6 f7 7f 00 00 e8 a2 81 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 72 2e 5f 48 b9 e0 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 d9 bb c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 96 cc c6 f7 7f 00 00 e8 63 81 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 72 2e 5f 48 b9 e0 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 d9 bb c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 96 cc c6 f7 7f 00 00 e8 27 81 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 72 2e 5f 48 b9 e0 df 26 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 d9 bb c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 96 cc c6 f7 7f 00 00 e8 eb 80 2e 5f 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c 72 2e 5f 48 b8 e0 df 26 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 d9 bb c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3}
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
0031h mov rcx,7ff7c6cc96e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 96 cc c6 f7 7f 00 00}
003bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 82 2e 5f}
0040h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0043h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 73 2e 5f}
004fh mov rcx,7ff7c626dfe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 df 26 c6 f7 7f 00 00}
0059h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005dh mov rcx,7ff7c6bbd9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d9 bb c6 f7 7f 00 00}
0067h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006bh jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
0070h mov rcx,7ff7c6cc96e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 96 cc c6 f7 7f 00 00}
007ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 81 2e 5f}
007fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0082h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0086h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0089h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 73 2e 5f}
008eh mov rcx,7ff7c626dfe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 df 26 c6 f7 7f 00 00}
0098h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ch mov rcx,7ff7c6bbd990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 d9 bb c6 f7 7f 00 00}
00a6h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00aah jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00afh mov rcx,7ff7c6cc96e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 96 cc c6 f7 7f 00 00}
00b9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 81 2e 5f}
00beh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c1h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c8h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 72 2e 5f}
00cdh mov rcx,7ff7c626dfe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 df 26 c6 f7 7f 00 00}
00d7h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dbh mov rcx,7ff7c6bbd9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d9 bb c6 f7 7f 00 00}
00e5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e9h jmp near ptr 01a0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00eeh mov rcx,7ff7c6cc96e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 96 cc c6 f7 7f 00 00}
00f8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 81 2e 5f}
00fdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0100h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0104h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0107h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 72 2e 5f}
010ch mov rcx,7ff7c626dfe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 df 26 c6 f7 7f 00 00}
0116h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
011ah mov rcx,7ff7c6bbd9c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d9 bb c6 f7 7f 00 00}
0124h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0128h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
012ah mov rcx,7ff7c6cc96e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 96 cc c6 f7 7f 00 00}
0134h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 81 2e 5f}
0139h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0140h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0143h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 72 2e 5f}
0148h mov rcx,7ff7c626dfe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 df 26 c6 f7 7f 00 00}
0152h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0156h mov rcx,7ff7c6bbd9b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 d9 bb c6 f7 7f 00 00}
0160h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0164h jmp short 01a0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0166h mov rcx,7ff7c6cc96e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 96 cc c6 f7 7f 00 00}
0170h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 80 2e 5f}
0175h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0178h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 72 2e 5f}
0184h mov rax,7ff7c626dfe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 df 26 c6 f7 7f 00 00}
018eh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0192h mov rax,7ff7c6bbd9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 d9 bb c6 f7 7f 00 00}
019ch mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
01a0h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01a9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01abh ret                                     ; RET || C3 || encoded[1]{c3}
