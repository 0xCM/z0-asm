------------------------------------------------------------------------------------------------------------------------
; bit eval(ILogicExpr expr)
; eval_[25] = {57 56 48 83 ec 28 48 8b f1 48 8b d6 48 b9 38 bd be c8 f7 7f 00 00 e8 e5 c3}
; TermCode = CTC_Zx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000ch mov rcx,7ff7c8bebd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bd be c8 f7 7f 00 00}
0016h (bad)                                   ; <invalid> || <invalid> || encoded[3]{e8 e5 c3}
------------------------------------------------------------------------------------------------------------------------
; bit eval(ILogicOp expr)
; eval_[565] = {57 56 55 53 48 83 ec 28 48 8b f1 48 8b d6 48 b9 a0 b4 be c8 f7 7f 00 00 e8 33 c2 b5 5e 48 8b f8 48 85 ff 0f 85 e5 00 00 00 48 8b d6 48 b9 f0 87 be c8 f7 7f 00 00 e8 15 c2 b5 5e 48 8b d8 48 85 db 0f 85 20 01 00 00 48 8b d6 48 b9 a0 aa be c8 f7 7f 00 00 e8 f7 c1 b5 5e 48 8b f8 48 85 ff 0f 84 83 01 00 00 48 8b cf 49 bb c8 13 64 c7 f7 7f 00 00 48 b8 c8 13 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb d0 13 64 c7 f7 7f 00 00 48 b8 d0 13 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ab fd ff ff 8b f0 48 8b cf 49 bb d8 13 64 c7 f7 7f 00 00 48 b8 d8 13 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 86 fd ff ff 8b e8 48 8b cf 49 bb e0 13 64 c7 f7 7f 00 00 48 b8 e0 13 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 61 fd ff ff 44 8b c8 8b cb 8b d6 44 8b c5 48 b8 60 6a 70 c8 f7 7f 00 00 48 83 c4 28 5b 5d 5e 5f 48 ff e0 48 8b cf 49 bb a0 13 64 c7 f7 7f 00 00 48 b8 a0 13 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cf 49 bb a8 13 64 c7 f7 7f 00 00 48 b8 a8 13 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 02 fd ff ff 8b d0 8b ce 48 b8 00 68 70 c8 f7 7f 00 00 48 83 c4 28 5b 5d 5e 5f 48 ff e0 48 8b cb 49 bb b0 13 64 c7 f7 7f 00 00 48 b8 b0 13 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb b8 13 64 c7 f7 7f 00 00 48 b8 b8 13 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a9 fc ff ff 8b f8 48 8b cb 49 bb c0 13 64 c7 f7 7f 00 00 48 b8 c0 13 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 84 fc ff ff 44 8b c0 8b ce 8b d7 48 b8 e0 68 70 c8 f7 7f 00 00 48 83 c4 28 5b 5d 5e 5f 48 ff e0 48 8b ce e8 60 cb aa 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 2e d0 b5 5e 48 8b f8 48 8b ce 33 d2 e8 81 33 5f 4e 48 8b d0 48 8b cf e8 a6 57 08 ff 48 8b cf e8 5e 1c ad 5e cc 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000eh mov rcx,7ff7c8beb4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 b4 be c8 f7 7f 00 00}
0018h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 c2 b5 5e}
001dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0020h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0023h jne near ptr 010eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e5 00 00 00}
0029h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
002ch mov rcx,7ff7c8be87f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 87 be c8 f7 7f 00 00}
0036h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 c2 b5 5e}
003bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
003eh test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0041h jne near ptr 0167h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 20 01 00 00}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah mov rcx,7ff7c8beaaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa be c8 f7 7f 00 00}
0054h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 c1 b5 5e}
0059h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
005ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
005fh je near ptr 01e8h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 83 01 00 00}
0065h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0068h mov r11,7ff7c76413c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 13 64 c7 f7 7f 00 00}
0072h mov rax,7ff7c76413c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 13 64 c7 f7 7f 00 00}
007ch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
007eh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0080h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
0082h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0085h mov r11,7ff7c76413d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 13 64 c7 f7 7f 00 00}
008fh mov rax,7ff7c76413d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 13 64 c7 f7 7f 00 00}
0099h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
009bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c87098d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab fd ff ff}
00a5h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00aah mov r11,7ff7c76413d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 13 64 c7 f7 7f 00 00}
00b4h mov rax,7ff7c76413d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 13 64 c7 f7 7f 00 00}
00beh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c5h call 7ff7c87098d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fd ff ff}
00cah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
00cch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cfh mov r11,7ff7c76413e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 13 64 c7 f7 7f 00 00}
00d9h mov rax,7ff7c76413e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 13 64 c7 f7 7f 00 00}
00e3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00eah call 7ff7c87098d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 fd ff ff}
00efh mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
00f2h mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
00f4h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
00f6h mov r8d,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c5}
00f9h mov rax,7ff7c8706a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 6a 70 c8 f7 7f 00 00}
0103h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0107h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0108h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0109h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
010ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010bh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c76413a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 13 64 c7 f7 7f 00 00}
011bh mov rax,7ff7c76413a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 13 64 c7 f7 7f 00 00}
0125h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0127h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0129h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
012bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
012eh mov r11,7ff7c76413a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 13 64 c7 f7 7f 00 00}
0138h mov rax,7ff7c76413a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 13 64 c7 f7 7f 00 00}
0142h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0144h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0146h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0149h call 7ff7c87098d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 fd ff ff}
014eh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0150h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0152h mov rax,7ff7c8706800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 68 70 c8 f7 7f 00 00}
015ch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0160h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0161h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0162h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0163h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0164h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0167h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
016ah mov r11,7ff7c76413b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 13 64 c7 f7 7f 00 00}
0174h mov rax,7ff7c76413b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 13 64 c7 f7 7f 00 00}
017eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0180h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0182h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0184h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0187h mov r11,7ff7c76413b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 13 64 c7 f7 7f 00 00}
0191h mov rax,7ff7c76413b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 13 64 c7 f7 7f 00 00}
019bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
019dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
019fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01a2h call 7ff7c87098d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 fc ff ff}
01a7h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
01a9h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
01ach mov r11,7ff7c76413c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 13 64 c7 f7 7f 00 00}
01b6h mov rax,7ff7c76413c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 13 64 c7 f7 7f 00 00}
01c0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01c2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01c4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01c7h call 7ff7c87098d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 fc ff ff}
01cch mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
01cfh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
01d1h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
01d3h mov rax,7ff7c87068e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 68 70 c8 f7 7f 00 00}
01ddh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01e1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01e2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01e3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01e4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01e5h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
01e8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ebh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 cb aa 5e}
01f0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f3h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01fdh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e d0 b5 5e}
0202h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0205h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0208h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
020ah call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 33 5f 4e}
020fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0212h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0215h call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 57 08 ff}
021ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
021dh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 1c ad 5e}
0222h int 3                                   ; INT3 || CC || encoded[1]{cc}
0223h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0225h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
022bh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
022dh push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
022eh add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
0231h jo short 0233h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
0233h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
