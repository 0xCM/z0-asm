; BitVector<uint> evalspec<uint>(BinaryBitLogicKind:byte kind, BitVector<uint> x, BitVector<uint> y)
; evalspec__0o_g32u[7ff7c6b721e0h, 7ff7c6b7235eh][382] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 9f 00 00 00 8b c9 4c 8d 05 1b 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff ff ff eb 74 33 c0 eb 70 8b c8 e8 c0 f9 ff ff eb 67 8b c8 e8 07 f9 ff ff eb 5e 8b c8 e8 6e f9 ff ff eb 55 8b c8 e8 55 f9 ff ff eb 4c 8b c8 e8 6c f9 ff ff eb 43 8b c8 e8 33 f9 ff ff eb 3a eb 38 8b c2 eb 34 8b c8 e8 f4 f8 ff ff eb 2b 8b c8 e8 0b f9 ff ff eb 22 8b c8 e8 f2 f8 ff ff eb 19 8b c8 e8 49 f9 ff ff eb 10 8b c8 e8 c0 f8 ff ff eb 07 8b c8 e8 47 f9 ff ff 90 48 83 c4 28 5b 5d 5e 5f c3 48 b9 b0 c7 91 c6 f7 7f 00 00 e8 06 4a 33 5f 48 8b f8 40 88 77 08 48 b9 d8 96 36 c6 f7 7f 00 00 e8 30 cd 2d 5f 48 8b c8 e8 98 a2 ea ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 d7 49 33 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 c0 e2 45 5f 48 8b e8 8b ce e8 5e 9e ea ff 4c 8b c0 48 8b cd 48 8b d7 e8 30 1e 82 ff 48 8b d0 48 8b cb e8 4d b5 83 ff 48 8b cb e8 e5 95 2a 5f cc 00 00 00 00 2e 00 00 00 32 00 00 00 9b 00 00 00 68 00 00 00 89 00 00 00 6a 00 00 00 56 00 00 00 44 00 00 00 4d 00 00 00 5f 00 00 00 77 00 00 00 80 00 00 00 6e 00 00 00 92 00 00 00 3b 00 00 00 27 00}
; Capture completion code, ZEDx2_SBB
; 2020-01-25 02:10:39:136
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0016h ja near ptr 00bbh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 9f 00 00 00}
001ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001eh lea r8,[7ff7c6b72320h]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 1b 01 00 00}
0025h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
0029h lea r9,[7ff7c6b721efh]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0030h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0033h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0036h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
003bh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 74}
003dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003fh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 70}
0041h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0043h call 7ff7c6b71be8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 f9 ff ff}
0048h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 67}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c6b71b38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 f9 ff ff}
0051h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c6b71ba8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e f9 ff ff}
005ah jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c6b71b98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 f9 ff ff}
0063h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c6b71bb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c f9 ff ff}
006ch jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c6b71b88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 f9 ff ff}
0075h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0077h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0079h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007bh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
007dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
007fh call 7ff7c6b71b58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 f8 ff ff}
0084h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
0086h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0088h call 7ff7c6b71b78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f9 ff ff}
008dh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
008fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0091h call 7ff7c6b71b68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 f8 ff ff}
0096h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
0098h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009ah call 7ff7c6b71bc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 f9 ff ff}
009fh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a1h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a3h call 7ff7c6b71b48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 f8 ff ff}
00a8h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00aah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00ach call 7ff7c6b71bd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f9 ff ff}
00b1h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b2h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00b6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bah ret                                     ; RET || C3 || encoded[1]{c3}
00bbh mov rcx,7ff7c691c7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c7 91 c6 f7 7f 00 00}
00c5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 4a 33 5f}
00cah mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00cdh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d1h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
00dbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 cd 2d 5f}
00e0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e3h call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 a2 ea ff}
00e8h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00eah mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
00f4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 49 33 5f}
00f9h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00fch mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0101h mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
010bh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 e2 45 5f}
0110h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0113h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0115h call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 9e ea ff}
011ah mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
011dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0120h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0123h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 1e 82 ff}
0128h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
012bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
012eh call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d b5 83 ff}
0133h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0136h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 95 2a 5f}
013bh int 3                                   ; INT3 || CC || encoded[1]{cc}
013ch add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
013eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0140h add cs:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{2e 00 00}
0143h add [rdx],dh                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 32}
0145h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0147h add [rbx+68000000h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 9b 00 00 00 68}
014dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
014fh add [rcx+6a000000h],cl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 89 00 00 00 6a}
0155h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0157h add [rsi],dl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 56 00}
015ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
015ch add [rax],r8b                           ; ADD r/m8, r8 || 00 /r || encoded[3]{44 00 00}
015fh add [rbp],cl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 4d 00}
0162h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0164h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0165h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0167h add [rdi],dh                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 77 00}
016ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
016ch add byte ptr [rax],0                    ; ADD r/m8, imm8 || 80 /0 ib || encoded[3]{80 00 00}
016fh add [rsi],ch                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 6e 00}
0172h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0174h xchg edx,eax                            ; XCHG r32, EAX || o32 90+rd || encoded[1]{92}
0175h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0177h add [rbx],bh                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 3b}
0179h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
017bh add [rdi],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 27}
017dh (bad)                                   ; <invalid> || <invalid> || encoded[1]{00}
