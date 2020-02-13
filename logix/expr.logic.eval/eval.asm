------------------------------------------------------------------------------------------------------------------------
; bit eval(ILogicExpr expr)
; eval_()[318] = {57 56 48 83 ec 28 48 8b f1 48 8b d6 48 b9 00 6a b3 c8 f7 7f 00 00 e8 65 73 be 5e 48 85 c0 0f 85 b5 00 00 00 48 8b d6 48 b9 a0 6e b3 c8 f7 7f 00 00 e8 4a 73 be 5e 48 85 c0 0f 85 b9 00 00 00 48 8b d6 48 b9 90 4d b3 c8 f7 7f 00 00 e8 2f 73 be 5e 48 85 c0 0f 85 bd 00 00 00 48 8b d6 48 b9 80 33 b3 c8 f7 7f 00 00 e8 14 73 be 5e 48 85 c0 0f 85 b9 00 00 00 48 8b d6 48 b9 38 40 b3 c8 f7 7f 00 00 e8 f9 72 be 5e 48 8b f8 48 85 ff 0f 84 ab 00 00 00 48 8b cf 49 bb a0 11 62 c7 f7 7f 00 00 39 09 ff 15 a8 27 fa fe 48 8b c8 e8 80 c0 ff ff 8b f0 48 8b cf 49 bb a8 11 62 c7 f7 7f 00 00 39 09 ff 15 91 27 fa fe 48 8b c8 e8 61 c0 ff ff 3b f0 0f 94 c0 0f b6 c0 eb 5d 48 8b c8 49 bb 88 11 62 c7 f7 7f 00 00 39 09 ff 15 4a 27 fa fe 48 8b c8 e8 3a c0 ff ff eb 3e 48 8b c8 49 bb 90 11 62 c7 f7 7f 00 00 39 09 ff 15 33 27 fa fe 48 8b c8 e8 1b c0 ff ff eb 1f 48 8b c8 49 bb 98 11 62 c7 f7 7f 00 00 39 09 ff 15 1c 27 fa fe eb 08 48 8b c8 e8 02 c0 ff ff 90 48 83 c4 28 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000ch mov rcx,7ff7c8b36a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 6a b3 c8 f7 7f 00 00}
0016h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 73 be 5e}
001bh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001eh jne near ptr 00d9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b5 00 00 00}
0024h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0027h mov rcx,7ff7c8b36ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6e b3 c8 f7 7f 00 00}
0031h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 73 be 5e}
0036h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0039h jne near ptr 00f8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b9 00 00 00}
003fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0042h mov rcx,7ff7c8b34d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 4d b3 c8 f7 7f 00 00}
004ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 73 be 5e}
0051h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0054h jne near ptr 0117h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 bd 00 00 00}
005ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
005dh mov rcx,7ff7c8b33380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 33 b3 c8 f7 7f 00 00}
0067h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 73 be 5e}
006ch test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
006fh jne near ptr 012eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b9 00 00 00}
0075h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0078h mov rcx,7ff7c8b34038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 40 b3 c8 f7 7f 00 00}
0082h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 72 be 5e}
0087h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
008ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
008dh je near ptr 013eh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 ab 00 00 00}
0093h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0096h mov r11,7ff7c76211a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 11 62 c7 f7 7f 00 00}
00a0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00a2h call qword ptr [rip-105d858h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a8 27 fa fe}
00a8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00abh call 7ff7c867aa80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 c0 ff ff}
00b0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c76211a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 11 62 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-105d86fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 27 fa fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c867aa80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 c0 ff ff}
00cfh cmp esi,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f0}
00d1h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
00d4h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00d7h jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 5d}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch mov r11,7ff7c7621188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 11 62 c7 f7 7f 00 00}
00e6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e8h call qword ptr [rip-105d8b6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a 27 fa fe}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c867aa80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a c0 ff ff}
00f6h jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
00f8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00fbh mov r11,7ff7c7621190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 11 62 c7 f7 7f 00 00}
0105h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0107h call qword ptr [rip-105d8cdh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 33 27 fa fe}
010dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0110h call 7ff7c867aa80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b c0 ff ff}
0115h jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 1f}
0117h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
011ah mov r11,7ff7c7621198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 11 62 c7 f7 7f 00 00}
0124h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0126h call qword ptr [rip-105d8e4h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1c 27 fa fe}
012ch jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
012eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0131h call 7ff7c867aa88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 c0 ff ff}
0136h nop                                     ; NOP || o32 90 || encoded[1]{90}
0137h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
013dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eval(ILogicOp expr)
; eval_()[26] = {57 56 55 53 48 83 ec 28 48 8b f1 48 8b d6 48 b9 68 61 b3 c8 f7 7f 00 00 e8 c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000eh mov rcx,7ff7c8b36168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 61 b3 c8 f7 7f 00 00}
0018h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
