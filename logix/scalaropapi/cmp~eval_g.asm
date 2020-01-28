------------------------------------------------------------------------------------------------------------------------
; byte eval<byte>(ComparisonKind:byte kind, byte a, byte b)
; cmp~eval_g8u[263] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 ee 00 00 00 8b c0 48 8d 0d 66 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 0f b6 d2 45 0f b6 c0 0f b6 c2 41 3b c0 0f 94 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 00 00 00 e9 a5 00 00 00 0f b6 c2 41 0f b6 d0 44 0f b6 c0 44 3b c2 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 00 00 00 e9 7f 00 00 00 0f b6 c2 41 0f b6 d0 3b c2 41 0f 92 c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff 00 00 00 eb 5e 0f b6 c2 41 0f b6 d0 3b c2 41 0f 96 c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff 00 00 00 eb 3d 0f b6 c2 41 0f b6 d0 3b c2 41 0f 97 c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff 00 00 00 eb 1c 0f b6 c2 41 0f b6 c8 3b c1 0f 93 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 00 00 00 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 0107h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ee 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 66 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0034h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0038h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
003bh cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
003eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0041h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0044h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0046h jne short 004ch                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0048h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
004ah jmp short 0051h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
004ch mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
0051h jmp near ptr 00fbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 00 00 00}
0056h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0059h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
005dh movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
0061h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0064h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
006ch jne short 0072h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
006eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0070h jmp short 0077h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0072h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
0077h jmp near ptr 00fbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 00 00 00}
007ch movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
007fh movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0083h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0085h setb r8b                                ; SETB r/m8 || 0F 92 /r || encoded[4]{41 0f 92 c0}
0089h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
008dh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0090h jne short 0096h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0092h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0094h jmp short 009bh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0096h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
009bh jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
009dh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
00a0h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
00a4h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00a6h setbe r8b                               ; SETBE r/m8 || 0F 96 /r || encoded[4]{41 0f 96 c0}
00aah movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00aeh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00b1h jne short 00b7h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b3h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b5h jmp short 00bch                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00b7h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
00bch jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3d}
00beh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
00c1h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
00c5h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00c7h seta r8b                                ; SETA r/m8 || 0F 97 /r || encoded[4]{41 0f 97 c0}
00cbh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00cfh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00d2h jne short 00d8h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00d4h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00d6h jmp short 00ddh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00d8h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
00ddh jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
00dfh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
00e2h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
00e6h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
00e8h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
00ebh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00eeh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00f0h jne short 00f6h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00f2h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00f4h jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00f6h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
00fbh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00feh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0102h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0103h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0104h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0105h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0106h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte eval<sbyte>(ComparisonKind:byte kind, sbyte a, sbyte b)
; cmp~eval_g8u[271] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 f6 00 00 00 8b c0 48 8d 0d 6e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 48 0f be d2 4d 0f be c0 48 0f be c2 41 3b c0 0f 94 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 7f 00 00 00 e9 aa 00 00 00 48 0f be c2 49 0f be d0 4c 0f be c0 44 3b c2 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 7f 00 00 00 e9 83 00 00 00 48 0f be c2 49 0f be d0 3b c2 41 0f 9c c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 7f 00 00 00 eb 61 48 0f be c2 49 0f be d0 3b c2 41 0f 9e c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 7f 00 00 00 eb 3f 48 0f be c2 49 0f be d0 3b c2 41 0f 9f c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 7f 00 00 00 eb 1d 48 0f be c2 49 0f be c8 3b c1 0f 9d c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 7f 00 00 00 48 0f be c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 010fh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 f6 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+16eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 6e 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0035h movsx r8,r8b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c0}
0039h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
003dh cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
0040h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0043h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0046h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0048h jne short 004eh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
004ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
004ch jmp short 0053h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
004eh mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
0053h jmp near ptr 0102h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
0058h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
005ch movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0060h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
0064h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0067h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
006ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
006fh jne short 0075h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0071h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0073h jmp short 007ah                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0075h mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
007ah jmp near ptr 0102h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
007fh movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0083h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0087h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0089h setl r8b                                ; SETL r/m8 || 0F 9C /r || encoded[4]{41 0f 9c c0}
008dh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0091h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0094h jne short 009ah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0096h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0098h jmp short 009fh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
009ah mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
009fh jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 61}
00a1h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00a5h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
00a9h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00abh setle r8b                               ; SETLE r/m8 || 0F 9E /r || encoded[4]{41 0f 9e c0}
00afh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00b3h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00b6h jne short 00bch                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b8h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00bah jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00bch mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
00c1h jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
00c3h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00c7h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
00cbh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00cdh setg r8b                                ; SETG r/m8 || 0F 9F /r || encoded[4]{41 0f 9f c0}
00d1h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00d5h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00d8h jne short 00deh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00dah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00dch jmp short 00e3h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00deh mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
00e3h jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 1d}
00e5h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00e9h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
00edh cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
00efh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00f2h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00f5h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00f7h jne short 00fdh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00f9h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00fbh jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00fdh mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
0102h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0106h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
010ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
010bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
010ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
010dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort eval<ushort>(ComparisonKind:byte kind, ushort a, ushort b)
; cmp~eval_g8u[263] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 ee 00 00 00 8b c0 48 8d 0d 66 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 0f b7 d2 45 0f b7 c0 0f b7 c2 41 3b c0 0f 94 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff 00 00 e9 a5 00 00 00 0f b7 c2 41 0f b7 d0 44 0f b7 c0 44 3b c2 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff 00 00 e9 7f 00 00 00 0f b7 c2 41 0f b7 d0 3b c2 41 0f 92 c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff ff 00 00 eb 5e 0f b7 c2 41 0f b7 d0 3b c2 41 0f 96 c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff ff 00 00 eb 3d 0f b7 c2 41 0f b7 d0 3b c2 41 0f 97 c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff ff 00 00 eb 1c 0f b7 c2 41 0f b7 c8 3b c1 0f 93 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff 00 00 0f b7 c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 0107h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ee 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+166h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 66 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0034h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0038h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
003bh cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
003eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0041h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0044h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0046h jne short 004ch                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0048h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
004ah jmp short 0051h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
004ch mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
0051h jmp near ptr 00fbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 00 00 00}
0056h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0059h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
005dh movzx r8d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c0}
0061h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0064h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
006ch jne short 0072h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
006eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0070h jmp short 0077h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0072h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
0077h jmp near ptr 00fbh                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 00 00 00}
007ch movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
007fh movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0083h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0085h setb r8b                                ; SETB r/m8 || 0F 92 /r || encoded[4]{41 0f 92 c0}
0089h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
008dh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0090h jne short 0096h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0092h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0094h jmp short 009bh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0096h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
009bh jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
009dh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00a0h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
00a4h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00a6h setbe r8b                               ; SETBE r/m8 || 0F 96 /r || encoded[4]{41 0f 96 c0}
00aah movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00aeh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00b1h jne short 00b7h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b3h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b5h jmp short 00bch                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00b7h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
00bch jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 3d}
00beh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00c1h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
00c5h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00c7h seta r8b                                ; SETA r/m8 || 0F 97 /r || encoded[4]{41 0f 97 c0}
00cbh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00cfh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00d2h jne short 00d8h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00d4h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00d6h jmp short 00ddh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00d8h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
00ddh jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
00dfh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00e2h movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
00e6h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
00e8h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
00ebh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00eeh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00f0h jne short 00f6h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00f2h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00f4h jmp short 00fbh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00f6h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
00fbh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00feh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0102h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0103h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0104h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0105h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0106h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short eval<short>(ComparisonKind:byte kind, short a, short b)
; cmp~eval_g8u[271] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 f6 00 00 00 8b c0 48 8d 0d 6e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 48 0f bf d2 4d 0f bf c0 48 0f bf c2 41 3b c0 0f 94 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 7f 00 00 e9 aa 00 00 00 48 0f bf c2 49 0f bf d0 4c 0f bf c0 44 3b c2 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 7f 00 00 e9 83 00 00 00 48 0f bf c2 49 0f bf d0 3b c2 41 0f 9c c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff 7f 00 00 eb 61 48 0f bf c2 49 0f bf d0 3b c2 41 0f 9e c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff 7f 00 00 eb 3f 48 0f bf c2 49 0f bf d0 3b c2 41 0f 9f c0 45 0f b6 c0 45 85 c0 75 04 33 c0 eb 05 b8 ff 7f 00 00 eb 1d 48 0f bf c2 49 0f bf c8 3b c1 0f 9d c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff 7f 00 00 48 0f bf c0 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 010fh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 f6 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+16eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 6e 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0035h movsx r8,r8w                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf c0}
0039h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
003dh cmp eax,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c0}
0040h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0043h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0046h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0048h jne short 004eh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
004ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
004ch jmp short 0053h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
004eh mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
0053h jmp near ptr 0102h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
0058h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
005ch movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0060h movsx r8,ax                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c0}
0064h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0067h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
006ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006dh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
006fh jne short 0075h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0071h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0073h jmp short 007ah                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0075h mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
007ah jmp near ptr 0102h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
007fh movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0083h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0087h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0089h setl r8b                                ; SETL r/m8 || 0F 9C /r || encoded[4]{41 0f 9c c0}
008dh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0091h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0094h jne short 009ah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0096h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0098h jmp short 009fh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
009ah mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
009fh jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 61}
00a1h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00a5h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
00a9h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00abh setle r8b                               ; SETLE r/m8 || 0F 9E /r || encoded[4]{41 0f 9e c0}
00afh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00b3h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00b6h jne short 00bch                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b8h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00bah jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00bch mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
00c1h jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
00c3h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00c7h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
00cbh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
00cdh setg r8b                                ; SETG r/m8 || 0F 9F /r || encoded[4]{41 0f 9f c0}
00d1h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00d5h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00d8h jne short 00deh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00dah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00dch jmp short 00e3h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00deh mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
00e3h jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 1d}
00e5h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00e9h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
00edh cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
00efh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00f2h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00f5h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00f7h jne short 00fdh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00f9h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00fbh jmp short 0102h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00fdh mov eax,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 7f 00 00}
0102h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0106h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
010ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
010bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
010ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
010dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
010eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint eval<uint>(ComparisonKind:byte kind, uint a, uint b)
; cmp~eval_g8u[200] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 af 00 00 00 8b c0 48 8d 0d 2e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 04 33 c0 eb 05 b8 ff ff ff ff eb 76 41 3b d0 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff ff eb 5e 41 3b d0 0f 92 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff ff eb 46 41 3b d0 0f 96 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff ff eb 2e 41 3b d0 0f 97 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff ff eb 16 41 3b d0 0f 93 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff ff 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 00c8h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 af 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+12eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 2e 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0034h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
0037h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003ah test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
003ch jne short 0042h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
003eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0040h jmp short 0047h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0042h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0047h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0049h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
004ch setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
004fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0052h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0054h jne short 005ah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0056h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0058h jmp short 005fh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
005ah mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
005fh jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0061h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
006ch jne short 0072h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
006eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0070h jmp short 0077h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0072h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0077h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
0079h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
007ch setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
007fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0082h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0084h jne short 008ah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0086h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0088h jmp short 008fh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
008ah mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
008fh jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 2e}
0091h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0094h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0097h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
009ch jne short 00a2h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
009eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00a0h jmp short 00a7h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00a2h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
00a7h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 16}
00a9h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
00ach setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
00afh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b2h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00b4h jne short 00bah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b6h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b8h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00bah mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
00bfh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00c3h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c4h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int eval<int>(ComparisonKind:byte kind, int a, int b)
; cmp~eval_g8u[200] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 af 00 00 00 8b c0 48 8d 0d 2e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 41 3b d0 0f 94 c2 0f b6 d2 85 d2 75 04 33 c0 eb 05 b8 ff ff ff 7f eb 76 41 3b d0 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff 7f eb 5e 41 3b d0 0f 9c c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff 7f eb 46 41 3b d0 0f 9e c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff 7f eb 2e 41 3b d0 0f 9f c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff 7f eb 16 41 3b d0 0f 9d c0 0f b6 c0 85 c0 75 04 33 c0 eb 05 b8 ff ff ff 7f 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 00c8h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 af 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+12eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 2e 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0034h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
0037h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003ah test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
003ch jne short 0042h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
003eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0040h jmp short 0047h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0042h mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
0047h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0049h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
004ch setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
004fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0052h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0054h jne short 005ah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0056h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0058h jmp short 005fh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
005ah mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
005fh jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0061h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0064h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
006ch jne short 0072h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
006eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0070h jmp short 0077h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0072h mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
0077h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
0079h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
007ch setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
007fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0082h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0084h jne short 008ah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0086h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0088h jmp short 008fh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
008ah mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
008fh jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 2e}
0091h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0094h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0097h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
009ch jne short 00a2h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
009eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00a0h jmp short 00a7h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00a2h mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
00a7h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 16}
00a9h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
00ach setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00afh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b2h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00b4h jne short 00bah                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b6h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b8h jmp short 00bfh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
00bah mov eax,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff 7f}
00bfh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00c3h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c4h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong eval<ulong>(ComparisonKind:byte kind, ulong a, ulong b)
; cmp~eval_g8u[233] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 d0 00 00 00 8b c0 48 8d 0d 4e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 49 3b d0 0f 94 c2 0f b6 d2 85 d2 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff ff e9 8f 00 00 00 49 3b d0 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff ff eb 72 49 3b d0 0f 92 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff ff eb 55 49 3b d0 0f 96 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff ff eb 38 49 3b d0 0f 97 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff ff eb 1b 49 3b d0 0f 93 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff ff 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 00e9h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 d0 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+14eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 4e 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0034h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
0037h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003ah test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
003ch jne short 0042h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
003eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0040h jmp short 004ch                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0042h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
004ch jmp near ptr 00e0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8f 00 00 00}
0051h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0054h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0057h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
005ch jne short 0062h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
005eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0060h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0062h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
006ch jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
006eh cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0071h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
007bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
007dh jmp short 0089h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
007fh mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0089h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
008bh cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
008eh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0091h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0094h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0096h jne short 009ch                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0098h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
009ah jmp short 00a6h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
009ch mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
00a6h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
00a8h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
00abh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
00aeh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b1h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00b3h jne short 00b9h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b5h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b7h jmp short 00c3h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
00b9h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
00c3h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
00c5h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
00c8h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
00cbh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00ceh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00d0h jne short 00d6h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00d2h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00d4h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
00d6h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
00e0h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00e4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00e5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00e6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e8h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long eval<long>(ComparisonKind:byte kind, long a, long b)
; cmp~eval_g8u[233] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 ff c8 83 f8 05 0f 87 d0 00 00 00 8b c0 48 8d 0d 4e 01 00 00 8b 0c 81 4c 8d 0d de ff ff ff 49 03 c9 ff e1 49 3b d0 0f 94 c2 0f b6 d2 85 d2 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f e9 8f 00 00 00 49 3b d0 0f 95 c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f eb 72 49 3b d0 0f 9c c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f eb 55 49 3b d0 0f 9e c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f eb 38 49 3b d0 0f 9f c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f eb 1b 49 3b d0 0f 9d c0 0f b6 c0 85 c0 75 04 33 c0 eb 0a 48 b8 ff ff ff ff ff ff ff 7f 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0010h cmp eax,5                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 05}
0013h ja near ptr 00e9h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 d0 00 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rcx,[rip+14eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 4e 01 00 00}
0022h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0025h lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
002ch add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0034h sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
0037h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003ah test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
003ch jne short 0042h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
003eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0040h jmp short 004ch                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0042h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
004ch jmp near ptr 00e0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8f 00 00 00}
0051h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0054h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0057h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005ah test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
005ch jne short 0062h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
005eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0060h jmp short 006ch                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0062h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
006ch jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
006eh cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0071h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h jne short 007fh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
007bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
007dh jmp short 0089h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
007fh mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
0089h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
008bh cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
008eh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0091h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0094h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0096h jne short 009ch                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0098h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
009ah jmp short 00a6h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
009ch mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
00a6h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
00a8h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
00abh setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
00aeh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b1h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00b3h jne short 00b9h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00b5h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b7h jmp short 00c3h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
00b9h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
00c3h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
00c5h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
00c8h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00cbh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00ceh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00d0h jne short 00d6h                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
00d2h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00d4h jmp short 00e0h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
00d6h mov rax,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff 7f}
00e0h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00e4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00e5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00e6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e8h ret                                     ; RET || C3 || encoded[1]{c3}
