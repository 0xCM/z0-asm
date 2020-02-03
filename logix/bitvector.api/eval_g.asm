------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> eval<byte>(BinaryBitLogicKind:byte kind, BitVector<byte> x, BitVector<byte> y)
; eval_g8u[130] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 83 f8 0f 0f 87 3a 01 00 00 8b c0 48 8d 0d b1 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff 00 00 00 e9 10 01 00 00 33 c0 e9 09 01 00 00 0f b6 c2 41 0f b6 d0 44 0f b6 c0 41 23 d0 0f b6 c2 e9 f3 00 00 00 0f b6 c2 41 0f b6 d0 44 0f b6 c0 41 23 d0 8b c2 f7 d0 0f b6 c0 e9 d9 00 00 00 0f b6 c2 41 0f b6 d0 44 0f b6 c0 41 0b d0 0f b6 c2 e9 c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0010h ja near ptr 0150h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 3a 01 00 00}
0016h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0018h lea rcx,[rip+1b1h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d b1 01 00 00}
001fh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0022h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
0029h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002ch jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002eh mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
0033h jmp near ptr 0148h                      ; JMP rel32 || E9 cd || encoded[5]{e9 10 01 00 00}
0038h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003ah jmp near ptr 0148h                      ; JMP rel32 || E9 cd || encoded[5]{e9 09 01 00 00}
003fh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0042h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0046h movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
004ah and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
004dh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0050h jmp near ptr 0148h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f3 00 00 00}
0055h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0058h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
005ch movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
0060h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0063h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0065h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah jmp near ptr 0148h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d9 00 00 00}
006fh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0072h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0076h movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
007ah or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
007dh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0080h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e9 c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, BitVector<ushort> x, BitVector<ushort> y)
; eval_g8u[130] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 83 f8 0f 0f 87 3a 01 00 00 8b c0 48 8d 0d b1 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff 00 00 e9 10 01 00 00 33 c0 e9 09 01 00 00 0f b7 c2 41 0f b7 d0 44 0f b7 c0 41 23 d0 0f b7 c2 e9 f3 00 00 00 0f b7 c2 41 0f b7 d0 44 0f b7 c0 41 23 d0 8b c2 f7 d0 0f b7 c0 e9 d9 00 00 00 0f b7 c2 41 0f b7 d0 44 0f b7 c0 41 0b d0 0f b7 c2 e9 c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0010h ja near ptr 0150h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 3a 01 00 00}
0016h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0018h lea rcx,[rip+1b1h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d b1 01 00 00}
001fh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0022h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
0029h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002ch jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002eh mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
0033h jmp near ptr 0148h                      ; JMP rel32 || E9 cd || encoded[5]{e9 10 01 00 00}
0038h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003ah jmp near ptr 0148h                      ; JMP rel32 || E9 cd || encoded[5]{e9 09 01 00 00}
003fh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0042h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0046h movzx r8d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c0}
004ah and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
004dh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0050h jmp near ptr 0148h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f3 00 00 00}
0055h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0058h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
005ch movzx r8d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c0}
0060h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0063h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0065h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0067h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
006ah jmp near ptr 0148h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d9 00 00 00}
006fh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0072h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0076h movzx r8d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c0}
007ah or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
007dh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0080h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e9 c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> eval<uint>(BinaryBitLogicKind:byte kind, BitVector<uint> x, BitVector<uint> y)
; eval_g8u[200] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 83 f8 0f 0f 87 b2 00 00 00 8b c0 48 8d 0d 29 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 b8 ff ff ff ff e9 88 00 00 00 33 c0 e9 81 00 00 00 41 23 d0 8b c2 eb 7a 8b c2 41 8b d0 23 c2 f7 d0 eb 6f 8b c2 41 8b d0 0b c2 eb 66 8b c2 41 8b d0 0b c2 f7 d0 eb 5b 8b c2 41 8b d0 33 c2 eb 52 8b c2 41 8b d0 33 c2 f7 d0 eb 47 8b c2 eb 43 41 8b c0 eb 3e 8b c2 f7 d0 eb 38 41 8b c0 f7 d0 eb 31 8b c2 41 8b d0 44 8b c2 41 f7 d0 41 0b c0 eb 21 8b c2 41 8b d0 c4 e2 78 f2 c2 eb 15 8b c2 41 8b d0 f7 d0 0b c2 eb 0a 8b c2 41 8b c8 c4 e2 70 f2 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0010h ja near ptr 00c8h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b2 00 00 00}
0016h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0018h lea rcx,[rip+129h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 29 01 00 00}
001fh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0022h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
0029h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002ch jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002eh mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
0033h jmp near ptr 00c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 88 00 00 00}
0038h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003ah jmp near ptr 00c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 81 00 00 00}
003fh and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0042h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0044h jmp short 00c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 7a}
0046h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0048h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
004bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
004dh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
004fh jmp short 00c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 6f}
0051h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0053h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0056h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0058h jmp short 00c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 66}
005ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
005ch mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
005fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0061h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0063h jmp short 00c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 5b}
0065h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0067h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
006ah xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
006ch jmp short 00c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
006eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0070h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0073h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0075h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0077h jmp short 00c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
0079h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007bh jmp short 00c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
007dh mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0080h jmp short 00c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0082h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0084h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0086h jmp short 00c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0088h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
008bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
008dh jmp short 00c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 31}
008fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0091h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0094h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0097h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
009ah or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
009dh jmp short 00c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 21}
009fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00a1h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
00a4h andn eax,eax,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c2}
00a9h jmp short 00c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
00abh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00adh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
00b0h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00b2h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00b4h jmp short 00c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
00b6h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00b8h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
00bbh andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
00c0h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00c4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitVector<ulong> x, BitVector<ulong> y)
; eval_g8u[235] = {57 56 53 48 83 ec 20 8b f1 40 0f b6 c6 83 f8 0f 0f 87 d5 00 00 00 8b c0 48 8d 0d 51 01 00 00 8b 0c 81 4c 8d 0d e0 ff ff ff 49 03 c9 ff e1 48 b8 ff ff ff ff ff ff ff ff e9 a6 00 00 00 33 c0 e9 9f 00 00 00 49 23 d0 48 8b c2 e9 94 00 00 00 48 8b c2 49 8b d0 48 23 c2 48 f7 d0 e9 83 00 00 00 48 8b c2 49 8b d0 48 0b c2 eb 78 48 8b c2 49 8b d0 48 0b c2 48 f7 d0 eb 6a 48 8b c2 49 8b d0 48 33 c2 eb 5f 48 8b c2 49 8b d0 48 33 c2 48 f7 d0 eb 51 48 8b c2 eb 4c 49 8b c0 eb 47 48 8b c2 48 f7 d0 eb 3f 49 8b c0 48 f7 d0 eb 37 48 8b c2 49 8b d0 4c 8b c2 49 f7 d0 49 0b c0 eb 26 48 8b c2 49 8b d0 c4 e2 f8 f2 c2 eb 19 48 8b c2 49 8b d0 48 f7 d0 48 0b c2 eb 0b 48 8b c2 49 8b c8 c4 e2 f0 f2 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000dh cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0010h ja near ptr 00ebh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 d5 00 00 00}
0016h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0018h lea rcx,[rip+151h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 51 01 00 00}
001fh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0022h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
0029h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
002ch jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002eh mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0038h jmp near ptr 00e3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 00 00 00}
003dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003fh jmp near ptr 00e3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9f 00 00 00}
0044h and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
0047h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
004ah jmp near ptr 00e3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 94 00 00 00}
004fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0052h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0055h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0058h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
005bh jmp near ptr 00e3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
0060h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0063h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0066h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0069h jmp short 00e3h                         ; JMP rel8 || EB cb || encoded[2]{eb 78}
006bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
006eh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0071h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0074h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0077h jmp short 00e3h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
0079h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
007ch mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
007fh xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0082h jmp short 00e3h                         ; JMP rel8 || EB cb || encoded[2]{eb 5f}
0084h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0087h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
008ah xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
008dh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0090h jmp short 00e3h                         ; JMP rel8 || EB cb || encoded[2]{eb 51}
0092h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0095h jmp short 00e3h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0097h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
009ah jmp short 00e3h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
009ch mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
009fh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00a2h jmp short 00e3h                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
00a4h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
00a7h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00aah jmp short 00e3h                         ; JMP rel8 || EB cb || encoded[2]{eb 37}
00ach mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00afh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00b2h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
00b5h not r8                                  ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d0}
00b8h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
00bbh jmp short 00e3h                         ; JMP rel8 || EB cb || encoded[2]{eb 26}
00bdh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00c0h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00c3h andn rax,rax,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f8 f2 c2}
00c8h jmp short 00e3h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
00cah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00cdh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00d0h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00d3h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
00d6h jmp short 00e3h                         ; JMP rel8 || EB cb || encoded[2]{eb 0b}
00d8h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00dbh mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
00deh andn rax,rcx,rax                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 c0}
00e3h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00e7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00e8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00eah ret                                     ; RET || C3 || encoded[1]{c3}
