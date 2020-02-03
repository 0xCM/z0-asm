------------------------------------------------------------------------------------------------------------------------
; bit eval(ILogicExpr expr)
; eval_[318] = {57 56 48 83 ec 28 48 8b f1 48 8b d6 48 b9 68 a4 79 c7 f7 7f 00 00 e8 35 c8 b8 5e 48 85 c0 0f 85 b5 00 00 00 48 8b d6 48 b9 08 a9 79 c7 f7 7f 00 00 e8 1a c8 b8 5e 48 85 c0 0f 85 b9 00 00 00 48 8b d6 48 b9 f8 87 79 c7 f7 7f 00 00 e8 ff c7 b8 5e 48 85 c0 0f 85 bd 00 00 00 48 8b d6 48 b9 e8 6d 79 c7 f7 7f 00 00 e8 e4 c7 b8 5e 48 85 c0 0f 85 b9 00 00 00 48 8b d6 48 b9 a0 7a 79 c7 f7 7f 00 00 e8 c9 c7 b8 5e 48 8b f8 48 85 ff 0f 84 ab 00 00 00 48 8b cf 49 bb 88 13 24 c6 f7 7f 00 00 39 09 ff 15 60 7e f2 fe 48 8b c8 e8 30 98 ff ff 8b f0 48 8b cf 49 bb 90 13 24 c6 f7 7f 00 00 39 09 ff 15 49 7e f2 fe 48 8b c8 e8 11 98 ff ff 3b f0 0f 94 c0 0f b6 c0 eb 5d 48 8b c8 49 bb 70 13 24 c6 f7 7f 00 00 39 09 ff 15 02 7e f2 fe 48 8b c8 e8 ea 97 ff ff eb 3e 48 8b c8 49 bb 78 13 24 c6 f7 7f 00 00 39 09 ff 15 eb 7d f2 fe 48 8b c8 e8 cb 97 ff ff eb 1f 48 8b c8 49 bb 80 13 24 c6 f7 7f 00 00 39 09 ff 15 d4 7d f2 fe eb 08 48 8b c8 e8 b2 97 ff ff 90 48 83 c4 28 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000ch mov rcx,7ff7c779a468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a4 79 c7 f7 7f 00 00}
0016h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 c8 b8 5e}
001bh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
001eh jne near ptr 00d9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b5 00 00 00}
0024h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0027h mov rcx,7ff7c779a908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a9 79 c7 f7 7f 00 00}
0031h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a c8 b8 5e}
0036h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0039h jne near ptr 00f8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b9 00 00 00}
003fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0042h mov rcx,7ff7c77987f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 87 79 c7 f7 7f 00 00}
004ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff c7 b8 5e}
0051h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0054h jne near ptr 0117h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 bd 00 00 00}
005ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
005dh mov rcx,7ff7c7796de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 6d 79 c7 f7 7f 00 00}
0067h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 c7 b8 5e}
006ch test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
006fh jne near ptr 012eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b9 00 00 00}
0075h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0078h mov rcx,7ff7c7797aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7a 79 c7 f7 7f 00 00}
0082h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 c7 b8 5e}
0087h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
008ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
008dh je near ptr 013eh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 ab 00 00 00}
0093h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0096h mov r11,7ff7c6241388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 13 24 c6 f7 7f 00 00}
00a0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00a2h call qword ptr [rip-10d81a0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 60 7e f2 fe}
00a8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00abh call 7ff7c7312d60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 98 ff ff}
00b0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6241390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 13 24 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-10d81b7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 7e f2 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7312d60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 98 ff ff}
00cfh cmp esi,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f0}
00d1h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
00d4h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00d7h jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 5d}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch mov r11,7ff7c6241370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 13 24 c6 f7 7f 00 00}
00e6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e8h call qword ptr [rip-10d81feh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 7e f2 fe}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c7312d60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 97 ff ff}
00f6h jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
00f8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00fbh mov r11,7ff7c6241378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 13 24 c6 f7 7f 00 00}
0105h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0107h call qword ptr [rip-10d8215h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 eb 7d f2 fe}
010dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0110h call 7ff7c7312d60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 97 ff ff}
0115h jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 1f}
0117h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
011ah mov r11,7ff7c6241380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 13 24 c6 f7 7f 00 00}
0124h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0126h call qword ptr [rip-10d822ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d4 7d f2 fe}
012ch jmp short 0136h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
012eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0131h call 7ff7c7312d68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 97 ff ff}
0136h nop                                     ; NOP || o32 90 || encoded[1]{90}
0137h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
013dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit eval(ILogicOp expr)
; eval_[513] = {57 56 55 53 48 83 ec 28 48 8b f1 48 8b d6 48 b9 d0 9b 79 c7 f7 7f 00 00 e8 93 c6 b8 5e 48 8b f8 48 85 ff 0f 85 cd 00 00 00 48 8b d6 48 b9 20 6f 79 c7 f7 7f 00 00 e8 75 c6 b8 5e 48 8b d8 48 85 db 0f 85 fc 00 00 00 48 8b d6 48 b9 d0 91 79 c7 f7 7f 00 00 e8 57 c6 b8 5e 48 8b f8 48 85 ff 0f 84 4d 01 00 00 48 8b cf 49 bb c0 13 24 c6 f7 7f 00 00 39 09 ff 15 26 7d f2 fe 8b d8 48 8b cf 49 bb c8 13 24 c6 f7 7f 00 00 39 09 ff 15 17 7d f2 fe 48 8b c8 e8 c7 fd ff ff 8b f0 48 8b cf 49 bb d0 13 24 c6 f7 7f 00 00 39 09 ff 15 00 7d f2 fe 48 8b c8 e8 a8 fd ff ff 8b e8 48 8b cf 49 bb d8 13 24 c6 f7 7f 00 00 39 09 ff 15 e9 7c f2 fe 48 8b c8 e8 89 fd ff ff 44 8b c8 8b cb 8b d6 44 8b c5 48 b8 b0 66 31 c7 f7 7f 00 00 48 83 c4 28 5b 5d 5e 5f 48 ff e0 48 8b cf 49 bb 98 13 24 c6 f7 7f 00 00 39 09 ff 15 6d 7c f2 fe 8b f0 48 8b cf 49 bb a0 13 24 c6 f7 7f 00 00 39 09 ff 15 5e 7c f2 fe 48 8b c8 e8 36 fd ff ff 8b d0 8b ce 48 b8 50 64 31 c7 f7 7f 00 00 48 83 c4 28 5b 5d 5e 5f 48 ff e0 48 8b cb 49 bb a8 13 24 c6 f7 7f 00 00 39 09 ff 15 30 7c f2 fe 8b f0 48 8b cb 49 bb b0 13 24 c6 f7 7f 00 00 39 09 ff 15 21 7c f2 fe 48 8b c8 e8 e9 fc ff ff 8b f8 48 8b cb 49 bb b8 13 24 c6 f7 7f 00 00 39 09 ff 15 0a 7c f2 fe 48 8b c8 e8 ca fc ff ff 44 8b c0 8b ce 8b d7 48 b8 30 65 31 c7 f7 7f 00 00 48 83 c4 28 5b 5d 5e 5f 48 ff e0 48 8b ce e8 f6 cf ad 5e 48 8b f0 48 b9 98 2a 70 c6 f7 7f 00 00 e8 c4 d4 b8 5e 48 8b f8 48 8b ce 33 d2 e8 17 38 9e 4f 48 8b d0 48 8b cf e8 fc 6b 07 ff 48 8b cf e8 f4 20 b0 5e cc 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = ZEDx7_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
000eh mov rcx,7ff7c7799bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 9b 79 c7 f7 7f 00 00}
0018h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 c6 b8 5e}
001dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0020h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0023h jne near ptr 00f6h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 cd 00 00 00}
0029h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
002ch mov rcx,7ff7c7796f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 79 c7 f7 7f 00 00}
0036h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 c6 b8 5e}
003bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
003eh test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0041h jne near ptr 0143h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0047h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004ah mov rcx,7ff7c77991d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 91 79 c7 f7 7f 00 00}
0054h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 c6 b8 5e}
0059h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
005ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
005fh je near ptr 01b2h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 4d 01 00 00}
0065h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0068h mov r11,7ff7c62413c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 13 24 c6 f7 7f 00 00}
0072h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0074h call qword ptr [rip-10d82dah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 26 7d f2 fe}
007ah mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
007ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
007fh mov r11,7ff7c62413c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 13 24 c6 f7 7f 00 00}
0089h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
008bh call qword ptr [rip-10d82e9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 17 7d f2 fe}
0091h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0094h call 7ff7c7319480h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 fd ff ff}
0099h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c62413d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 13 24 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-10d8300h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 00 7d f2 fe}
00b0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b3h call 7ff7c7319480h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 fd ff ff}
00b8h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
00bah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bdh mov r11,7ff7c62413d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 13 24 c6 f7 7f 00 00}
00c7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c9h call qword ptr [rip-10d8317h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 7c f2 fe}
00cfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d2h call 7ff7c7319480h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 fd ff ff}
00d7h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
00dah mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
00dch mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
00deh mov r8d,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c5}
00e1h mov rax,7ff7c73166b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 66 31 c7 f7 7f 00 00}
00ebh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00efh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00f0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00f1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f2h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f3h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6241398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 13 24 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-10d8393h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6d 7c f2 fe}
010bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
010dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0110h mov r11,7ff7c62413a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 13 24 c6 f7 7f 00 00}
011ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
011ch call qword ptr [rip-10d83a2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5e 7c f2 fe}
0122h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0125h call 7ff7c7319480h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 fd ff ff}
012ah mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
012ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
012eh mov rax,7ff7c7316450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 64 31 c7 f7 7f 00 00}
0138h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
013dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
013eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0140h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
0143h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0146h mov r11,7ff7c62413a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 13 24 c6 f7 7f 00 00}
0150h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0152h call qword ptr [rip-10d83d0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 30 7c f2 fe}
0158h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
015ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
015dh mov r11,7ff7c62413b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 13 24 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10d83dfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 7c f2 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c7319480h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 fc ff ff}
0177h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0179h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
017ch mov r11,7ff7c62413b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 13 24 c6 f7 7f 00 00}
0186h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0188h call qword ptr [rip-10d83f6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a 7c f2 fe}
018eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0191h call 7ff7c7319480h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fc ff ff}
0196h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0199h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
019bh mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
019dh mov rax,7ff7c7316530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 65 31 c7 f7 7f 00 00}
01a7h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
01abh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01ach pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01adh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01aeh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01afh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
01b2h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b5h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 cf ad 5e}
01bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bdh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01c7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 d4 b8 5e}
01cch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cfh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01d2h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01d4h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 38 9e 4f}
01d9h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01dch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dfh call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 6b 07 ff}
01e4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e7h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 20 b0 5e}
01ech int 3                                   ; INT3 || CC || encoded[1]{cc}
01edh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01efh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
01f1h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
01f7h xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
01f9h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
01fah add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
01fdh jo short 01ffh                          ; JO rel8 || 70 cb || encoded[2]{70 00}
01ffh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
