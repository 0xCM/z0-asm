------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> evalspec<byte>(BinaryBitLogicKind:byte kind, BitVector<byte> x, BitVector<byte> y)
; evalspec_g0o_8u_8u[191] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a3 00 00 00 8b c9 4c 8d 05 1b 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff 00 00 00 eb 78 33 c0 eb 74 8b c8 e8 f8 fb ff ff eb 6b 8b c8 e8 5f f8 ff ff eb 62 8b c8 e8 36 f9 ff ff eb 59 8b c8 e8 0d f9 ff ff eb 50 8b c8 e8 44 f9 ff ff eb 47 8b c8 e8 db f8 ff ff eb 3e 0f b6 c0 eb 39 0f b6 c2 eb 34 8b c8 e8 68 f8 ff ff eb 2b 8b c8 e8 9f f8 ff ff eb 22 8b c8 e8 76 f8 ff ff eb 19 8b c8 e8 5d fb ff ff eb 10 8b c8 e8 24 f8 ff ff eb 07 8b c8 e8 6b fb ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
001eh lea r8,[rip+11bh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 1b 01 00 00}
0025h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
0029h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0030h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0033h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0036h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
003bh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 78}
003dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003fh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 74}
0041h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0043h call 7ff7c6b962b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 fb ff ff}
0048h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 6b}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c6b95f20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f8 ff ff}
0051h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 62}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c6b96000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 f9 ff ff}
005ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 59}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c6b95fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d f9 ff ff}
0063h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 50}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c6b96020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 f9 ff ff}
006ch jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c6b95fc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db f8 ff ff}
0075h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0077h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
007ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
007ch movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
007fh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0081h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0083h call 7ff7c6b95f60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 f8 ff ff}
0088h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
008ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008ch call 7ff7c6b95fa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f f8 ff ff}
0091h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0093h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0095h call 7ff7c6b95f80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 f8 ff ff}
009ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009eh call 7ff7c6b96270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d fb ff ff}
00a3h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c6b95f40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 f8 ff ff}
00ach jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00aeh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b0h call 7ff7c6b96290h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b fb ff ff}
00b5h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b6h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bdh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00beh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<sbyte> evalspec<sbyte>(BinaryBitLogicKind:byte kind, BitVector<sbyte> x, BitVector<sbyte> y)
; evalspec_g0o_8i_8i[193] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a5 00 00 00 8b c9 4c 8d 05 23 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff ff ff eb 7a 33 c0 eb 76 8b c8 e8 48 fb ff ff eb 6d 8b c8 e8 8f fa ff ff eb 64 8b c8 e8 f6 fa ff ff eb 5b 8b c8 e8 dd fa ff ff eb 52 8b c8 e8 f4 fa ff ff eb 49 8b c8 e8 bb fa ff ff eb 40 48 0f be c0 eb 3a 48 0f be c2 eb 34 8b c8 e8 76 fa ff ff eb 2b 8b c8 e8 8d fa ff ff eb 22 8b c8 e8 74 fa ff ff eb 19 8b c8 e8 cb fa ff ff eb 10 8b c8 e8 42 fa ff ff eb 07 8b c8 e8 c9 fa ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
001eh lea r8,[rip+123h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 23 01 00 00}
0025h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
0029h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0030h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0033h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0036h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
003bh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 7a}
003dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003fh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0041h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0043h call 7ff7c6b963a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 fb ff ff}
0048h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 6d}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c6b962f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f fa ff ff}
0051h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 64}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c6b96360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 fa ff ff}
005ah jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 5b}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c6b96350h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd fa ff ff}
0063h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c6b96370h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 fa ff ff}
006ch jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 49}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c6b96340h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb fa ff ff}
0075h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 40}
0077h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
007bh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
007dh movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0081h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0083h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0085h call 7ff7c6b96310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 fa ff ff}
008ah jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
008ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008eh call 7ff7c6b96330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d fa ff ff}
0093h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0095h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0097h call 7ff7c6b96320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 fa ff ff}
009ch jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a0h call 7ff7c6b96380h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb fa ff ff}
00a5h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a7h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a9h call 7ff7c6b96300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 fa ff ff}
00aeh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00b0h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b2h call 7ff7c6b96390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 fa ff ff}
00b7h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b8h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bdh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00beh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bfh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c0h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> evalspec<ushort>(BinaryBitLogicKind:byte kind, BitVector<ushort> x, BitVector<ushort> y)
; evalspec_g0o_16u_16u[191] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a3 00 00 00 8b c9 4c 8d 05 1b 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff 00 00 eb 78 33 c0 eb 74 8b c8 e8 68 fa ff ff eb 6b 8b c8 e8 af f9 ff ff eb 62 8b c8 e8 16 fa ff ff eb 59 8b c8 e8 fd f9 ff ff eb 50 8b c8 e8 14 fa ff ff eb 47 8b c8 e8 db f9 ff ff eb 3e 0f b7 c0 eb 39 0f b7 c2 eb 34 8b c8 e8 98 f9 ff ff eb 2b 8b c8 e8 af f9 ff ff eb 22 8b c8 e8 96 f9 ff ff eb 19 8b c8 e8 ed f9 ff ff eb 10 8b c8 e8 64 f9 ff ff eb 07 8b c8 e8 eb f9 ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
001eh lea r8,[rip+11bh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 1b 01 00 00}
0025h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
0029h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0030h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0033h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0036h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
003bh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 78}
003dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003fh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 74}
0041h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0043h call 7ff7c6b96470h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 fa ff ff}
0048h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 6b}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c6b963c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af f9 ff ff}
0051h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 62}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c6b96430h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 fa ff ff}
005ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 59}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c6b96420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd f9 ff ff}
0063h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 50}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c6b96440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 fa ff ff}
006ch jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c6b96410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db f9 ff ff}
0075h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0077h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
007ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
007ch movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
007fh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0081h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0083h call 7ff7c6b963e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 f9 ff ff}
0088h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
008ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008ch call 7ff7c6b96400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af f9 ff ff}
0091h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0093h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0095h call 7ff7c6b963f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f9 ff ff}
009ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009eh call 7ff7c6b96450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f9 ff ff}
00a3h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c6b963d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 f9 ff ff}
00ach jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00aeh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b0h call 7ff7c6b96460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb f9 ff ff}
00b5h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b6h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bdh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00beh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<Int16> evalspec<Int16>(BinaryBitLogicKind:byte kind, BitVector<Int16> x, BitVector<Int16> y)
; evalspec_g0o_16i_16i[193] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a5 00 00 00 8b c9 4c 8d 05 23 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff ff ff eb 7a 33 c0 eb 76 8b c8 e8 98 f9 ff ff eb 6d 8b c8 e8 df f8 ff ff eb 64 8b c8 e8 46 f9 ff ff eb 5b 8b c8 e8 2d f9 ff ff eb 52 8b c8 e8 44 f9 ff ff eb 49 8b c8 e8 0b f9 ff ff eb 40 48 0f bf c0 eb 3a 48 0f bf c2 eb 34 8b c8 e8 c6 f8 ff ff eb 2b 8b c8 e8 dd f8 ff ff eb 22 8b c8 e8 c4 f8 ff ff eb 19 8b c8 e8 1b f9 ff ff eb 10 8b c8 e8 92 f8 ff ff eb 07 8b c8 e8 19 f9 ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
001eh lea r8,[rip+123h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 23 01 00 00}
0025h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
0029h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0030h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0033h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0036h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
003bh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 7a}
003dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003fh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
0041h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0043h call 7ff7c6b96540h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 f9 ff ff}
0048h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 6d}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c6b96490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f8 ff ff}
0051h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 64}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c6b96500h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f9 ff ff}
005ah jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 5b}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c6b964f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d f9 ff ff}
0063h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c6b96510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 f9 ff ff}
006ch jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 49}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c6b964e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f9 ff ff}
0075h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 40}
0077h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
007bh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
007dh movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0081h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0083h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0085h call 7ff7c6b964b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 f8 ff ff}
008ah jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
008ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008eh call 7ff7c6b964d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd f8 ff ff}
0093h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0095h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0097h call 7ff7c6b964c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 f8 ff ff}
009ch jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a0h call 7ff7c6b96520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b f9 ff ff}
00a5h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a7h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a9h call 7ff7c6b964a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f8 ff ff}
00aeh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00b0h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b2h call 7ff7c6b96530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f9 ff ff}
00b7h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b8h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bdh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00beh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bfh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c0h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> evalspec<uint>(BinaryBitLogicKind:byte kind, BitVector<uint> x, BitVector<uint> y)
; evalspec_g0o_32u_32u[187] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 9f 00 00 00 8b c9 4c 8d 05 1b 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff ff ff eb 74 33 c0 eb 70 8b c8 e8 b8 f8 ff ff eb 67 8b c8 e8 ff f7 ff ff eb 5e 8b c8 e8 66 f8 ff ff eb 55 8b c8 e8 4d f8 ff ff eb 4c 8b c8 e8 64 f8 ff ff eb 43 8b c8 e8 2b f8 ff ff eb 3a eb 38 8b c2 eb 34 8b c8 e8 ec f7 ff ff eb 2b 8b c8 e8 03 f8 ff ff eb 22 8b c8 e8 ea f7 ff ff eb 19 8b c8 e8 41 f8 ff ff eb 10 8b c8 e8 b8 f7 ff ff eb 07 8b c8 e8 3f f8 ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
0043h call 7ff7c6b96610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f8 ff ff}
0048h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 67}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c6b96560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff f7 ff ff}
0051h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c6b965d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 f8 ff ff}
005ah jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c6b965c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d f8 ff ff}
0063h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c6b965e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 f8 ff ff}
006ch jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c6b965b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b f8 ff ff}
0075h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0077h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0079h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007bh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
007dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
007fh call 7ff7c6b96580h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec f7 ff ff}
0084h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
0086h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0088h call 7ff7c6b965a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f8 ff ff}
008dh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
008fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0091h call 7ff7c6b96590h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea f7 ff ff}
0096h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
0098h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009ah call 7ff7c6b965f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 f8 ff ff}
009fh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a1h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a3h call 7ff7c6b96570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f7 ff ff}
00a8h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00aah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00ach call 7ff7c6b96600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f f8 ff ff}
00b1h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b2h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00b6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<int> evalspec<int>(BinaryBitLogicKind:byte kind, BitVector<int> x, BitVector<int> y)
; evalspec_g0o_32i_32i[187] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 9f 00 00 00 8b c9 4c 8d 05 1b 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff ff ff eb 74 33 c0 eb 70 8b c8 e8 28 fc ff ff eb 67 8b c8 e8 1f f3 ff ff eb 5e 8b c8 e8 d6 fb ff ff eb 55 8b c8 e8 bd fb ff ff eb 4c 8b c8 e8 d4 fb ff ff eb 43 8b c8 e8 9b fb ff ff eb 3a eb 38 8b c2 eb 34 8b c8 e8 0c f3 ff ff eb 2b 8b c8 e8 73 fb ff ff eb 22 8b c8 e8 5a fb ff ff eb 19 8b c8 e8 b1 fb ff ff eb 10 8b c8 e8 d8 f2 ff ff eb 07 8b c8 e8 af fb ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
0043h call 7ff7c6b96f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 fc ff ff}
0048h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 67}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c6b96630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f f3 ff ff}
0051h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c6b96ef0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 fb ff ff}
005ah jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c6b96ee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd fb ff ff}
0063h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c6b96f00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 fb ff ff}
006ch jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c6b96ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b fb ff ff}
0075h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0077h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0079h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007bh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
007dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
007fh call 7ff7c6b96650h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c f3 ff ff}
0084h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
0086h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0088h call 7ff7c6b96ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 fb ff ff}
008dh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
008fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0091h call 7ff7c6b96eb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a fb ff ff}
0096h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
0098h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009ah call 7ff7c6b96f10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 fb ff ff}
009fh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a1h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a3h call 7ff7c6b96640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 f2 ff ff}
00a8h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00aah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00ach call 7ff7c6b96f20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af fb ff ff}
00b1h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b2h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00b6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> evalspec<ulong>(BinaryBitLogicKind:byte kind, BitVector<ulong> x, BitVector<ulong> y)
; evalspec_g0o_64u_64u[212] = {57 56 55 53 48 83 ec 28 8b f1 48 8b c2 49 8b d0 40 0f b6 ce 83 f9 0f 0f 87 b7 00 00 00 8b c9 4c 8d 05 32 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 48 b8 ff ff ff ff ff ff ff ff e9 84 00 00 00 33 c0 e9 7d 00 00 00 48 8b c8 e8 4b fb ff ff eb 73 48 8b c8 e8 91 fa ff ff eb 69 48 8b c8 e8 f7 fa ff ff eb 5f 48 8b c8 e8 dd fa ff ff eb 55 48 8b c8 e8 f3 fa ff ff eb 4b 48 8b c8 e8 b9 fa ff ff eb 41 eb 3f 48 8b c2 eb 3a 48 8b c8 e8 78 fa ff ff eb 30 48 8b c8 e8 8e fa ff ff eb 26 48 8b c8 e8 74 fa ff ff eb 1c 48 8b c8 e8 ca fa ff ff eb 12 48 8b c8 e8 40 fa ff ff eb 08 48 8b c8 e8 c6 fa ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
0050h call 7ff7c6b97000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b fb ff ff}
0055h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 73}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c6b96f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 fa ff ff}
005fh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 69}
0061h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0064h call 7ff7c6b96fc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 fa ff ff}
0069h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 5f}
006bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006eh call 7ff7c6b96fb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd fa ff ff}
0073h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c6b96fd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fa ff ff}
007dh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
007fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0082h call 7ff7c6b96fa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 fa ff ff}
0087h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 41}
0089h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
008bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
008eh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0090h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0093h call 7ff7c6b96f70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 fa ff ff}
0098h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 30}
009ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
009dh call 7ff7c6b96f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e fa ff ff}
00a2h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 26}
00a4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a7h call 7ff7c6b96f80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 fa ff ff}
00ach jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
00aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b1h call 7ff7c6b96fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fa ff ff}
00b6h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
00b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bbh call 7ff7c6b96f60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 fa ff ff}
00c0h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
00c2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c5h call 7ff7c6b96ff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 fa ff ff}
00cah nop                                     ; NOP || o32 90 || encoded[1]{90}
00cbh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00cfh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00d0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00d1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d2h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d3h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<long> evalspec<long>(BinaryBitLogicKind:byte kind, BitVector<long> x, BitVector<long> y)
; evalspec_g0o_64i_64i[212] = {57 56 55 53 48 83 ec 28 8b f1 48 8b c2 49 8b d0 40 0f b6 ce 83 f9 0f 0f 87 b7 00 00 00 8b c9 4c 8d 05 32 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 48 b8 ff ff ff ff ff ff ff ff e9 84 00 00 00 33 c0 e9 7d 00 00 00 48 8b c8 e8 5b fa ff ff eb 73 48 8b c8 e8 a1 f9 ff ff eb 69 48 8b c8 e8 07 fa ff ff eb 5f 48 8b c8 e8 ed f9 ff ff eb 55 48 8b c8 e8 03 fa ff ff eb 4b 48 8b c8 e8 c9 f9 ff ff eb 41 eb 3f 48 8b c2 eb 3a 48 8b c8 e8 88 f9 ff ff eb 30 48 8b c8 e8 9e f9 ff ff eb 26 48 8b c8 e8 84 f9 ff ff eb 1c 48 8b c8 e8 da f9 ff ff eb 12 48 8b c8 e8 50 f9 ff ff eb 08 48 8b c8 e8 d6 f9 ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
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
0050h call 7ff7c6b970d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b fa ff ff}
0055h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 73}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c6b97020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 f9 ff ff}
005fh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 69}
0061h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0064h call 7ff7c6b97090h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 fa ff ff}
0069h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 5f}
006bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006eh call 7ff7c6b97080h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f9 ff ff}
0073h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c6b970a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 fa ff ff}
007dh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
007fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0082h call 7ff7c6b97070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f9 ff ff}
0087h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 41}
0089h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
008bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
008eh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0090h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0093h call 7ff7c6b97040h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 f9 ff ff}
0098h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 30}
009ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
009dh call 7ff7c6b97060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e f9 ff ff}
00a2h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 26}
00a4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a7h call 7ff7c6b97050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 f9 ff ff}
00ach jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
00aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b1h call 7ff7c6b970b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da f9 ff ff}
00b6h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
00b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bbh call 7ff7c6b97030h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 f9 ff ff}
00c0h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
00c2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c5h call 7ff7c6b970c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 f9 ff ff}
00cah nop                                     ; NOP || o32 90 || encoded[1]{90}
00cbh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00cfh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00d0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00d1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d2h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d3h ret                                     ; RET || C3 || encoded[1]{c3}
