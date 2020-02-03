------------------------------------------------------------------------------------------------------------------------
; BinaryPred<byte> lookup<byte>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 18 f3 91 c7 f7 7f 00 00 e8 e1 c8 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 12 ba ad 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 8f d2 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 18 f3 91 c7 f7 7f 00 00 e8 a2 c8 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d3 b9 ad 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 b5 d2 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 18 f3 91 c7 f7 7f 00 00 e8 63 c8 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 94 b9 ad 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 a5 d2 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 18 f3 91 c7 f7 7f 00 00 e8 24 c8 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 55 b9 ad 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 a8 d2 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 18 f3 91 c7 f7 7f 00 00 e8 e8 c7 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 b9 ad 5e 48 b9 40 e4 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 98 d2 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 18 f3 91 c7 f7 7f 00 00 e8 ac c7 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd b8 ad 5e 48 b8 40 e4 27 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 9f d2 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c791f318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f3 91 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 c8 ad 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 ba ad 5e}
004eh mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d28f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 8f d2 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c791f318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f3 91 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 c8 ad 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 b9 ad 5e}
008dh mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6d2b540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b5 d2 c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c791f318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f3 91 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 c8 ad 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 b9 ad 5e}
00cch mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6d2a520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a5 d2 c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c791f318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f3 91 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 c8 ad 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 b9 ad 5e}
010bh mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6d2a800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a8 d2 c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c791f318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f3 91 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 c7 ad 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 b9 ad 5e}
0147h mov rcx,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e4 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6d298f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 98 d2 c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c791f318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f3 91 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac c7 ad 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd b8 ad 5e}
0183h mov rax,7ff7c627e440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e4 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6d29fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 9f d2 c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 c8 f7 91 c7 f7 7f 00 00 e8 81 c6 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b2 b7 ad 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 a0 8f d2 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c8 f7 91 c7 f7 7f 00 00 e8 42 c6 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 73 b7 ad 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 b5 d2 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c8 f7 91 c7 f7 7f 00 00 e8 03 c6 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 b7 ad 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 a5 d2 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c8 f7 91 c7 f7 7f 00 00 e8 c4 c5 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f5 b6 ad 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 a8 d2 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c8 f7 91 c7 f7 7f 00 00 e8 88 c5 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b9 b6 ad 5e 48 b9 40 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 9d d2 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c8 f7 91 c7 f7 7f 00 00 e8 4c c5 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7d b6 ad 5e 48 b8 40 e6 27 c6 f7 7f 00 00 48 89 46 18 48 b8 00 a0 d2 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c791f7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f7 91 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 c6 ad 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 b7 ad 5e}
004eh mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d28fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8f d2 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c791f7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f7 91 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 c6 ad 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 b7 ad 5e}
008dh mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6d2b570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 b5 d2 c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c791f7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f7 91 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 c6 ad 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 b7 ad 5e}
00cch mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6d2a550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a5 d2 c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c791f7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f7 91 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 c5 ad 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 b6 ad 5e}
010bh mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6d2a830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 a8 d2 c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c791f7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f7 91 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 c5 ad 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 b6 ad 5e}
0147h mov rcx,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e6 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6d29d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 9d d2 c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c791f7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f7 91 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c c5 ad 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d b6 ad 5e}
0183h mov rax,7ff7c627e640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e6 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6d2a000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 a0 d2 c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<ushort> lookup<ushort>(ComparisonKind:byte kind)
; lookup_g8u[124] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 d8 f9 91 c7 f7 7f 00 00 e8 21 c4 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 52 b5 ad 5e 48 b9 80 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 8f d2 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 d8 f9 91 c7 f7 7f 00 00 e8 e2 c3}
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
0030h mov rcx,7ff7c791f9d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f9 91 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 c4 ad 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 b5 ad 5e}
004eh mov rcx,7ff7c627e680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e6 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d28fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 8f d2 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c791f9d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f9 91 c7 f7 7f 00 00}
0079h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 e2 c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<short> lookup<short>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 e8 fb 91 c7 f7 7f 00 00 e8 b1 bd ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e2 ae ad 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 90 d2 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 e8 fb 91 c7 f7 7f 00 00 e8 72 bd ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 ae ad 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 b5 d2 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 e8 fb 91 c7 f7 7f 00 00 e8 33 bd ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 ae ad 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 a5 d2 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 e8 fb 91 c7 f7 7f 00 00 e8 f4 bc ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 ae ad 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 a8 d2 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 e8 fb 91 c7 f7 7f 00 00 e8 b8 bc ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 ad ad 5e 48 b9 c0 e6 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 9d d2 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 e8 fb 91 c7 f7 7f 00 00 e8 7c bc ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ad ad ad 5e 48 b8 c0 e6 27 c6 f7 7f 00 00 48 89 46 18 48 b8 60 a0 d2 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c791fbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fb 91 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 bd ad 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ae ad 5e}
004eh mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d29000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 90 d2 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c791fbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fb 91 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 bd ad 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 ae ad 5e}
008dh mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6d2b5d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 b5 d2 c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c791fbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fb 91 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 bd ad 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 ae ad 5e}
00cch mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6d2a5b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a5 d2 c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c791fbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fb 91 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 bc ad 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 ae ad 5e}
010bh mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6d2a890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a8 d2 c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c791fbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fb 91 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 bc ad 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 ad ad 5e}
0147h mov rcx,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e6 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6d29d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9d d2 c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c791fbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fb 91 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c bc ad 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad ad ad 5e}
0183h mov rax,7ff7c627e6c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e6 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6d2a060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 a0 d2 c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<uint> lookup<uint>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 f8 fd 91 c7 f7 7f 00 00 e8 51 bb ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 82 ac ad 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 90 d2 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 f8 fd 91 c7 f7 7f 00 00 e8 12 bb ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 ac ad 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 b6 d2 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 f8 fd 91 c7 f7 7f 00 00 e8 d3 ba ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 ac ad 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 a5 d2 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 f8 fd 91 c7 f7 7f 00 00 e8 94 ba ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 ab ad 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 c0 a8 d2 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 f8 fd 91 c7 f7 7f 00 00 e8 58 ba ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 89 ab ad 5e 48 b9 00 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 b0 9d d2 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 f8 fd 91 c7 f7 7f 00 00 e8 1c ba ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4d ab ad 5e 48 b8 00 e7 27 c6 f7 7f 00 00 48 89 46 18 48 b8 90 a0 d2 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c791fdf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 fd 91 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 bb ad 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 ac ad 5e}
004eh mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d29030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 90 d2 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c791fdf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 fd 91 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 bb ad 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 ac ad 5e}
008dh mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6d2b600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b6 d2 c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c791fdf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 fd 91 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 ba ad 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 ac ad 5e}
00cch mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6d2a5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a5 d2 c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c791fdf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 fd 91 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 ba ad 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 ab ad 5e}
010bh mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6d2a8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a8 d2 c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c791fdf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 fd 91 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 ba ad 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 ab ad 5e}
0147h mov rcx,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e7 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6d29db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 9d d2 c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c791fdf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 fd 91 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c ba ad 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d ab ad 5e}
0183h mov rax,7ff7c627e700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 e7 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6d2a090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 a0 d2 c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<int> lookup<int>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 48 00 93 c7 f7 7f 00 00 e8 f1 b8 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 22 aa ad 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 90 d2 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 00 93 c7 f7 7f 00 00 e8 b2 b8 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e3 a9 ad 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 b6 d2 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 00 93 c7 f7 7f 00 00 e8 73 b8 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a4 a9 ad 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 a6 d2 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 00 93 c7 f7 7f 00 00 e8 34 b8 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 65 a9 ad 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 e0 a8 d2 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 00 93 c7 f7 7f 00 00 e8 f8 b7 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 a9 ad 5e 48 b9 40 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 d0 9d d2 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 00 93 c7 f7 7f 00 00 e8 bc b7 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed a8 ad 5e 48 b8 40 e7 27 c6 f7 7f 00 00 48 89 46 18 48 b8 b0 a0 d2 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7930048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 93 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 b8 ad 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 aa ad 5e}
004eh mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d29050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 90 d2 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7930048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 93 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 b8 ad 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 a9 ad 5e}
008dh mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6d2b620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 d2 c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7930048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 93 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 b8 ad 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 a9 ad 5e}
00cch mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6d2a600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a6 d2 c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7930048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 93 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 b8 ad 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 a9 ad 5e}
010bh mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6d2a8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a8 d2 c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7930048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 93 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 b7 ad 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 a9 ad 5e}
0147h mov rcx,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e7 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6d29dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 9d d2 c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7930048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 00 93 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc b7 ad 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed a8 ad 5e}
0183h mov rax,7ff7c627e740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 e7 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6d2a0b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 a0 d2 c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<ulong> lookup<ulong>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 58 02 93 c7 f7 7f 00 00 e8 91 b6 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c2 a7 ad 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 70 90 d2 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 02 93 c7 f7 7f 00 00 e8 52 b6 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 83 a7 ad 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 b6 d2 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 02 93 c7 f7 7f 00 00 e8 13 b6 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 a7 ad 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 20 a6 d2 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 02 93 c7 f7 7f 00 00 e8 d4 b5 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 05 a7 ad 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 a9 d2 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 02 93 c7 f7 7f 00 00 e8 98 b5 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 a6 ad 5e 48 b9 80 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 f0 9d d2 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 02 93 c7 f7 7f 00 00 e8 5c b5 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8d a6 ad 5e 48 b8 80 e7 27 c6 f7 7f 00 00 48 89 46 18 48 b8 d0 a0 d2 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7930258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 93 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 b6 ad 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 a7 ad 5e}
004eh mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d29070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 90 d2 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7930258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 93 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 b6 ad 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 a7 ad 5e}
008dh mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6d2b640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b6 d2 c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7930258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 93 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 b6 ad 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 a7 ad 5e}
00cch mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6d2a620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 a6 d2 c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7930258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 93 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 b5 ad 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 a7 ad 5e}
010bh mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6d2a900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a9 d2 c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7930258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 93 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 b5 ad 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 a6 ad 5e}
0147h mov rcx,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e7 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6d29df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 9d d2 c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7930258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 02 93 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c b5 ad 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d a6 ad 5e}
0183h mov rax,7ff7c627e780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e7 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6d2a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 a0 d2 c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BinaryPred<long> lookup<long>(ComparisonKind:byte kind)
; lookup_g8u[426] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 ce ff c9 83 f9 05 0f 87 92 01 00 00 8b c9 48 8d 05 0f 02 00 00 8b 04 88 48 8d 15 de ff ff ff 48 03 c2 ff e0 48 b9 68 04 93 c7 f7 7f 00 00 e8 31 b4 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 62 a5 ad 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 90 d2 c6 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 68 04 93 c7 f7 7f 00 00 e8 f2 b3 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 23 a5 ad 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 b6 d2 c6 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 68 04 93 c7 f7 7f 00 00 e8 b3 b3 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 a4 ad 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 a6 d2 c6 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 68 04 93 c7 f7 7f 00 00 e8 74 b3 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a5 a4 ad 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 30 ad d2 c6 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 68 04 93 c7 f7 7f 00 00 e8 38 b3 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 69 a4 ad 5e 48 b9 c0 e7 27 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 9e d2 c6 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 68 04 93 c7 f7 7f 00 00 e8 fc b2 ad 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d a4 ad 5e 48 b8 c0 e7 27 c6 f7 7f 00 00 48 89 46 18 48 b8 f0 a0 d2 c6 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 20 5b 5e 5f c3}
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
0030h mov rcx,7ff7c7930468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 04 93 c7 f7 7f 00 00}
003ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 b4 ad 5e}
003fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0042h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0046h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0049h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 a5 ad 5e}
004eh mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
0058h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005ch mov rcx,7ff7c6d29090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 90 d2 c6 f7 7f 00 00}
0066h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
006ah jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
006fh mov rcx,7ff7c7930468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 04 93 c7 f7 7f 00 00}
0079h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 b3 ad 5e}
007eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0081h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0085h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0088h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 a5 ad 5e}
008dh mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
0097h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009bh mov rcx,7ff7c6d2b660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 b6 d2 c6 f7 7f 00 00}
00a5h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a9h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
00aeh mov rcx,7ff7c7930468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 04 93 c7 f7 7f 00 00}
00b8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 b3 ad 5e}
00bdh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00c0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 a4 ad 5e}
00cch mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
00d6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00dah mov rcx,7ff7c6d2a640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a6 d2 c6 f7 7f 00 00}
00e4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e8h jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00edh mov rcx,7ff7c7930468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 04 93 c7 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 b3 ad 5e}
00fch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00ffh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0103h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0106h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 a4 ad 5e}
010bh mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
0115h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0119h mov rcx,7ff7c6d2ad30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ad d2 c6 f7 7f 00 00}
0123h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0127h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0129h mov rcx,7ff7c7930468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 04 93 c7 f7 7f 00 00}
0133h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 b3 ad 5e}
0138h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013bh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
013fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0142h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 a4 ad 5e}
0147h mov rcx,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e7 27 c6 f7 7f 00 00}
0151h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0155h mov rcx,7ff7c6d29e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 9e d2 c6 f7 7f 00 00}
015fh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0163h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0165h mov rcx,7ff7c7930468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 04 93 c7 f7 7f 00 00}
016fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc b2 ad 5e}
0174h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0177h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
017bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
017eh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d a4 ad 5e}
0183h mov rax,7ff7c627e7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 e7 27 c6 f7 7f 00 00}
018dh mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0191h mov rax,7ff7c6d2a0f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 a0 d2 c6 f7 7f 00 00}
019bh mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
019fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a2h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01a7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01a9h ret                                     ; RET || C3 || encoded[1]{c3}
