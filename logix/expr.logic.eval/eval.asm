------------------------------------------------------------------------------------------------------------------------
; bit eval(ILogicExpr expr)
; eval_0e[318] = {57 56 48 83 ec 28 48 8b f1 48 8b d6 48 b9 d0 8f 3d c7 f7 7f 00 00 e8 75 76 cf 5e 48 85 c0 0f 85 b5 00 00 00 48 8b d6 48 b9 70 94 3d c7 f7 7f 00 00 e8 5a 76 cf 5e 48 85 c0 0f 85 b9 00 00 00 48 8b d6 48 b9 70 6f 3d c7 f7 7f 00 00 e8 3f 76 cf 5e 48 85 c0 0f 85 bd 00 00 00 48 8b d6 48 b9 60 55 3d c7 f7 7f 00 00 e8 24 76 cf 5e 48 85 c0 0f 85 b9 00 00 00 48 8b d6 48 b9 18 62 3d c7 f7 7f 00 00 e8 09 76 cf 5e 48 8b f8 48 85 ff 0f 84 ab 00 00 00 48 8b cf 49 bb 30 13 26 c6 f7 7f 00 00 39 09 ff 15 48 2c 0b ff 48 8b c8 e8 78 85 ff ff 8b f0 48 8b cf 49 bb 38 13 26 c6 f7 7f 00 00 39 09 ff 15 31 2c 0b ff 48 8b c8 e8 59 85 ff ff 3b f0 0f 94 c0 0f b6 c0 eb 5d 48 8b c8 49 bb 18 13 26 c6 f7 7f 00 00 39 09 ff 15 ea 2b 0b ff 48 8b c8 e8 32 85 ff ff eb 3e 48 8b c8 49 bb 20 13 26 c6 f7 7f 00 00 39 09 ff 15 d3 2b 0b ff 48 8b c8 e8 13 85 ff ff eb 1f 48 8b c8 49 bb 28 13 26 c6 f7 7f 00 00 39 09 ff 15 bc 2b 0b ff eb 08 48 8b c8 e8 fa 84 ff ff 90 48 83 c4 28 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000ch mov rcx,7ff7c73d8fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 8f 3d c7 f7 7f 00 00}
0016h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 76 cf 5e}
001bh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001eh jne near ptr 00d9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b5 00 00 00}
0024h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0027h mov rcx,7ff7c73d9470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 94 3d c7 f7 7f 00 00}
0031h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 76 cf 5e}
0036h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0039h jne near ptr 00f8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b9 00 00 00}
003fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0042h mov rcx,7ff7c73d6f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 6f 3d c7 f7 7f 00 00}
004ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 76 cf 5e}
0051h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0054h jne near ptr 0117h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 bd 00 00 00}
005ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
005dh mov rcx,7ff7c73d5560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 55 3d c7 f7 7f 00 00}
0067h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 76 cf 5e}
006ch test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
006fh jne near ptr 012eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b9 00 00 00}
0075h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0078h mov rcx,7ff7c73d6218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 62 3d c7 f7 7f 00 00}
0082h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 76 cf 5e}
0087h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
008ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
008dh je near ptr 013eh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 ab 00 00 00}
0093h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0096h mov r11,7ff7c6261330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 13 26 c6 f7 7f 00 00}
00a0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00a2h call qword ptr [rip-0f4d3b8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 48 2c 0b ff}
00a8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00abh call 7ff7c71a6c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 85 ff ff}
00b0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 13 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0f4d3cfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 31 2c 0b ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c71a6c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 85 ff ff}
00cfh cmp esi,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f0}
00d1h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
00d4h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00d7h jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 5d}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch mov r11,7ff7c6261318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 13 26 c6 f7 7f 00 00}
00e6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e8h call qword ptr [rip-0f4d416h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ea 2b 0b ff}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c71a6c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 85 ff ff}
00f6h jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
00f8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00fbh mov r11,7ff7c6261320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 13 26 c6 f7 7f 00 00}
0105h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0107h call qword ptr [rip-0f4d42dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d3 2b 0b ff}
010dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0110h call 7ff7c71a6c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 85 ff ff}
0115h jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 1f}
0117h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
011ah mov r11,7ff7c6261328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 13 26 c6 f7 7f 00 00}
0124h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0126h call qword ptr [rip-0f4d444h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bc 2b 0b ff}
012ch jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
012eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0131h call 7ff7c71a6c70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 84 ff ff}
0136h nop                                     ; NOP || o32 90 || encoded[1]{90}
0137h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
013dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eval(ILogicOp expr)
; eval_0e[513] = {57 56 55 53 48 83 ec 28 48 8b f1 48 8b d6 48 b9 38 87 3d c7 f7 7f 00 00 e8 d3 74 cf 5e 48 8b f8 48 85 ff 0f 85 cd 00 00 00 48 8b d6 48 b9 98 56 3d c7 f7 7f 00 00 e8 b5 74 cf 5e 48 8b d8 48 85 db 0f 85 fc 00 00 00 48 8b d6 48 b9 e8 7b 3d c7 f7 7f 00 00 e8 97 74 cf 5e 48 8b f8 48 85 ff 0f 84 4d 01 00 00 48 8b cf 49 bb 68 13 26 c6 f7 7f 00 00 39 09 ff 15 0e 2b 0b ff 8b d8 48 8b cf 49 bb 70 13 26 c6 f7 7f 00 00 39 09 ff 15 ff 2a 0b ff 48 8b c8 e8 c7 fd ff ff 8b f0 48 8b cf 49 bb 78 13 26 c6 f7 7f 00 00 39 09 ff 15 e8 2a 0b ff 48 8b c8 e8 a8 fd ff ff 8b e8 48 8b cf 49 bb 80 13 26 c6 f7 7f 00 00 39 09 ff 15 d1 2a 0b ff 48 8b c8 e8 89 fd ff ff 44 8b c8 8b cb 8b d6 44 8b c5 48 b8 70 b8 1a c7 f7 7f 00 00 48 83 c4 28 5b 5d 5e 5f 48 ff e0 48 8b cf 49 bb 40 13 26 c6 f7 7f 00 00 39 09 ff 15 55 2a 0b ff 8b f0 48 8b cf 49 bb 48 13 26 c6 f7 7f 00 00 39 09 ff 15 46 2a 0b ff 48 8b c8 e8 36 fd ff ff 8b d0 8b ce 48 b8 a0 b2 1a c7 f7 7f 00 00 48 83 c4 28 5b 5d 5e 5f 48 ff e0 48 8b cb 49 bb 50 13 26 c6 f7 7f 00 00 39 09 ff 15 18 2a 0b ff 8b f0 48 8b cb 49 bb 58 13 26 c6 f7 7f 00 00 39 09 ff 15 09 2a 0b ff 48 8b c8 e8 e9 fc ff ff 8b f8 48 8b cb 49 bb 60 13 26 c6 f7 7f 00 00 39 09 ff 15 f2 29 0b ff 48 8b c8 e8 ca fc ff ff 44 8b c0 8b ce 8b d7 48 b8 a0 b6 1a c7 f7 7f 00 00 48 83 c4 28 5b 5d 5e 5f 48 ff e0 48 8b ce e8 36 7e c4 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 04 83 cf 5e 48 8b f8 48 8b ce 33 d2 e8 57 e6 d1 4e 48 8b d0 48 8b cf e8 54 f8 1f ff 48 8b cf e8 34 cf c6 5e cc 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = ZEDx7_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000eh mov rcx,7ff7c73d8738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 3d c7 f7 7f 00 00}
0018h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 74 cf 5e}
001dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0020h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0023h jne near ptr 00f6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 cd 00 00 00}
0029h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
002ch mov rcx,7ff7c73d5698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 56 3d c7 f7 7f 00 00}
0036h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 74 cf 5e}
003bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
003eh test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0041h jne near ptr 0143h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah mov rcx,7ff7c73d7be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 7b 3d c7 f7 7f 00 00}
0054h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 74 cf 5e}
0059h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
005ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
005fh je near ptr 01b2h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 4d 01 00 00}
0065h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0068h mov r11,7ff7c6261368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 13 26 c6 f7 7f 00 00}
0072h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0074h call qword ptr [rip-0f4d4f2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0e 2b 0b ff}
007ah mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
007ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
007fh mov r11,7ff7c6261370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 13 26 c6 f7 7f 00 00}
0089h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
008bh call qword ptr [rip-0f4d501h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ff 2a 0b ff}
0091h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0094h call 7ff7c71ae640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 fd ff ff}
0099h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 13 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0f4d518h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e8 2a 0b ff}
00b0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b3h call 7ff7c71ae640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 fd ff ff}
00b8h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
00bah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bdh mov r11,7ff7c6261380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 13 26 c6 f7 7f 00 00}
00c7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c9h call qword ptr [rip-0f4d52fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 2a 0b ff}
00cfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d2h call 7ff7c71ae640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 fd ff ff}
00d7h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
00dah mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
00dch mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
00deh mov r8d,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c5}
00e1h mov rax,7ff7c71ab870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 b8 1a c7 f7 7f 00 00}
00ebh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00efh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00f0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00f1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f2h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f3h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 13 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0f4d5abh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 55 2a 0b ff}
010bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
010dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0110h mov r11,7ff7c6261348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 13 26 c6 f7 7f 00 00}
011ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
011ch call qword ptr [rip-0f4d5bah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 46 2a 0b ff}
0122h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0125h call 7ff7c71ae640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 fd ff ff}
012ah mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
012ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
012eh mov rax,7ff7c71ab2a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 b2 1a c7 f7 7f 00 00}
0138h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
013dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
013eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0140h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0143h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0146h mov r11,7ff7c6261350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 13 26 c6 f7 7f 00 00}
0150h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0152h call qword ptr [rip-0f4d5e8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 18 2a 0b ff}
0158h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
015ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
015dh mov r11,7ff7c6261358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 13 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0f4d5f7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 2a 0b ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c71ae640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 fc ff ff}
0177h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0179h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
017ch mov r11,7ff7c6261360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 13 26 c6 f7 7f 00 00}
0186h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0188h call qword ptr [rip-0f4d60eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 29 0b ff}
018eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0191h call 7ff7c71ae640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fc ff ff}
0196h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0199h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
019bh mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
019dh mov rax,7ff7c71ab6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 b6 1a c7 f7 7f 00 00}
01a7h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01abh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01ach pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01adh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aeh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01afh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
01b2h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b5h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 7e c4 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01c7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 83 cf 5e}
01cch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cfh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01d2h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01d4h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 e6 d1 4e}
01d9h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01dch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dfh call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 f8 1f ff}
01e4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e7h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 cf c6 5e}
01ech int 3                                   ; INT3 || CC || encoded[1]{cc}
01edh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01efh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
01f1h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
01f7h xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
01f9h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
01fah add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
01fdh jo short 01ffh                          ; JO rel8 || 70 cb || encoded[2]{70 00}
01ffh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
