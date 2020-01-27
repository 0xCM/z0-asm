------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> evalspec<byte>(BinaryBitLogicKind:byte kind, BitVector<byte> x, BitVector<byte> y)
; evalspec_g0o_8u_8u[191] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a3 00 00 00 8b c9 4c 8d 05 1b 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff 00 00 00 eb 78 33 c0 eb 74 8b c8 e8 e8 fc ff ff eb 6b 8b c8 e8 77 f7 ff ff eb 62 8b c8 e8 56 fc ff ff eb 59 8b c8 e8 2d fc ff ff eb 50 8b c8 e8 64 fc ff ff eb 47 8b c8 e8 fb fb ff ff eb 3e 0f b6 c0 eb 39 0f b6 c2 eb 34 8b c8 e8 88 fb ff ff eb 2b 8b c8 e8 bf fb ff ff eb 22 8b c8 e8 96 fb ff ff eb 19 8b c8 e8 4d fc ff ff eb 10 8b c8 e8 44 fb ff ff eb 07 8b c8 e8 5b fc ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
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
0043h call 7ff7c7300020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 fc ff ff}
0048h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 6b}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c72ffab8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 f7 ff ff}
0051h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 62}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c72fffa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 fc ff ff}
005ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 59}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c72fff80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d fc ff ff}
0063h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 50}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c72fffc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 fc ff ff}
006ch jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c72fff60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb fb ff ff}
0075h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0077h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
007ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
007ch movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
007fh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0081h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0083h call 7ff7c72fff00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 fb ff ff}
0088h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
008ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008ch call 7ff7c72fff40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf fb ff ff}
0091h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0093h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0095h call 7ff7c72fff20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 fb ff ff}
009ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009eh call 7ff7c72fffe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d fc ff ff}
00a3h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c72ffee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 fb ff ff}
00ach jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00aeh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b0h call 7ff7c7300000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b fc ff ff}
00b5h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b6h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bdh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00beh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<sbyte> evalspec<sbyte>(BinaryBitLogicKind:byte kind, BitVector<sbyte> x, BitVector<sbyte> y)
; evalspec_g0o_8i_8i[193] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a5 00 00 00 8b c9 4c 8d 05 23 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff ff ff eb 7a 33 c0 eb 76 8b c8 e8 38 fc ff ff eb 6d 8b c8 e8 7f fb ff ff eb 64 8b c8 e8 e6 fb ff ff eb 5b 8b c8 e8 cd fb ff ff eb 52 8b c8 e8 e4 fb ff ff eb 49 8b c8 e8 ab fb ff ff eb 40 48 0f be c0 eb 3a 48 0f be c2 eb 34 8b c8 e8 66 fb ff ff eb 2b 8b c8 e8 7d fb ff ff eb 22 8b c8 e8 64 fb ff ff eb 19 8b c8 e8 bb fb ff ff eb 10 8b c8 e8 32 fb ff ff eb 07 8b c8 e8 b9 fb ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
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
0043h call 7ff7c7300110h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 fc ff ff}
0048h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 6d}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c7300060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f fb ff ff}
0051h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 64}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c73000d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 fb ff ff}
005ah jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 5b}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c73000c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd fb ff ff}
0063h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c73000e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 fb ff ff}
006ch jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 49}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c73000b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab fb ff ff}
0075h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 40}
0077h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
007bh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
007dh movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0081h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0083h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0085h call 7ff7c7300080h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 fb ff ff}
008ah jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
008ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008eh call 7ff7c73000a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d fb ff ff}
0093h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0095h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0097h call 7ff7c7300090h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 fb ff ff}
009ch jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a0h call 7ff7c73000f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb fb ff ff}
00a5h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a7h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a9h call 7ff7c7300070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 fb ff ff}
00aeh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00b0h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b2h call 7ff7c7300100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 fb ff ff}
00b7h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b8h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bdh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00beh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bfh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c0h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> evalspec<ushort>(BinaryBitLogicKind:byte kind, BitVector<ushort> x, BitVector<ushort> y)
; evalspec_g0o_16u_16u[191] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a3 00 00 00 8b c9 4c 8d 05 1b 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff 00 00 eb 78 33 c0 eb 74 8b c8 e8 58 fb ff ff eb 6b 8b c8 e8 9f fa ff ff eb 62 8b c8 e8 06 fb ff ff eb 59 8b c8 e8 ed fa ff ff eb 50 8b c8 e8 04 fb ff ff eb 47 8b c8 e8 cb fa ff ff eb 3e 0f b7 c0 eb 39 0f b7 c2 eb 34 8b c8 e8 88 fa ff ff eb 2b 8b c8 e8 9f fa ff ff eb 22 8b c8 e8 86 fa ff ff eb 19 8b c8 e8 dd fa ff ff eb 10 8b c8 e8 54 fa ff ff eb 07 8b c8 e8 db fa ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
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
0043h call 7ff7c73001e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 fb ff ff}
0048h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 6b}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c7300130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f fa ff ff}
0051h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 62}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c73001a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 fb ff ff}
005ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 59}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c7300190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed fa ff ff}
0063h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 50}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c73001b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 fb ff ff}
006ch jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c7300180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb fa ff ff}
0075h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0077h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
007ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
007ch movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
007fh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0081h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0083h call 7ff7c7300150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 fa ff ff}
0088h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
008ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008ch call 7ff7c7300170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f fa ff ff}
0091h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0093h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0095h call 7ff7c7300160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fa ff ff}
009ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009eh call 7ff7c73001c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd fa ff ff}
00a3h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c7300140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 fa ff ff}
00ach jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00aeh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b0h call 7ff7c73001d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db fa ff ff}
00b5h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b6h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bdh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00beh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<short> evalspec<short>(BinaryBitLogicKind:byte kind, BitVector<short> x, BitVector<short> y)
; evalspec_g0o_16i_16i[193] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a5 00 00 00 8b c9 4c 8d 05 23 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff ff ff eb 7a 33 c0 eb 76 8b c8 e8 88 fa ff ff eb 6d 8b c8 e8 cf f9 ff ff eb 64 8b c8 e8 36 fa ff ff eb 5b 8b c8 e8 1d fa ff ff eb 52 8b c8 e8 34 fa ff ff eb 49 8b c8 e8 fb f9 ff ff eb 40 48 0f bf c0 eb 3a 48 0f bf c2 eb 34 8b c8 e8 b6 f9 ff ff eb 2b 8b c8 e8 cd f9 ff ff eb 22 8b c8 e8 b4 f9 ff ff eb 19 8b c8 e8 0b fa ff ff eb 10 8b c8 e8 82 f9 ff ff eb 07 8b c8 e8 09 fa ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
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
0043h call 7ff7c73002b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 fa ff ff}
0048h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 6d}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c7300200h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf f9 ff ff}
0051h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 64}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c7300270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 fa ff ff}
005ah jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 5b}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c7300260h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d fa ff ff}
0063h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c7300280h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 fa ff ff}
006ch jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 49}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c7300250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb f9 ff ff}
0075h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 40}
0077h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
007bh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
007dh movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0081h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0083h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0085h call 7ff7c7300220h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 f9 ff ff}
008ah jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
008ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008eh call 7ff7c7300240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd f9 ff ff}
0093h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0095h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0097h call 7ff7c7300230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 f9 ff ff}
009ch jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a0h call 7ff7c7300290h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b fa ff ff}
00a5h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a7h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a9h call 7ff7c7300210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 f9 ff ff}
00aeh jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00b0h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b2h call 7ff7c73002a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 fa ff ff}
00b7h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b8h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bdh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00beh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bfh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c0h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> evalspec<uint>(BinaryBitLogicKind:byte kind, BitVector<uint> x, BitVector<uint> y)
; evalspec_g0o_32u_32u[114] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 9f 00 00 00 8b c9 4c 8d 05 1b 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff ff ff eb 74 33 c0 eb 70 8b c8 e8 50 fc ff ff eb 67 8b c8 e8 ef f4 ff ff eb 5e 8b c8 e8 fe fb ff ff eb 55 8b c8 e8 e5 fb ff ff eb 4c 8b c8 e8 fc fb ff ff eb 43 8b c8 e8 c3}
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
0043h call 7ff7c7300a28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 fc ff ff}
0048h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 67}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c73002d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef f4 ff ff}
0051h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c73009e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe fb ff ff}
005ah jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c73009d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 fb ff ff}
0063h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c73009f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc fb ff ff}
006ch jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<int> evalspec<int>(BinaryBitLogicKind:byte kind, BitVector<int> x, BitVector<int> y)
; evalspec_g0o_32i_32i[187] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 9f 00 00 00 8b c9 4c 8d 05 1b 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff ff ff eb 74 33 c0 eb 70 8b c8 e8 80 fb ff ff eb 67 8b c8 e8 c7 fa ff ff eb 5e 8b c8 e8 2e fb ff ff eb 55 8b c8 e8 15 fb ff ff eb 4c 8b c8 e8 2c fb ff ff eb 43 8b c8 e8 f3 fa ff ff eb 3a eb 38 8b c2 eb 34 8b c8 e8 b4 fa ff ff eb 2b 8b c8 e8 cb fa ff ff eb 22 8b c8 e8 b2 fa ff ff eb 19 8b c8 e8 09 fb ff ff eb 10 8b c8 e8 80 fa ff ff eb 07 8b c8 e8 07 fb ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
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
0043h call 7ff7c7300af8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 fb ff ff}
0048h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 67}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c7300a48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 fa ff ff}
0051h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c7300ab8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e fb ff ff}
005ah jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c7300aa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 fb ff ff}
0063h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c7300ac8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c fb ff ff}
006ch jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c7300a98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fa ff ff}
0075h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0077h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0079h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007bh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
007dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
007fh call 7ff7c7300a68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 fa ff ff}
0084h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
0086h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0088h call 7ff7c7300a88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb fa ff ff}
008dh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
008fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0091h call 7ff7c7300a78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 fa ff ff}
0096h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
0098h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009ah call 7ff7c7300ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 fb ff ff}
009fh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a1h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a3h call 7ff7c7300a58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 fa ff ff}
00a8h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00aah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00ach call 7ff7c7300ae8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 fb ff ff}
00b1h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b2h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00b6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> evalspec<ulong>(BinaryBitLogicKind:byte kind, BitVector<ulong> x, BitVector<ulong> y)
; evalspec_g0o_64u_64u[212] = {57 56 55 53 48 83 ec 28 8b f1 48 8b c2 49 8b d0 40 0f b6 ce 83 f9 0f 0f 87 b7 00 00 00 8b c9 4c 8d 05 32 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 48 b8 ff ff ff ff ff ff ff ff e9 84 00 00 00 33 c0 e9 7d 00 00 00 48 8b c8 e8 a3 fa ff ff eb 73 48 8b c8 e8 e9 f9 ff ff eb 69 48 8b c8 e8 4f fa ff ff eb 5f 48 8b c8 e8 35 fa ff ff eb 55 48 8b c8 e8 4b fa ff ff eb 4b 48 8b c8 e8 11 fa ff ff eb 41 eb 3f 48 8b c2 eb 3a 48 8b c8 e8 d0 f9 ff ff eb 30 48 8b c8 e8 e6 f9 ff ff eb 26 48 8b c8 e8 cc f9 ff ff eb 1c 48 8b c8 e8 22 fa ff ff eb 12 48 8b c8 e8 98 f9 ff ff eb 08 48 8b c8 e8 1e fa ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
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
0050h call 7ff7c7300bc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 fa ff ff}
0055h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 73}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c7300b18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 f9 ff ff}
005fh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 69}
0061h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0064h call 7ff7c7300b88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f fa ff ff}
0069h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 5f}
006bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006eh call 7ff7c7300b78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 fa ff ff}
0073h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c7300b98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b fa ff ff}
007dh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
007fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0082h call 7ff7c7300b68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 fa ff ff}
0087h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 41}
0089h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
008bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
008eh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0090h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0093h call 7ff7c7300b38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 f9 ff ff}
0098h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 30}
009ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
009dh call 7ff7c7300b58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 f9 ff ff}
00a2h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 26}
00a4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a7h call 7ff7c7300b48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc f9 ff ff}
00ach jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
00aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b1h call 7ff7c7300ba8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 fa ff ff}
00b6h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
00b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bbh call 7ff7c7300b28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 f9 ff ff}
00c0h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
00c2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c5h call 7ff7c7300bb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e fa ff ff}
00cah nop                                     ; NOP || o32 90 || encoded[1]{90}
00cbh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00cfh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00d0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00d1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d2h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d3h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<long> evalspec<long>(BinaryBitLogicKind:byte kind, BitVector<long> x, BitVector<long> y)
; evalspec_g0o_64i_64i[212] = {57 56 55 53 48 83 ec 28 8b f1 48 8b c2 49 8b d0 40 0f b6 ce 83 f9 0f 0f 87 b7 00 00 00 8b c9 4c 8d 05 32 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 48 b8 ff ff ff ff ff ff ff ff e9 84 00 00 00 33 c0 e9 7d 00 00 00 48 8b c8 e8 b3 f9 ff ff eb 73 48 8b c8 e8 f9 f8 ff ff eb 69 48 8b c8 e8 5f f9 ff ff eb 5f 48 8b c8 e8 45 f9 ff ff eb 55 48 8b c8 e8 5b f9 ff ff eb 4b 48 8b c8 e8 21 f9 ff ff eb 41 eb 3f 48 8b c2 eb 3a 48 8b c8 e8 e0 f8 ff ff eb 30 48 8b c8 e8 f6 f8 ff ff eb 26 48 8b c8 e8 dc f8 ff ff eb 1c 48 8b c8 e8 32 f9 ff ff eb 12 48 8b c8 e8 a8 f8 ff ff eb 08 48 8b c8 e8 2e f9 ff ff 90 48 83 c4 28 5b 5d 5e 5f c3}
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
0050h call 7ff7c7300c98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 f9 ff ff}
0055h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 73}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c7300be8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 f8 ff ff}
005fh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 69}
0061h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0064h call 7ff7c7300c58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f9 ff ff}
0069h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 5f}
006bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006eh call 7ff7c7300c48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 f9 ff ff}
0073h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c7300c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b f9 ff ff}
007dh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
007fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0082h call 7ff7c7300c38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 f9 ff ff}
0087h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 41}
0089h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
008bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
008eh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0090h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0093h call 7ff7c7300c08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 f8 ff ff}
0098h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 30}
009ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
009dh call 7ff7c7300c28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 f8 ff ff}
00a2h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 26}
00a4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a7h call 7ff7c7300c18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc f8 ff ff}
00ach jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
00aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b1h call 7ff7c7300c78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f9 ff ff}
00b6h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
00b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bbh call 7ff7c7300bf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 f8 ff ff}
00c0h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
00c2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c5h call 7ff7c7300c88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e f9 ff ff}
00cah nop                                     ; NOP || o32 90 || encoded[1]{90}
00cbh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00cfh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00d0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00d1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d2h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d3h ret                                     ; RET || C3 || encoded[1]{c3}
