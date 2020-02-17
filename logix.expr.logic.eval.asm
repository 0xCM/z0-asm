------------------------------------------------------------------------------------------------------------------------
; bit eval(ILogicExpr expr)
; eval_logic_expr_()[393] = {57 56 48 83 ec 28 48 8b f1 48 8b d6 48 b9 a0 d7 35 c7 f7 7f 00 00 e8 a5 a0 d6 5e 48 85 c0 0f 85 b5 00 00 00 48 8b d6 48 b9 f0 d8 35 c7 f7 7f 00 00 e8 8a a0 d6 5e 48 85 c0 0f 85 b9 00 00 00 48 8b d6 48 b9 18 da 35 c7 f7 7f 00 00 e8 6f a0 d6 5e 48 85 c0 0f 85 bd 00 00 00 48 8b d6 48 b9 f8 da 35 c7 f7 7f 00 00 e8 54 a0 d6 5e 48 85 c0 0f 85 b9 00 00 00 48 8b d6 48 b9 b8 db 35 c7 f7 7f 00 00 e8 39 a0 d6 5e 48 8b f8 48 85 ff 0f 84 ab 00 00 00 48 8b cf 49 bb e0 08 26 c6 f7 7f 00 00 39 09 ff 15 28 4c 12 ff 48 8b c8 e8 80 d2 ff ff 8b f0 48 8b cf 49 bb e8 08 26 c6 f7 7f 00 00 39 09 ff 15 11 4c 12 ff 48 8b c8 e8 61 d2 ff ff 3b f0 0f 94 c0 0f b6 c0 eb 5d 48 8b c8 49 bb c8 08 26 c6 f7 7f 00 00 39 09 ff 15 ca 4b 12 ff 48 8b c8 e8 3a d2 ff ff eb 3e 48 8b c8 49 bb d0 08 26 c6 f7 7f 00 00 39 09 ff 15 b3 4b 12 ff 48 8b c8 e8 1b d2 ff ff eb 1f 48 8b c8 49 bb d8 08 26 c6 f7 7f 00 00 39 09 ff 15 9c 4b 12 ff eb 08 48 8b c8 e8 02 d2 ff ff 90 48 83 c4 28 5e 5f c3 48 8b ce e8 7a aa cb 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 48 af d6 5e 48 8b f8 48 8b ce 33 d2 e8 9b 12 db 4e 48 8b d0 48 8b cf e8 80 d2 26 ff 48 8b cf e8 78 fb cd 5e cc 00 00 00 19 06 03 00 06 42 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000ch mov rcx,7ff7c735d7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d7 35 c7 f7 7f 00 00}
0016h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 a0 d6 5e}
001bh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001eh jne near ptr 00d9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b5 00 00 00}
0024h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0027h mov rcx,7ff7c735d8f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d8 35 c7 f7 7f 00 00}
0031h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a a0 d6 5e}
0036h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0039h jne near ptr 00f8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b9 00 00 00}
003fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0042h mov rcx,7ff7c735da18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 da 35 c7 f7 7f 00 00}
004ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f a0 d6 5e}
0051h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0054h jne near ptr 0117h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 bd 00 00 00}
005ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
005dh mov rcx,7ff7c735daf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 da 35 c7 f7 7f 00 00}
0067h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 a0 d6 5e}
006ch test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
006fh jne near ptr 012eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b9 00 00 00}
0075h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0078h mov rcx,7ff7c735dbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 db 35 c7 f7 7f 00 00}
0082h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 a0 d6 5e}
0087h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
008ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
008dh je near ptr 013eh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 ab 00 00 00}
0093h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0096h mov r11,7ff7c62608e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 08 26 c6 f7 7f 00 00}
00a0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00a2h call qword ptr [rip-0edb3d8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 28 4c 12 ff}
00a8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00abh call 7ff7c7138f40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 d2 ff ff}
00b0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c62608e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 08 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0edb3efh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 4c 12 ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7138f40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 d2 ff ff}
00cfh cmp esi,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f0}
00d1h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
00d4h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00d7h jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 5d}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch mov r11,7ff7c62608c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 08 26 c6 f7 7f 00 00}
00e6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e8h call qword ptr [rip-0edb436h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca 4b 12 ff}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c7138f40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a d2 ff ff}
00f6h jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
00f8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00fbh mov r11,7ff7c62608d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 08 26 c6 f7 7f 00 00}
0105h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0107h call qword ptr [rip-0edb44dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b3 4b 12 ff}
010dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0110h call 7ff7c7138f40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b d2 ff ff}
0115h jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 1f}
0117h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
011ah mov r11,7ff7c62608d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 08 26 c6 f7 7f 00 00}
0124h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0126h call qword ptr [rip-0edb464h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9c 4b 12 ff}
012ch jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
012eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0131h call 7ff7c7138f48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 d2 ff ff}
0136h nop                                     ; NOP || o32 90 || encoded[1]{90}
0137h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
013dh ret                                     ; RET || C3 || encoded[1]{c3}
013eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0141h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a aa cb 5e}
0146h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0149h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
0153h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 af d6 5e}
0158h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
015bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
015eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0160h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 12 db 4e}
0165h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0168h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
016bh call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 d2 26 ff}
0170h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0173h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 fb cd 5e}
0178h int 3                                   ; INT3 || CC || encoded[1]{cc}
0179h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
017bh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
017dh (bad)                                   ; <invalid> || <invalid> || encoded[2]{06 03}
017fh add [rsi],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 06}
0181h add spl,[rax+1]                         ; ADD r8, r/m8 || 02 /r || encoded[4]{42 02 60 01}
0185h jo short 0187h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0187h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; bit eval(ILogicOp expr)
; eval_logic_op_()[513] = {57 56 55 53 48 83 ec 28 48 8b f1 48 8b d6 48 b9 c0 dd 35 c7 f7 7f 00 00 e8 e3 9e d6 5e 48 8b f8 48 85 ff 0f 85 cd 00 00 00 48 8b d6 48 b9 18 e1 35 c7 f7 7f 00 00 e8 c5 9e d6 5e 48 8b d8 48 85 db 0f 85 fc 00 00 00 48 8b d6 48 b9 90 e4 35 c7 f7 7f 00 00 e8 a7 9e d6 5e 48 8b f8 48 85 ff 0f 84 4d 01 00 00 48 8b cf 49 bb 18 09 26 c6 f7 7f 00 00 39 09 ff 15 ce 4a 12 ff 8b d8 48 8b cf 49 bb 20 09 26 c6 f7 7f 00 00 39 09 ff 15 bf 4a 12 ff 48 8b c8 e8 a7 fd ff ff 8b f0 48 8b cf 49 bb 28 09 26 c6 f7 7f 00 00 39 09 ff 15 a8 4a 12 ff 48 8b c8 e8 88 fd ff ff 8b e8 48 8b cf 49 bb 30 09 26 c6 f7 7f 00 00 39 09 ff 15 91 4a 12 ff 48 8b c8 e8 69 fd ff ff 44 8b c8 8b cb 8b d6 44 8b c5 48 b8 28 8f 13 c7 f7 7f 00 00 48 83 c4 28 5b 5d 5e 5f 48 ff e0 48 8b cf 49 bb f0 08 26 c6 f7 7f 00 00 39 09 ff 15 15 4a 12 ff 8b f0 48 8b cf 49 bb f8 08 26 c6 f7 7f 00 00 39 09 ff 15 06 4a 12 ff 48 8b c8 e8 16 fd ff ff 8b d0 8b ce 48 b8 f0 b0 13 c7 f7 7f 00 00 48 83 c4 28 5b 5d 5e 5f 48 ff e0 48 8b cb 49 bb 00 09 26 c6 f7 7f 00 00 39 09 ff 15 d8 49 12 ff 8b f0 48 8b cb 49 bb 08 09 26 c6 f7 7f 00 00 39 09 ff 15 c9 49 12 ff 48 8b c8 e8 c9 fc ff ff 8b f8 48 8b cb 49 bb 10 09 26 c6 f7 7f 00 00 39 09 ff 15 b2 49 12 ff 48 8b c8 e8 aa fc ff ff 44 8b c0 8b ce 8b d7 48 b8 d0 b1 13 c7 f7 7f 00 00 48 83 c4 28 5b 5d 5e 5f 48 ff e0 48 8b ce e8 46 a8 cb 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 14 ad d6 5e 48 8b f8 48 8b ce 33 d2 e8 67 10 db 4e 48 8b d0 48 8b cf e8 4c d0 26 ff 48 8b cf e8 44 f9 cd 5e cc 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000eh mov rcx,7ff7c735ddc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 dd 35 c7 f7 7f 00 00}
0018h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 9e d6 5e}
001dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0020h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0023h jne near ptr 00f6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 cd 00 00 00}
0029h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
002ch mov rcx,7ff7c735e118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e1 35 c7 f7 7f 00 00}
0036h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 9e d6 5e}
003bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
003eh test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0041h jne near ptr 0143h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah mov rcx,7ff7c735e490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 e4 35 c7 f7 7f 00 00}
0054h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 9e d6 5e}
0059h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
005ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
005fh je near ptr 01b2h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 4d 01 00 00}
0065h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0068h mov r11,7ff7c6260918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 09 26 c6 f7 7f 00 00}
0072h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0074h call qword ptr [rip-0edb532h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ce 4a 12 ff}
007ah mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
007ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
007fh mov r11,7ff7c6260920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 09 26 c6 f7 7f 00 00}
0089h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
008bh call qword ptr [rip-0edb541h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bf 4a 12 ff}
0091h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0094h call 7ff7c713bc10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 fd ff ff}
0099h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6260928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 09 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0edb558h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a8 4a 12 ff}
00b0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b3h call 7ff7c713bc10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 fd ff ff}
00b8h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
00bah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bdh mov r11,7ff7c6260930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 09 26 c6 f7 7f 00 00}
00c7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c9h call qword ptr [rip-0edb56fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 4a 12 ff}
00cfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d2h call 7ff7c713bc10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 fd ff ff}
00d7h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
00dah mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
00dch mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
00deh mov r8d,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c5}
00e1h mov rax,7ff7c7138f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 8f 13 c7 f7 7f 00 00}
00ebh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00efh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00f0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00f1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f2h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f3h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c62608f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 08 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0edb5ebh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 15 4a 12 ff}
010bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
010dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0110h mov r11,7ff7c62608f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 08 26 c6 f7 7f 00 00}
011ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
011ch call qword ptr [rip-0edb5fah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 06 4a 12 ff}
0122h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0125h call 7ff7c713bc10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 fd ff ff}
012ah mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
012ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
012eh mov rax,7ff7c713b0f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 b0 13 c7 f7 7f 00 00}
0138h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
013dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
013eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0140h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0143h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0146h mov r11,7ff7c6260900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 09 26 c6 f7 7f 00 00}
0150h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0152h call qword ptr [rip-0edb628h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d8 49 12 ff}
0158h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
015ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
015dh mov r11,7ff7c6260908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 09 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0edb637h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c9 49 12 ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c713bc10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 fc ff ff}
0177h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0179h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
017ch mov r11,7ff7c6260910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 09 26 c6 f7 7f 00 00}
0186h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0188h call qword ptr [rip-0edb64eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 49 12 ff}
018eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0191h call 7ff7c713bc10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa fc ff ff}
0196h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0199h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
019bh mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
019dh mov rax,7ff7c713b1d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 b1 13 c7 f7 7f 00 00}
01a7h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01abh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01ach pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01adh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aeh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01afh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
01b2h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b5h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 a8 cb 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
01c7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 ad d6 5e}
01cch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cfh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01d2h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01d4h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 10 db 4e}
01d9h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01dch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dfh call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c d0 26 ff}
01e4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e7h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 f9 cd 5e}
01ech int 3                                   ; INT3 || CC || encoded[1]{cc}
01edh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01efh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
01f1h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
01f7h xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
01f9h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
01fah add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
01fdh jo short 01ffh                          ; JO rel8 || 70 cb || encoded[2]{70 00}
01ffh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
