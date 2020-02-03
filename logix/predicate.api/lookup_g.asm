------------------------------------------------------------------------------------------------------------------------
; BinaryPred<byte> lookup<byte>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 28 90 c7 f7 7f 00 00 e8 01 bc b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 ad b1 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 1d cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 28 90 c7 f7 7f 00 00 e8 c2 bb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 ac b1 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 43 cd c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 28 90 c7 f7 7f 00 00 e8 83 bb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 ac b1 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 33 cd c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 28 90 c7 f7 7f 00 00 e8 44 bb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 ac b1 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 36 cd c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 28 90 c7 f7 7f 00 00 e8 08 bb b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 ac b1 5e 48 b9 40 e4 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 2b cd c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 28 90 c7 f7 7f 00 00 e8 cc ba b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd ab b1 5e 48 b8 40 e4 23 c6 f7 7f 00 00 48 89 46 18 48 b8 30 2e cd c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7902878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 28 90 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 bc b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 ad b1 5e}
004eh mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6cd1dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 1d cd c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7902878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 28 90 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 bb b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 ac b1 5e}
008dh mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6cd43a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 43 cd c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7902878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 28 90 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 bb b1 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 ac b1 5e}
00cch mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6cd3380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 33 cd c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7902878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 28 90 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 bb b1 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 ac b1 5e}
010bh mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6cd3660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 36 cd c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7902878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 28 90 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 bb b1 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 ac b1 5e}
0147h mov rcx,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 23 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6cd2b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 2b cd c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7902878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 28 90 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc ba b1 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd ab b1 5e}
0183h mov rax,7ff7c623e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e4 23 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6cd2e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 2e cd c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 28 2d 90 c7 f7 7f 00 00 e8 a1 b9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d2 aa b1 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 1e cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 28 2d 90 c7 f7 7f 00 00 e8 62 b9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 aa b1 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 43 cd c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 28 2d 90 c7 f7 7f 00 00 e8 23 b9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 aa b1 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 33 cd c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 28 2d 90 c7 f7 7f 00 00 e8 e4 b8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 aa b1 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 36 cd c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 28 2d 90 c7 f7 7f 00 00 e8 a8 b8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 a9 b1 5e 48 b9 40 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 2b cd c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 28 2d 90 c7 f7 7f 00 00 e8 6c b8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9d a9 b1 5e 48 b8 40 e6 23 c6 f7 7f 00 00 48 89 46 18 48 b8 60 2e cd c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7902d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 2d 90 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 b9 b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 aa b1 5e}
004eh mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6cd1e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1e cd c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7902d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 2d 90 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b9 b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 aa b1 5e}
008dh mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6cd43d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 43 cd c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7902d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 2d 90 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 b9 b1 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 aa b1 5e}
00cch mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6cd33b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 33 cd c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7902d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 2d 90 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 b8 b1 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 aa b1 5e}
010bh mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6cd3690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 36 cd c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7902d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 2d 90 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 b8 b1 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 a9 b1 5e}
0147h mov rcx,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 23 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6cd2b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 2b cd c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7902d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 2d 90 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c b8 b1 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d a9 b1 5e}
0183h mov rax,7ff7c623e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 23 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6cd2e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 2e cd c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<ushort> lookup<ushort>(ComparisonKind:byte kind)
; lookup_g8u[186] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 38 2f 90 c7 f7 7f 00 00 e8 41 b7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 72 a8 b1 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 1e cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 2f 90 c7 f7 7f 00 00 e8 02 b7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 a8 b1 5e 48 b9 80 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 44 cd c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 38 2f 90 c7 f7 7f 00 00 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7902f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2f 90 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 b7 b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 a8 b1 5e}
004eh mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6cd1e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 1e cd c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7902f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2f 90 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 b7 b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 a8 b1 5e}
008dh mov rcx,7ff7c623e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6cd4400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 44 cd c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7902f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2f 90 c7 f7 7f 00 00}
00b8h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<short> lookup<short>(ComparisonKind:byte kind)
; lookup_g8u[138] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 31 90 c7 f7 7f 00 00 e8 d1 b0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 02 a2 b1 5e 48 b9 c0 e6 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 1e cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 31 90 c7 f7 7f 00 00 e8 92 b0 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7903148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 31 90 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 b0 b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 a2 b1 5e}
004eh mov rcx,7ff7c623e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6cd1e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 1e cd c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7903148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 31 90 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 b0 b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<uint> lookup<uint>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 58 33 90 c7 f7 7f 00 00 e8 71 ae b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a2 9f b1 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 1e cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 33 90 c7 f7 7f 00 00 e8 32 ae b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 9f b1 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 44 cd c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 33 90 c7 f7 7f 00 00 e8 f3 ad b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 9f b1 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 34 cd c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 33 90 c7 f7 7f 00 00 e8 b4 ad b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 9e b1 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 37 cd c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 33 90 c7 f7 7f 00 00 e8 78 ad b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a9 9e b1 5e 48 b9 00 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 2c cd c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 33 90 c7 f7 7f 00 00 e8 3c ad b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6d 9e b1 5e 48 b8 00 e7 23 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 2e cd c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7903358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 33 90 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 ae b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 9f b1 5e}
004eh mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6cd1e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 1e cd c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7903358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 33 90 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 ae b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 9f b1 5e}
008dh mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6cd4460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 44 cd c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7903358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 33 90 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 ad b1 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 9f b1 5e}
00cch mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6cd3440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 34 cd c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7903358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 33 90 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 ad b1 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 9e b1 5e}
010bh mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6cd3720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 37 cd c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7903358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 33 90 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 ad b1 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 9e b1 5e}
0147h mov rcx,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 23 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6cd2c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 2c cd c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7903358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 33 90 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c ad b1 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 9e b1 5e}
0183h mov rax,7ff7c623e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e7 23 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6cd2ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 2e cd c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<int> lookup<int>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 35 90 c7 f7 7f 00 00 e8 11 ac b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 42 9d b1 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 1e cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 68 35 90 c7 f7 7f 00 00 e8 d2 ab b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 03 9d b1 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 44 cd c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 68 35 90 c7 f7 7f 00 00 e8 93 ab b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 9c b1 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 34 cd c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 68 35 90 c7 f7 7f 00 00 e8 54 ab b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 85 9c b1 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 3b cd c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 68 35 90 c7 f7 7f 00 00 e8 18 ab b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 49 9c b1 5e 48 b9 40 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 2c cd c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 68 35 90 c7 f7 7f 00 00 e8 dc aa b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0d 9c b1 5e 48 b8 40 e7 23 c6 f7 7f 00 00 48 89 46 18 48 b8 10 2f cd c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7903568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 35 90 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 ac b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 9d b1 5e}
004eh mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6cd1eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1e cd c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7903568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 35 90 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 ab b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 9d b1 5e}
008dh mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6cd4480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 44 cd c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7903568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 35 90 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 ab b1 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 9c b1 5e}
00cch mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6cd3460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 34 cd c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7903568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 35 90 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 ab b1 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 9c b1 5e}
010bh mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6cd3b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 3b cd c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7903568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 35 90 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 ab b1 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 9c b1 5e}
0147h mov rcx,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 23 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6cd2c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 2c cd c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7903568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 35 90 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc aa b1 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 9c b1 5e}
0183h mov rax,7ff7c623e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e7 23 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6cd2f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 2f cd c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<ulong> lookup<ulong>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 78 37 90 c7 f7 7f 00 00 e8 b1 a9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 9a b1 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 1e cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 78 37 90 c7 f7 7f 00 00 e8 72 a9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 9a b1 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 44 cd c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 78 37 90 c7 f7 7f 00 00 e8 33 a9 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 9a b1 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 34 cd c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 78 37 90 c7 f7 7f 00 00 e8 f4 a8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 9a b1 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 3b cd c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 78 37 90 c7 f7 7f 00 00 e8 b8 a8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 99 b1 5e 48 b9 80 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 2c cd c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 78 37 90 c7 f7 7f 00 00 e8 7c a8 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad 99 b1 5e 48 b8 80 e7 23 c6 f7 7f 00 00 48 89 46 18 48 b8 40 33 cd c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7903778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 37 90 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 a9 b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 9a b1 5e}
004eh mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6cd1ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 1e cd c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7903778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 37 90 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 a9 b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 9a b1 5e}
008dh mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6cd44a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 44 cd c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7903778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 37 90 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 a9 b1 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 9a b1 5e}
00cch mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6cd3480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 34 cd c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7903778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 37 90 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 a8 b1 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 9a b1 5e}
010bh mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6cd3b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 3b cd c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7903778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 37 90 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 a8 b1 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 99 b1 5e}
0147h mov rcx,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 23 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6cd2c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 2c cd c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7903778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 37 90 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c a8 b1 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 99 b1 5e}
0183h mov rax,7ff7c623e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e7 23 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6cd3340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 33 cd c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<long> lookup<long>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 88 39 90 c7 f7 7f 00 00 e8 51 a7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 98 b1 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 1e cd c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 88 39 90 c7 f7 7f 00 00 e8 12 a7 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 98 b1 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 44 cd c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 88 39 90 c7 f7 7f 00 00 e8 d3 a6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 98 b1 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 34 cd c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 88 39 90 c7 f7 7f 00 00 e8 94 a6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 97 b1 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 3b cd c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 88 39 90 c7 f7 7f 00 00 e8 58 a6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 97 b1 5e 48 b9 c0 e7 23 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 2c cd c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 88 39 90 c7 f7 7f 00 00 e8 1c a6 b1 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4d 97 b1 5e 48 b8 c0 e7 23 c6 f7 7f 00 00 48 89 46 18 48 b8 60 33 cd c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 05}
0012h ja near ptr 01aah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 92 01 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+20fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 0f 02 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
002bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h mov rcx,7ff7c7903988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 39 90 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 a7 b1 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 98 b1 5e}
004eh mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6cd1ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1e cd c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7903988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 39 90 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 a7 b1 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 98 b1 5e}
008dh mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6cd44c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 44 cd c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7903988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 39 90 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 a6 b1 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 98 b1 5e}
00cch mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6cd34a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 34 cd c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7903988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 39 90 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 a6 b1 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 97 b1 5e}
010bh mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6cd3b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 3b cd c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7903988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 39 90 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 a6 b1 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 97 b1 5e}
0147h mov rcx,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 23 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6cd2c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 2c cd c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7903988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 39 90 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c a6 b1 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 97 b1 5e}
0183h mov rax,7ff7c623e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e7 23 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6cd3360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 33 cd c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
