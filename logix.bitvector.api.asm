------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> eval<byte>(BinaryBitLogicKind:byte kind, BitVector<byte> x, BitVector<byte> y)
; eval_g[8u](BinaryBitLogicKind~8u)[131] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 3b 01 00 00 8b c0 48 8d 0d b8 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff 00 00 00 e9 10 01 00 00 33 c0 e9 09 01 00 00 0f b6 c2 41 0f b6 d0 44 0f b6 c0 41 23 d0 0f b6 c2 e9 f3 00 00 00 0f b6 c2 41 0f b6 d0 44 0f b6 c0 41 23 d0 8b c2 f7 d0 0f b6 c0 e9 d9 00 00 00 0f b6 c2 41 0f b6 d0 44 0f b6 c0 41 0b d0 0f b6 c2 e9 c3}
; TermCode = CTC_RET_Zx3
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
; BitVector<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, BitVector<ushort> x, BitVector<ushort> y)
; eval_g[16u](BinaryBitLogicKind~8u)[131] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 3b 01 00 00 8b c0 48 8d 0d b8 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff 00 00 e9 10 01 00 00 33 c0 e9 09 01 00 00 0f b7 c2 41 0f b7 d0 44 0f b7 c0 41 23 d0 0f b7 c2 e9 f3 00 00 00 0f b7 c2 41 0f b7 d0 44 0f b7 c0 41 23 d0 8b c2 f7 d0 0f b7 c0 e9 d9 00 00 00 0f b7 c2 41 0f b7 d0 44 0f b7 c0 41 0b d0 0f b7 c2 e9 c3}
; TermCode = CTC_RET_Zx3
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
; BitVector<uint> eval<uint>(BinaryBitLogicKind:byte kind, BitVector<uint> x, BitVector<uint> y)
; eval_g[32u](BinaryBitLogicKind~8u)[417] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 b3 00 00 00 8b c0 48 8d 0d 30 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff e9 88 00 00 00 33 c0 e9 81 00 00 00 41 23 d0 8b c2 eb 7a 8b c2 41 8b d0 23 c2 f7 d0 eb 6f 8b c2 41 8b d0 0b c2 eb 66 8b c2 41 8b d0 0b c2 f7 d0 eb 5b 8b c2 41 8b d0 33 c2 eb 52 8b c2 41 8b d0 33 c2 f7 d0 eb 47 8b c2 eb 43 41 8b c0 eb 3e 8b c2 f7 d0 eb 38 41 8b c0 f7 d0 eb 31 8b c2 41 8b d0 44 8b c2 41 f7 d0 41 0b c0 eb 21 8b c2 41 8b d0 c4 e2 78 f2 c2 eb 15 8b c2 41 8b d0 f7 d0 0b c2 eb 0a 8b c2 41 8b c8 c4 e2 70 f2 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 50 cc 85 c6 f7 7f 00 00 e8 47 15 d7 5e 48 8b f8 40 88 77 08 48 b9 d8 96 34 c6 f7 7f 00 00 e8 71 98 d1 5e 48 8b f0 48 b9 c0 af 5a c6 f7 7f 00 00 e8 1f 15 d7 5e 48 8b d8 b9 4c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 08 ae e9 5e 48 8b e8 48 8b ce e8 dd d4 25 ff 8b c8 e8 3e ac 25 ff 4c 8b c0 48 8b cd 48 8b d7 e8 70 e9 23 ff 48 8b d0 48 8b cb e8 2d 38 26 ff 48 8b cb e8 25 61 ce 5e cc 00 00 00 00 2f 00 00 00 36 00 00 00 ad 00 00 00 70 00 00 00 96 00 00 00 74 00 00 00 5c 00 00 00 48 00 00 00 51 00 00 00 65 00 00 00 7f 00 00 00 86 00 00 00 79 00 00 00 a2 00 00 00 3d 00 00 00 25 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
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
00cah mov rcx,7ff7c685cc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cc 85 c6 f7 7f 00 00}
00d4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 15 d7 5e}
00d9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00dch mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00e0h mov rcx,7ff7c63496d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 34 c6 f7 7f 00 00}
00eah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 98 d1 5e}
00efh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00f2h mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
00fch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 15 d7 5e}
0101h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0104h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0109h mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
0113h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 ae e9 5e}
0118h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
011bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
011eh call 7ff7c6392c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd d4 25 ff}
0123h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0125h call 7ff7c63903f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e ac 25 ff}
012ah mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
012dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0130h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0133h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 e9 23 ff}
0138h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
013bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013eh call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 38 26 ff}
0143h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0146h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 61 ce 5e}
014bh int 3                                   ; INT3 || CC || encoded[1]{cc}
014ch add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
014eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0150h (bad)                                   ; <invalid> || <invalid> || encoded[2]{2f 00}
0152h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0154h add ss:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{36 00 00}
0157h add [rbp+70000000h],ch                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 ad 00 00 00 70}
015dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
015fh add [rsi+74000000h],dl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 96 00 00 00 74}
0165h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0167h add [rax+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 00 00}
016bh add [rax],cl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 48 00}
016eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0170h push rcx                                ; PUSH r64 || 50+ro || encoded[1]{51}
0171h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0173h add [rbp],ah                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 65 00}
0176h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0178h jg short 017ah                          ; JG rel8 || 7F cb || encoded[2]{7f 00}
017ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
017ch xchg al,[rax]                           ; XCHG r/m8, r8 || 86 /r || encoded[2]{86 00}
017eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0180h jns short 0182h                         ; JNS rel8 || 79 cb || encoded[2]{79 00}
0182h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0184h mov [250000003d000000h],al              ; MOV moffs8, AL || A2 mo || encoded[9]{a2 00 00 00 3d 00 00 00 25}
018dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
018fh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0191h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
0197h xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0199h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
019ah add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
019dh jo short 019fh                          ; JO rel8 || 70 cb || encoded[2]{70 00}
019fh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitVector<ulong> x, BitVector<ulong> y)
; eval_g[64u](BinaryBitLogicKind~8u)[449] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 0f 0f 87 d6 00 00 00 8b c0 48 8d 0d 50 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 48 b8 ff ff ff ff ff ff ff ff e9 a6 00 00 00 33 c0 e9 9f 00 00 00 49 23 d0 48 8b c2 e9 94 00 00 00 48 8b c2 49 8b d0 48 23 c2 48 f7 d0 e9 83 00 00 00 48 8b c2 49 8b d0 48 0b c2 eb 78 48 8b c2 49 8b d0 48 0b c2 48 f7 d0 eb 6a 48 8b c2 49 8b d0 48 33 c2 eb 5f 48 8b c2 49 8b d0 48 33 c2 48 f7 d0 eb 51 48 8b c2 eb 4c 49 8b c0 eb 47 48 8b c2 48 f7 d0 eb 3f 49 8b c0 48 f7 d0 eb 37 48 8b c2 49 8b d0 4c 8b c2 49 f7 d0 49 0b c0 eb 26 48 8b c2 49 8b d0 c4 e2 f8 f2 c2 eb 19 48 8b c2 49 8b d0 48 f7 d0 48 0b c2 eb 0b 48 8b c2 49 8b c8 c4 e2 f0 f2 c0 48 83 c4 28 5b 5d 5e 5f c3 48 b9 50 cc 85 c6 f7 7f 00 00 e8 64 0f d7 5e 48 8b f8 40 88 77 08 48 b9 78 a6 34 c6 f7 7f 00 00 e8 8e 92 d1 5e 48 8b f0 48 b9 c0 af 5a c6 f7 7f 00 00 e8 3c 0f d7 5e 48 8b d8 b9 4c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 25 a8 e9 5e 48 8b e8 48 8b ce e8 fa ce 25 ff 8b c8 e8 5b a6 25 ff 4c 8b c0 48 8b cd 48 8b d7 e8 8d e3 23 ff 48 8b d0 48 8b cb e8 4a 32 26 ff 48 8b cb e8 42 5b ce 5e cc 00 34 00 00 00 3b 00 00 00 cf 00 00 00 89 00 00 00 b4 00 00 00 8e 00 00 00 70 00 00 00 57 00 00 00 62 00 00 00 7b 00 00 00 9b 00 00 00 a3 00 00 00 93 00 00 00 c1 00 00 00 46 00 00 00 25 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
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
00edh mov rcx,7ff7c685cc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cc 85 c6 f7 7f 00 00}
00f7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 0f d7 5e}
00fch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00ffh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0103h mov rcx,7ff7c634a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 34 c6 f7 7f 00 00}
010dh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 92 d1 5e}
0112h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0115h mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
011fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 0f d7 5e}
0124h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0127h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
012ch mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
0136h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 a8 e9 5e}
013bh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
013eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0141h call 7ff7c6392c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa ce 25 ff}
0146h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0148h call 7ff7c63903f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b a6 25 ff}
014dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0150h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0153h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0156h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d e3 23 ff}
015bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
015eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0161h call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 32 26 ff}
0166h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0169h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 5b ce 5e}
016eh int 3                                   ; INT3 || CC || encoded[1]{cc}
016fh add [rax+rax],dh                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 34 00}
0172h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0174h cmp eax,[rax]                           ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b 00}
0176h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0178h iretd                                   ; IRETD || o32 CF || encoded[1]{cf}
0179h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
017bh add [rcx-4c000000h],cl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 89 00 00 00 b4}
0181h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0183h add [rsi+70000000h],cl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 8e 00 00 00 70}
0189h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
018bh add [rdi],dl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 57 00}
018eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0190h (bad)                                   ; <invalid> || <invalid> || encoded[4]{62 00 00 00}
0194h jnp short 0196h                         ; JNP rel8 || 7B cb || encoded[2]{7b 00}
0196h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0198h wait                                    ; WAIT || 9B || encoded[1]{9b}
0199h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
019bh add [rbx-6d000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 a3 00 00 00 93}
01a1h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01a3h add cl,al                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 c1}
01a5h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01a7h add [rsi],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 46 00}
01aah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
01ach and eax,19000000h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 00 00 00 19}
01b1h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
01b7h xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
01b9h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
01bah add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
01bdh jo short 01bfh                          ; JO rel8 || 70 cb || encoded[2]{70 00}
01bfh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> evalspec<byte>(BinaryBitLogicKind:byte kind, BitVector<byte> x, BitVector<byte> y)
; evalspec_g[8u](BinaryBitLogicKind~8u)[321] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a3 00 00 00 8b c9 4c 8d 05 23 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff 00 00 00 eb 78 33 c0 eb 74 8b c8 e8 78 fc ff ff eb 6b 8b c8 e8 27 f9 ff ff eb 62 8b c8 e8 e6 fb ff ff eb 59 8b c8 e8 bd fb ff ff eb 50 8b c8 e8 f4 fb ff ff eb 47 8b c8 e8 8b fb ff ff eb 3e 0f b6 c0 eb 39 0f b6 c2 eb 34 8b c8 e8 30 f9 ff ff eb 2b 8b c8 e8 67 f9 ff ff eb 22 8b c8 e8 3e f9 ff ff eb 19 8b c8 e8 dd fb ff ff eb 10 8b c8 e8 ec f8 ff ff eb 07 8b c8 e8 eb fb ff ff 90 48 83 c4 28 5b 5d 5e 5f c3 48 b9 50 cc 85 c6 f7 7f 00 00 e8 b2 09 d7 5e 48 8b f8 40 88 77 08 48 b9 58 77 34 c6 f7 7f 00 00 e8 dc 8c d1 5e 48 8b f0 48 b9 c0 af 5a c6 f7 7f 00 00 e8 8a 09 d7 5e 48 8b d8 b9 4c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 73 a2 e9 5e 48 8b e8 48 8b ce e8 48 c9 25 ff 8b c8 e8 a9 a0 25 ff 4c 8b c0 48 8b cd 48 8b d7 e8 db dd 23 ff 48 8b d0 48 8b cb e8 98 2c 26 ff 48 8b cb e8 90 55 ce 5e cc}
; TermCode = CTC_Zx7
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
0043h call 7ff7c7135ef0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 fc ff ff}
0048h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 6b}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c7135ba8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 f9 ff ff}
0051h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 62}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c7135e70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 fb ff ff}
005ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 59}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c7135e50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd fb ff ff}
0063h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 50}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c7135e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 fb ff ff}
006ch jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c7135e30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b fb ff ff}
0075h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0077h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
007ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
007ch movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
007fh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0081h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0083h call 7ff7c7135be8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 f9 ff ff}
0088h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
008ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008ch call 7ff7c7135c28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 f9 ff ff}
0091h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0093h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0095h call 7ff7c7135c08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e f9 ff ff}
009ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009eh call 7ff7c7135eb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd fb ff ff}
00a3h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c7135bc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec f8 ff ff}
00ach jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00aeh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b0h call 7ff7c7135ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb fb ff ff}
00b5h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b6h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bdh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00beh ret                                     ; RET || C3 || encoded[1]{c3}
00bfh mov rcx,7ff7c685cc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cc 85 c6 f7 7f 00 00}
00c9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 09 d7 5e}
00ceh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d1h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d5h mov rcx,7ff7c6347758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 34 c6 f7 7f 00 00}
00dfh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 8c d1 5e}
00e4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e7h mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
00f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 09 d7 5e}
00f6h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00f9h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00feh mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
0108h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 a2 e9 5e}
010dh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0110h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0113h call 7ff7c6392c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 c9 25 ff}
0118h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
011ah call 7ff7c63903f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 a0 25 ff}
011fh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0122h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0125h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0128h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db dd 23 ff}
012dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0130h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0133h call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 2c 26 ff}
0138h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 55 ce 5e}
0140h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> evalspec<ushort>(BinaryBitLogicKind:byte kind, BitVector<ushort> x, BitVector<ushort> y)
; evalspec_g[16u](BinaryBitLogicKind~8u)[321] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a3 00 00 00 8b c9 4c 8d 05 23 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff 00 00 eb 78 33 c0 eb 74 8b c8 e8 b8 fb ff ff eb 6b 8b c8 e8 ff fa ff ff eb 62 8b c8 e8 66 fb ff ff eb 59 8b c8 e8 4d fb ff ff eb 50 8b c8 e8 64 fb ff ff eb 47 8b c8 e8 2b fb ff ff eb 3e 0f b7 c0 eb 39 0f b7 c2 eb 34 8b c8 e8 e8 fa ff ff eb 2b 8b c8 e8 ff fa ff ff eb 22 8b c8 e8 e6 fa ff ff eb 19 8b c8 e8 3d fb ff ff eb 10 8b c8 e8 b4 fa ff ff eb 07 8b c8 e8 3b fb ff ff 90 48 83 c4 28 5b 5d 5e 5f c3 48 b9 50 cc 85 c6 f7 7f 00 00 e8 02 08 d7 5e 48 8b f8 40 88 77 08 48 b9 38 87 34 c6 f7 7f 00 00 e8 2c 8b d1 5e 48 8b f0 48 b9 c0 af 5a c6 f7 7f 00 00 e8 da 07 d7 5e 48 8b d8 b9 4c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 c3 a0 e9 5e 48 8b e8 48 8b ce e8 98 c7 25 ff 8b c8 e8 f9 9e 25 ff 4c 8b c0 48 8b cd 48 8b d7 e8 2b dc 23 ff 48 8b d0 48 8b cb e8 e8 2a 26 ff 48 8b cb e8 e0 53 ce 5e cc}
; TermCode = CTC_Zx7
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
0043h call 7ff7c7135fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 fb ff ff}
0048h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 6b}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c7135f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff fa ff ff}
0051h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 62}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c7135fa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 fb ff ff}
005ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 59}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c7135f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d fb ff ff}
0063h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 50}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c7135fb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 fb ff ff}
006ch jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c7135f80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b fb ff ff}
0075h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0077h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
007ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
007ch movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
007fh jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0081h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0083h call 7ff7c7135f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 fa ff ff}
0088h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
008ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008ch call 7ff7c7135f70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff fa ff ff}
0091h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0093h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0095h call 7ff7c7135f60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 fa ff ff}
009ah jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009eh call 7ff7c7135fc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d fb ff ff}
00a3h jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c7135f40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 fa ff ff}
00ach jmp short 00b5h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00aeh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b0h call 7ff7c7135fd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b fb ff ff}
00b5h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b6h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bdh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00beh ret                                     ; RET || C3 || encoded[1]{c3}
00bfh mov rcx,7ff7c685cc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cc 85 c6 f7 7f 00 00}
00c9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 08 d7 5e}
00ceh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d1h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d5h mov rcx,7ff7c6348738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 34 c6 f7 7f 00 00}
00dfh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 8b d1 5e}
00e4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e7h mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
00f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 07 d7 5e}
00f6h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00f9h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00feh mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
0108h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 a0 e9 5e}
010dh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0110h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0113h call 7ff7c6392c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 c7 25 ff}
0118h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
011ah call 7ff7c63903f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 9e 25 ff}
011fh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0122h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0125h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0128h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b dc 23 ff}
012dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0130h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0133h call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 2a 26 ff}
0138h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 53 ce 5e}
0140h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> evalspec<uint>(BinaryBitLogicKind:byte kind, BitVector<uint> x, BitVector<uint> y)
; evalspec_g[32u](BinaryBitLogicKind~8u)[401] = {57 56 55 53 48 83 ec 28 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 9f 00 00 00 8b c9 4c 8d 05 1b 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff ff ff eb 74 33 c0 eb 70 8b c8 e8 d8 fa ff ff eb 67 8b c8 e8 1f fa ff ff eb 5e 8b c8 e8 86 fa ff ff eb 55 8b c8 e8 6d fa ff ff eb 4c 8b c8 e8 84 fa ff ff eb 43 8b c8 e8 4b fa ff ff eb 3a eb 38 8b c2 eb 34 8b c8 e8 0c fa ff ff eb 2b 8b c8 e8 23 fa ff ff eb 22 8b c8 e8 0a fa ff ff eb 19 8b c8 e8 61 fa ff ff eb 10 8b c8 e8 d8 f9 ff ff eb 07 8b c8 e8 5f fa ff ff 90 48 83 c4 28 5b 5d 5e 5f c3 48 b9 50 cc 85 c6 f7 7f 00 00 e8 56 06 d7 5e 48 8b f8 40 88 77 08 48 b9 d8 96 34 c6 f7 7f 00 00 e8 80 89 d1 5e 48 8b f0 48 b9 c0 af 5a c6 f7 7f 00 00 e8 2e 06 d7 5e 48 8b d8 b9 4c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 17 9f e9 5e 48 8b e8 48 8b ce e8 ec c5 25 ff 8b c8 e8 4d 9d 25 ff 4c 8b c0 48 8b cd 48 8b d7 e8 7f da 23 ff 48 8b d0 48 8b cb e8 3c 29 26 ff 48 8b cb e8 34 52 ce 5e cc 00 00 00 2e 00 00 00 32 00 00 00 9b 00 00 00 68 00 00 00 89 00 00 00 6a 00 00 00 56 00 00 00 44 00 00 00 4d 00 00 00 5f 00 00 00 77 00 00 00 80 00 00 00 6e 00 00 00 92 00 00 00 3b 00 00 00 27 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
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
0043h call 7ff7c71360b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 fa ff ff}
0048h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 67}
004ah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004ch call 7ff7c7136000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f fa ff ff}
0051h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0053h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0055h call 7ff7c7136070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fa ff ff}
005ah jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
005ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005eh call 7ff7c7136060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d fa ff ff}
0063h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0065h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0067h call 7ff7c7136080h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 fa ff ff}
006ch jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
006eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0070h call 7ff7c7136050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b fa ff ff}
0075h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0077h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0079h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007bh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
007dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
007fh call 7ff7c7136020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c fa ff ff}
0084h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
0086h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0088h call 7ff7c7136040h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 fa ff ff}
008dh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
008fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0091h call 7ff7c7136030h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a fa ff ff}
0096h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
0098h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009ah call 7ff7c7136090h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 fa ff ff}
009fh jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a1h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a3h call 7ff7c7136010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 f9 ff ff}
00a8h jmp short 00b1h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00aah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00ach call 7ff7c71360a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f fa ff ff}
00b1h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b2h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00b6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bah ret                                     ; RET || C3 || encoded[1]{c3}
00bbh mov rcx,7ff7c685cc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cc 85 c6 f7 7f 00 00}
00c5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 06 d7 5e}
00cah mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00cdh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d1h mov rcx,7ff7c63496d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 34 c6 f7 7f 00 00}
00dbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 89 d1 5e}
00e0h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e3h mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
00edh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 06 d7 5e}
00f2h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00f5h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00fah mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
0104h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 9f e9 5e}
0109h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
010ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010fh call 7ff7c6392c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec c5 25 ff}
0114h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0116h call 7ff7c63903f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 9d 25 ff}
011bh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
011eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0121h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0124h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f da 23 ff}
0129h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
012ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
012fh call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 29 26 ff}
0134h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0137h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 52 ce 5e}
013ch int 3                                   ; INT3 || CC || encoded[1]{cc}
013dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
013fh add [rsi],ch                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 2e}
0141h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
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
017dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
017fh add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 19}
0181h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
0187h xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
0189h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
018ah add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
018dh jo short 018fh                          ; JO rel8 || 70 cb || encoded[2]{70 00}
018fh (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> evalspec<ulong>(BinaryBitLogicKind:byte kind, BitVector<ulong> x, BitVector<ulong> y)
; evalspec_g[64u](BinaryBitLogicKind~8u)[425] = {57 56 55 53 48 83 ec 28 8b f1 48 8b c2 49 8b d0 40 0f b6 ce 83 f9 0f 0f 87 b7 00 00 00 8b c9 4c 8d 05 32 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 48 b8 ff ff ff ff ff ff ff ff e9 84 00 00 00 33 c0 e9 7d 00 00 00 48 8b c8 e8 fb f9 ff ff eb 73 48 8b c8 e8 41 f9 ff ff eb 69 48 8b c8 e8 a7 f9 ff ff eb 5f 48 8b c8 e8 8d f9 ff ff eb 55 48 8b c8 e8 a3 f9 ff ff eb 4b 48 8b c8 e8 69 f9 ff ff eb 41 eb 3f 48 8b c2 eb 3a 48 8b c8 e8 28 f9 ff ff eb 30 48 8b c8 e8 3e f9 ff ff eb 26 48 8b c8 e8 24 f9 ff ff eb 1c 48 8b c8 e8 7a f9 ff ff eb 12 48 8b c8 e8 f0 f8 ff ff eb 08 48 8b c8 e8 76 f9 ff ff 90 48 83 c4 28 5b 5d 5e 5f c3 48 b9 50 cc 85 c6 f7 7f 00 00 e8 9d 04 d7 5e 48 8b f8 40 88 77 08 48 b9 78 a6 34 c6 f7 7f 00 00 e8 c7 87 d1 5e 48 8b f0 48 b9 c0 af 5a c6 f7 7f 00 00 e8 75 04 d7 5e 48 8b d8 b9 4c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 5e 9d e9 5e 48 8b e8 48 8b ce e8 33 c4 25 ff 8b c8 e8 94 9b 25 ff 4c 8b c0 48 8b cd 48 8b d7 e8 c6 d8 23 ff 48 8b d0 48 8b cb e8 83 27 26 ff 48 8b cb e8 7b 50 ce 5e cc 00 00 36 00 00 00 3d 00 00 00 b2 00 00 00 79 00 00 00 9e 00 00 00 7b 00 00 00 65 00 00 00 51 00 00 00 5b 00 00 00 6f 00 00 00 8a 00 00 00 94 00 00 00 80 00 00 00 a8 00 00 00 47 00 00 00 27 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
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
0050h call 7ff7c7136180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb f9 ff ff}
0055h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 73}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff7c71360d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 f9 ff ff}
005fh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 69}
0061h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0064h call 7ff7c7136140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 f9 ff ff}
0069h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 5f}
006bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006eh call 7ff7c7136130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d f9 ff ff}
0073h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0075h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0078h call 7ff7c7136150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 f9 ff ff}
007dh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
007fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0082h call 7ff7c7136120h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f9 ff ff}
0087h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 41}
0089h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
008bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
008eh jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0090h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0093h call 7ff7c71360f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 f9 ff ff}
0098h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 30}
009ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
009dh call 7ff7c7136110h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e f9 ff ff}
00a2h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 26}
00a4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a7h call 7ff7c7136100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 f9 ff ff}
00ach jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
00aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b1h call 7ff7c7136160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a f9 ff ff}
00b6h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
00b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bbh call 7ff7c71360e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 f8 ff ff}
00c0h jmp short 00cah                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
00c2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c5h call 7ff7c7136170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 f9 ff ff}
00cah nop                                     ; NOP || o32 90 || encoded[1]{90}
00cbh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00cfh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00d0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00d1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d2h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d3h ret                                     ; RET || C3 || encoded[1]{c3}
00d4h mov rcx,7ff7c685cc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cc 85 c6 f7 7f 00 00}
00deh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 04 d7 5e}
00e3h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00e6h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00eah mov rcx,7ff7c634a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 34 c6 f7 7f 00 00}
00f4h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 87 d1 5e}
00f9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00fch mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
0106h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 04 d7 5e}
010bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
010eh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0113h mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
011dh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 9d e9 5e}
0122h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0125h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0128h call 7ff7c6392c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 c4 25 ff}
012dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
012fh call 7ff7c63903f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 9b 25 ff}
0134h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0137h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
013ah mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
013dh call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 d8 23 ff}
0142h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0145h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0148h call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 27 26 ff}
014dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0150h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 50 ce 5e}
0155h int 3                                   ; INT3 || CC || encoded[1]{cc}
0156h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0158h add ss:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{36 00 00}
015bh add [rip-4e000000h],bh                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 3d 00 00 00 b2}
0161h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0163h add [rcx],bh                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 79 00}
0166h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0168h sahf                                    ; SAHF || 9E || encoded[1]{9e}
0169h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
016bh add [rbx],bh                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 7b 00}
016eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0170h add gs:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{65 00 00}
0173h add [rcx],dl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 51 00}
0176h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0178h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0179h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
017bh add [rdi],ch                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 6f 00}
017eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0180h mov al,[rax]                            ; MOV r8, r/m8 || 8A /r || encoded[2]{8a 00}
0182h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0184h xchg esp,eax                            ; XCHG r32, EAX || o32 90+rd || encoded[1]{94}
0185h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0187h add [rax-58000000h],al                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 80 00 00 00 a8}
018dh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
018fh add [rdi],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 47 00}
0192h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0194h (bad)                                   ; <invalid> || <invalid> || encoded[2]{27 00}
0196h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0198h sbb [rax],ecx                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 08}
019ah add eax,4420800h                        ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 00 08 42 04}
019fh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
01a1h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
01a2h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
01a5h jo short 01a7h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
01a7h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<byte>> lookup<byte>(BinaryBitLogicKind:byte kind)
; lookup_g[8u](BinaryBitLogicKind~8u)[1273] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 32 fe d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 63 ef d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 32 13 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 f3 fd d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 ef d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 38 13 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 b4 fd d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e5 ee d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 38 13 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 75 fd d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a6 ee d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 32 13 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 36 fd d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 67 ee d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 37 13 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 f7 fc d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 28 ee d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 37 13 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 b8 fc d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e9 ed d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 38 13 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 79 fc d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 aa ed d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 37 13 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 3a fc d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6b ed d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 38 13 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 fb fb d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2c ed d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 38 13 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 bc fb d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ed ec d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 33 13 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 7d fb d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ae ec d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 37 13 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 3e fb d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6f ec d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 37 13 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 ff fa d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 30 ec d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 38 13 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 c3 fa d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f4 eb d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 33 13 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 c8 dc 39 c7 f7 7f 00 00 e8 87 fa d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b8 eb d6 5e 48 b8 80 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 98 38 13 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 50 cc 85 c6 f7 7f 00 00 e8 41 fa d6 5e 48 8b f8 40 88 77 08 48 b9 58 77 34 c6 f7 7f 00 00 e8 6b 7d d1 5e 48 8b f0 48 b9 c0 af 5a c6 f7 7f 00 00 e8 19 fa d6 5e 48 8b d8 b9 4c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 02 93 e9 5e 48 8b e8 48 8b ce e8 d7 b9 25 ff 8b c8 e8 38 91 25 ff 4c 8b c0 48 8b cd 48 8b d7 e8 6a ce 23 ff 48 8b d0 48 8b cb e8 27 1d 26 ff 48 8b cb e8 1f 46 ce 5e cc 00 00 00 00 00 00 64 00 00 00 a3 00 00 00 d0 03 00 00 1d 02 00 00 58 03 00 00 5c 02 00 00 9f 01 00 00 21 01 00 00 60 01 00 00 de 01 00 00 da 02 00 00 19 03 00 00 9b 02 00 00 94 03 00 00 e2 00 00 00 25 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 fe d6 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 ef d6 5e}
004dh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c71332c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 32 13 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fd d6 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ef d6 5e}
008ch mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c71338d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 38 13 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 fd d6 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ee d6 5e}
00cbh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c71338b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 38 13 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 fd d6 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 ee d6 5e}
010ah mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c71332e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 32 13 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 fd d6 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 ee d6 5e}
0149h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c71337f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 37 13 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 fc d6 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 ee d6 5e}
0188h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c71337d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 37 13 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 fc d6 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 ed d6 5e}
01c7h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7133818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 38 13 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 fc d6 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa ed d6 5e}
0206h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c71337b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 37 13 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a fc d6 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b ed d6 5e}
0245h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7133878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 38 13 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb fb d6 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c ed d6 5e}
0284h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c7133838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 38 13 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc fb d6 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed ec d6 5e}
02c3h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7133328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 33 13 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d fb d6 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae ec d6 5e}
0302h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7133798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 37 13 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e fb d6 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f ec d6 5e}
0341h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7133778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 37 13 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff fa d6 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 ec d6 5e}
0380h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7133858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 38 13 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 fa d6 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 eb d6 5e}
03bch mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7133308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 33 13 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c739dcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 39 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 fa d6 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 eb d6 5e}
03f8h mov rax,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 df 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7133898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 38 13 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
0420h mov rcx,7ff7c685cc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cc 85 c6 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 fa d6 5e}
042fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0432h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0436h mov rcx,7ff7c6347758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 34 c6 f7 7f 00 00}
0440h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 7d d1 5e}
0445h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0448h mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
0452h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 fa d6 5e}
0457h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
045ah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
045fh mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
0469h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 93 e9 5e}
046eh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0471h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0474h call 7ff7c6392c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 b9 25 ff}
0479h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
047bh call 7ff7c63903f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 91 25 ff}
0480h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0483h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0486h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0489h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a ce 23 ff}
048eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0491h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0494h call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 1d 26 ff}
0499h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
049ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 46 ce 5e}
04a1h int 3                                   ; INT3 || CC || encoded[1]{cc}
04a2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a4h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a8h add fs:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{64 00 00}
04abh add [rbx-30000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 a3 00 00 00 d0}
04b1h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
04b3h add [rip+58000002h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 1d 02 00 00 58}
04b9h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
04bbh add [rdx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 02 00}
04bfh add [rdi+21000001h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 9f 01 00 00 21}
04c5h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
04c7h add [rax+1],ah                          ; ADD r/m8, r8 || 00 /r || encoded[3]{00 60 01}
04cah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04cch fiadd word ptr [rcx]                    ; FIADD m16int || DE /0 || encoded[2]{de 01}
04ceh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d0h fiadd dword ptr [rdx]                   ; FIADD m32int || DA /0 || encoded[2]{da 02}
04d2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d4h sbb [rbx],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 03}
04d6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d8h wait                                    ; WAIT || 9B || encoded[1]{9b}
04d9h add al,[rax]                            ; ADD r8, r/m8 || 02 /r || encoded[2]{02 00}
04dbh add [rbx+rax+0e20000h],dl               ; ADD r/m8, r8 || 00 /r || encoded[7]{00 94 03 00 00 e2 00}
04e2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04e4h and eax,19000000h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 00 00 00 19}
04e9h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
04efh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
04f1h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
04f2h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
04f5h jo short 04f7h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
04f7h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<ushort>> lookup<ushort>(BinaryBitLogicKind:byte kind)
; lookup_g[16u](BinaryBitLogicKind~8u)[1273] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 38 e5 39 c7 f7 7f 00 00 e8 22 f9 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 53 ea d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 4d 13 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 38 e5 39 c7 f7 7f 00 00 e8 e3 f8 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 14 ea d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 4d 13 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 38 e5 39 c7 f7 7f 00 00 e8 a4 f8 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d5 e9 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 4d 13 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 38 e5 39 c7 f7 7f 00 00 e8 65 f8 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 96 e9 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 4d 13 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 38 e5 39 c7 f7 7f 00 00 e8 26 f8 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 57 e9 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 4d 13 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 38 e5 39 c7 f7 7f 00 00 e8 e7 f7 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 18 e9 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 4d 13 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 38 e5 39 c7 f7 7f 00 00 e8 a8 f7 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d9 e8 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 4d 13 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 38 e5 39 c7 f7 7f 00 00 e8 69 f7 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9a e8 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 4d 13 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 38 e5 39 c7 f7 7f 00 00 e8 2a f7 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5b e8 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 4d 13 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 38 e5 39 c7 f7 7f 00 00 e8 eb f6 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1c e8 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 4d 13 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 38 e5 39 c7 f7 7f 00 00 e8 ac f6 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 dd e7 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 4d 13 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 38 e5 39 c7 f7 7f 00 00 e8 6d f6 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9e e7 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 4d 13 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 38 e5 39 c7 f7 7f 00 00 e8 2e f6 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5f e7 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 4d 13 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 38 e5 39 c7 f7 7f 00 00 e8 ef f5 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 20 e7 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 4d 13 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 38 e5 39 c7 f7 7f 00 00 e8 b3 f5 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e4 e6 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 4d 13 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 38 e5 39 c7 f7 7f 00 00 e8 77 f5 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a8 e6 d6 5e 48 b8 80 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 d8 4d 13 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 50 cc 85 c6 f7 7f 00 00 e8 31 f5 d6 5e 48 8b f8 40 88 77 08 48 b9 38 87 34 c6 f7 7f 00 00 e8 5b 78 d1 5e 48 8b f0 48 b9 c0 af 5a c6 f7 7f 00 00 e8 09 f5 d6 5e 48 8b d8 b9 4c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 f2 8d e9 5e 48 8b e8 48 8b ce e8 c7 b4 25 ff 8b c8 e8 28 8c 25 ff 4c 8b c0 48 8b cd 48 8b d7 e8 5a c9 23 ff 48 8b d0 48 8b cb e8 17 18 26 ff 48 8b cb e8 0f 41 ce 5e cc 00 00 00 00 00 00 64 00 00 00 a3 00 00 00 d0 03 00 00 1d 02 00 00 58 03 00 00 5c 02 00 00 9f 01 00 00 21 01 00 00 60 01 00 00 de 01 00 00 da 02 00 00 19 03 00 00 9b 02 00 00 94 03 00 00 e2 00 00 00 25 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 f9 d6 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 ea d6 5e}
004dh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7134d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 4d 13 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 f8 d6 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 ea d6 5e}
008ch mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7134df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 4d 13 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 f8 d6 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 e9 d6 5e}
00cbh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7134de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 4d 13 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 f8 d6 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 e9 d6 5e}
010ah mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7134d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4d 13 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 f8 d6 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 e9 d6 5e}
0149h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7134d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 4d 13 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 f7 d6 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 e9 d6 5e}
0188h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7134d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 4d 13 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 f7 d6 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 e8 d6 5e}
01c7h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7134d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 4d 13 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f7 d6 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a e8 d6 5e}
0206h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7134d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 4d 13 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a f7 d6 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b e8 d6 5e}
0245h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7134dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 4d 13 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb f6 d6 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c e8 d6 5e}
0284h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c7134da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 4d 13 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac f6 d6 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd e7 d6 5e}
02c3h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7134d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 4d 13 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d f6 d6 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e e7 d6 5e}
0302h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7134d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 4d 13 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e f6 d6 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f e7 d6 5e}
0341h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7134d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 4d 13 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef f5 d6 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 e7 d6 5e}
0380h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7134db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 4d 13 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 f5 d6 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 e6 d6 5e}
03bch mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7134d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4d 13 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c739e538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e5 39 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 f5 d6 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 e6 d6 5e}
03f8h mov rax,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 df 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7134dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 4d 13 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
0420h mov rcx,7ff7c685cc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cc 85 c6 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 f5 d6 5e}
042fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0432h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0436h mov rcx,7ff7c6348738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 34 c6 f7 7f 00 00}
0440h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 78 d1 5e}
0445h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0448h mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
0452h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 f5 d6 5e}
0457h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
045ah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
045fh mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
0469h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 8d e9 5e}
046eh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0471h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0474h call 7ff7c6392c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 b4 25 ff}
0479h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
047bh call 7ff7c63903f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 8c 25 ff}
0480h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0483h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0486h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0489h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a c9 23 ff}
048eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0491h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0494h call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 18 26 ff}
0499h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
049ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 41 ce 5e}
04a1h int 3                                   ; INT3 || CC || encoded[1]{cc}
04a2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a4h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a8h add fs:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{64 00 00}
04abh add [rbx-30000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 a3 00 00 00 d0}
04b1h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
04b3h add [rip+58000002h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 1d 02 00 00 58}
04b9h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
04bbh add [rdx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 02 00}
04bfh add [rdi+21000001h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 9f 01 00 00 21}
04c5h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
04c7h add [rax+1],ah                          ; ADD r/m8, r8 || 00 /r || encoded[3]{00 60 01}
04cah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04cch fiadd word ptr [rcx]                    ; FIADD m16int || DE /0 || encoded[2]{de 01}
04ceh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d0h fiadd dword ptr [rdx]                   ; FIADD m32int || DA /0 || encoded[2]{da 02}
04d2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d4h sbb [rbx],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 03}
04d6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d8h wait                                    ; WAIT || 9B || encoded[1]{9b}
04d9h add al,[rax]                            ; ADD r8, r/m8 || 02 /r || encoded[2]{02 00}
04dbh add [rbx+rax+0e20000h],dl               ; ADD r/m8, r8 || 00 /r || encoded[7]{00 94 03 00 00 e2 00}
04e2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04e4h and eax,19000000h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 00 00 00 19}
04e9h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
04efh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
04f1h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
04f2h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
04f5h jo short 04f7h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
04f7h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<uint>> lookup<uint>(BinaryBitLogicKind:byte kind)
; lookup_g[32u](BinaryBitLogicKind~8u)[1273] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 48 e7 39 c7 f7 7f 00 00 e8 12 f4 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 43 e5 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 51 13 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 48 e7 39 c7 f7 7f 00 00 e8 d3 f3 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 04 e5 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 52 13 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 48 e7 39 c7 f7 7f 00 00 e8 94 f3 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c5 e4 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 52 13 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 48 e7 39 c7 f7 7f 00 00 e8 55 f3 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 86 e4 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 51 13 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 48 e7 39 c7 f7 7f 00 00 e8 16 f3 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 47 e4 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 51 13 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 48 e7 39 c7 f7 7f 00 00 e8 d7 f2 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 e4 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 51 13 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 48 e7 39 c7 f7 7f 00 00 e8 98 f2 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c9 e3 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 52 13 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 48 e7 39 c7 f7 7f 00 00 e8 59 f2 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8a e3 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 51 13 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 48 e7 39 c7 f7 7f 00 00 e8 1a f2 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4b e3 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 52 13 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 48 e7 39 c7 f7 7f 00 00 e8 db f1 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 0c e3 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 52 13 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 48 e7 39 c7 f7 7f 00 00 e8 9c f1 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 cd e2 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 51 13 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 48 e7 39 c7 f7 7f 00 00 e8 5d f1 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 8e e2 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 51 13 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 48 e7 39 c7 f7 7f 00 00 e8 1e f1 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 4f e2 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 51 13 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 48 e7 39 c7 f7 7f 00 00 e8 df f0 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 10 e2 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 52 13 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 48 e7 39 c7 f7 7f 00 00 e8 a3 f0 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d4 e1 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 51 13 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 48 e7 39 c7 f7 7f 00 00 e8 67 f0 d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 98 e1 d6 5e 48 b8 80 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 48 52 13 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 50 cc 85 c6 f7 7f 00 00 e8 21 f0 d6 5e 48 8b f8 40 88 77 08 48 b9 d8 96 34 c6 f7 7f 00 00 e8 4b 73 d1 5e 48 8b f0 48 b9 c0 af 5a c6 f7 7f 00 00 e8 f9 ef d6 5e 48 8b d8 b9 4c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 e2 88 e9 5e 48 8b e8 48 8b ce e8 b7 af 25 ff 8b c8 e8 18 87 25 ff 4c 8b c0 48 8b cd 48 8b d7 e8 4a c4 23 ff 48 8b d0 48 8b cb e8 07 13 26 ff 48 8b cb e8 ff 3b ce 5e cc 00 00 00 00 00 00 64 00 00 00 a3 00 00 00 d0 03 00 00 1d 02 00 00 58 03 00 00 5c 02 00 00 9f 01 00 00 21 01 00 00 60 01 00 00 de 01 00 00 da 02 00 00 19 03 00 00 9b 02 00 00 94 03 00 00 e2 00 00 00 25 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 f4 d6 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 e5 d6 5e}
004dh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7135178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 51 13 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 f3 d6 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 e5 d6 5e}
008ch mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7135268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 52 13 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 f3 d6 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 e4 d6 5e}
00cbh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7135258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 52 13 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 f3 d6 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 e4 d6 5e}
010ah mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7135188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 51 13 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 f3 d6 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 e4 d6 5e}
0149h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c71351f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 51 13 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 f2 d6 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 e4 d6 5e}
0188h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c71351e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 51 13 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 f2 d6 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 e3 d6 5e}
01c7h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7135208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 52 13 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 f2 d6 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a e3 d6 5e}
0206h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c71351d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 51 13 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a f2 d6 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b e3 d6 5e}
0245h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7135238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 52 13 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db f1 d6 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c e3 d6 5e}
0284h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c7135218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 52 13 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c f1 d6 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd e2 d6 5e}
02c3h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c71351a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 51 13 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d f1 d6 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e e2 d6 5e}
0302h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c71351c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 51 13 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e f1 d6 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f e2 d6 5e}
0341h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c71351b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 51 13 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f0 d6 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 e2 d6 5e}
0380h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7135228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 52 13 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 f0 d6 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 e1 d6 5e}
03bch mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7135198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 51 13 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c739e748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e7 39 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 f0 d6 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 e1 d6 5e}
03f8h mov rax,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 df 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7135248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 52 13 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
0420h mov rcx,7ff7c685cc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cc 85 c6 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 f0 d6 5e}
042fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0432h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0436h mov rcx,7ff7c63496d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 34 c6 f7 7f 00 00}
0440h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 73 d1 5e}
0445h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0448h mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
0452h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 ef d6 5e}
0457h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
045ah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
045fh mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
0469h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 88 e9 5e}
046eh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0471h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0474h call 7ff7c6392c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 af 25 ff}
0479h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
047bh call 7ff7c63903f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 87 25 ff}
0480h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0483h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0486h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0489h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a c4 23 ff}
048eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0491h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0494h call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 13 26 ff}
0499h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
049ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 3b ce 5e}
04a1h int 3                                   ; INT3 || CC || encoded[1]{cc}
04a2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a4h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a8h add fs:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{64 00 00}
04abh add [rbx-30000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 a3 00 00 00 d0}
04b1h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
04b3h add [rip+58000002h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 1d 02 00 00 58}
04b9h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
04bbh add [rdx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 02 00}
04bfh add [rdi+21000001h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 9f 01 00 00 21}
04c5h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
04c7h add [rax+1],ah                          ; ADD r/m8, r8 || 00 /r || encoded[3]{00 60 01}
04cah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04cch fiadd word ptr [rcx]                    ; FIADD m16int || DE /0 || encoded[2]{de 01}
04ceh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d0h fiadd dword ptr [rdx]                   ; FIADD m32int || DA /0 || encoded[2]{da 02}
04d2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d4h sbb [rbx],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 03}
04d6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d8h wait                                    ; WAIT || 9B || encoded[1]{9b}
04d9h add al,[rax]                            ; ADD r8, r/m8 || 02 /r || encoded[2]{02 00}
04dbh add [rbx+rax+0e20000h],dl               ; ADD r/m8, r8 || 00 /r || encoded[7]{00 94 03 00 00 e2 00}
04e2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04e4h and eax,19000000h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 00 00 00 19}
04e9h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
04efh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
04f1h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
04f2h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
04f5h jo short 04f7h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
04f7h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
------------------------------------------------------------------------------------------------------------------------
; BinaryOp<BitVector<ulong>> lookup<ulong>(BinaryBitLogicKind:byte kind)
; lookup_g[64u](BinaryBitLogicKind~8u)[1273] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 58 e9 39 c7 f7 7f 00 00 e8 02 ef d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 33 e0 d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 53 13 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 58 e9 39 c7 f7 7f 00 00 e8 c3 ee d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f4 df d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 90 58 13 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 58 e9 39 c7 f7 7f 00 00 e8 84 ee d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b5 df d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 80 58 13 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 58 e9 39 c7 f7 7f 00 00 e8 45 ee d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 76 df d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 53 13 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 58 e9 39 c7 f7 7f 00 00 e8 06 ee d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 37 df d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 54 13 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 58 e9 39 c7 f7 7f 00 00 e8 c7 ed d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 de d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 54 13 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 58 e9 39 c7 f7 7f 00 00 e8 88 ed d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b9 de d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 54 13 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 58 e9 39 c7 f7 7f 00 00 e8 49 ed d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7a de d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 54 13 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 58 e9 39 c7 f7 7f 00 00 e8 0a ed d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3b de d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 60 58 13 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 58 e9 39 c7 f7 7f 00 00 e8 cb ec d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fc dd d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 40 58 13 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 58 e9 39 c7 f7 7f 00 00 e8 8c ec d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bd dd d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 53 13 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 58 e9 39 c7 f7 7f 00 00 e8 4d ec d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7e dd d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 53 13 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 58 e9 39 c7 f7 7f 00 00 e8 0e ec d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3f dd d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 53 13 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 58 e9 39 c7 f7 7f 00 00 e8 cf eb d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 00 dd d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 50 58 13 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 58 e9 39 c7 f7 7f 00 00 e8 93 eb d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c4 dc d6 5e 48 b9 80 df 24 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 53 13 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 58 e9 39 c7 f7 7f 00 00 e8 57 eb d6 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 88 dc d6 5e 48 b8 80 df 24 c6 f7 7f 00 00 48 89 46 18 48 b8 70 58 13 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 50 cc 85 c6 f7 7f 00 00 e8 11 eb d6 5e 48 8b f8 40 88 77 08 48 b9 78 a6 34 c6 f7 7f 00 00 e8 3b 6e d1 5e 48 8b f0 48 b9 c0 af 5a c6 f7 7f 00 00 e8 e9 ea d6 5e 48 8b d8 b9 4c 04 00 00 48 ba 08 c2 7b c6 f7 7f 00 00 e8 d2 83 e9 5e 48 8b e8 48 8b ce e8 a7 aa 25 ff 8b c8 e8 08 82 25 ff 4c 8b c0 48 8b cd 48 8b d7 e8 3a bf 23 ff 48 8b d0 48 8b cb e8 f7 0d 26 ff 48 8b cb e8 ef 36 ce 5e cc 00 00 00 00 00 00 64 00 00 00 a3 00 00 00 d0 03 00 00 1d 02 00 00 58 03 00 00 5c 02 00 00 9f 01 00 00 21 01 00 00 60 01 00 00 de 01 00 00 da 02 00 00 19 03 00 00 9b 02 00 00 94 03 00 00 e2 00 00 00 25 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
; TermCode = CTC_Zx7
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000eh cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0011h ja near ptr 0420h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 09 04 00 00}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h lea rax,[rip+488h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 88 04 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
002ah add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 ef d6 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 e0 d6 5e}
004dh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c71353a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 53 13 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 ee d6 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 df d6 5e}
008ch mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7135890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 58 13 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 ee d6 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 df d6 5e}
00cbh mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7135880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 58 13 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 ee d6 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 df d6 5e}
010ah mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c71353b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 53 13 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 ee d6 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 df d6 5e}
0149h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7135428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 54 13 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 ed d6 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 de d6 5e}
0188h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7135418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 54 13 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 ed d6 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 de d6 5e}
01c7h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7135438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 54 13 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 ed d6 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a de d6 5e}
0206h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7135408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 54 13 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a ed d6 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b de d6 5e}
0245h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7135860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 58 13 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb ec d6 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc dd d6 5e}
0284h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c7135840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 58 13 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c ec d6 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd dd d6 5e}
02c3h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c71353d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 53 13 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d ec d6 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e dd d6 5e}
0302h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c71353f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 53 13 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e ec d6 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f dd d6 5e}
0341h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c71353e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 53 13 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf eb d6 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 dd d6 5e}
0380h mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7135850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 58 13 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 eb d6 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 dc d6 5e}
03bch mov rcx,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 df 24 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c71353c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 53 13 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c739e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 39 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 eb d6 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 dc d6 5e}
03f8h mov rax,7ff7c624df80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 df 24 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7135870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 58 13 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
0420h mov rcx,7ff7c685cc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 cc 85 c6 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 eb d6 5e}
042fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0432h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0436h mov rcx,7ff7c634a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 34 c6 f7 7f 00 00}
0440h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 6e d1 5e}
0445h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0448h mov rcx,7ff7c65aafc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 af 5a c6 f7 7f 00 00}
0452h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 ea d6 5e}
0457h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
045ah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
045fh mov rdx,7ff7c67bc208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 c2 7b c6 f7 7f 00 00}
0469h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 83 e9 5e}
046eh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0471h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0474h call 7ff7c6392c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 aa 25 ff}
0479h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
047bh call 7ff7c63903f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 82 25 ff}
0480h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0483h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0486h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0489h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a bf 23 ff}
048eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0491h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0494h call 7ff7c6399000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 0d 26 ff}
0499h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
049ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 36 ce 5e}
04a1h int 3                                   ; INT3 || CC || encoded[1]{cc}
04a2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a4h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a8h add fs:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{64 00 00}
04abh add [rbx-30000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 a3 00 00 00 d0}
04b1h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
04b3h add [rip+58000002h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 1d 02 00 00 58}
04b9h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
04bbh add [rdx+rax],bl                        ; ADD r/m8, r8 || 00 /r || encoded[4]{00 5c 02 00}
04bfh add [rdi+21000001h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 9f 01 00 00 21}
04c5h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
04c7h add [rax+1],ah                          ; ADD r/m8, r8 || 00 /r || encoded[3]{00 60 01}
04cah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04cch fiadd word ptr [rcx]                    ; FIADD m16int || DE /0 || encoded[2]{de 01}
04ceh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d0h fiadd dword ptr [rdx]                   ; FIADD m32int || DA /0 || encoded[2]{da 02}
04d2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d4h sbb [rbx],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 03}
04d6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d8h wait                                    ; WAIT || 9B || encoded[1]{9b}
04d9h add al,[rax]                            ; ADD r8, r/m8 || 02 /r || encoded[2]{02 00}
04dbh add [rbx+rax+0e20000h],dl               ; ADD r/m8, r8 || 00 /r || encoded[7]{00 94 03 00 00 e2 00}
04e2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04e4h and eax,19000000h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 00 00 00 19}
04e9h or [rip+4420800h],al                    ; OR r/m8, r8 || 08 /r || encoded[6]{08 05 00 08 42 04}
04efh xor [rbx],al                            ; XOR r/m8, r8 || 30 /r || encoded[2]{30 03}
04f1h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
04f2h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
04f5h jo short 04f7h                          ; JO rel8 || 70 cb || encoded[2]{70 00}
04f7h (bad)                                   ; <invalid> || <invalid> || encoded[2]{00 40}
