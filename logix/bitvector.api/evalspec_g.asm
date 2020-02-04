------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> evalspec<byte>(BinaryBitLogicKind:byte kind, BitVector<byte> x, BitVector<byte> y)
; evalspec_g8u[189] = {57 56 53 48 83 ec 20 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a2 00 00 00 8b c9 4c 8d 05 1c 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff 00 00 00 eb 78 33 c0 eb 74 8b c8 e8 11 fc ff ff eb 6b 8b c8 e8 c8 f8 ff ff eb 62 8b c8 e8 9f f9 ff ff eb 59 8b c8 e8 76 f9 ff ff eb 50 8b c8 e8 8d fb ff ff eb 47 8b c8 e8 44 f9 ff ff eb 3e 0f b6 c0 eb 39 0f b6 c2 eb 34 8b c8 e8 d1 f8 ff ff eb 2b 8b c8 e8 08 f9 ff ff eb 22 8b c8 e8 df f8 ff ff eb 19 8b c8 e8 76 fb ff ff eb 10 8b c8 e8 8d f8 ff ff eb 07 8b c8 e8 84 fb ff ff 90 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000bh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
000eh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0012h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0015h ja near ptr 00bdh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a2 00 00 00}
001bh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001dh lea r8,[rip+11ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 1c 01 00 00}
0024h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
0028h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
002fh add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0032h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0035h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
003ah jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 78}
003ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003eh jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 74}
0040h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0042h call 7ff7c7353478h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 fc ff ff}
0047h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 6b}
0049h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004bh call 7ff7c7353138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 f8 ff ff}
0050h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 62}
0052h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0054h call 7ff7c7353218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f f9 ff ff}
0059h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 59}
005bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005dh call 7ff7c73531f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 f9 ff ff}
0062h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 50}
0064h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0066h call 7ff7c7353418h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d fb ff ff}
006bh jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
006dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
006fh call 7ff7c73531d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 f9 ff ff}
0074h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0076h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0079h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
007bh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
007eh jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0080h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0082h call 7ff7c7353178h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f8 ff ff}
0087h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
0089h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008bh call 7ff7c73531b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 f9 ff ff}
0090h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0092h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0094h call 7ff7c7353198h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f8 ff ff}
0099h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009dh call 7ff7c7353438h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 fb ff ff}
00a2h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a4h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a6h call 7ff7c7353158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d f8 ff ff}
00abh jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00adh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00afh call 7ff7c7353458h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 fb ff ff}
00b4h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b5h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00b9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> evalspec<ushort>(BinaryBitLogicKind:byte kind, BitVector<ushort> x, BitVector<ushort> y)
; evalspec_g8u[189] = {57 56 53 48 83 ec 20 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a2 00 00 00 8b c9 4c 8d 05 1c 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff 00 00 eb 78 33 c0 eb 74 8b c8 e8 61 fb ff ff eb 6b 8b c8 e8 a8 fa ff ff eb 62 8b c8 e8 0f fb ff ff eb 59 8b c8 e8 f6 fa ff ff eb 50 8b c8 e8 0d fb ff ff eb 47 8b c8 e8 d4 fa ff ff eb 3e 0f b7 c0 eb 39 0f b7 c2 eb 34 8b c8 e8 91 fa ff ff eb 2b 8b c8 e8 a8 fa ff ff eb 22 8b c8 e8 8f fa ff ff eb 19 8b c8 e8 e6 fa ff ff eb 10 8b c8 e8 5d fa ff ff eb 07 8b c8 e8 e4 fa ff ff 90 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000bh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
000eh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0012h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0015h ja near ptr 00bdh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a2 00 00 00}
001bh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001dh lea r8,[rip+11ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 1c 01 00 00}
0024h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
0028h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
002fh add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0032h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0035h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
003ah jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 78}
003ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003eh jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 74}
0040h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0042h call 7ff7c7353568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 fb ff ff}
0047h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 6b}
0049h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004bh call 7ff7c73534b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 fa ff ff}
0050h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 62}
0052h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0054h call 7ff7c7353528h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f fb ff ff}
0059h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 59}
005bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005dh call 7ff7c7353518h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 fa ff ff}
0062h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 50}
0064h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0066h call 7ff7c7353538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d fb ff ff}
006bh jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
006dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
006fh call 7ff7c7353508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 fa ff ff}
0074h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0076h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0079h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
007bh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
007eh jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0080h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0082h call 7ff7c73534d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 fa ff ff}
0087h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
0089h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008bh call 7ff7c73534f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 fa ff ff}
0090h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0092h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0094h call 7ff7c73534e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f fa ff ff}
0099h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009dh call 7ff7c7353548h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 fa ff ff}
00a2h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a4h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a6h call 7ff7c73534c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d fa ff ff}
00abh jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00adh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00afh call 7ff7c7353558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 fa ff ff}
00b4h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b5h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00b9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> evalspec<uint>(BinaryBitLogicKind:byte kind, BitVector<uint> x, BitVector<uint> y)
; evalspec_g8u[146] = {57 56 53 48 83 ec 20 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 9e 00 00 00 8b c9 4c 8d 05 14 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff ff ff eb 74 33 c0 eb 70 8b c8 e8 91 fa ff ff eb 67 8b c8 e8 d8 f9 ff ff eb 5e 8b c8 e8 3f fa ff ff eb 55 8b c8 e8 26 fa ff ff eb 4c 8b c8 e8 3d fa ff ff eb 43 8b c8 e8 04 fa ff ff eb 3a eb 38 8b c2 eb 34 8b c8 e8 c5 f9 ff ff eb 2b 8b c8 e8 dc f9 ff ff eb 22 8b c8 e8 c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000bh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
000eh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0012h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0015h ja near ptr 00b9h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 9e 00 00 00}
001bh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001dh lea r8,[rip+114h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 14 01 00 00}
0024h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
0028h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
002fh add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0032h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0035h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
003ah jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 74}
003ch xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
003eh jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 70}
0040h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0042h call 7ff7c7353638h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 fa ff ff}
0047h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 67}
0049h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004bh call 7ff7c7353588h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 f9 ff ff}
0050h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0052h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0054h call 7ff7c73535f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f fa ff ff}
0059h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
005bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005dh call 7ff7c73535e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 fa ff ff}
0062h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0064h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0066h call 7ff7c7353608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d fa ff ff}
006bh jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
006dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
006fh call 7ff7c73535d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 fa ff ff}
0074h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0076h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0078h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007ah jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
007ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
007eh call 7ff7c73535a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 f9 ff ff}
0083h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
0085h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0087h call 7ff7c73535c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc f9 ff ff}
008ch jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
008eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0090h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> evalspec<ulong>(BinaryBitLogicKind:byte kind, BitVector<ulong> x, BitVector<ulong> y)
; evalspec_g8u[210] = {57 56 53 48 83 ec 20 8b f1 48 8b c2 49 8b d0 40 0f b6 ce 83 f9 0f 0f 87 b6 00 00 00 8b c9 4c 8d 05 33 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 48 b8 ff ff ff ff ff ff ff ff e9 84 00 00 00 33 c0 e9 7d 00 00 00 48 8b c8 e8 c4 f9 ff ff eb 73 48 8b c8 e8 0a f9 ff ff eb 69 48 8b c8 e8 70 f9 ff ff eb 5f 48 8b c8 e8 56 f9 ff ff eb 55 48 8b c8 e8 6c f9 ff ff eb 4b 48 8b c8 e8 32 f9 ff ff eb 41 eb 3f 48 8b c2 eb 3a 48 8b c8 e8 f1 f8 ff ff eb 30 48 8b c8 e8 07 f9 ff ff eb 26 48 8b c8 e8 ed f8 ff ff eb 1c 48 8b c8 e8 43 f9 ff ff eb 12 48 8b c8 e8 b9 f8 ff ff eb 08 48 8b c8 e8 3f f9 ff ff 90 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000ch mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0016h ja near ptr 00d2h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b6 00 00 00}
001ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001eh lea r8,[rip+133h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 33 01 00 00}
0025h mov r8d,[r8+rcx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 88}
0029h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0030h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0033h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0036h mov rax,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff ff ff ff ff}
0040h jmp near ptr 00c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 84 00 00 00}
0045h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0047h jmp near ptr 00c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7d 00 00 00}
004ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004fh call 7ff7c7353708h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 f9 ff ff}
0054h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 73}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c7353658h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a f9 ff ff}
005eh jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 69}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c73536c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 f9 ff ff}
0068h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 5f}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c73536b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 f9 ff ff}
0072h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0074h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0077h call 7ff7c73536d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c f9 ff ff}
007ch jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
007eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0081h call 7ff7c73536a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f9 ff ff}
0086h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 41}
0088h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
008ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
008dh jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
008fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0092h call 7ff7c7353678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 f8 ff ff}
0097h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 30}
0099h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
009ch call 7ff7c7353698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 f9 ff ff}
00a1h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 26}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c7353688h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f8 ff ff}
00abh jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
00adh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b0h call 7ff7c73536e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 f9 ff ff}
00b5h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c7353668h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 f8 ff ff}
00bfh jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
00c1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c4h call 7ff7c73536f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f f9 ff ff}
00c9h nop                                     ; NOP || o32 90 || encoded[1]{90}
00cah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00ceh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00cfh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d1h ret                                     ; RET || C3 || encoded[1]{c3}
