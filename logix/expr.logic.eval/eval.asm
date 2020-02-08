------------------------------------------------------------------------------------------------------------------------
; bit eval(ILogicExpr expr)
; eval_()[298] = {57 56 48 83 ec 28 48 8b f1 48 8b d6 48 b9 f8 e2 b3 c8 f7 7f 00 00 e8 35 af bb 5e 48 85 c0 0f 85 c1 00 00 00 48 8b d6 48 b9 98 e7 b3 c8 f7 7f 00 00 e8 1a af bb 5e 48 85 c0 0f 85 cb 00 00 00 48 8b d6 48 b9 88 c6 b3 c8 f7 7f 00 00 e8 ff ae bb 5e 48 85 c0 0f 85 d5 00 00 00 48 8b d6 48 b9 78 ac b3 c8 f7 7f 00 00 e8 e4 ae bb 5e 48 85 c0 0f 85 d7 00 00 00 48 8b d6 48 b9 30 b9 b3 c8 f7 7f 00 00 e8 c9 ae bb 5e 48 8b f8 48 85 ff 0f 84 c9 00 00 00 48 8b cf 49 bb 30 11 64 c7 f7 7f 00 00 48 b8 30 11 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 3a 99 ff ff 8b f0 48 8b cf 49 bb 38 11 64 c7 f7 7f 00 00 48 b8 38 11 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 15 99 ff ff 3b f0 0f 94 c0 0f b6 c0 eb 6f 48 8b c8 49 bb 18 11 64 c7 f7 7f 00 00 48 b8 18 11 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e8 98 ff ff eb 4a 48 8b c8 49 bb 20 11 64 c7 f7 7f 00 00 48 b8 20 11 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000ch mov rcx,7ff7c8b3e2f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 e2 b3 c8 f7 7f 00 00}
0016h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 af bb 5e}
001bh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001eh jne near ptr 00e5h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 c1 00 00 00}
0024h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0027h mov rcx,7ff7c8b3e798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e7 b3 c8 f7 7f 00 00}
0031h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a af bb 5e}
0036h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0039h jne near ptr 010ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 cb 00 00 00}
003fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0042h mov rcx,7ff7c8b3c688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c6 b3 c8 f7 7f 00 00}
004ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff ae bb 5e}
0051h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0054h jne near ptr 012fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 00 00 00}
005ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
005dh mov rcx,7ff7c8b3ac78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ac b3 c8 f7 7f 00 00}
0067h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 ae bb 5e}
006ch test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
006fh jne near ptr 014ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d7 00 00 00}
0075h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0078h mov rcx,7ff7c8b3b930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b9 b3 c8 f7 7f 00 00}
0082h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 ae bb 5e}
0087h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
008ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
008dh je near ptr 015ch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 c9 00 00 00}
0093h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0096h mov r11,7ff7c7641130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 11 64 c7 f7 7f 00 00}
00a0h mov rax,7ff7c7641130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 11 64 c7 f7 7f 00 00}
00aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b1h call 7ff7c86a4770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 99 ff ff}
00b6h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7641138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 11 64 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7641138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 11 64 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86a4770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 99 ff ff}
00dbh cmp esi,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f0}
00ddh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
00e0h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00e3h jmp short 0154h                         ; JMP rel8 || EB cb || encoded[2]{eb 6f}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h mov r11,7ff7c7641118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 11 64 c7 f7 7f 00 00}
00f2h mov rax,7ff7c7641118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 11 64 c7 f7 7f 00 00}
00fch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00feh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0100h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0103h call 7ff7c86a4770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 98 ff ff}
0108h jmp short 0154h                         ; JMP rel8 || EB cb || encoded[2]{eb 4a}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7641120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 11 64 c7 f7 7f 00 00}
0117h mov rax,7ff7c7641120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 11 64 c7 f7 7f 00 00}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0125h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0128h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; bit eval(ILogicOp expr)
; eval_()[581] = {57 56 55 53 48 83 ec 28 48 8b f1 48 8b d6 48 b9 60 da b3 c8 f7 7f 00 00 e8 83 ad bb 5e 48 8b f8 48 85 ff 0f 85 e5 00 00 00 48 8b d6 48 b9 b0 ad b3 c8 f7 7f 00 00 e8 65 ad bb 5e 48 8b d8 48 85 db 0f 85 20 01 00 00 48 8b d6 48 b9 60 d0 b3 c8 f7 7f 00 00 e8 47 ad bb 5e 48 8b f8 48 85 ff 0f 84 83 01 00 00 48 8b cf 49 bb 68 11 64 c7 f7 7f 00 00 48 b8 68 11 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 70 11 64 c7 f7 7f 00 00 48 b8 70 11 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ab fd ff ff 8b f0 48 8b cf 49 bb 78 11 64 c7 f7 7f 00 00 48 b8 78 11 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 86 fd ff ff 8b e8 48 8b cf 49 bb 80 11 64 c7 f7 7f 00 00 48 b8 80 11 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 61 fd ff ff 44 8b c8 8b cb 8b d6 44 8b c5 48 b8 b0 7f 6a c8 f7 7f 00 00 48 83 c4 28 5b 5d 5e 5f 48 ff e0 48 8b cf 49 bb 40 11 64 c7 f7 7f 00 00 48 b8 40 11 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cf 49 bb 48 11 64 c7 f7 7f 00 00 48 b8 48 11 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 02 fd ff ff 8b d0 8b ce 48 b8 50 7d 6a c8 f7 7f 00 00 48 83 c4 28 5b 5d 5e 5f 48 ff e0 48 8b cb 49 bb 50 11 64 c7 f7 7f 00 00 48 b8 50 11 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 58 11 64 c7 f7 7f 00 00 48 b8 58 11 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a9 fc ff ff 8b f8 48 8b cb 49 bb 60 11 64 c7 f7 7f 00 00 48 b8 60 11 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 84 fc ff ff 44 8b c0 8b ce 8b d7 48 b8 30 7e 6a c8 f7 7f 00 00 48 83 c4 28 5b 5d 5e 5f 48 ff e0 48 8b ce e8 b0 b6 b0 5e 48 8b f0 48 b9 70 61 9a c7 f7 7f 00 00 e8 7e bb bb 5e 48 8b f8 48 8b ce 33 d2 e8 d1 1e 65 4e 48 8b d0 48 8b cf e8 ee e3 0d ff 48 8b cf e8 ae 07 b3 5e cc 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000eh mov rcx,7ff7c8b3da60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 da b3 c8 f7 7f 00 00}
0018h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 ad bb 5e}
001dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0020h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0023h jne near ptr 010eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e5 00 00 00}
0029h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
002ch mov rcx,7ff7c8b3adb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ad b3 c8 f7 7f 00 00}
0036h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 ad bb 5e}
003bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
003eh test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0041h jne near ptr 0167h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 20 01 00 00}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah mov rcx,7ff7c8b3d060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d0 b3 c8 f7 7f 00 00}
0054h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 ad bb 5e}
0059h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
005ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
005fh je near ptr 01e8h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 83 01 00 00}
0065h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0068h mov r11,7ff7c7641168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 11 64 c7 f7 7f 00 00}
0072h mov rax,7ff7c7641168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 11 64 c7 f7 7f 00 00}
007ch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
007eh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0080h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
0082h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0085h mov r11,7ff7c7641170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 11 64 c7 f7 7f 00 00}
008fh mov rax,7ff7c7641170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 11 64 c7 f7 7f 00 00}
0099h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
009bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c86aad80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab fd ff ff}
00a5h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00aah mov r11,7ff7c7641178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 11 64 c7 f7 7f 00 00}
00b4h mov rax,7ff7c7641178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 11 64 c7 f7 7f 00 00}
00beh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c5h call 7ff7c86aad80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fd ff ff}
00cah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
00cch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cfh mov r11,7ff7c7641180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 11 64 c7 f7 7f 00 00}
00d9h mov rax,7ff7c7641180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 11 64 c7 f7 7f 00 00}
00e3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00eah call 7ff7c86aad80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 fd ff ff}
00efh mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
00f2h mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
00f4h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
00f6h mov r8d,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c5}
00f9h mov rax,7ff7c86a7fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 7f 6a c8 f7 7f 00 00}
0103h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0107h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0108h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0109h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
010ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c7641140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 11 64 c7 f7 7f 00 00}
011bh mov rax,7ff7c7641140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 11 64 c7 f7 7f 00 00}
0125h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0127h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0129h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
012bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
012eh mov r11,7ff7c7641148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 11 64 c7 f7 7f 00 00}
0138h mov rax,7ff7c7641148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 11 64 c7 f7 7f 00 00}
0142h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0144h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0146h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0149h call 7ff7c86aad80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 fd ff ff}
014eh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0150h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0152h mov rax,7ff7c86a7d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 7d 6a c8 f7 7f 00 00}
015ch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0160h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0161h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0162h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0163h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0164h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0167h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
016ah mov r11,7ff7c7641150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 11 64 c7 f7 7f 00 00}
0174h mov rax,7ff7c7641150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 11 64 c7 f7 7f 00 00}
017eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0180h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0182h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0184h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0187h mov r11,7ff7c7641158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 11 64 c7 f7 7f 00 00}
0191h mov rax,7ff7c7641158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 11 64 c7 f7 7f 00 00}
019bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
019dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
019fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01a2h call 7ff7c86aad80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 fc ff ff}
01a7h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
01a9h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
01ach mov r11,7ff7c7641160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 11 64 c7 f7 7f 00 00}
01b6h mov rax,7ff7c7641160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 11 64 c7 f7 7f 00 00}
01c0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01c2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01c4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01c7h call 7ff7c86aad80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 fc ff ff}
01cch mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
01cfh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
01d1h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
01d3h mov rax,7ff7c86a7e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 7e 6a c8 f7 7f 00 00}
01ddh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01e1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01e2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01e3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01e4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01e5h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
01e8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ebh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 b6 b0 5e}
01f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f3h mov rcx,7ff7c79a6170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 9a c7 f7 7f 00 00}
01fdh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e bb bb 5e}
0202h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0205h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0208h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
020ah call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 1e 65 4e}
020fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0212h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0215h call 7ff7c7789538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee e3 0d ff}
021ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
021dh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 07 b3 5e}
0222h int 3                                   ; INT3 || CC || encoded[1]{cc}
0223h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0225h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
022bh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
022dh push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
022eh add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0231h jo short 0233h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0233h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 40 00}
0236h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0238h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
023ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
023ch add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
023eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0240h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0242h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0244h (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
