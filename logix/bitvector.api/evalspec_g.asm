------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> evalspec<byte>(BinaryBitLogicKind:byte kind, BitVector<byte> x, BitVector<byte> y)
; evalspec_g[8u](BinaryBitLogicKind~8u)[191] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a3 00 00 00 8b c9 4c 8d 05 23 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff 00 00 00 eb 78 33 c0 eb 74 8b c8 e8 18 fd ff ff eb 6b 8b c8 e8 af fb ff ff eb 62 8b c8 e8 86 fc ff ff eb 59 8b c8 e8 5d fc ff ff eb 50 8b c8 e8 94 fc ff ff eb 47 8b c8 e8 2b fc ff ff eb 3e 0f b6 c0 eb 39 0f b6 c2 eb 34 8b c8 e8 b8 fb ff ff eb 2b 8b c8 e8 ef fb ff ff eb 22 8b c8 e8 c6 fb ff ff eb 19 8b c8 e8 7d fc ff ff eb 10 8b c8 e8 74 fb ff ff eb 07 8b c8 e8 8b fc ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0016h ja near ptr 00bfh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a3 00 00 00}
001ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001eh lea r8,[rip+123h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 23 01 00 00}
0025h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
0029h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0030h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0033h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0036h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
003bh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 78}
003dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003fh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 74}
0041h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0043h call 7ff7c8698be0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 fd ff ff}
0048h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 6b}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c8698a80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af fb ff ff}
0051h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 62}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c8698b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fc ff ff}
005ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 59}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c8698b40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d fc ff ff}
0063h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 50}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c8698b80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 fc ff ff}
006ch jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c8698b20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b fc ff ff}
0075h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0077h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
007ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
007ch movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
007fh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0081h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0083h call 7ff7c8698ac0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 fb ff ff}
0088h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
008ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008ch call 7ff7c8698b00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef fb ff ff}
0091h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0093h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0095h call 7ff7c8698ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 fb ff ff}
009ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009eh call 7ff7c8698ba0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d fc ff ff}
00a3h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c8698aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 fb ff ff}
00ach jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00aeh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b0h call 7ff7c8698bc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b fc ff ff}
00b5h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b6h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bdh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00beh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> evalspec<ushort>(BinaryBitLogicKind:byte kind, BitVector<ushort> x, BitVector<ushort> y)
; evalspec_g[16u](BinaryBitLogicKind~8u)[191] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a3 00 00 00 8b c9 4c 8d 05 23 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff 00 00 eb 78 33 c0 eb 74 8b c8 e8 58 fc ff ff eb 6b 8b c8 e8 9f fb ff ff eb 62 8b c8 e8 06 fc ff ff eb 59 8b c8 e8 ed fb ff ff eb 50 8b c8 e8 04 fc ff ff eb 47 8b c8 e8 cb fb ff ff eb 3e 0f b7 c0 eb 39 0f b7 c2 eb 34 8b c8 e8 88 fb ff ff eb 2b 8b c8 e8 9f fb ff ff eb 22 8b c8 e8 86 fb ff ff eb 19 8b c8 e8 dd fb ff ff eb 10 8b c8 e8 54 fb ff ff eb 07 8b c8 e8 db fb ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
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
0016h ja near ptr 00bfh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a3 00 00 00}
001ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001eh lea r8,[rip+123h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 23 01 00 00}
0025h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
0029h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0030h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0033h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0036h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
003bh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 78}
003dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003fh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 74}
0041h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0043h call 7ff7c8698cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 fc ff ff}
0048h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 6b}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c8698c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f fb ff ff}
0051h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 62}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c8698c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 fc ff ff}
005ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 59}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c8698c80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed fb ff ff}
0063h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 50}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c8698ca0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 fc ff ff}
006ch jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c8698c70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb fb ff ff}
0075h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0077h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
007ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
007ch movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
007fh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0081h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0083h call 7ff7c8698c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 fb ff ff}
0088h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
008ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008ch call 7ff7c8698c60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f fb ff ff}
0091h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0093h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0095h call 7ff7c8698c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fb ff ff}
009ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009eh call 7ff7c8698cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd fb ff ff}
00a3h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c8698c30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 fb ff ff}
00ach jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00aeh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b0h call 7ff7c8698cc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db fb ff ff}
00b5h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b6h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bdh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00beh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> evalspec<uint>(BinaryBitLogicKind:byte kind, BitVector<uint> x, BitVector<uint> y)
; evalspec_g[32u](BinaryBitLogicKind~8u)[138] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 9f 00 00 00 8b c9 4c 8d 05 1b 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff ff ff eb 74 33 c0 eb 70 8b c8 e8 78 fb ff ff eb 67 8b c8 e8 bf fa ff ff eb 5e 8b c8 e8 26 fb ff ff eb 55 8b c8 e8 0d fb ff ff eb 4c 8b c8 e8 24 fb ff ff eb 43 8b c8 e8 eb fa ff ff eb 3a eb 38 8b c2 eb 34 8b c8 e8 ac fa ff ff eb 2b 8b c8 e8 c3}
; TermCode = CTC_RET_Zx7
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
001eh lea r8,[rip+11bh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 1b 01 00 00}
0025h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
0029h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0030h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0033h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0036h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
003bh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 74}
003dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003fh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 70}
0041h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0043h call 7ff7c8698da0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 fb ff ff}
0048h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 67}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c8698cf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf fa ff ff}
0051h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c8698d60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 fb ff ff}
005ah jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c8698d50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d fb ff ff}
0063h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c8698d70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 fb ff ff}
006ch jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c8698d40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb fa ff ff}
0075h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0077h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0079h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007bh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
007dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
007fh call 7ff7c8698d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac fa ff ff}
0084h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
0086h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0088h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> evalspec<ulong>(BinaryBitLogicKind:byte kind, BitVector<ulong> x, BitVector<ulong> y)
; evalspec_g[64u](BinaryBitLogicKind~8u)[212] = {57 56 55 53 48 83 ec 28 8b f1 48 8b c2 49 8b d0 40 0f b6 ce 83 f9 0f 0f 87 b7 00 00 00 8b c9 4c 8d 05 32 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 48 b8 ff ff ff ff ff ff ff ff e9 84 00 00 00 33 c0 e9 7d 00 00 00 48 8b c8 e8 9b fb ff ff eb 73 48 8b c8 e8 d1 f5 ff ff eb 69 48 8b c8 e8 37 f6 ff ff eb 5f 48 8b c8 e8 1d f6 ff ff eb 55 48 8b c8 e8 33 f6 ff ff eb 4b 48 8b c8 e8 f9 f5 ff ff eb 41 eb 3f 48 8b c2 eb 3a 48 8b c8 e8 b8 f5 ff ff eb 30 48 8b c8 e8 ce f5 ff ff eb 26 48 8b c8 e8 b4 f5 ff ff eb 1c 48 8b c8 e8 0a f6 ff ff eb 12 48 8b c8 e8 80 f5 ff ff eb 08 48 8b c8 e8 06 f6 ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
; TermCode = CTC_RET_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0010h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0014h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0017h ja near ptr 00d4h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b7 00 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea r8,[rip+132h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 32 01 00 00}
0026h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
002ah lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0031h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0034h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0037h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0041h jmp near ptr 00cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 84 00 00 00}
0046h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0048h jmp near ptr 00cah                      ; JMP rel32 || E9 cd || encoded[5]{e9 7d 00 00 00}
004dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0050h call 7ff7c8699380h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b fb ff ff}
0055h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 73}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c8698dc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f5 ff ff}
005fh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 69}
0061h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0064h call 7ff7c8698e30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 f6 ff ff}
0069h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 5f}
006bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006eh call 7ff7c8698e20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d f6 ff ff}
0073h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c8698e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 f6 ff ff}
007dh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
007fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0082h call 7ff7c8698e10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 f5 ff ff}
0087h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 41}
0089h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
008bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
008eh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0090h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0093h call 7ff7c8698de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f5 ff ff}
0098h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 30}
009ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
009dh call 7ff7c8698e00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce f5 ff ff}
00a2h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 26}
00a4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a7h call 7ff7c8698df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 f5 ff ff}
00ach jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
00aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b1h call 7ff7c8698e50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a f6 ff ff}
00b6h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
00b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bbh call 7ff7c8698dd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 f5 ff ff}
00c0h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
00c2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c5h call 7ff7c8698e60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 f6 ff ff}
00cah nop                                     ; NOP || o32 90 || encoded[1]{90}
00cbh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00cfh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00d0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00d1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d2h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d3h ret                                     ; RET || C3 || encoded[1]{c3}
