------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> eval<byte>(BinaryBitLogicKind:byte kind, BitVector<byte> x, BitVector<byte> y)
; bbl_g0o_8u_8u[131] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 3b 01 00 00 8b c0 48 8d 0d b8 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff 00 00 00 e9 10 01 00 00 33 c0 e9 09 01 00 00 0f b6 c2 41 0f b6 d0 44 0f b6 c0 41 23 d0 0f b6 c2 e9 f3 00 00 00 0f b6 c2 41 0f b6 d0 44 0f b6 c0 41 23 d0 8b c2 f7 d0 0f b6 c0 e9 d9 00 00 00 0f b6 c2 41 0f b6 d0 44 0f b6 c0 41 0b d0 0f b6 c2 e9 c3}
; Capture completion code = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 0152h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 3b 01 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+1b8h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d b8 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
0034h jmp near ptr 0149h                      ; JMP rel32 || E9 cd || encoded[5]{e9 10 01 00 00}
0039h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003bh jmp near ptr 0149h                      ; JMP rel32 || E9 cd || encoded[5]{e9 09 01 00 00}
0040h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0043h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0047h movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
004bh and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
004eh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0051h jmp near ptr 0149h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f3 00 00 00}
0056h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0059h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
005dh movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
0061h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0064h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0066h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0068h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006bh jmp near ptr 0149h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d9 00 00 00}
0070h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0073h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0077h movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
007bh or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
007eh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0081h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e9 c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<sbyte> eval<sbyte>(BinaryBitLogicKind:byte kind, BitVector<sbyte> x, BitVector<sbyte> y)
; bbl_g0o_8i_8i[368] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 59 01 00 00 8b c0 48 8d 0d d8 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff e9 2e 01 00 00 33 c0 e9 27 01 00 00 48 0f be c2 49 0f be d0 4c 0f be c0 41 23 d0 48 0f be c2 e9 0f 01 00 00 48 0f be c2 49 0f be d0 4c 0f be c0 41 23 d0 8b c2 f7 d0 48 0f be c0 e9 f3 00 00 00 48 0f be c2 49 0f be d0 4c 0f be c0 41 0b d0 48 0f be c2 e9 db 00 00 00 48 0f be c2 49 0f be d0 4c 0f be c0 41 0b d0 8b c2 f7 d0 48 0f be c0 e9 bf 00 00 00 48 0f be c2 49 0f be d0 4c 0f be c0 41 33 d0 48 0f be c2 e9 a7 00 00 00 48 0f be c2 49 0f be d0 4c 0f be c0 41 33 d0 8b c2 f7 d0 48 0f be c0 e9 8b 00 00 00 48 0f be c2 e9 82 00 00 00 49 0f be c0 eb 7c 48 0f be c2 44 8b c0 41 f7 d0 49 0f be c0 eb 6c 49 0f be c0 8b d0 f7 d2 48 0f be c2 eb 5e 48 0f be c2 49 0f be d0 4c 0f be c0 8b c2 f7 d0 41 0b c0 48 0f be c0 eb 45 48 0f be c2 49 0f be d0 4c 0f be c0 c4 e2 38 f2 c2 48 0f be c0 eb 2e 48 0f be c2 49 0f be d0 4c 0f be c0 41 8b c0 f7 d0 0b c2 48 0f be c0 eb 15 48 0f be c2 49 0f be c8 48 0f be c0 c4 e2 70 f2 c0 48 0f be c0 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 0170h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 59 01 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+1d8h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d d8 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0034h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2e 01 00 00}
0039h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003bh jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 27 01 00 00}
0040h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0044h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0048h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
004ch and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
004fh movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0053h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0f 01 00 00}
0058h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
005ch movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0060h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
0064h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0067h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0069h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
006bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
006fh jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f3 00 00 00}
0074h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0078h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
007ch movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
0080h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0083h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0087h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 db 00 00 00}
008ch movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0090h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0094h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
0098h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
009bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
009dh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
009fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
00a3h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bf 00 00 00}
00a8h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00ach movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
00b0h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
00b4h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
00b7h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00bbh jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a7 00 00 00}
00c0h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00c4h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
00c8h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
00cch xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
00cfh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00d1h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00d3h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
00d7h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8b 00 00 00}
00dch movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00e0h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 82 00 00 00}
00e5h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
00e9h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 7c}
00ebh movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00efh mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
00f2h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00f5h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
00f9h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 6c}
00fbh movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
00ffh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0101h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0103h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0107h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0109h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
010dh movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0111h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
0115h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0117h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0119h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
011ch movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0120h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 45}
0122h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0126h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
012ah movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
012eh andn eax,r8d,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 38 f2 c2}
0133h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0137h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 2e}
0139h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
013dh movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0141h movsx r8,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c0}
0145h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0148h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
014ah or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
014ch movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0150h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
0152h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0156h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
015ah movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
015eh andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
0163h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0167h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
016bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
016ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
016dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
016eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
016fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, BitVector<ushort> x, BitVector<ushort> y)
; bbl_g0o_16u_16u[131] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 3b 01 00 00 8b c0 48 8d 0d b8 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff 00 00 e9 10 01 00 00 33 c0 e9 09 01 00 00 0f b7 c2 41 0f b7 d0 44 0f b7 c0 41 23 d0 0f b7 c2 e9 f3 00 00 00 0f b7 c2 41 0f b7 d0 44 0f b7 c0 41 23 d0 8b c2 f7 d0 0f b7 c0 e9 d9 00 00 00 0f b7 c2 41 0f b7 d0 44 0f b7 c0 41 0b d0 0f b7 c2 e9 c3}
; Capture completion code = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 0152h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 3b 01 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+1b8h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d b8 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
0034h jmp near ptr 0149h                      ; JMP rel32 || E9 cd || encoded[5]{e9 10 01 00 00}
0039h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003bh jmp near ptr 0149h                      ; JMP rel32 || E9 cd || encoded[5]{e9 09 01 00 00}
0040h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0043h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0047h movzx r8d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c0}
004bh and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
004eh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0051h jmp near ptr 0149h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f3 00 00 00}
0056h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0059h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
005dh movzx r8d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c0}
0061h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0064h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0066h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0068h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
006bh jmp near ptr 0149h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d9 00 00 00}
0070h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0073h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0077h movzx r8d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c0}
007bh or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
007eh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0081h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e9 c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<short> eval<short>(BinaryBitLogicKind:byte kind, BitVector<short> x, BitVector<short> y)
; bbl_g0o_16i_16i[368] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 59 01 00 00 8b c0 48 8d 0d d8 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff e9 2e 01 00 00 33 c0 e9 27 01 00 00 48 0f bf c2 49 0f bf d0 4c 0f bf c0 41 23 d0 48 0f bf c2 e9 0f 01 00 00 48 0f bf c2 49 0f bf d0 4c 0f bf c0 41 23 d0 8b c2 f7 d0 48 0f bf c0 e9 f3 00 00 00 48 0f bf c2 49 0f bf d0 4c 0f bf c0 41 0b d0 48 0f bf c2 e9 db 00 00 00 48 0f bf c2 49 0f bf d0 4c 0f bf c0 41 0b d0 8b c2 f7 d0 48 0f bf c0 e9 bf 00 00 00 48 0f bf c2 49 0f bf d0 4c 0f bf c0 41 33 d0 48 0f bf c2 e9 a7 00 00 00 48 0f bf c2 49 0f bf d0 4c 0f bf c0 41 33 d0 8b c2 f7 d0 48 0f bf c0 e9 8b 00 00 00 48 0f bf c2 e9 82 00 00 00 49 0f bf c0 eb 7c 48 0f bf c2 44 8b c0 41 f7 d0 49 0f bf c0 eb 6c 49 0f bf c0 8b d0 f7 d2 48 0f bf c2 eb 5e 48 0f bf c2 49 0f bf d0 4c 0f bf c0 8b c2 f7 d0 41 0b c0 48 0f bf c0 eb 45 48 0f bf c2 49 0f bf d0 4c 0f bf c0 c4 e2 38 f2 c2 48 0f bf c0 eb 2e 48 0f bf c2 49 0f bf d0 4c 0f bf c0 41 8b c0 f7 d0 0b c2 48 0f bf c0 eb 15 48 0f bf c2 49 0f bf c8 48 0f bf c0 c4 e2 70 f2 c0 48 0f bf c0 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 0170h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 59 01 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+1d8h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d d8 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0034h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2e 01 00 00}
0039h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003bh jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 27 01 00 00}
0040h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0044h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0048h movsx r8,ax                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c0}
004ch and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
004fh movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0053h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0f 01 00 00}
0058h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
005ch movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0060h movsx r8,ax                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c0}
0064h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0067h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0069h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
006bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
006fh jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f3 00 00 00}
0074h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0078h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
007ch movsx r8,ax                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c0}
0080h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0083h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0087h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 db 00 00 00}
008ch movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0090h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0094h movsx r8,ax                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c0}
0098h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
009bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
009dh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
009fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00a3h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bf 00 00 00}
00a8h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00ach movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
00b0h movsx r8,ax                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c0}
00b4h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
00b7h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00bbh jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a7 00 00 00}
00c0h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00c4h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
00c8h movsx r8,ax                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c0}
00cch xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
00cfh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00d1h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00d3h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00d7h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8b 00 00 00}
00dch movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00e0h jmp near ptr 0167h                      ; JMP rel32 || E9 cd || encoded[5]{e9 82 00 00 00}
00e5h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
00e9h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 7c}
00ebh movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00efh mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
00f2h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00f5h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
00f9h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 6c}
00fbh movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
00ffh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0101h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0103h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0107h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0109h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
010dh movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0111h movsx r8,ax                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c0}
0115h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0117h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0119h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
011ch movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0120h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 45}
0122h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0126h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
012ah movsx r8,ax                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c0}
012eh andn eax,r8d,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 38 f2 c2}
0133h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0137h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 2e}
0139h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
013dh movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0141h movsx r8,ax                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c0}
0145h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0148h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
014ah or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
014ch movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0150h jmp short 0167h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
0152h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0156h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
015ah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
015eh andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
0163h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0167h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
016bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
016ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
016dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
016eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
016fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> eval<uint>(BinaryBitLogicKind:byte kind, BitVector<uint> x, BitVector<uint> y)
; bbl_g0o_32u_32u[202] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 b3 00 00 00 8b c0 48 8d 0d 30 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff e9 88 00 00 00 33 c0 e9 81 00 00 00 41 23 d0 8b c2 eb 7a 8b c2 41 8b d0 23 c2 f7 d0 eb 6f 8b c2 41 8b d0 0b c2 eb 66 8b c2 41 8b d0 0b c2 f7 d0 eb 5b 8b c2 41 8b d0 33 c2 eb 52 8b c2 41 8b d0 33 c2 f7 d0 eb 47 8b c2 eb 43 41 8b c0 eb 3e 8b c2 f7 d0 eb 38 41 8b c0 f7 d0 eb 31 8b c2 41 8b d0 44 8b c2 41 f7 d0 41 0b c0 eb 21 8b c2 41 8b d0 c4 e2 78 f2 c2 eb 15 8b c2 41 8b d0 f7 d0 0b c2 eb 0a 8b c2 41 8b c8 c4 e2 70 f2 c0 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 00cah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b3 00 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+130h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 30 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0034h jmp near ptr 00c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 88 00 00 00}
0039h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003bh jmp near ptr 00c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 81 00 00 00}
0040h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0043h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0045h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 7a}
0047h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0049h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
004ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
004eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0050h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 6f}
0052h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0054h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0057h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0059h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 66}
005bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
005dh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0060h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0062h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0064h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 5b}
0066h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0068h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
006bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
006dh jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
006fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0071h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0074h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0076h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0078h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
007ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007ch jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
007eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0081h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0083h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0085h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0087h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0089h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
008ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
008eh jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 31}
0090h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0092h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0095h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0098h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
009bh or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
009eh jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 21}
00a0h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00a2h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
00a5h andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
00aah jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
00ach mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00aeh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
00b1h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00b3h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00b5h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
00b7h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00b9h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
00bch andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
00c1h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00c5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c6h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<int> eval<int>(BinaryBitLogicKind:byte kind, BitVector<int> x, BitVector<int> y)
; bbl_g0o_32i_32i[202] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 b3 00 00 00 8b c0 48 8d 0d 30 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff e9 88 00 00 00 33 c0 e9 81 00 00 00 41 23 d0 8b c2 eb 7a 8b c2 41 8b d0 23 c2 f7 d0 eb 6f 8b c2 41 8b d0 0b c2 eb 66 8b c2 41 8b d0 0b c2 f7 d0 eb 5b 8b c2 41 8b d0 33 c2 eb 52 8b c2 41 8b d0 33 c2 f7 d0 eb 47 8b c2 eb 43 41 8b c0 eb 3e 8b c2 f7 d0 eb 38 41 8b c0 f7 d0 eb 31 8b c2 41 8b d0 44 8b c2 41 f7 d0 41 0b c0 eb 21 8b c2 41 8b d0 c4 e2 78 f2 c2 eb 15 8b c2 41 8b d0 f7 d0 0b c2 eb 0a 8b c2 41 8b c8 c4 e2 70 f2 c0 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 00cah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b3 00 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+130h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 30 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0034h jmp near ptr 00c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 88 00 00 00}
0039h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003bh jmp near ptr 00c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 81 00 00 00}
0040h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0043h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0045h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 7a}
0047h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0049h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
004ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
004eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0050h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 6f}
0052h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0054h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0057h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0059h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 66}
005bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
005dh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0060h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0062h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0064h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 5b}
0066h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0068h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
006bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
006dh jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
006fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0071h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0074h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0076h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0078h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
007ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007ch jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
007eh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0081h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0083h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0085h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0087h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0089h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
008ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
008eh jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 31}
0090h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0092h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0095h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0098h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
009bh or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
009eh jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 21}
00a0h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00a2h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
00a5h andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
00aah jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
00ach mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00aeh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
00b1h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00b3h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00b5h jmp short 00c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
00b7h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00b9h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
00bch andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
00c1h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00c5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c6h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitVector<ulong> x, BitVector<ulong> y)
; bbl_g0o_64u_64u[237] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 d6 00 00 00 8b c0 48 8d 0d 50 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 48 b8 ff ff ff ff ff ff ff ff e9 a6 00 00 00 33 c0 e9 9f 00 00 00 49 23 d0 48 8b c2 e9 94 00 00 00 48 8b c2 49 8b d0 48 23 c2 48 f7 d0 e9 83 00 00 00 48 8b c2 49 8b d0 48 0b c2 eb 78 48 8b c2 49 8b d0 48 0b c2 48 f7 d0 eb 6a 48 8b c2 49 8b d0 48 33 c2 eb 5f 48 8b c2 49 8b d0 48 33 c2 48 f7 d0 eb 51 48 8b c2 eb 4c 49 8b c0 eb 47 48 8b c2 48 f7 d0 eb 3f 49 8b c0 48 f7 d0 eb 37 48 8b c2 49 8b d0 4c 8b c2 49 f7 d0 49 0b c0 eb 26 48 8b c2 49 8b d0 c4 e2 f8 f2 c2 eb 19 48 8b c2 49 8b d0 48 f7 d0 48 0b c2 eb 0b 48 8b c2 49 8b c8 c4 e2 f0 f2 c0 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 00edh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 d6 00 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+150h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 50 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0039h jmp near ptr 00e4h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 00 00 00}
003eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0040h jmp near ptr 00e4h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9f 00 00 00}
0045h and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
0048h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
004bh jmp near ptr 00e4h                      ; JMP rel32 || E9 cd || encoded[5]{e9 94 00 00 00}
0050h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0053h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0056h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0059h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
005ch jmp near ptr 00e4h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
0061h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0064h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0067h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
006ah jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 78}
006ch mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
006fh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0072h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0075h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0078h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
007ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
007dh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0080h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0083h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 5f}
0085h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0088h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
008bh xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
008eh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0091h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 51}
0093h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0096h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0098h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
009bh jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
009dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00a0h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00a3h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
00a5h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
00a8h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00abh jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 37}
00adh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00b0h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00b3h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
00b6h not r8                                  ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d0}
00b9h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
00bch jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 26}
00beh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00c1h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00c4h andn rax,rax,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f8 f2 c2}
00c9h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
00cbh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00ceh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00d1h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00d4h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
00d7h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 0b}
00d9h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00dch mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
00dfh andn rax,rcx,rax                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 c0}
00e4h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00e8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00e9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00eah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00ebh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00ech ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<long> eval<long>(BinaryBitLogicKind:byte kind, BitVector<long> x, BitVector<long> y)
; bbl_g0o_64i_64i[237] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 d6 00 00 00 8b c0 48 8d 0d 50 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 48 b8 ff ff ff ff ff ff ff ff e9 a6 00 00 00 33 c0 e9 9f 00 00 00 49 23 d0 48 8b c2 e9 94 00 00 00 48 8b c2 49 8b d0 48 23 c2 48 f7 d0 e9 83 00 00 00 48 8b c2 49 8b d0 48 0b c2 eb 78 48 8b c2 49 8b d0 48 0b c2 48 f7 d0 eb 6a 48 8b c2 49 8b d0 48 33 c2 eb 5f 48 8b c2 49 8b d0 48 33 c2 48 f7 d0 eb 51 48 8b c2 eb 4c 49 8b c0 eb 47 48 8b c2 48 f7 d0 eb 3f 49 8b c0 48 f7 d0 eb 37 48 8b c2 49 8b d0 4c 8b c2 49 f7 d0 49 0b c0 eb 26 48 8b c2 49 8b d0 c4 e2 f8 f2 c2 eb 19 48 8b c2 49 8b d0 48 f7 d0 48 0b c2 eb 0b 48 8b c2 49 8b c8 c4 e2 f0 f2 c0 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000eh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0011h ja near ptr 00edh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 d6 00 00 00}
0017h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0019h lea rcx,[rip+150h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 50 01 00 00}
0020h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0023h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002ah add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002dh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002fh mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0039h jmp near ptr 00e4h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 00 00 00}
003eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0040h jmp near ptr 00e4h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9f 00 00 00}
0045h and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
0048h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
004bh jmp near ptr 00e4h                      ; JMP rel32 || E9 cd || encoded[5]{e9 94 00 00 00}
0050h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0053h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0056h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0059h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
005ch jmp near ptr 00e4h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
0061h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0064h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0067h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
006ah jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 78}
006ch mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
006fh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0072h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0075h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0078h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
007ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
007dh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0080h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0083h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 5f}
0085h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0088h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
008bh xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
008eh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0091h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 51}
0093h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0096h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0098h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
009bh jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
009dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00a0h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00a3h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
00a5h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
00a8h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00abh jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 37}
00adh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00b0h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00b3h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
00b6h not r8                                  ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d0}
00b9h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
00bch jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 26}
00beh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00c1h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00c4h andn rax,rax,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f8 f2 c2}
00c9h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
00cbh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00ceh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00d1h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00d4h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
00d7h jmp short 00e4h                         ; JMP rel8 || EB cb || encoded[2]{eb 0b}
00d9h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00dch mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
00dfh andn rax,rcx,rax                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 c0}
00e4h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00e8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00e9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00eah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00ebh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00ech ret                                     ; RET || C3 || encoded[1]{c3}