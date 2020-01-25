; BitVector<Int16> evalspec<Int16>(BinaryBitLogicKind:byte kind, BitVector<Int16> x, BitVector<Int16> y)
; evalspec__0o_g16i[7ff7c6b62450h, 7ff7c6b62592h][322] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a5 00 00 00 8b c9 4c 8d 05 23 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff ff ff eb 7a 33 c0 eb 76 8b c8 e8 38 f8 ff ff eb 6d 8b c8 e8 7f f7 ff ff eb 64 8b c8 e8 e6 f7 ff ff eb 5b 8b c8 e8 cd f7 ff ff eb 52 8b c8 e8 e4 f7 ff ff eb 49 8b c8 e8 ab f7 ff ff eb 40 48 0f bf c0 eb 3a 48 0f bf c2 eb 34 8b c8 e8 66 f7 ff ff eb 2b 8b c8 e8 7d f7 ff ff eb 22 8b c8 e8 64 f7 ff ff eb 19 8b c8 e8 bb f7 ff ff eb 10 8b c8 e8 32 f7 ff ff eb 07 8b c8 e8 b9 f7 ff ff 90 48 83 c4 28 5b 5d 5e 5f c3 48 b9 c8 37 88 c6 f7 7f 00 00 e8 90 47 34 5f 48 8b f8 40 88 77 08 48 b9 48 7f 34 c6 f7 7f 00 00 e8 ba ca 2e 5f 48 8b c8 e8 42 c2 eb ff 8b f0 48 b9 50 58 58 c6 f7 7f 00 00 e8 61 47 34 5f 48 8b d8 b9 68 04 00 00 48 ba 00 d2 5a c6 f7 7f 00 00 e8 4a e0 46 5f 48 8b e8 8b ce e8 20 9a 83 ff 4c 8b c0 48 8b cd 48 8b d7 e8 ba 1b 81 ff 48 8b d0 48 8b cb e8 87 c8 82 ff 48 8b cb e8 6f 93 2b 5f cc}
; Capture completion code, ZEDx6
; 2020-01-24 02:54:45:417
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
0016h ja near ptr 00c1h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a5 00 00 00}
001ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001eh lea r8,[7ff7c6b62598h]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 23 01 00 00}
0025h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
0029h lea r9,[7ff7c6b6245fh]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0030h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0033h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0036h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
003bh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 7a}
003dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003fh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0041h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0043h call 7ff7c6b61cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 f8 ff ff}
0048h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 6d}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c6b61c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f f7 ff ff}
0051h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 64}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c6b61c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 f7 ff ff}
005ah jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 5b}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c6b61c80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd f7 ff ff}
0063h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c6b61ca0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 f7 ff ff}
006ch jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 49}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c6b61c70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab f7 ff ff}
0075h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 40}
0077h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
007bh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
007dh movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0081h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0083h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0085h call 7ff7c6b61c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 f7 ff ff}
008ah jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
008ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008eh call 7ff7c6b61c60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f7 ff ff}
0093h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0095h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0097h call 7ff7c6b61c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 f7 ff ff}
009ch jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a0h call 7ff7c6b61cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb f7 ff ff}
00a5h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a7h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a9h call 7ff7c6b61c30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f7 ff ff}
00aeh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00b0h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b2h call 7ff7c6b61cc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 f7 ff ff}
00b7h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b8h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bdh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00beh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bfh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c0h ret                                     ; RET || C3 || encoded[1]{c3}
00c1h mov rcx,7ff7c68837c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 37 88 c6 f7 7f 00 00}
00cbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 47 34 5f}
00d0h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d3h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d7h mov rcx,7ff7c6347f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 34 c6 f7 7f 00 00}
00e1h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba ca 2e 5f}
00e6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e9h call 7ff7c6a1e780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 c2 eb ff}
00eeh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00f0h mov rcx,7ff7c6585850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 58 58 c6 f7 7f 00 00}
00fah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 47 34 5f}
00ffh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0102h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0107h mov rdx,7ff7c65ad200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 d2 5a c6 f7 7f 00 00}
0111h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a e0 46 5f}
0116h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0119h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
011bh call 7ff7c639bf90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 9a 83 ff}
0120h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0123h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0126h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0129h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 1b 81 ff}
012eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0131h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0134h call 7ff7c638ee10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 c8 82 ff}
0139h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 93 2b 5f}
0141h int 3                                   ; INT3 || CC || encoded[1]{cc}
