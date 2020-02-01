------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> evalspec<byte>(BinaryBitLogicKind:byte kind, BitVector<byte> x, BitVector<byte> y)
; evalspec_g8u[189] = {57 56 53 48 83 ec 20 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a2 00 00 00 8b c9 4c 8d 05 1c 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff 00 00 00 eb 78 33 c0 eb 74 8b c8 e8 01 fc ff ff eb 6b 8b c8 e8 b8 f8 ff ff eb 62 8b c8 e8 8f f9 ff ff eb 59 8b c8 e8 66 f9 ff ff eb 50 8b c8 e8 9d f9 ff ff eb 47 8b c8 e8 34 f9 ff ff eb 3e 0f b6 c0 eb 39 0f b6 c2 eb 34 8b c8 e8 c1 f8 ff ff eb 2b 8b c8 e8 f8 f8 ff ff eb 22 8b c8 e8 cf f8 ff ff eb 19 8b c8 e8 66 fb ff ff eb 10 8b c8 e8 7d f8 ff ff eb 07 8b c8 e8 74 fb ff ff 90 48 83 c4 20 5b 5e 5f c3}
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
0042h call 7ff7c73706d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 fc ff ff}
0047h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 6b}
0049h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004bh call 7ff7c7370398h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f8 ff ff}
0050h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 62}
0052h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0054h call 7ff7c7370478h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f f9 ff ff}
0059h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 59}
005bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005dh call 7ff7c7370458h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 f9 ff ff}
0062h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 50}
0064h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0066h call 7ff7c7370498h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d f9 ff ff}
006bh jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
006dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
006fh call 7ff7c7370438h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 f9 ff ff}
0074h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0076h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0079h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
007bh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
007eh jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0080h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0082h call 7ff7c73703d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 f8 ff ff}
0087h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
0089h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008bh call 7ff7c7370418h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 f8 ff ff}
0090h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0092h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0094h call 7ff7c73703f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf f8 ff ff}
0099h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009dh call 7ff7c7370698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 fb ff ff}
00a2h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a4h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a6h call 7ff7c73703b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f8 ff ff}
00abh jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00adh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00afh call 7ff7c73706b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 fb ff ff}
00b4h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b5h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00b9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> evalspec<ushort>(BinaryBitLogicKind:byte kind, BitVector<ushort> x, BitVector<ushort> y)
; evalspec_g8u[189] = {57 56 53 48 83 ec 20 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 a2 00 00 00 8b c9 4c 8d 05 1c 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff 00 00 eb 78 33 c0 eb 74 8b c8 e8 51 fb ff ff eb 6b 8b c8 e8 98 fa ff ff eb 62 8b c8 e8 ff fa ff ff eb 59 8b c8 e8 e6 fa ff ff eb 50 8b c8 e8 fd fa ff ff eb 47 8b c8 e8 c4 fa ff ff eb 3e 0f b7 c0 eb 39 0f b7 c2 eb 34 8b c8 e8 81 fa ff ff eb 2b 8b c8 e8 98 fa ff ff eb 22 8b c8 e8 7f fa ff ff eb 19 8b c8 e8 d6 fa ff ff eb 10 8b c8 e8 4d fa ff ff eb 07 8b c8 e8 d4 fa ff ff 90 48 83 c4 20 5b 5e 5f c3}
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
0042h call 7ff7c73707c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 fb ff ff}
0047h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 6b}
0049h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004bh call 7ff7c7370718h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 fa ff ff}
0050h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 62}
0052h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0054h call 7ff7c7370788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff fa ff ff}
0059h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 59}
005bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005dh call 7ff7c7370778h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 fa ff ff}
0062h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 50}
0064h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0066h call 7ff7c7370798h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd fa ff ff}
006bh jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 47}
006dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
006fh call 7ff7c7370768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 fa ff ff}
0074h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0076h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0079h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
007bh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
007eh jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0080h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0082h call 7ff7c7370738h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 fa ff ff}
0087h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
0089h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
008bh call 7ff7c7370758h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 fa ff ff}
0090h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0092h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0094h call 7ff7c7370748h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f fa ff ff}
0099h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
009bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
009dh call 7ff7c73707a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 fa ff ff}
00a2h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a4h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a6h call 7ff7c7370728h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d fa ff ff}
00abh jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00adh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00afh call 7ff7c73707b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 fa ff ff}
00b4h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b5h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00b9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> evalspec<uint>(BinaryBitLogicKind:byte kind, BitVector<uint> x, BitVector<uint> y)
; evalspec_g8u[185] = {57 56 53 48 83 ec 20 8b f1 8b c2 41 8b d0 40 0f b6 ce 83 f9 0f 0f 87 9e 00 00 00 8b c9 4c 8d 05 14 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 b8 ff ff ff ff eb 74 33 c0 eb 70 8b c8 e8 81 fa ff ff eb 67 8b c8 e8 c8 f9 ff ff eb 5e 8b c8 e8 2f fa ff ff eb 55 8b c8 e8 16 fa ff ff eb 4c 8b c8 e8 2d fa ff ff eb 43 8b c8 e8 f4 f9 ff ff eb 3a eb 38 8b c2 eb 34 8b c8 e8 b5 f9 ff ff eb 2b 8b c8 e8 cc f9 ff ff eb 22 8b c8 e8 b3 f9 ff ff eb 19 8b c8 e8 0a fa ff ff eb 10 8b c8 e8 81 f9 ff ff eb 07 8b c8 e8 08 fa ff ff 90 48 83 c4 20 5b 5e 5f c3}
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
0042h call 7ff7c7370898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 fa ff ff}
0047h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 67}
0049h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
004bh call 7ff7c73707e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 f9 ff ff}
0050h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0052h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0054h call 7ff7c7370858h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f fa ff ff}
0059h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
005bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
005dh call 7ff7c7370848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 fa ff ff}
0062h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0064h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0066h call 7ff7c7370868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d fa ff ff}
006bh jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 43}
006dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
006fh call 7ff7c7370838h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 f9 ff ff}
0074h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0076h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0078h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007ah jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
007ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
007eh call 7ff7c7370808h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 f9 ff ff}
0083h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
0085h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0087h call 7ff7c7370828h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc f9 ff ff}
008ch jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
008eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0090h call 7ff7c7370818h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 f9 ff ff}
0095h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
0097h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0099h call 7ff7c7370878h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a fa ff ff}
009eh jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
00a0h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a2h call 7ff7c73707f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 f9 ff ff}
00a7h jmp short 00b0h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
00a9h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00abh call 7ff7c7370888h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 fa ff ff}
00b0h nop                                     ; NOP || o32 90 || encoded[1]{90}
00b1h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00b5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b8h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> evalspec<ulong>(BinaryBitLogicKind:byte kind, BitVector<ulong> x, BitVector<ulong> y)
; evalspec_g8u[210] = {57 56 53 48 83 ec 20 8b f1 48 8b c2 49 8b d0 40 0f b6 ce 83 f9 0f 0f 87 b6 00 00 00 8b c9 4c 8d 05 33 01 00 00 45 8b 04 88 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 48 b8 ff ff ff ff ff ff ff ff e9 84 00 00 00 33 c0 e9 7d 00 00 00 48 8b c8 e8 b4 f9 ff ff eb 73 48 8b c8 e8 fa f8 ff ff eb 69 48 8b c8 e8 60 f9 ff ff eb 5f 48 8b c8 e8 46 f9 ff ff eb 55 48 8b c8 e8 5c f9 ff ff eb 4b 48 8b c8 e8 22 f9 ff ff eb 41 eb 3f 48 8b c2 eb 3a 48 8b c8 e8 e1 f8 ff ff eb 30 48 8b c8 e8 f7 f8 ff ff eb 26 48 8b c8 e8 dd f8 ff ff eb 1c 48 8b c8 e8 33 f9 ff ff eb 12 48 8b c8 e8 a9 f8 ff ff eb 08 48 8b c8 e8 2f f9 ff ff 90 48 83 c4 20 5b 5e 5f c3}
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
004fh call 7ff7c7370968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 f9 ff ff}
0054h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 73}
0056h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0059h call 7ff7c73708b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa f8 ff ff}
005eh jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 69}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c7370928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 f9 ff ff}
0068h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 5f}
006ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
006dh call 7ff7c7370918h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f9 ff ff}
0072h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0074h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0077h call 7ff7c7370938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c f9 ff ff}
007ch jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
007eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0081h call 7ff7c7370908h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 f9 ff ff}
0086h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 41}
0088h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 3f}
008ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
008dh jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
008fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0092h call 7ff7c73708d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 f8 ff ff}
0097h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 30}
0099h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
009ch call 7ff7c73708f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f8 ff ff}
00a1h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 26}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c73708e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd f8 ff ff}
00abh jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 1c}
00adh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b0h call 7ff7c7370948h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 f9 ff ff}
00b5h jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 12}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c73708c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 f8 ff ff}
00bfh jmp short 00c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
00c1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c4h call 7ff7c7370958h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f f9 ff ff}
00c9h nop                                     ; NOP || o32 90 || encoded[1]{90}
00cah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00ceh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00cfh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d1h ret                                     ; RET || C3 || encoded[1]{c3}
