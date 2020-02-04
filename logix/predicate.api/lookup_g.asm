------------------------------------------------------------------------------------------------------------------------
; BinaryPred<byte> lookup<byte>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 20 85 92 c7 f7 7f 00 00 e8 b1 ba af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 ab af 5e 48 b9 80 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 90 d0 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 85 92 c7 f7 7f 00 00 e8 72 ba af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 ab af 5e 48 b9 80 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 b5 d0 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 85 92 c7 f7 7f 00 00 e8 33 ba af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 ab af 5e 48 b9 80 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 a5 d0 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 85 92 c7 f7 7f 00 00 e8 f4 b9 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 ab af 5e 48 b9 80 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 a8 d0 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 85 92 c7 f7 7f 00 00 e8 b8 b9 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 aa af 5e 48 b9 80 e3 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 99 d0 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 85 92 c7 f7 7f 00 00 e8 7c b9 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad aa af 5e 48 b8 80 e3 24 c6 f7 7f 00 00 48 89 46 18 48 b8 80 a0 d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7928520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 85 92 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 ba af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ab af 5e}
004eh mov rcx,7ff7c624e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d09020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 90 d0 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7928520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 85 92 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 ba af 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 ab af 5e}
008dh mov rcx,7ff7c624e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6d0b5f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 b5 d0 c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7928520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 85 92 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 ba af 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 ab af 5e}
00cch mov rcx,7ff7c624e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6d0a5d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a5 d0 c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7928520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 85 92 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 b9 af 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 ab af 5e}
010bh mov rcx,7ff7c624e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6d0a8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a8 d0 c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7928520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 85 92 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 b9 af 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 aa af 5e}
0147h mov rcx,7ff7c624e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6d099a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 99 d0 c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7928520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 85 92 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c b9 af 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad aa af 5e}
0183h mov rax,7ff7c624e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e3 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6d0a080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 a0 d0 c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d0 89 92 c7 f7 7f 00 00 e8 51 b8 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 a9 af 5e 48 b9 80 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 90 d0 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d0 89 92 c7 f7 7f 00 00 e8 12 b8 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 a9 af 5e 48 b9 80 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 b6 d0 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 d0 89 92 c7 f7 7f 00 00 e8 d3 b7 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 a9 af 5e 48 b9 80 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 a6 d0 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 d0 89 92 c7 f7 7f 00 00 e8 94 b7 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 a8 af 5e 48 b9 80 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 a8 d0 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 d0 89 92 c7 f7 7f 00 00 e8 58 b7 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 a8 af 5e 48 b9 80 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 9d d0 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 d0 89 92 c7 f7 7f 00 00 e8 1c b7 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4d a8 af 5e 48 b8 80 e5 24 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 a0 d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c79289d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 89 92 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 b8 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 a9 af 5e}
004eh mov rcx,7ff7c624e580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e5 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d09050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 90 d0 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c79289d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 89 92 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 b8 af 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 a9 af 5e}
008dh mov rcx,7ff7c624e580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e5 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6d0b620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 d0 c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c79289d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 89 92 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 b7 af 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 a9 af 5e}
00cch mov rcx,7ff7c624e580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e5 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6d0a600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a6 d0 c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c79289d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 89 92 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 b7 af 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 a8 af 5e}
010bh mov rcx,7ff7c624e580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e5 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6d0a8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a8 d0 c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c79289d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 89 92 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 b7 af 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 a8 af 5e}
0147h mov rcx,7ff7c624e580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e5 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6d09dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 9d d0 c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c79289d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 89 92 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c b7 af 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d a8 af 5e}
0183h mov rax,7ff7c624e580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e5 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6d0a0b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 a0 d0 c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<ushort> lookup<ushort>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e0 8b 92 c7 f7 7f 00 00 e8 f1 b5 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 a7 af 5e 48 b9 c0 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 90 d0 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e0 8b 92 c7 f7 7f 00 00 e8 b2 b5 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 a6 af 5e 48 b9 c0 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 b6 d0 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e0 8b 92 c7 f7 7f 00 00 e8 73 b5 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 a6 af 5e 48 b9 c0 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 a6 d0 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e0 8b 92 c7 f7 7f 00 00 e8 34 b5 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 a6 af 5e 48 b9 c0 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 a9 d0 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e0 8b 92 c7 f7 7f 00 00 e8 f8 b4 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 a6 af 5e 48 b9 c0 e5 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 9e d0 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e0 8b 92 c7 f7 7f 00 00 e8 bc b4 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed a5 af 5e 48 b8 c0 e5 24 c6 f7 7f 00 00 48 89 46 18 48 b8 e0 a0 d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7928be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8b 92 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 b5 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 a7 af 5e}
004eh mov rcx,7ff7c624e5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e5 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d09080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 90 d0 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7928be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8b 92 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 b5 af 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 a6 af 5e}
008dh mov rcx,7ff7c624e5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e5 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6d0b650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b6 d0 c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7928be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8b 92 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 b5 af 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 a6 af 5e}
00cch mov rcx,7ff7c624e5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e5 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6d0a630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 a6 d0 c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7928be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8b 92 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 b5 af 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 a6 af 5e}
010bh mov rcx,7ff7c624e5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e5 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6d0a910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a9 d0 c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7928be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8b 92 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 b4 af 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 a6 af 5e}
0147h mov rcx,7ff7c624e5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e5 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6d09e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 9e d0 c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7928be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8b 92 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc b4 af 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed a5 af 5e}
0183h mov rax,7ff7c624e5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e5 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6d0a0e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 a0 d0 c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<short> lookup<short>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f0 8d 92 c7 f7 7f 00 00 e8 81 af af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 a0 af 5e 48 b9 00 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 90 d0 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f0 8d 92 c7 f7 7f 00 00 e8 42 af af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 a0 af 5e 48 b9 00 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 b6 d0 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f0 8d 92 c7 f7 7f 00 00 e8 03 af af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 a0 af 5e 48 b9 00 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 a6 d0 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f0 8d 92 c7 f7 7f 00 00 e8 c4 ae af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 9f af 5e 48 b9 00 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 a9 d0 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f0 8d 92 c7 f7 7f 00 00 e8 88 ae af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b9 9f af 5e 48 b9 00 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 9e d0 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f0 8d 92 c7 f7 7f 00 00 e8 4c ae af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d 9f af 5e 48 b8 00 e6 24 c6 f7 7f 00 00 48 89 46 18 48 b8 10 a1 d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7928df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8d 92 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 af af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 a0 af 5e}
004eh mov rcx,7ff7c624e600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e6 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d090b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 90 d0 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7928df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8d 92 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 af af 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 a0 af 5e}
008dh mov rcx,7ff7c624e600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e6 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6d0b680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b6 d0 c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7928df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8d 92 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 af af 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 a0 af 5e}
00cch mov rcx,7ff7c624e600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e6 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6d0a660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 a6 d0 c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7928df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8d 92 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 ae af 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 9f af 5e}
010bh mov rcx,7ff7c624e600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e6 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6d0a940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a9 d0 c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7928df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8d 92 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 ae af 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 9f af 5e}
0147h mov rcx,7ff7c624e600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e6 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6d09e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 9e d0 c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7928df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 8d 92 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c ae af 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 9f af 5e}
0183h mov rax,7ff7c624e600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e6 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6d0a110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 a1 d0 c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<uint> lookup<uint>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 00 90 92 c7 f7 7f 00 00 e8 21 ad af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 9e af 5e 48 b9 40 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 90 d0 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 00 90 92 c7 f7 7f 00 00 e8 e2 ac af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 13 9e af 5e 48 b9 40 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 b6 d0 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 00 90 92 c7 f7 7f 00 00 e8 a3 ac af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 9d af 5e 48 b9 40 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 a6 d0 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 00 90 92 c7 f7 7f 00 00 e8 64 ac af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 95 9d af 5e 48 b9 40 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 a9 d0 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 00 90 92 c7 f7 7f 00 00 e8 28 ac af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 59 9d af 5e 48 b9 40 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 9e d0 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 00 90 92 c7 f7 7f 00 00 e8 ec ab af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d 9d af 5e 48 b8 40 e6 24 c6 f7 7f 00 00 48 89 46 18 48 b8 40 a1 d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7929000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 90 92 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 ad af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 9e af 5e}
004eh mov rcx,7ff7c624e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d090e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 90 d0 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7929000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 90 92 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ac af 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 9e af 5e}
008dh mov rcx,7ff7c624e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6d0b6b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 b6 d0 c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7929000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 90 92 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 ac af 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 9d af 5e}
00cch mov rcx,7ff7c624e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6d0a690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a6 d0 c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7929000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 90 92 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 ac af 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 9d af 5e}
010bh mov rcx,7ff7c624e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6d0a970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 a9 d0 c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7929000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 90 92 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 ac af 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 9d af 5e}
0147h mov rcx,7ff7c624e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6d09e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 9e d0 c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7929000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 90 92 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec ab af 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 9d af 5e}
0183h mov rax,7ff7c624e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6d0a140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 a1 d0 c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<int> lookup<int>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 10 92 92 c7 f7 7f 00 00 e8 c1 aa af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f2 9b af 5e 48 b9 80 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 91 d0 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 10 92 92 c7 f7 7f 00 00 e8 82 aa af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 9b af 5e 48 b9 80 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 b6 d0 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 10 92 92 c7 f7 7f 00 00 e8 43 aa af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 9b af 5e 48 b9 80 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 a6 d0 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 10 92 92 c7 f7 7f 00 00 e8 04 aa af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 9b af 5e 48 b9 80 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 a9 d0 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 10 92 92 c7 f7 7f 00 00 e8 c8 a9 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f9 9a af 5e 48 b9 80 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 9e d0 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 10 92 92 c7 f7 7f 00 00 e8 8c a9 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bd 9a af 5e 48 b8 80 e6 24 c6 f7 7f 00 00 48 89 46 18 48 b8 60 a1 d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7929210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 92 92 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 aa af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 9b af 5e}
004eh mov rcx,7ff7c624e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d09100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 91 d0 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7929210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 92 92 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 aa af 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 9b af 5e}
008dh mov rcx,7ff7c624e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6d0b6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 b6 d0 c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7929210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 92 92 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 aa af 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 9b af 5e}
00cch mov rcx,7ff7c624e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6d0a6b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a6 d0 c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7929210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 92 92 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 aa af 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 9b af 5e}
010bh mov rcx,7ff7c624e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6d0a990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a9 d0 c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7929210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 92 92 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 a9 af 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 9a af 5e}
0147h mov rcx,7ff7c624e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6d09e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9e d0 c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7929210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 92 92 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c a9 af 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 9a af 5e}
0183h mov rax,7ff7c624e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e6 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6d0a160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 a1 d0 c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<ulong> lookup<ulong>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 20 94 92 c7 f7 7f 00 00 e8 61 a8 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 92 99 af 5e 48 b9 c0 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 91 d0 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 94 92 c7 f7 7f 00 00 e8 22 a8 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 99 af 5e 48 b9 c0 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 b6 d0 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 94 92 c7 f7 7f 00 00 e8 e3 a7 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 99 af 5e 48 b9 c0 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 a6 d0 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 94 92 c7 f7 7f 00 00 e8 a4 a7 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 98 af 5e 48 b9 c0 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 a9 d0 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 94 92 c7 f7 7f 00 00 e8 68 a7 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 99 98 af 5e 48 b9 c0 e6 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 9e d0 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 94 92 c7 f7 7f 00 00 e8 2c a7 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5d 98 af 5e 48 b8 c0 e6 24 c6 f7 7f 00 00 48 89 46 18 48 b8 80 a1 d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7929420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 94 92 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 a8 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 99 af 5e}
004eh mov rcx,7ff7c624e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d09120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 91 d0 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7929420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 94 92 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 a8 af 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 99 af 5e}
008dh mov rcx,7ff7c624e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6d0b6f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 b6 d0 c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7929420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 94 92 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 a7 af 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 99 af 5e}
00cch mov rcx,7ff7c624e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6d0a6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 a6 d0 c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7929420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 94 92 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 a7 af 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 98 af 5e}
010bh mov rcx,7ff7c624e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6d0a9b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a9 d0 c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7929420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 94 92 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 a7 af 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 98 af 5e}
0147h mov rcx,7ff7c624e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6d09ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9e d0 c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7929420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 94 92 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c a7 af 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 98 af 5e}
0183h mov rax,7ff7c624e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e6 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6d0a180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 a1 d0 c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<long> lookup<long>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 30 96 92 c7 f7 7f 00 00 e8 01 a6 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 32 97 af 5e 48 b9 00 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 91 d0 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 30 96 92 c7 f7 7f 00 00 e8 c2 a5 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f3 96 af 5e 48 b9 00 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 b7 d0 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 30 96 92 c7 f7 7f 00 00 e8 83 a5 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b4 96 af 5e 48 b9 00 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 a6 d0 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 30 96 92 c7 f7 7f 00 00 e8 44 a5 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 75 96 af 5e 48 b9 00 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 ad d0 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 30 96 92 c7 f7 7f 00 00 e8 08 a5 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 96 af 5e 48 b9 00 e7 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 9e d0 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 30 96 92 c7 f7 7f 00 00 e8 cc a4 af 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fd 95 af 5e 48 b8 00 e7 24 c6 f7 7f 00 00 48 89 46 18 48 b8 a0 a1 d0 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7929630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 96 92 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 a6 af 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 97 af 5e}
004eh mov rcx,7ff7c624e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 24 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d09140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 91 d0 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7929630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 96 92 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 a5 af 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 96 af 5e}
008dh mov rcx,7ff7c624e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 24 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6d0b710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b7 d0 c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7929630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 96 92 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 a5 af 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 96 af 5e}
00cch mov rcx,7ff7c624e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 24 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6d0a6f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a6 d0 c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7929630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 96 92 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 a5 af 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 96 af 5e}
010bh mov rcx,7ff7c624e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 24 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6d0ade0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 ad d0 c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7929630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 96 92 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 a5 af 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 96 af 5e}
0147h mov rcx,7ff7c624e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 24 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6d09ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 9e d0 c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7929630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 96 92 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc a4 af 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 95 af 5e}
0183h mov rax,7ff7c624e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e7 24 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6d0a1a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 a1 d0 c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
