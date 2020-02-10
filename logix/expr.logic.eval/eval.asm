------------------------------------------------------------------------------------------------------------------------
; bit eval(ILogicExpr expr)
; eval_()[298] = {57 56 48 83 ec 28 48 8b f1 48 8b d6 48 b9 00 6a b3 c8 f7 7f 00 00 e8 75 70 be 5e 48 85 c0 0f 85 c1 00 00 00 48 8b d6 48 b9 a0 6e b3 c8 f7 7f 00 00 e8 5a 70 be 5e 48 85 c0 0f 85 cb 00 00 00 48 8b d6 48 b9 90 4d b3 c8 f7 7f 00 00 e8 3f 70 be 5e 48 85 c0 0f 85 d5 00 00 00 48 8b d6 48 b9 80 33 b3 c8 f7 7f 00 00 e8 24 70 be 5e 48 85 c0 0f 85 d7 00 00 00 48 8b d6 48 b9 38 40 b3 c8 f7 7f 00 00 e8 09 70 be 5e 48 8b f8 48 85 ff 0f 84 c9 00 00 00 48 8b cf 49 bb a0 11 62 c7 f7 7f 00 00 48 b8 a0 11 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 3a c0 ff ff 8b f0 48 8b cf 49 bb a8 11 62 c7 f7 7f 00 00 48 b8 a8 11 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 15 c0 ff ff 3b f0 0f 94 c0 0f b6 c0 eb 6f 48 8b c8 49 bb 88 11 62 c7 f7 7f 00 00 48 b8 88 11 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e8 bf ff ff eb 4a 48 8b c8 49 bb 90 11 62 c7 f7 7f 00 00 48 b8 90 11 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000ch mov rcx,7ff7c8b36a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 6a b3 c8 f7 7f 00 00}
0016h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 70 be 5e}
001bh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001eh jne near ptr 00e5h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 c1 00 00 00}
0024h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0027h mov rcx,7ff7c8b36ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6e b3 c8 f7 7f 00 00}
0031h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 70 be 5e}
0036h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0039h jne near ptr 010ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 cb 00 00 00}
003fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0042h mov rcx,7ff7c8b34d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 4d b3 c8 f7 7f 00 00}
004ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 70 be 5e}
0051h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0054h jne near ptr 012fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 00 00 00}
005ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
005dh mov rcx,7ff7c8b33380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 33 b3 c8 f7 7f 00 00}
0067h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 70 be 5e}
006ch test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
006fh jne near ptr 014ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d7 00 00 00}
0075h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0078h mov rcx,7ff7c8b34038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 40 b3 c8 f7 7f 00 00}
0082h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 70 be 5e}
0087h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
008ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
008dh je near ptr 015ch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 c9 00 00 00}
0093h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0096h mov r11,7ff7c76211a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 11 62 c7 f7 7f 00 00}
00a0h mov rax,7ff7c76211a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 11 62 c7 f7 7f 00 00}
00aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b1h call 7ff7c867ad30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a c0 ff ff}
00b6h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c76211a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 11 62 c7 f7 7f 00 00}
00c5h mov rax,7ff7c76211a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 11 62 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c867ad30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 c0 ff ff}
00dbh cmp esi,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f0}
00ddh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
00e0h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00e3h jmp short 0154h                         ; JMP rel8 || EB cb || encoded[2]{eb 6f}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h mov r11,7ff7c7621188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 11 62 c7 f7 7f 00 00}
00f2h mov rax,7ff7c7621188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 11 62 c7 f7 7f 00 00}
00fch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00feh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0100h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0103h call 7ff7c867ad30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 bf ff ff}
0108h jmp short 0154h                         ; JMP rel8 || EB cb || encoded[2]{eb 4a}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7621190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 11 62 c7 f7 7f 00 00}
0117h mov rax,7ff7c7621190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 11 62 c7 f7 7f 00 00}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0125h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0128h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
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
