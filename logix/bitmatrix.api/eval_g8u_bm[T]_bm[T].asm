------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> eval<byte>(BinaryBitLogicKind:byte kind, BitMatrix<byte> A, BitMatrix<byte> B)
; eval_g8u_bm8x8u_bm8x8u[113] = {41 56 57 56 55 53 48 81 ec f0 00 00 00 48 8b f1 48 8d 7c 24 28 b9 30 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 44 8b f2 49 8b f0 49 8b e9 41 0f b6 ce 83 f9 0f 0f 87 82 03 00 00 8b c9 48 8d 15 fd 03 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 b9 ff 00 00 00 88 8c 24 e8 00 00 00 48 8b cb 0f b6 94 24 e8 00 00 00 e8 ba dd ff ff 48 8b c3}
; TermCode = ZEDx7_RET
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,0f0h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec f0 00 00 00}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0015h mov ecx,30h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 30 00 00 00}
001ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001ch rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0021h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0024h mov r14d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b f2}
0027h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
002ah mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
002dh movzx ecx,r14b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ce}
0031h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0034h ja near ptr 03bch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 82 03 00 00}
003ah mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
003ch lea rdx,[rip+3fdh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 fd 03 00 00}
0043h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0046h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
004dh add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
0050h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0052h mov ecx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff 00 00 00}
0057h mov [rsp+0e8h],cl                       ; MOV r/m8, r8 || 88 /r || encoded[7]{88 8c 24 e8 00 00 00}
005eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0061h movzx edx,byte ptr [rsp+0e8h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[8]{0f b6 94 24 e8 00 00 00}
0069h call 7ff7c7359ae8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba dd ff ff}
006eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, BitMatrix<ushort> A, BitMatrix<ushort> B)
; eval_g8u_bm16x16u_bm16x16u[1949] = {41 56 57 56 55 53 48 81 ec 30 04 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 02 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 44 8b f2 49 8b f0 49 8b e9 41 0f b6 ce 83 f9 0f 0f 87 e1 06 00 00 8b c9 48 8d 15 ea 07 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 b9 ff ff 00 00 66 89 8c 24 28 04 00 00 48 8b cb 0f b7 94 24 28 04 00 00 e8 be f5 ff ff 48 8b c3 e9 93 06 00 00 48 8b cb e8 16 6f fd ff 48 8b c3 e9 83 06 00 00 48 8d 8c 24 18 04 00 00 e8 01 6f fd ff 48 8b 06 48 8b 55 00 48 8d 8c 24 18 04 00 00 48 8b 09 c5 ff f0 00 c5 ff f0 0a c5 fd db c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 18 04 00 00 e8 57 98 b4 5e 48 a5 48 8b c3 e9 3a 06 00 00 48 8d 8c 24 08 04 00 00 e8 b8 6e fd ff 48 8b 06 48 8b 55 00 48 8d 8c 24 08 04 00 00 48 8b 09 c5 ff f0 00 c5 ff f0 0a c5 fd db c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 08 04 00 00 e8 06 98 b4 5e 48 a5 48 8b c3 e9 e9 05 00 00 48 8d 8c 24 f8 03 00 00 e8 67 6e fd ff 48 8b 06 48 8b 55 00 48 8d 8c 24 f8 03 00 00 48 8b 09 c5 ff f0 00 c5 fd 11 84 24 c0 03 00 00 c5 ff f0 02 c5 fd 11 84 24 a0 03 00 00 c5 fd 10 84 24 c0 03 00 00 c5 fd 10 8c 24 a0 03 00 00 c5 fd eb c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 f8 03 00 00 e8 99 97 b4 5e 48 a5 48 8b c3 e9 7c 05 00 00 48 8d 8c 24 90 03 00 00 e8 fa 6d fd ff 48 8b 06 48 8b 55 00 48 8d 8c 24 90 03 00 00 48 8b 09 c5 ff f0 00 c5 fd 11 84 24 60 03 00 00 c5 ff f0 02 c5 fd 11 84 24 40 03 00 00 c5 fd 10 84 24 60 03 00 00 c5 fd 10 8c 24 40 03 00 00 c5 fd eb c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 90 03 00 00 e8 24 97 b4 5e 48 a5 48 8b c3 e9 07 05 00 00 48 8d 8c 24 30 03 00 00 e8 85 6d fd ff 48 8b 06 48 8b 55 00 48 8d 8c 24 30 03 00 00 48 8b 09 c5 ff f0 00 c5 ff f0 0a c5 fd ef c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 30 03 00 00 e8 db 96 b4 5e 48 a5 48 8b c3 e9 be 04 00 00 48 8d 8c 24 20 03 00 00 e8 3c 6d fd ff 48 8b 06 8b 56 08 48 8d 8c 24 10 03 00 00 48 89 01 89 51 08 48 8b 84 24 10 03 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 00 03 00 00 c5 fa 6f 84 24 00 03 00 00 c5 fa 7f 84 24 f0 02 00 00 48 8b 94 24 f0 02 00 00 c5 fa 6f 84 24 20 03 00 00 c5 fa 7f 84 24 e0 02 00 00 c5 fa 6f 84 24 e0 02 00 00 c5 fa 7f 84 24 d0 02 00 00 48 8b 8c 24 d0 02 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd ef c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 20 03 00 00 e8 2c 96 b4 5e 48 a5 48 8b c3 e9 0f 04 00 00 48 8b fb e8 1a 96 b4 5e 48 a5 48 8b c3 e9 fd 03 00 00 48 8b fb 48 8b f5 e8 05 96 b4 5e 48 a5 48 8b c3 e9 e8 03 00 00 48 8d 8c 24 c0 02 00 00 e8 66 6c fd ff c5 fa 6f 06 c5 fa 7f 84 24 b0 02 00 00 c5 fa 6f 84 24 b0 02 00 00 c5 fa 7f 84 24 a0 02 00 00 48 8b 84 24 a0 02 00 00 c5 fa 6f 84 24 c0 02 00 00 c5 fa 7f 84 24 90 02 00 00 c5 fa 6f 84 24 90 02 00 00 c5 fa 7f 84 24 80 02 00 00 48 8b 94 24 80 02 00 00 c5 ff f0 00 c5 fd 11 84 24 60 02 00 00 c5 fd 10 84 24 60 02 00 00 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb 48 8d b4 24 c0 02 00 00 e8 69 95 b4 5e 48 a5 48 8b c3 e9 4c 03 00 00 48 8d 8c 24 50 02 00 00 e8 ca 6b fd ff c5 fa 6f 45 00 c5 fa 7f 84 24 40 02 00 00 c5 fa 6f 84 24 40 02 00 00 c5 fa 7f 84 24 30 02 00 00 48 8b 84 24 30 02 00 00 c5 fa 6f 84 24 50 02 00 00 c5 fa 7f 84 24 20 02 00 00 c5 fa 6f 84 24 20 02 00 00 c5 fa 7f 84 24 10 02 00 00 48 8b 94 24 10 02 00 00 c5 ff f0 00 c5 fd 11 84 24 e0 01 00 00 c5 fd 10 84 24 e0 01 00 00 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb 48 8d b4 24 50 02 00 00 e8 cc 94 b4 5e 48 a5 48 8b c3 e9 af 02 00 00 48 8d 8c 24 d0 01 00 00 e8 2d 6b fd ff c5 fa 6f 06 c5 fa 7f 84 24 c0 01 00 00 c5 fa 6f 84 24 c0 01 00 00 c5 fa 7f 84 24 b0 01 00 00 48 8b 84 24 b0 01 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 a0 01 00 00 c5 fa 6f 84 24 a0 01 00 00 c5 fa 7f 84 24 90 01 00 00 48 8b 94 24 90 01 00 00 c5 fa 6f 84 24 d0 01 00 00 c5 fa 7f 84 24 80 01 00 00 c5 fa 6f 84 24 80 01 00 00 c5 fa 7f 84 24 70 01 00 00 48 8b 8c 24 70 01 00 00 c5 ff f0 00 c5 ff f0 0a c5 f5 75 d1 c5 f5 ef ca c5 fd eb c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 d0 01 00 00 e8 12 94 b4 5e 48 a5 48 8b c3 e9 f5 01 00 00 48 8d 8c 24 60 01 00 00 e8 73 6a fd ff c5 fa 6f 06 c5 fa 7f 84 24 50 01 00 00 c5 fa 6f 84 24 50 01 00 00 c5 fa 7f 84 24 40 01 00 00 48 8b 84 24 40 01 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 30 01 00 00 c5 fa 6f 84 24 30 01 00 00 c5 fa 7f 84 24 20 01 00 00 48 8b 94 24 20 01 00 00 c5 fa 6f 84 24 60 01 00 00 c5 fa 7f 84 24 10 01 00 00 c5 fa 6f 84 24 10 01 00 00 c5 fa 7f 84 24 00 01 00 00 48 8b 8c 24 00 01 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd df c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 60 01 00 00 e8 60 93 b4 5e 48 a5 48 8b c3 e9 43 01 00 00 48 8d 8c 24 f0 00 00 00 e8 c1 69 fd ff c5 fa 6f 06 c5 fa 7f 84 24 e0 00 00 00 c5 fa 6f 84 24 e0 00 00 00 c5 fa 7f 84 24 d0 00 00 00 48 8b 84 24 d0 00 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 c0 00 00 00 c5 fa 6f 84 24 c0 00 00 00 c5 fa 7f 84 24 b0 00 00 00 48 8b 94 24 b0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 a0 00 00 00 c5 fa 6f 84 24 a0 00 00 00 c5 fa 7f 84 24 90 00 00 00 48 8b 8c 24 90 00 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd 75 d0 c5 fd ef c2 c5 fd eb c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 f0 00 00 00 e8 a6 92 b4 5e 48 a5 48 8b c3 e9 89 00 00 00 48 8d 8c 24 80 00 00 00 e8 07 69 fd ff c5 fa 6f 06 c5 fa 7f 44 24 70 c5 fa 6f 44 24 70 c5 fa 7f 44 24 60 48 8b 44 24 60 c5 fa 6f 45 00 c5 fa 7f 44 24 50 c5 fa 6f 44 24 50 c5 fa 7f 44 24 40 48 8b 54 24 40 c5 fa 6f 84 24 80 00 00 00 c5 fa 7f 44 24 30 c5 fa 6f 44 24 30 c5 fa 7f 44 24 20 48 8b 4c 24 20 c5 ff f0 00 c5 ff f0 0a c5 f5 df c0 c5 fe 7f 01 48 8b fb 48 8d b4 24 80 00 00 00 e8 18 92 b4 5e 48 a5 48 8b c3 c5 f8 77 48 81 c4 30 04 00 00 5b 5d 5e 5f 41 5e c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 13 a0 b4 5e 48 8b f0 44 88 76 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 fd 9f b4 5e 48 8b f8 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 e6 38 c7 5e 48 8b d8 48 b9 38 87 36 c6 f7 7f 00 00 e8 14 23 af 5e 48 8b c8 e8 4c ca 75 ff 8b c8 e8 85 f5 04 ff 4c 8b c0 48 8b cb 48 8b d6 e8 3f 74 03 ff 48 8b d0 48 8b cf e8 64 27 06 ff 48 8b cf e8 f4 eb ab 5e cc}
; TermCode = INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,430h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 30 04 00 00}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0013h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0018h mov ecx,102h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 02 01 00 00}
001dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001fh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0027h mov r14d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b f2}
002ah mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
002dh mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
0030h movzx ecx,r14b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ce}
0034h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0037h ja near ptr 071eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e1 06 00 00}
003dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
003fh lea rdx,[rip+7eah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ea 07 00 00}
0046h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0049h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
0050h add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
0053h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0055h mov ecx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff ff 00 00}
005ah mov [rsp+428h],cx                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 8c 24 28 04 00 00}
0062h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0065h movzx edx,word ptr [rsp+428h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[8]{0f b7 94 24 28 04 00 00}
006dh call 7ff7c735bba0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f5 ff ff}
0072h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0075h jmp near ptr 070dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 93 06 00 00}
007ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
007dh call 7ff7c7333508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 6f fd ff}
0082h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0085h jmp near ptr 070dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 06 00 00}
008ah lea rcx,[rsp+418h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 18 04 00 00}
0092h call 7ff7c7333508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 6f fd ff}
0097h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
009ah mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
009eh lea rcx,[rsp+418h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 18 04 00 00}
00a6h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
00a9h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
00adh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
00b1h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
00b5h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
00b9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00bch lea rsi,[rsp+418h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 18 04 00 00}
00c4h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 98 b4 5e}
00c9h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00cbh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00ceh jmp near ptr 070dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 3a 06 00 00}
00d3h lea rcx,[rsp+408h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 08 04 00 00}
00dbh call 7ff7c7333508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 6e fd ff}
00e0h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
00e3h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
00e7h lea rcx,[rsp+408h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 08 04 00 00}
00efh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
00f2h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
00f6h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
00fah vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
00feh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0102h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0106h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
010ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
010dh lea rsi,[rsp+408h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 08 04 00 00}
0115h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 98 b4 5e}
011ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
011ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
011fh jmp near ptr 070dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 05 00 00}
0124h lea rcx,[rsp+3f8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f8 03 00 00}
012ch call 7ff7c7333508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 6e fd ff}
0131h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0134h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0138h lea rcx,[rsp+3f8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f8 03 00 00}
0140h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0143h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0147h vmovupd [rsp+3c0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 c0 03 00 00}
0150h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0154h vmovupd [rsp+3a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 03 00 00}
015dh vmovupd ymm0,[rsp+3c0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 c0 03 00 00}
0166h vmovupd ymm1,[rsp+3a0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 a0 03 00 00}
016fh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0173h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0177h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
017ah lea rsi,[rsp+3f8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 f8 03 00 00}
0182h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 97 b4 5e}
0187h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0189h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
018ch jmp near ptr 070dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 05 00 00}
0191h lea rcx,[rsp+390h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 03 00 00}
0199h call 7ff7c7333508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 6d fd ff}
019eh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
01a1h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
01a5h lea rcx,[rsp+390h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 03 00 00}
01adh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
01b0h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
01b4h vmovupd [rsp+360h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 03 00 00}
01bdh vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
01c1h vmovupd [rsp+340h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 03 00 00}
01cah vmovupd ymm0,[rsp+360h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 60 03 00 00}
01d3h vmovupd ymm1,[rsp+340h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 40 03 00 00}
01dch vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01e0h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
01e4h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
01e8h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
01ech mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01efh lea rsi,[rsp+390h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 90 03 00 00}
01f7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 97 b4 5e}
01fch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01feh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0201h jmp near ptr 070dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 07 05 00 00}
0206h lea rcx,[rsp+330h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 30 03 00 00}
020eh call 7ff7c7333508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 6d fd ff}
0213h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0216h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
021ah lea rcx,[rsp+330h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 30 03 00 00}
0222h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0225h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0229h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
022dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0231h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0235h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0238h lea rsi,[rsp+330h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 30 03 00 00}
0240h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 96 b4 5e}
0245h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0247h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
024ah jmp near ptr 070dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 be 04 00 00}
024fh lea rcx,[rsp+320h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 20 03 00 00}
0257h call 7ff7c7333508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 6d fd ff}
025ch mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
025fh mov edx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 56 08}
0262h lea rcx,[rsp+310h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 10 03 00 00}
026ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
026dh mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
0270h mov rax,[rsp+310h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 10 03 00 00}
0278h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
027dh vmovdqu xmmword ptr [rsp+300h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 03 00 00}
0286h vmovdqu xmm0,xmmword ptr [rsp+300h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 03 00 00}
028fh vmovdqu xmmword ptr [rsp+2f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 02 00 00}
0298h mov rdx,[rsp+2f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 f0 02 00 00}
02a0h vmovdqu xmm0,xmmword ptr [rsp+320h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 03 00 00}
02a9h vmovdqu xmmword ptr [rsp+2e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 02 00 00}
02b2h vmovdqu xmm0,xmmword ptr [rsp+2e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 02 00 00}
02bbh vmovdqu xmmword ptr [rsp+2d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 02 00 00}
02c4h mov rcx,[rsp+2d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 d0 02 00 00}
02cch vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
02d0h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
02d4h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
02d8h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
02dch vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
02e0h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
02e4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
02e7h lea rsi,[rsp+320h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 20 03 00 00}
02efh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 96 b4 5e}
02f4h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02f6h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02f9h jmp near ptr 070dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0f 04 00 00}
02feh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0301h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 96 b4 5e}
0306h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0308h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
030bh jmp near ptr 070dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 fd 03 00 00}
0310h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0313h mov rsi,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f5}
0316h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 96 b4 5e}
031bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
031dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0320h jmp near ptr 070dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e8 03 00 00}
0325h lea rcx,[rsp+2c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 c0 02 00 00}
032dh call 7ff7c7333508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 6c fd ff}
0332h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0336h vmovdqu xmmword ptr [rsp+2b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 02 00 00}
033fh vmovdqu xmm0,xmmword ptr [rsp+2b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 02 00 00}
0348h vmovdqu xmmword ptr [rsp+2a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 02 00 00}
0351h mov rax,[rsp+2a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 a0 02 00 00}
0359h vmovdqu xmm0,xmmword ptr [rsp+2c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 02 00 00}
0362h vmovdqu xmmword ptr [rsp+290h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 02 00 00}
036bh vmovdqu xmm0,xmmword ptr [rsp+290h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 02 00 00}
0374h vmovdqu xmmword ptr [rsp+280h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 02 00 00}
037dh mov rdx,[rsp+280h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 80 02 00 00}
0385h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0389h vmovupd [rsp+260h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 02 00 00}
0392h vmovupd ymm0,[rsp+260h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 60 02 00 00}
039bh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
039fh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
03a3h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
03a7h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
03aah lea rsi,[rsp+2c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 c0 02 00 00}
03b2h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 95 b4 5e}
03b7h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
03b9h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
03bch jmp near ptr 070dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 4c 03 00 00}
03c1h lea rcx,[rsp+250h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 50 02 00 00}
03c9h call 7ff7c7333508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 6b fd ff}
03ceh vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
03d3h vmovdqu xmmword ptr [rsp+240h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 02 00 00}
03dch vmovdqu xmm0,xmmword ptr [rsp+240h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 02 00 00}
03e5h vmovdqu xmmword ptr [rsp+230h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 02 00 00}
03eeh mov rax,[rsp+230h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 30 02 00 00}
03f6h vmovdqu xmm0,xmmword ptr [rsp+250h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 02 00 00}
03ffh vmovdqu xmmword ptr [rsp+220h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 02 00 00}
0408h vmovdqu xmm0,xmmword ptr [rsp+220h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 02 00 00}
0411h vmovdqu xmmword ptr [rsp+210h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 02 00 00}
041ah mov rdx,[rsp+210h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 10 02 00 00}
0422h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0426h vmovupd [rsp+1e0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 e0 01 00 00}
042fh vmovupd ymm0,[rsp+1e0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 e0 01 00 00}
0438h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
043ch vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0440h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0444h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0447h lea rsi,[rsp+250h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 50 02 00 00}
044fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 94 b4 5e}
0454h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0456h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0459h jmp near ptr 070dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 af 02 00 00}
045eh lea rcx,[rsp+1d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 01 00 00}
0466h call 7ff7c7333508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 6b fd ff}
046bh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
046fh vmovdqu xmmword ptr [rsp+1c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 01 00 00}
0478h vmovdqu xmm0,xmmword ptr [rsp+1c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 01 00 00}
0481h vmovdqu xmmword ptr [rsp+1b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 01 00 00}
048ah mov rax,[rsp+1b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 b0 01 00 00}
0492h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0497h vmovdqu xmmword ptr [rsp+1a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 01 00 00}
04a0h vmovdqu xmm0,xmmword ptr [rsp+1a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 01 00 00}
04a9h vmovdqu xmmword ptr [rsp+190h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 01 00 00}
04b2h mov rdx,[rsp+190h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 90 01 00 00}
04bah vmovdqu xmm0,xmmword ptr [rsp+1d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 01 00 00}
04c3h vmovdqu xmmword ptr [rsp+180h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 01 00 00}
04cch vmovdqu xmm0,xmmword ptr [rsp+180h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 01 00 00}
04d5h vmovdqu xmmword ptr [rsp+170h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 01 00 00}
04deh mov rcx,[rsp+170h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 70 01 00 00}
04e6h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
04eah vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
04eeh vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
04f2h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
04f6h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
04fah vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
04feh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0501h lea rsi,[rsp+1d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 d0 01 00 00}
0509h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 94 b4 5e}
050eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0510h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0513h jmp near ptr 070dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f5 01 00 00}
0518h lea rcx,[rsp+160h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 60 01 00 00}
0520h call 7ff7c7333508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 6a fd ff}
0525h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0529h vmovdqu xmmword ptr [rsp+150h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 01 00 00}
0532h vmovdqu xmm0,xmmword ptr [rsp+150h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 01 00 00}
053bh vmovdqu xmmword ptr [rsp+140h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 01 00 00}
0544h mov rax,[rsp+140h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 40 01 00 00}
054ch vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0551h vmovdqu xmmword ptr [rsp+130h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 01 00 00}
055ah vmovdqu xmm0,xmmword ptr [rsp+130h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 01 00 00}
0563h vmovdqu xmmword ptr [rsp+120h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 01 00 00}
056ch mov rdx,[rsp+120h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 20 01 00 00}
0574h vmovdqu xmm0,xmmword ptr [rsp+160h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 01 00 00}
057dh vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
0586h vmovdqu xmm0,xmmword ptr [rsp+110h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 01 00 00}
058fh vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
0598h mov rcx,[rsp+100h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 00 01 00 00}
05a0h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
05a4h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
05a8h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
05ach vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
05b0h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
05b3h lea rsi,[rsp+160h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 60 01 00 00}
05bbh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 93 b4 5e}
05c0h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
05c2h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
05c5h jmp near ptr 070dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 43 01 00 00}
05cah lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
05d2h call 7ff7c7333508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 69 fd ff}
05d7h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
05dbh vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
05e4h vmovdqu xmm0,xmmword ptr [rsp+0e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 00 00 00}
05edh vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
05f6h mov rax,[rsp+0d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 d0 00 00 00}
05feh vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0603h vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
060ch vmovdqu xmm0,xmmword ptr [rsp+0c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 00 00 00}
0615h vmovdqu xmmword ptr [rsp+0b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 00 00 00}
061eh mov rdx,[rsp+0b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 b0 00 00 00}
0626h vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
062fh vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
0638h vmovdqu xmm0,xmmword ptr [rsp+0a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 00 00 00}
0641h vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
064ah mov rcx,[rsp+90h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 90 00 00 00}
0652h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0656h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
065ah vpcmpeqw ymm2,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 d0}
065eh vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0662h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0666h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
066ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
066dh lea rsi,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 f0 00 00 00}
0675h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 92 b4 5e}
067ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
067ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
067fh jmp near ptr 070dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 89 00 00 00}
0684h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
068ch call 7ff7c7333508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 69 fd ff}
0691h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0695h vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
069bh vmovdqu xmm0,xmmword ptr [rsp+70h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 70}
06a1h vmovdqu xmmword ptr [rsp+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 60}
06a7h mov rax,[rsp+60h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 60}
06ach vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
06b1h vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
06b7h vmovdqu xmm0,xmmword ptr [rsp+50h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 50}
06bdh vmovdqu xmmword ptr [rsp+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 40}
06c3h mov rdx,[rsp+40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 40}
06c8h vmovdqu xmm0,xmmword ptr [rsp+80h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 00 00 00}
06d1h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
06d7h vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
06ddh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
06e3h mov rcx,[rsp+20h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 4c 24 20}
06e8h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
06ech vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
06f0h vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
06f4h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
06f8h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
06fbh lea rsi,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 80 00 00 00}
0703h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 92 b4 5e}
0708h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
070ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
070dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0710h add rsp,430h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 30 04 00 00}
0717h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0718h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0719h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
071ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
071bh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
071dh ret                                     ; RET || C3 || encoded[1]{c3}
071eh mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
0728h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 a0 b4 5e}
072dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0730h mov [rsi+8],r14b                        ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 76 08}
0734h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
073eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 9f b4 5e}
0743h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0746h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
074bh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0755h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 38 c7 5e}
075ah mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
075dh mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
0767h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 23 af 5e}
076ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
076fh call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c ca 75 ff}
0774h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0776h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 f5 04 ff}
077bh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
077eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0781h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0784h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 74 03 ff}
0789h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
078ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
078fh call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 27 06 ff}
0794h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0797h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 eb ab 5e}
079ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> eval<uint>(BinaryBitLogicKind:byte kind, BitMatrix<uint> A, BitMatrix<uint> B)
; eval_g8u_bm32x32u_bm32x32u[2635] = {41 56 57 56 55 53 48 81 ec 80 05 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 54 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 44 8b f2 49 8b f0 49 8b e9 41 0f b6 ce 83 f9 0f 0f 87 df 09 00 00 8b c9 48 8d 15 b2 0a 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 c7 84 24 70 05 00 00 ff ff ff ff 8b 8c 24 70 05 00 00 89 8c 24 78 05 00 00 48 8b cb 8b 94 24 78 05 00 00 e8 cb f8 ff ff 48 8b c3 e9 86 09 00 00 48 8b cb e8 83 63 fd ff 48 8b c3 e9 76 09 00 00 48 8d 8c 24 60 05 00 00 e8 6e 63 fd ff c5 fa 6f 06 c5 fa 7f 84 24 50 05 00 00 c5 fa 6f 84 24 50 05 00 00 c5 fa 7f 84 24 40 05 00 00 48 8b 84 24 40 05 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 30 05 00 00 c5 fa 6f 84 24 30 05 00 00 c5 fa 7f 84 24 20 05 00 00 48 8b 94 24 20 05 00 00 c5 fa 6f 84 24 60 05 00 00 c5 fa 7f 84 24 10 05 00 00 c5 fa 6f 84 24 10 05 00 00 c5 fa 7f 84 24 00 05 00 00 48 8b 8c 24 00 05 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd db c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c cf 48 8b fb 48 8d b4 24 60 05 00 00 e8 1c 87 b4 5e 48 a5 48 8b c3 e9 9d 08 00 00 48 8d 8c 24 f0 04 00 00 e8 95 62 fd ff c5 fa 6f 06 c5 fa 7f 84 24 e0 04 00 00 c5 fa 6f 84 24 e0 04 00 00 c5 fa 7f 84 24 d0 04 00 00 48 8b 84 24 d0 04 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 c0 04 00 00 c5 fa 6f 84 24 c0 04 00 00 c5 fa 7f 84 24 b0 04 00 00 48 8b 94 24 b0 04 00 00 c5 fa 6f 84 24 f0 04 00 00 c5 fa 7f 84 24 a0 04 00 00 c5 fa 6f 84 24 a0 04 00 00 c5 fa 7f 84 24 90 04 00 00 48 8b 8c 24 90 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd db c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb 48 8d b4 24 f0 04 00 00 e8 3b 86 b4 5e 48 a5 48 8b c3 e9 bc 07 00 00 48 8d 8c 24 80 04 00 00 e8 b4 61 fd ff c5 fa 6f 06 c5 fa 7f 84 24 70 04 00 00 c5 fa 6f 84 24 70 04 00 00 c5 fa 7f 84 24 60 04 00 00 48 8b 84 24 60 04 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 50 04 00 00 c5 fa 6f 84 24 50 04 00 00 c5 fa 7f 84 24 40 04 00 00 48 8b 94 24 40 04 00 00 c5 fa 6f 84 24 80 04 00 00 c5 fa 7f 84 24 30 04 00 00 c5 fa 6f 84 24 30 04 00 00 c5 fa 7f 84 24 20 04 00 00 48 8b 8c 24 20 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c5 fc 57 c0 c5 fd 11 84 24 f0 03 00 00 c5 fc 57 c0 c5 fd 11 84 24 d0 03 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 f0 03 00 00 c5 ff f0 06 c5 fd 11 84 24 d0 03 00 00 c5 fd 10 84 24 f0 03 00 00 c5 fd 10 8c 24 d0 03 00 00 c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c 91 48 8b fb 48 8d b4 24 80 04 00 00 e8 24 85 b4 5e 48 a5 48 8b c3 e9 a5 06 00 00 48 8d 8c 24 c0 03 00 00 e8 9d 60 fd ff c5 fa 6f 06 c5 fa 7f 84 24 b0 03 00 00 c5 fa 6f 84 24 b0 03 00 00 c5 fa 7f 84 24 a0 03 00 00 48 8b 84 24 a0 03 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 90 03 00 00 c5 fa 6f 84 24 90 03 00 00 c5 fa 7f 84 24 80 03 00 00 48 8b 94 24 80 03 00 00 c5 fa 6f 84 24 c0 03 00 00 c5 fa 7f 84 24 70 03 00 00 c5 fa 6f 84 24 70 03 00 00 c5 fa 7f 84 24 60 03 00 00 48 8b 8c 24 60 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c5 fc 57 c0 c5 fd 11 84 24 30 03 00 00 c5 fc 57 c0 c5 fd 11 84 24 10 03 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 30 03 00 00 c5 ff f0 06 c5 fd 11 84 24 10 03 00 00 c5 fd 10 84 24 30 03 00 00 c5 fd 10 8c 24 10 03 00 00 c5 fd eb c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c 89 48 8b fb 48 8d b4 24 c0 03 00 00 e8 05 84 b4 5e 48 a5 48 8b c3 e9 86 05 00 00 48 8d 8c 24 00 03 00 00 e8 7e 5f fd ff c5 fa 6f 06 c5 fa 7f 84 24 f0 02 00 00 c5 fa 6f 84 24 f0 02 00 00 c5 fa 7f 84 24 e0 02 00 00 48 8b 84 24 e0 02 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 d0 02 00 00 c5 fa 6f 84 24 d0 02 00 00 c5 fa 7f 84 24 c0 02 00 00 48 8b 94 24 c0 02 00 00 c5 fa 6f 84 24 00 03 00 00 c5 fa 7f 84 24 b0 02 00 00 c5 fa 6f 84 24 b0 02 00 00 c5 fa 7f 84 24 a0 02 00 00 48 8b 8c 24 a0 02 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c cf 48 8b fb 48 8d b4 24 00 03 00 00 e8 2c 83 b4 5e 48 a5 48 8b c3 e9 ad 04 00 00 48 8d 8c 24 90 02 00 00 e8 a5 5e fd ff c5 fa 6f 06 c5 fa 7f 84 24 80 02 00 00 c5 fa 6f 84 24 80 02 00 00 c5 fa 7f 84 24 70 02 00 00 48 8b 84 24 70 02 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 60 02 00 00 c5 fa 6f 84 24 60 02 00 00 c5 fa 7f 84 24 50 02 00 00 48 8b 94 24 50 02 00 00 c5 fa 6f 84 24 90 02 00 00 c5 fa 7f 84 24 40 02 00 00 c5 fa 6f 84 24 40 02 00 00 c5 fa 7f 84 24 30 02 00 00 48 8b 8c 24 30 02 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd ef c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb 48 8d b4 24 90 02 00 00 e8 4b 82 b4 5e 48 a5 48 8b c3 e9 cc 03 00 00 48 8b fb e8 39 82 b4 5e 48 a5 48 8b c3 e9 ba 03 00 00 48 8b fb 48 8b f5 e8 24 82 b4 5e 48 a5 48 8b c3 e9 a5 03 00 00 48 8d 8c 24 20 02 00 00 e8 9d 5d fd ff c5 fa 6f 06 c5 fa 7f 84 24 10 02 00 00 c5 fa 6f 84 24 10 02 00 00 c5 fa 7f 84 24 00 02 00 00 48 8b 84 24 00 02 00 00 c5 fa 6f 84 24 20 02 00 00 c5 fa 7f 84 24 f0 01 00 00 c5 fa 6f 84 24 f0 01 00 00 c5 fa 7f 84 24 e0 01 00 00 48 8b 94 24 e0 01 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c 88 c5 fc 57 c0 c5 fd 11 84 24 b0 01 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 b0 01 00 00 c5 fd 10 84 24 b0 01 00 00 c5 fd 76 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c 8a c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c b6 48 8b fb 48 8d b4 24 20 02 00 00 e8 5b 81 b4 5e 48 a5 48 8b c3 e9 dc 02 00 00 48 8d 8c 24 a0 01 00 00 e8 d4 5c fd ff c5 fa 6f 45 00 c5 fa 7f 84 24 90 01 00 00 c5 fa 6f 84 24 90 01 00 00 c5 fa 7f 84 24 80 01 00 00 48 8b 84 24 80 01 00 00 c5 fa 6f 84 24 a0 01 00 00 c5 fa 7f 84 24 70 01 00 00 c5 fa 6f 84 24 70 01 00 00 c5 fa 7f 84 24 60 01 00 00 48 8b 94 24 60 01 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c 88 c5 fc 57 c0 c5 fd 11 84 24 30 01 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 30 01 00 00 c5 fd 10 84 24 30 01 00 00 c5 fd 76 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c 8a c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c b6 48 8b fb 48 8d b4 24 a0 01 00 00 e8 91 80 b4 5e 48 a5 48 8b c3 e9 12 02 00 00 48 8d 8c 24 20 01 00 00 e8 0a 5c fd ff c5 fa 6f 06 c5 fa 7f 84 24 10 01 00 00 c5 fa 6f 84 24 10 01 00 00 c5 fa 7f 84 24 00 01 00 00 48 8b 84 24 00 01 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 f0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 e0 00 00 00 48 8b 94 24 e0 00 00 00 c5 fa 6f 84 24 20 01 00 00 c5 fa 7f 84 24 d0 00 00 00 c5 fa 6f 84 24 d0 00 00 00 c5 fa 7f 84 24 c0 00 00 00 48 8b 8c 24 c0 00 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 f5 76 d1 c5 f5 ef ca c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb 48 8d b4 24 20 01 00 00 e8 b0 7f b4 5e 48 a5 48 8b c3 e9 31 01 00 00 48 8d 8c 24 b0 00 00 00 e8 29 5b fd ff c5 fa 6f 06 c5 fa 7f 84 24 a0 00 00 00 c5 fa 6f 84 24 a0 00 00 00 c5 fa 7f 84 24 90 00 00 00 48 8b 84 24 90 00 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 80 00 00 00 c5 fa 6f 84 24 80 00 00 00 c5 fa 7f 44 24 70 48 8b 54 24 70 c5 fa 6f 84 24 b0 00 00 00 c5 fa 7f 44 24 60 c5 fa 6f 44 24 60 c5 fa 7f 44 24 50 48 8b 4c 24 50 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd df c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c cf 48 8b fb 48 8d b4 24 b0 00 00 00 e8 e9 7e b4 5e 48 a5 48 8b c3 eb 6d 48 8d 4c 24 40 e8 68 5a fd ff c5 fa 6f 06 c5 fa 7f 44 24 30 c5 fa 6f 44 24 30 c5 fa 7f 44 24 20 48 8b 74 24 20 48 8b cd e8 f5 59 fd ff 48 8b f8 48 8d 4c 24 40 e8 e8 59 fd ff 4c 8b c0 48 8b d7 48 8b ce e8 ca 42 fd ff 48 8b fb 48 8d 74 24 40 e8 8d 7e b4 5e 48 a5 48 8b c3 eb 11 48 8b cb 48 8b d6 4c 8b c5 e8 f8 e4 ff ff 48 8b c3 c5 f8 77 48 81 c4 80 05 00 00 5b 5d 5e 5f 41 5e c3 48 b9 00 eb 72 c6 f7 7f 00 00 e8 75 8c b4 5e 48 8b f0 41 0f b6 ce e8 e9 e3 ff ff 48 8b d0 48 8b ce e8 16 14 06 ff 48 8b ce e8 a6 d8 ab 5e cc}
; TermCode = INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,580h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 80 05 00 00}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0013h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0018h mov ecx,154h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 54 01 00 00}
001dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001fh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0027h mov r14d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b f2}
002ah mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
002dh mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
0030h movzx ecx,r14b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ce}
0034h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0037h ja near ptr 0a1ch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 df 09 00 00}
003dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
003fh lea rdx,[rip+0ab2h]                     ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 b2 0a 00 00}
0046h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0049h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
0050h add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
0053h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0055h mov dword ptr [rsp+570h],0ffffffffh     ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 70 05 00 00 ff ff ff ff}
0060h mov ecx,[rsp+570h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 8c 24 70 05 00 00}
0067h mov [rsp+578h],ecx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 8c 24 78 05 00 00}
006eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0071h mov edx,[rsp+578h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 78 05 00 00}
0078h call 7ff7c735cf58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb f8 ff ff}
007dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0080h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 86 09 00 00}
0085h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0088h call 7ff7c7333a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 63 fd ff}
008dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0090h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 76 09 00 00}
0095h lea rcx,[rsp+560h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 60 05 00 00}
009dh call 7ff7c7333a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 63 fd ff}
00a2h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
00a6h vmovdqu xmmword ptr [rsp+550h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 05 00 00}
00afh vmovdqu xmm0,xmmword ptr [rsp+550h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 05 00 00}
00b8h vmovdqu xmmword ptr [rsp+540h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 05 00 00}
00c1h mov rax,[rsp+540h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 40 05 00 00}
00c9h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
00ceh vmovdqu xmmword ptr [rsp+530h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 05 00 00}
00d7h vmovdqu xmm0,xmmword ptr [rsp+530h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 05 00 00}
00e0h vmovdqu xmmword ptr [rsp+520h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 05 00 00}
00e9h mov rdx,[rsp+520h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 20 05 00 00}
00f1h vmovdqu xmm0,xmmword ptr [rsp+560h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 05 00 00}
00fah vmovdqu xmmword ptr [rsp+510h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 05 00 00}
0103h vmovdqu xmm0,xmmword ptr [rsp+510h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 05 00 00}
010ch vmovdqu xmmword ptr [rsp+500h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 05 00 00}
0115h mov rcx,[rsp+500h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 00 05 00 00}
011dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0120h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0123h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0126h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
012ah lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
012eh lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0132h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0137h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
013bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
013fh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0142h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0147h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
014ah add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
014eh cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0152h jl short 0123h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0154h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0157h lea rsi,[rsp+560h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 60 05 00 00}
015fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 87 b4 5e}
0164h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0166h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0169h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9d 08 00 00}
016eh lea rcx,[rsp+4f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 04 00 00}
0176h call 7ff7c7333a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 62 fd ff}
017bh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
017fh vmovdqu xmmword ptr [rsp+4e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 04 00 00}
0188h vmovdqu xmm0,xmmword ptr [rsp+4e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 04 00 00}
0191h vmovdqu xmmword ptr [rsp+4d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 04 00 00}
019ah mov rax,[rsp+4d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 d0 04 00 00}
01a2h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
01a7h vmovdqu xmmword ptr [rsp+4c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 04 00 00}
01b0h vmovdqu xmm0,xmmword ptr [rsp+4c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 04 00 00}
01b9h vmovdqu xmmword ptr [rsp+4b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 04 00 00}
01c2h mov rdx,[rsp+4b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 b0 04 00 00}
01cah vmovdqu xmm0,xmmword ptr [rsp+4f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 04 00 00}
01d3h vmovdqu xmmword ptr [rsp+4a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 04 00 00}
01dch vmovdqu xmm0,xmmword ptr [rsp+4a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 04 00 00}
01e5h vmovdqu xmmword ptr [rsp+490h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 04 00 00}
01eeh mov rcx,[rsp+490h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 90 04 00 00}
01f6h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
01f9h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
01fch movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
01ffh shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0203h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0207h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
020bh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0210h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0214h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0218h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
021ch vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0220h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0223h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0228h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
022bh add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
022fh cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0233h jl short 01fch                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
0235h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0238h lea rsi,[rsp+4f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 f0 04 00 00}
0240h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 86 b4 5e}
0245h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0247h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
024ah jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 bc 07 00 00}
024fh lea rcx,[rsp+480h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 04 00 00}
0257h call 7ff7c7333a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 61 fd ff}
025ch vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0260h vmovdqu xmmword ptr [rsp+470h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 04 00 00}
0269h vmovdqu xmm0,xmmword ptr [rsp+470h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 04 00 00}
0272h vmovdqu xmmword ptr [rsp+460h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 04 00 00}
027bh mov rax,[rsp+460h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 60 04 00 00}
0283h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0288h vmovdqu xmmword ptr [rsp+450h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 04 00 00}
0291h vmovdqu xmm0,xmmword ptr [rsp+450h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 04 00 00}
029ah vmovdqu xmmword ptr [rsp+440h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 04 00 00}
02a3h mov rdx,[rsp+440h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 40 04 00 00}
02abh vmovdqu xmm0,xmmword ptr [rsp+480h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 04 00 00}
02b4h vmovdqu xmmword ptr [rsp+430h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 04 00 00}
02bdh vmovdqu xmm0,xmmword ptr [rsp+430h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 04 00 00}
02c6h vmovdqu xmmword ptr [rsp+420h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 04 00 00}
02cfh mov rcx,[rsp+420h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 20 04 00 00}
02d7h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
02dah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
02ddh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
02e0h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
02e4h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
02e8h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
02ech vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
02f0h vmovupd [rsp+3f0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 f0 03 00 00}
02f9h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
02fdh vmovupd [rsp+3d0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 d0 03 00 00}
0306h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
030bh vmovupd [rsp+3f0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 f0 03 00 00}
0314h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0318h vmovupd [rsp+3d0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 d0 03 00 00}
0321h vmovupd ymm0,[rsp+3f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 03 00 00}
032ah vmovupd ymm1,[rsp+3d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 d0 03 00 00}
0333h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0337h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
033ah vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
033fh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0342h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0346h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
034ah jl short 02ddh                          ; JL rel8 || 7C cb || encoded[2]{7c 91}
034ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
034fh lea rsi,[rsp+480h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 80 04 00 00}
0357h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 85 b4 5e}
035ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
035eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0361h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 06 00 00}
0366h lea rcx,[rsp+3c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 c0 03 00 00}
036eh call 7ff7c7333a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 60 fd ff}
0373h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0377h vmovdqu xmmword ptr [rsp+3b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 03 00 00}
0380h vmovdqu xmm0,xmmword ptr [rsp+3b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 03 00 00}
0389h vmovdqu xmmword ptr [rsp+3a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 03 00 00}
0392h mov rax,[rsp+3a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 a0 03 00 00}
039ah vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
039fh vmovdqu xmmword ptr [rsp+390h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 03 00 00}
03a8h vmovdqu xmm0,xmmword ptr [rsp+390h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 03 00 00}
03b1h vmovdqu xmmword ptr [rsp+380h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 03 00 00}
03bah mov rdx,[rsp+380h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 80 03 00 00}
03c2h vmovdqu xmm0,xmmword ptr [rsp+3c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 03 00 00}
03cbh vmovdqu xmmword ptr [rsp+370h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 03 00 00}
03d4h vmovdqu xmm0,xmmword ptr [rsp+370h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 03 00 00}
03ddh vmovdqu xmmword ptr [rsp+360h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 03 00 00}
03e6h mov rcx,[rsp+360h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 60 03 00 00}
03eeh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
03f1h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
03f4h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
03f7h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
03fbh lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
03ffh lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0403h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0407h vmovupd [rsp+330h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 30 03 00 00}
0410h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0414h vmovupd [rsp+310h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 10 03 00 00}
041dh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0422h vmovupd [rsp+330h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 30 03 00 00}
042bh vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
042fh vmovupd [rsp+310h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 10 03 00 00}
0438h vmovupd ymm0,[rsp+330h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 30 03 00 00}
0441h vmovupd ymm1,[rsp+310h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 10 03 00 00}
044ah vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
044eh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0452h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0456h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0459h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
045eh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0461h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0465h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0469h jl short 03f4h                          ; JL rel8 || 7C cb || encoded[2]{7c 89}
046bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
046eh lea rsi,[rsp+3c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 c0 03 00 00}
0476h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 84 b4 5e}
047bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
047dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0480h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 86 05 00 00}
0485h lea rcx,[rsp+300h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 00 03 00 00}
048dh call 7ff7c7333a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 5f fd ff}
0492h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0496h vmovdqu xmmword ptr [rsp+2f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 02 00 00}
049fh vmovdqu xmm0,xmmword ptr [rsp+2f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 02 00 00}
04a8h vmovdqu xmmword ptr [rsp+2e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 02 00 00}
04b1h mov rax,[rsp+2e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e0 02 00 00}
04b9h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
04beh vmovdqu xmmword ptr [rsp+2d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 02 00 00}
04c7h vmovdqu xmm0,xmmword ptr [rsp+2d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 02 00 00}
04d0h vmovdqu xmmword ptr [rsp+2c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 02 00 00}
04d9h mov rdx,[rsp+2c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 c0 02 00 00}
04e1h vmovdqu xmm0,xmmword ptr [rsp+300h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 03 00 00}
04eah vmovdqu xmmword ptr [rsp+2b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 02 00 00}
04f3h vmovdqu xmm0,xmmword ptr [rsp+2b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 02 00 00}
04fch vmovdqu xmmword ptr [rsp+2a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 02 00 00}
0505h mov rcx,[rsp+2a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 a0 02 00 00}
050dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0510h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0513h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0516h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
051ah lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
051eh lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0522h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0527h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
052bh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
052fh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0532h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0537h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
053ah add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
053eh cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0542h jl short 0513h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0544h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0547h lea rsi,[rsp+300h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 00 03 00 00}
054fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 83 b4 5e}
0554h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0556h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0559h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ad 04 00 00}
055eh lea rcx,[rsp+290h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 02 00 00}
0566h call 7ff7c7333a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 5e fd ff}
056bh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
056fh vmovdqu xmmword ptr [rsp+280h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 02 00 00}
0578h vmovdqu xmm0,xmmword ptr [rsp+280h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 02 00 00}
0581h vmovdqu xmmword ptr [rsp+270h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 02 00 00}
058ah mov rax,[rsp+270h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 70 02 00 00}
0592h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0597h vmovdqu xmmword ptr [rsp+260h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 02 00 00}
05a0h vmovdqu xmm0,xmmword ptr [rsp+260h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 02 00 00}
05a9h vmovdqu xmmword ptr [rsp+250h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 02 00 00}
05b2h mov rdx,[rsp+250h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 50 02 00 00}
05bah vmovdqu xmm0,xmmword ptr [rsp+290h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 02 00 00}
05c3h vmovdqu xmmword ptr [rsp+240h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 02 00 00}
05cch vmovdqu xmm0,xmmword ptr [rsp+240h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 02 00 00}
05d5h vmovdqu xmmword ptr [rsp+230h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 02 00 00}
05deh mov rcx,[rsp+230h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 30 02 00 00}
05e6h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
05e9h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
05ech movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
05efh shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
05f3h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
05f7h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
05fbh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0600h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0604h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0608h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
060ch vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0610h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0613h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0618h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
061bh add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
061fh cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0623h jl short 05ech                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
0625h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0628h lea rsi,[rsp+290h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 90 02 00 00}
0630h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 82 b4 5e}
0635h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0637h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
063ah jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 cc 03 00 00}
063fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0642h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 82 b4 5e}
0647h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0649h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
064ch jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ba 03 00 00}
0651h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0654h mov rsi,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f5}
0657h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 82 b4 5e}
065ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
065eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0661h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 03 00 00}
0666h lea rcx,[rsp+220h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 20 02 00 00}
066eh call 7ff7c7333a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 5d fd ff}
0673h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0677h vmovdqu xmmword ptr [rsp+210h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 02 00 00}
0680h vmovdqu xmm0,xmmword ptr [rsp+210h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 02 00 00}
0689h vmovdqu xmmword ptr [rsp+200h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 02 00 00}
0692h mov rax,[rsp+200h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 00 02 00 00}
069ah vmovdqu xmm0,xmmword ptr [rsp+220h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 02 00 00}
06a3h vmovdqu xmmword ptr [rsp+1f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 01 00 00}
06ach vmovdqu xmm0,xmmword ptr [rsp+1f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 01 00 00}
06b5h vmovdqu xmmword ptr [rsp+1e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 01 00 00}
06beh mov rdx,[rsp+1e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 e0 01 00 00}
06c6h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
06c8h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
06cbh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
06ceh lea r9,[rax+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 88}
06d2h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
06d6h vmovupd [rsp+1b0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 b0 01 00 00}
06dfh vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
06e4h vmovupd [rsp+1b0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 b0 01 00 00}
06edh vmovupd ymm0,[rsp+1b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 01 00 00}
06f6h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
06fah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
06feh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0701h lea r9,[rdx+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 8a}
0705h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
070ah inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
070ch add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
0710h cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
0713h jl short 06cbh                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
0715h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0718h lea rsi,[rsp+220h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 20 02 00 00}
0720h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 81 b4 5e}
0725h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0727h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
072ah jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dc 02 00 00}
072fh lea rcx,[rsp+1a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 a0 01 00 00}
0737h call 7ff7c7333a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 5c fd ff}
073ch vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0741h vmovdqu xmmword ptr [rsp+190h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 01 00 00}
074ah vmovdqu xmm0,xmmword ptr [rsp+190h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 01 00 00}
0753h vmovdqu xmmword ptr [rsp+180h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 01 00 00}
075ch mov rax,[rsp+180h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 80 01 00 00}
0764h vmovdqu xmm0,xmmword ptr [rsp+1a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 01 00 00}
076dh vmovdqu xmmword ptr [rsp+170h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 01 00 00}
0776h vmovdqu xmm0,xmmword ptr [rsp+170h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 01 00 00}
077fh vmovdqu xmmword ptr [rsp+160h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 01 00 00}
0788h mov rdx,[rsp+160h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 60 01 00 00}
0790h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0792h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0795h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0798h lea r9,[rax+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 88}
079ch vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
07a0h vmovupd [rsp+130h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 30 01 00 00}
07a9h vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
07aeh vmovupd [rsp+130h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 30 01 00 00}
07b7h vmovupd ymm0,[rsp+130h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 30 01 00 00}
07c0h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
07c4h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
07c8h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
07cbh lea r9,[rdx+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 8a}
07cfh vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
07d4h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
07d6h add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
07dah cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
07ddh jl short 0795h                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
07dfh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
07e2h lea rsi,[rsp+1a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 a0 01 00 00}
07eah call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 80 b4 5e}
07efh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
07f1h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
07f4h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 12 02 00 00}
07f9h lea rcx,[rsp+120h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 20 01 00 00}
0801h call 7ff7c7333a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 5c fd ff}
0806h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
080ah vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
0813h vmovdqu xmm0,xmmword ptr [rsp+110h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 01 00 00}
081ch vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
0825h mov rax,[rsp+100h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 00 01 00 00}
082dh vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0832h vmovdqu xmmword ptr [rsp+0f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 00 00 00}
083bh vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
0844h vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
084dh mov rdx,[rsp+0e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 e0 00 00 00}
0855h vmovdqu xmm0,xmmword ptr [rsp+120h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 01 00 00}
085eh vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
0867h vmovdqu xmm0,xmmword ptr [rsp+0d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 00 00 00}
0870h vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
0879h mov rcx,[rsp+0c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c0 00 00 00}
0881h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0884h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0887h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
088ah shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
088eh lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0892h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0896h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
089bh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
089fh vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
08a3h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
08a7h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
08abh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
08aeh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
08b3h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
08b6h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
08bah cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
08beh jl short 0887h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
08c0h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
08c3h lea rsi,[rsp+120h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 20 01 00 00}
08cbh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 7f b4 5e}
08d0h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
08d2h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
08d5h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 31 01 00 00}
08dah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
08e2h call 7ff7c7333a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 5b fd ff}
08e7h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
08ebh vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
08f4h vmovdqu xmm0,xmmword ptr [rsp+0a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 00 00 00}
08fdh vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
0906h mov rax,[rsp+90h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 90 00 00 00}
090eh vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0913h vmovdqu xmmword ptr [rsp+80h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 00 00 00}
091ch vmovdqu xmm0,xmmword ptr [rsp+80h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 00 00 00}
0925h vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
092bh mov rdx,[rsp+70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 70}
0930h vmovdqu xmm0,xmmword ptr [rsp+0b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 00 00 00}
0939h vmovdqu xmmword ptr [rsp+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 60}
093fh vmovdqu xmm0,xmmword ptr [rsp+60h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 60}
0945h vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
094bh mov rcx,[rsp+50h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 4c 24 50}
0950h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0953h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0956h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0959h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
095dh lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0961h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0965h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
096ah vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
096eh vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
0972h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0975h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
097ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
097dh add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0981h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0985h jl short 0956h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0987h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
098ah lea rsi,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 b0 00 00 00}
0992h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 7e b4 5e}
0997h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0999h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
099ch jmp short 0a0bh                         ; JMP rel8 || EB cb || encoded[2]{eb 6d}
099eh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
09a3h call 7ff7c7333a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 5a fd ff}
09a8h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
09ach vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
09b2h vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
09b8h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
09beh mov rsi,[rsp+20h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 74 24 20}
09c3h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
09c6h call 7ff7c73339d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 59 fd ff}
09cbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
09ceh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
09d3h call 7ff7c73339d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 59 fd ff}
09d8h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
09dbh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
09deh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
09e1h call 7ff7c73322c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 42 fd ff}
09e6h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
09e9h lea rsi,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 40}
09eeh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 7e b4 5e}
09f3h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
09f5h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
09f8h jmp short 0a0bh                         ; JMP rel8 || EB cb || encoded[2]{eb 11}
09fah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
09fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0a00h mov r8,rbp                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c5}
0a03h call 7ff7c735c510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 e4 ff ff}
0a08h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0a0bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0a0eh add rsp,580h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 05 00 00}
0a15h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0a16h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0a17h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0a18h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0a19h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0a1bh ret                                     ; RET || C3 || encoded[1]{c3}
0a1ch mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
0a26h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 8c b4 5e}
0a2bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a2eh movzx ecx,r14b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ce}
0a32h call 7ff7c735c430h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 e3 ff ff}
0a37h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a3ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0a3dh call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 14 06 ff}
0a42h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0a45h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 d8 ab 5e}
0a4ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitMatrix<ulong> A, BitMatrix<ulong> B)
; eval_g8u_bm64x64u_bm64x64u[2634] = {41 56 57 56 55 53 48 81 ec 50 05 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 48 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 44 8b f2 49 8b f0 49 8b e9 41 0f b6 ce 83 f9 0f 0f 87 8e 09 00 00 8b c9 48 8d 15 aa 0a 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 48 c7 84 24 40 05 00 00 ff ff ff ff 48 8b 8c 24 40 05 00 00 48 89 8c 24 48 05 00 00 48 8b cb 48 8b 94 24 48 05 00 00 e8 df ef ff ff 48 8b c3 e9 31 09 00 00 48 8b cb e8 af 54 fd ff 48 8b c3 e9 21 09 00 00 48 8d 8c 24 30 05 00 00 e8 9a 54 fd ff c5 fa 6f 06 c5 fa 7f 84 24 20 05 00 00 c5 fa 6f 84 24 20 05 00 00 c5 fa 7f 84 24 10 05 00 00 48 8b 84 24 10 05 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 00 05 00 00 c5 fa 6f 84 24 00 05 00 00 c5 fa 7f 84 24 f0 04 00 00 48 8b 94 24 f0 04 00 00 c5 fa 6f 84 24 30 05 00 00 c5 fa 7f 84 24 e0 04 00 00 c5 fa 6f 84 24 e0 04 00 00 c5 fa 7f 84 24 d0 04 00 00 48 8b 8c 24 d0 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd db c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c cf 48 8b fb 48 8d b4 24 30 05 00 00 e8 b8 77 b4 5e 48 a5 48 8b c3 e9 48 08 00 00 48 8d 8c 24 c0 04 00 00 e8 c1 53 fd ff c5 fa 6f 06 c5 fa 7f 84 24 b0 04 00 00 c5 fa 6f 84 24 b0 04 00 00 c5 fa 7f 84 24 a0 04 00 00 48 8b 84 24 a0 04 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 90 04 00 00 c5 fa 6f 84 24 90 04 00 00 c5 fa 7f 84 24 80 04 00 00 48 8b 94 24 80 04 00 00 c5 fa 6f 84 24 c0 04 00 00 c5 fa 7f 84 24 70 04 00 00 c5 fa 6f 84 24 70 04 00 00 c5 fa 7f 84 24 60 04 00 00 48 8b 8c 24 60 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd db c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb 48 8d b4 24 c0 04 00 00 e8 d6 76 b4 5e 48 a5 48 8b c3 e9 66 07 00 00 48 8d 8c 24 50 04 00 00 e8 df 52 fd ff c5 fa 6f 06 c5 fa 7f 84 24 40 04 00 00 c5 fa 6f 84 24 40 04 00 00 c5 fa 7f 84 24 30 04 00 00 48 8b 84 24 30 04 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 20 04 00 00 c5 fa 6f 84 24 20 04 00 00 c5 fa 7f 84 24 10 04 00 00 48 8b 94 24 10 04 00 00 c5 fa 6f 84 24 50 04 00 00 c5 fa 7f 84 24 00 04 00 00 c5 fa 6f 84 24 00 04 00 00 c5 fa 7f 84 24 f0 03 00 00 48 8b 8c 24 f0 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c5 fc 57 c0 c5 fd 11 84 24 c0 03 00 00 c5 fc 57 c0 c5 fd 11 84 24 a0 03 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 c0 03 00 00 c5 ff f0 06 c5 fd 11 84 24 a0 03 00 00 c5 fd 10 84 24 c0 03 00 00 c5 fd 10 8c 24 a0 03 00 00 c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c 91 48 8b fb 48 8d b4 24 50 04 00 00 e8 bf 75 b4 5e 48 a5 48 8b c3 e9 4f 06 00 00 48 8d 8c 24 90 03 00 00 e8 c8 51 fd ff c5 fa 6f 06 c5 fa 7f 84 24 80 03 00 00 c5 fa 6f 84 24 80 03 00 00 c5 fa 7f 84 24 70 03 00 00 48 8b 84 24 70 03 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 60 03 00 00 c5 fa 6f 84 24 60 03 00 00 c5 fa 7f 84 24 50 03 00 00 48 8b 94 24 50 03 00 00 c5 fa 6f 84 24 90 03 00 00 c5 fa 7f 84 24 40 03 00 00 c5 fa 6f 84 24 40 03 00 00 c5 fa 7f 84 24 30 03 00 00 48 8b 8c 24 30 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c5 fc 57 c0 c5 fd 11 84 24 00 03 00 00 c5 fc 57 c0 c5 fd 11 84 24 e0 02 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 00 03 00 00 c5 ff f0 06 c5 fd 11 84 24 e0 02 00 00 c5 fd 10 84 24 00 03 00 00 c5 fd 10 8c 24 e0 02 00 00 c5 fd eb c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c 88 48 8b fb 48 8d b4 24 90 03 00 00 e8 9f 74 b4 5e 48 a5 48 8b c3 e9 2f 05 00 00 48 8d 8c 24 d0 02 00 00 e8 a8 50 fd ff c5 fa 6f 06 c5 fa 7f 84 24 c0 02 00 00 c5 fa 6f 84 24 c0 02 00 00 c5 fa 7f 84 24 b0 02 00 00 48 8b 84 24 b0 02 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 a0 02 00 00 c5 fa 6f 84 24 a0 02 00 00 c5 fa 7f 84 24 90 02 00 00 48 8b 94 24 90 02 00 00 c5 fa 6f 84 24 d0 02 00 00 c5 fa 7f 84 24 80 02 00 00 c5 fa 6f 84 24 80 02 00 00 c5 fa 7f 84 24 70 02 00 00 48 8b 8c 24 70 02 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c cf 48 8b fb 48 8d b4 24 d0 02 00 00 e8 c6 73 b4 5e 48 a5 48 8b c3 e9 56 04 00 00 48 8d 8c 24 60 02 00 00 e8 cf 4f fd ff c5 fa 6f 06 c5 fa 7f 84 24 50 02 00 00 c5 fa 6f 84 24 50 02 00 00 c5 fa 7f 84 24 40 02 00 00 48 8b 84 24 40 02 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 30 02 00 00 c5 fa 6f 84 24 30 02 00 00 c5 fa 7f 84 24 20 02 00 00 48 8b 94 24 20 02 00 00 c5 fa 6f 84 24 60 02 00 00 c5 fa 7f 84 24 10 02 00 00 c5 fa 6f 84 24 10 02 00 00 c5 fa 7f 84 24 00 02 00 00 48 8b 8c 24 00 02 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd ef c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb 48 8d b4 24 60 02 00 00 e8 e4 72 b4 5e 48 a5 48 8b c3 e9 74 03 00 00 48 8b fb e8 d2 72 b4 5e 48 a5 48 8b c3 e9 62 03 00 00 48 8b fb 48 8b f5 e8 bd 72 b4 5e 48 a5 48 8b c3 e9 4d 03 00 00 48 8d 8c 24 f0 01 00 00 e8 c6 4e fd ff c5 fa 6f 06 c5 fa 7f 84 24 e0 01 00 00 c5 fa 6f 84 24 e0 01 00 00 c5 fa 7f 84 24 d0 01 00 00 48 8b 84 24 d0 01 00 00 c5 fa 6f 84 24 f0 01 00 00 c5 fa 7f 84 24 c0 01 00 00 c5 fa 6f 84 24 c0 01 00 00 c5 fa 7f 84 24 b0 01 00 00 48 8b 94 24 b0 01 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c c8 c5 fc 57 c0 c5 fd 11 84 24 80 01 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 80 01 00 00 c5 fd 10 84 24 80 01 00 00 c4 e2 7d 29 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c b5 48 8b fb 48 8d b4 24 f0 01 00 00 e8 f3 71 b4 5e 48 a5 48 8b c3 e9 83 02 00 00 48 8d 8c 24 70 01 00 00 e8 fc 4d fd ff c5 fa 6f 45 00 c5 fa 7f 84 24 60 01 00 00 c5 fa 6f 84 24 60 01 00 00 c5 fa 7f 84 24 50 01 00 00 48 8b 84 24 50 01 00 00 c5 fa 6f 84 24 70 01 00 00 c5 fa 7f 84 24 40 01 00 00 c5 fa 6f 84 24 40 01 00 00 c5 fa 7f 84 24 30 01 00 00 48 8b 94 24 30 01 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c c8 c5 fc 57 c0 c5 fd 11 84 24 00 01 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 00 01 00 00 c5 fd 10 84 24 00 01 00 00 c4 e2 7d 29 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c b5 48 8b fb 48 8d b4 24 70 01 00 00 e8 28 71 b4 5e 48 a5 48 8b c3 e9 b8 01 00 00 48 8d 8c 24 f0 00 00 00 e8 31 4d fd ff c5 fa 6f 06 c5 fa 7f 84 24 e0 00 00 00 c5 fa 6f 84 24 e0 00 00 00 c5 fa 7f 84 24 d0 00 00 00 48 8b 84 24 d0 00 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 c0 00 00 00 c5 fa 6f 84 24 c0 00 00 00 c5 fa 7f 84 24 b0 00 00 00 48 8b 94 24 b0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 a0 00 00 00 c5 fa 6f 84 24 a0 00 00 00 c5 fa 7f 84 24 90 00 00 00 48 8b 8c 24 90 00 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c4 e2 75 29 d1 c5 f5 ef ca c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb 48 8d b4 24 f0 00 00 00 e8 46 70 b4 5e 48 a5 48 8b c3 e9 d6 00 00 00 48 8d 8c 24 80 00 00 00 e8 4f 4c fd ff c5 fa 6f 06 c5 fa 7f 44 24 70 c5 fa 6f 44 24 70 c5 fa 7f 44 24 60 48 8b 44 24 60 c5 fa 6f 45 00 c5 fa 7f 44 24 50 c5 fa 6f 44 24 50 c5 fa 7f 44 24 40 48 8b 54 24 40 c5 fa 6f 84 24 80 00 00 00 c5 fa 7f 44 24 30 c5 fa 6f 44 24 30 c5 fa 7f 44 24 20 48 8b 4c 24 20 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd df c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c cf 48 8b fb 48 8d b4 24 80 00 00 00 e8 91 6f b4 5e 48 a5 48 8b c3 eb 24 48 8b cb 48 8b d6 4c 8b c5 e8 1c 57 fd ff 48 8b c3 eb 11 48 8b cb 48 8b d6 4c 8b c5 e8 d9 5e fd ff 48 8b c3 c5 f8 77 48 81 c4 50 05 00 00 5b 5d 5e 5f 41 5e c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 66 7d b4 5e 48 8b f0 44 88 76 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 50 7d b4 5e 48 8b f8 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 39 16 c7 5e 48 8b d8 48 b9 78 a6 36 c6 f7 7f 00 00 e8 67 00 af 5e 48 8b c8 e8 9f a7 75 ff 8b c8 e8 d8 d2 04 ff 4c 8b c0 48 8b cb 48 8b d6 e8 92 51 03 ff 48 8b d0 48 8b cf e8 b7 04 06 ff 48 8b cf e8 47 c9 ab 5e cc}
; TermCode = INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,550h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 50 05 00 00}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0013h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0018h mov ecx,148h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 48 01 00 00}
001dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001fh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0027h mov r14d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b f2}
002ah mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
002dh mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
0030h movzx ecx,r14b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ce}
0034h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0037h ja near ptr 09cbh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 8e 09 00 00}
003dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
003fh lea rdx,[rip+0aaah]                     ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 aa 0a 00 00}
0046h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0049h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
0050h add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
0053h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0055h mov qword ptr [rsp+540h],0ffffffffffffffffh; MOV r/m64, imm32 || REX.W C7 /0 id || encoded[12]{48 c7 84 24 40 05 00 00 ff ff ff ff}
0061h mov rcx,[rsp+540h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 40 05 00 00}
0069h mov [rsp+548h],rcx                      ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{48 89 8c 24 48 05 00 00}
0071h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0074h mov rdx,[rsp+548h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 48 05 00 00}
007ch call 7ff7c735d5d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df ef ff ff}
0081h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0084h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 31 09 00 00}
0089h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
008ch call 7ff7c7333ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 54 fd ff}
0091h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0094h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 21 09 00 00}
0099h lea rcx,[rsp+530h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 30 05 00 00}
00a1h call 7ff7c7333ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 54 fd ff}
00a6h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
00aah vmovdqu xmmword ptr [rsp+520h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 05 00 00}
00b3h vmovdqu xmm0,xmmword ptr [rsp+520h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 05 00 00}
00bch vmovdqu xmmword ptr [rsp+510h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 05 00 00}
00c5h mov rax,[rsp+510h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 10 05 00 00}
00cdh vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
00d2h vmovdqu xmmword ptr [rsp+500h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 05 00 00}
00dbh vmovdqu xmm0,xmmword ptr [rsp+500h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 05 00 00}
00e4h vmovdqu xmmword ptr [rsp+4f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 04 00 00}
00edh mov rdx,[rsp+4f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 f0 04 00 00}
00f5h vmovdqu xmm0,xmmword ptr [rsp+530h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 05 00 00}
00feh vmovdqu xmmword ptr [rsp+4e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 04 00 00}
0107h vmovdqu xmm0,xmmword ptr [rsp+4e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 04 00 00}
0110h vmovdqu xmmword ptr [rsp+4d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 04 00 00}
0119h mov rcx,[rsp+4d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 d0 04 00 00}
0121h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0124h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0127h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
012ah shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
012eh lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0132h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0136h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
013bh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
013fh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0143h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0146h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
014bh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
014eh add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0152h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0156h jl short 0127h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0158h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
015bh lea rsi,[rsp+530h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 30 05 00 00}
0163h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 77 b4 5e}
0168h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
016ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
016dh jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 48 08 00 00}
0172h lea rcx,[rsp+4c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 c0 04 00 00}
017ah call 7ff7c7333ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 53 fd ff}
017fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0183h vmovdqu xmmword ptr [rsp+4b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 04 00 00}
018ch vmovdqu xmm0,xmmword ptr [rsp+4b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 04 00 00}
0195h vmovdqu xmmword ptr [rsp+4a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 04 00 00}
019eh mov rax,[rsp+4a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 a0 04 00 00}
01a6h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
01abh vmovdqu xmmword ptr [rsp+490h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 04 00 00}
01b4h vmovdqu xmm0,xmmword ptr [rsp+490h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 04 00 00}
01bdh vmovdqu xmmword ptr [rsp+480h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 04 00 00}
01c6h mov rdx,[rsp+480h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 80 04 00 00}
01ceh vmovdqu xmm0,xmmword ptr [rsp+4c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 04 00 00}
01d7h vmovdqu xmmword ptr [rsp+470h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 04 00 00}
01e0h vmovdqu xmm0,xmmword ptr [rsp+470h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 04 00 00}
01e9h vmovdqu xmmword ptr [rsp+460h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 04 00 00}
01f2h mov rcx,[rsp+460h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 60 04 00 00}
01fah xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
01fdh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0200h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0203h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0207h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
020bh lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
020fh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0214h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0218h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
021ch vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0221h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0225h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0228h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
022dh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0230h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0234h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0238h jl short 0200h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
023ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
023dh lea rsi,[rsp+4c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 c0 04 00 00}
0245h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 76 b4 5e}
024ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
024ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
024fh jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 66 07 00 00}
0254h lea rcx,[rsp+450h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 50 04 00 00}
025ch call 7ff7c7333ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 52 fd ff}
0261h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0265h vmovdqu xmmword ptr [rsp+440h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 04 00 00}
026eh vmovdqu xmm0,xmmword ptr [rsp+440h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 04 00 00}
0277h vmovdqu xmmword ptr [rsp+430h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 04 00 00}
0280h mov rax,[rsp+430h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 30 04 00 00}
0288h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
028dh vmovdqu xmmword ptr [rsp+420h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 04 00 00}
0296h vmovdqu xmm0,xmmword ptr [rsp+420h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 04 00 00}
029fh vmovdqu xmmword ptr [rsp+410h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 04 00 00}
02a8h mov rdx,[rsp+410h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 10 04 00 00}
02b0h vmovdqu xmm0,xmmword ptr [rsp+450h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 04 00 00}
02b9h vmovdqu xmmword ptr [rsp+400h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 04 00 00}
02c2h vmovdqu xmm0,xmmword ptr [rsp+400h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 04 00 00}
02cbh vmovdqu xmmword ptr [rsp+3f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 03 00 00}
02d4h mov rcx,[rsp+3f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 f0 03 00 00}
02dch xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
02dfh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
02e2h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
02e5h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
02e9h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
02edh lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
02f1h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
02f5h vmovupd [rsp+3c0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 c0 03 00 00}
02feh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0302h vmovupd [rsp+3a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 03 00 00}
030bh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0310h vmovupd [rsp+3c0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 c0 03 00 00}
0319h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
031dh vmovupd [rsp+3a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 03 00 00}
0326h vmovupd ymm0,[rsp+3c0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 c0 03 00 00}
032fh vmovupd ymm1,[rsp+3a0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 a0 03 00 00}
0338h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
033ch add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
033fh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0344h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0347h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
034bh cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
034fh jl short 02e2h                          ; JL rel8 || 7C cb || encoded[2]{7c 91}
0351h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0354h lea rsi,[rsp+450h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 50 04 00 00}
035ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 75 b4 5e}
0361h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0363h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0366h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 4f 06 00 00}
036bh lea rcx,[rsp+390h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 03 00 00}
0373h call 7ff7c7333ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 51 fd ff}
0378h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
037ch vmovdqu xmmword ptr [rsp+380h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 03 00 00}
0385h vmovdqu xmm0,xmmword ptr [rsp+380h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 03 00 00}
038eh vmovdqu xmmword ptr [rsp+370h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 03 00 00}
0397h mov rax,[rsp+370h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 70 03 00 00}
039fh vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
03a4h vmovdqu xmmword ptr [rsp+360h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 03 00 00}
03adh vmovdqu xmm0,xmmword ptr [rsp+360h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 03 00 00}
03b6h vmovdqu xmmword ptr [rsp+350h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 03 00 00}
03bfh mov rdx,[rsp+350h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 50 03 00 00}
03c7h vmovdqu xmm0,xmmword ptr [rsp+390h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 03 00 00}
03d0h vmovdqu xmmword ptr [rsp+340h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 03 00 00}
03d9h vmovdqu xmm0,xmmword ptr [rsp+340h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 03 00 00}
03e2h vmovdqu xmmword ptr [rsp+330h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 03 00 00}
03ebh mov rcx,[rsp+330h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 30 03 00 00}
03f3h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
03f6h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
03f9h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
03fch shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0400h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0404h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0408h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
040ch vmovupd [rsp+300h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 03 00 00}
0415h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0419h vmovupd [rsp+2e0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 e0 02 00 00}
0422h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0427h vmovupd [rsp+300h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 03 00 00}
0430h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0434h vmovupd [rsp+2e0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 e0 02 00 00}
043dh vmovupd ymm0,[rsp+300h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 00 03 00 00}
0446h vmovupd ymm1,[rsp+2e0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 e0 02 00 00}
044fh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0453h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0458h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
045ch add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
045fh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0464h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0467h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
046bh cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
046fh jl short 03f9h                          ; JL rel8 || 7C cb || encoded[2]{7c 88}
0471h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0474h lea rsi,[rsp+390h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 90 03 00 00}
047ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 74 b4 5e}
0481h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0483h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0486h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2f 05 00 00}
048bh lea rcx,[rsp+2d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 02 00 00}
0493h call 7ff7c7333ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 50 fd ff}
0498h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
049ch vmovdqu xmmword ptr [rsp+2c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 02 00 00}
04a5h vmovdqu xmm0,xmmword ptr [rsp+2c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 02 00 00}
04aeh vmovdqu xmmword ptr [rsp+2b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 02 00 00}
04b7h mov rax,[rsp+2b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 b0 02 00 00}
04bfh vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
04c4h vmovdqu xmmword ptr [rsp+2a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 02 00 00}
04cdh vmovdqu xmm0,xmmword ptr [rsp+2a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 02 00 00}
04d6h vmovdqu xmmword ptr [rsp+290h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 02 00 00}
04dfh mov rdx,[rsp+290h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 90 02 00 00}
04e7h vmovdqu xmm0,xmmword ptr [rsp+2d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 02 00 00}
04f0h vmovdqu xmmword ptr [rsp+280h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 02 00 00}
04f9h vmovdqu xmm0,xmmword ptr [rsp+280h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 02 00 00}
0502h vmovdqu xmmword ptr [rsp+270h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 02 00 00}
050bh mov rcx,[rsp+270h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 70 02 00 00}
0513h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0516h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0519h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
051ch shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0520h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0524h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0528h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
052dh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0531h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0535h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0538h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
053dh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0540h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0544h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0548h jl short 0519h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
054ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
054dh lea rsi,[rsp+2d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 d0 02 00 00}
0555h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 73 b4 5e}
055ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
055ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
055fh jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 56 04 00 00}
0564h lea rcx,[rsp+260h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 60 02 00 00}
056ch call 7ff7c7333ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 4f fd ff}
0571h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0575h vmovdqu xmmword ptr [rsp+250h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 02 00 00}
057eh vmovdqu xmm0,xmmword ptr [rsp+250h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 02 00 00}
0587h vmovdqu xmmword ptr [rsp+240h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 02 00 00}
0590h mov rax,[rsp+240h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 40 02 00 00}
0598h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
059dh vmovdqu xmmword ptr [rsp+230h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 02 00 00}
05a6h vmovdqu xmm0,xmmword ptr [rsp+230h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 02 00 00}
05afh vmovdqu xmmword ptr [rsp+220h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 02 00 00}
05b8h mov rdx,[rsp+220h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 20 02 00 00}
05c0h vmovdqu xmm0,xmmword ptr [rsp+260h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 02 00 00}
05c9h vmovdqu xmmword ptr [rsp+210h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 02 00 00}
05d2h vmovdqu xmm0,xmmword ptr [rsp+210h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 02 00 00}
05dbh vmovdqu xmmword ptr [rsp+200h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 02 00 00}
05e4h mov rcx,[rsp+200h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 00 02 00 00}
05ech xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
05efh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
05f2h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
05f5h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
05f9h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
05fdh lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0601h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0606h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
060ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
060eh vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0613h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0617h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
061ah vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
061fh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0622h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0626h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
062ah jl short 05f2h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
062ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
062fh lea rsi,[rsp+260h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 60 02 00 00}
0637h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 72 b4 5e}
063ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
063eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0641h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 74 03 00 00}
0646h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0649h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 72 b4 5e}
064eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0650h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0653h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 62 03 00 00}
0658h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
065bh mov rsi,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f5}
065eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 72 b4 5e}
0663h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0665h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0668h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 4d 03 00 00}
066dh lea rcx,[rsp+1f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 01 00 00}
0675h call 7ff7c7333ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 4e fd ff}
067ah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
067eh vmovdqu xmmword ptr [rsp+1e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 01 00 00}
0687h vmovdqu xmm0,xmmword ptr [rsp+1e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 01 00 00}
0690h vmovdqu xmmword ptr [rsp+1d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 01 00 00}
0699h mov rax,[rsp+1d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 d0 01 00 00}
06a1h vmovdqu xmm0,xmmword ptr [rsp+1f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 01 00 00}
06aah vmovdqu xmmword ptr [rsp+1c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 01 00 00}
06b3h vmovdqu xmm0,xmmword ptr [rsp+1c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 01 00 00}
06bch vmovdqu xmmword ptr [rsp+1b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 01 00 00}
06c5h mov rdx,[rsp+1b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 b0 01 00 00}
06cdh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
06cfh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
06d2h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
06d5h lea r9,[rax+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c c8}
06d9h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
06ddh vmovupd [rsp+180h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 01 00 00}
06e6h vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
06ebh vmovupd [rsp+180h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 01 00 00}
06f4h vmovupd ymm0,[rsp+180h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 80 01 00 00}
06fdh vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0702h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0706h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0709h lea r9,[rdx+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c ca}
070dh vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0712h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0714h add r8d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 04}
0718h cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
071bh jl short 06d2h                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
071dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0720h lea rsi,[rsp+1f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 f0 01 00 00}
0728h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 71 b4 5e}
072dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
072fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0732h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 02 00 00}
0737h lea rcx,[rsp+170h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 70 01 00 00}
073fh call 7ff7c7333ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 4d fd ff}
0744h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0749h vmovdqu xmmword ptr [rsp+160h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 01 00 00}
0752h vmovdqu xmm0,xmmword ptr [rsp+160h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 01 00 00}
075bh vmovdqu xmmword ptr [rsp+150h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 01 00 00}
0764h mov rax,[rsp+150h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 50 01 00 00}
076ch vmovdqu xmm0,xmmword ptr [rsp+170h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 01 00 00}
0775h vmovdqu xmmword ptr [rsp+140h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 01 00 00}
077eh vmovdqu xmm0,xmmword ptr [rsp+140h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 01 00 00}
0787h vmovdqu xmmword ptr [rsp+130h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 01 00 00}
0790h mov rdx,[rsp+130h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 30 01 00 00}
0798h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
079ah xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
079dh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
07a0h lea r9,[rax+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c c8}
07a4h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
07a8h vmovupd [rsp+100h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 01 00 00}
07b1h vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
07b6h vmovupd [rsp+100h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 01 00 00}
07bfh vmovupd ymm0,[rsp+100h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 00 01 00 00}
07c8h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
07cdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
07d1h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
07d4h lea r9,[rdx+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c ca}
07d8h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
07ddh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
07dfh add r8d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 04}
07e3h cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
07e6h jl short 079dh                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
07e8h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
07ebh lea rsi,[rsp+170h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 70 01 00 00}
07f3h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 71 b4 5e}
07f8h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
07fah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
07fdh jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b8 01 00 00}
0802h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
080ah call 7ff7c7333ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 4d fd ff}
080fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0813h vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
081ch vmovdqu xmm0,xmmword ptr [rsp+0e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 00 00 00}
0825h vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
082eh mov rax,[rsp+0d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 d0 00 00 00}
0836h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
083bh vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
0844h vmovdqu xmm0,xmmword ptr [rsp+0c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 00 00 00}
084dh vmovdqu xmmword ptr [rsp+0b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 00 00 00}
0856h mov rdx,[rsp+0b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 b0 00 00 00}
085eh vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
0867h vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
0870h vmovdqu xmm0,xmmword ptr [rsp+0a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 00 00 00}
0879h vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
0882h mov rcx,[rsp+90h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 90 00 00 00}
088ah xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
088dh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0890h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0893h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0897h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
089bh lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
089fh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
08a4h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
08a8h vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
08adh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
08b1h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
08b5h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
08b8h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
08bdh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
08c0h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
08c4h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
08c8h jl short 0890h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
08cah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
08cdh lea rsi,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 f0 00 00 00}
08d5h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 70 b4 5e}
08dah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
08dch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
08dfh jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 d6 00 00 00}
08e4h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
08ech call 7ff7c7333ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 4c fd ff}
08f1h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
08f5h vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
08fbh vmovdqu xmm0,xmmword ptr [rsp+70h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 70}
0901h vmovdqu xmmword ptr [rsp+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 60}
0907h mov rax,[rsp+60h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 60}
090ch vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0911h vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
0917h vmovdqu xmm0,xmmword ptr [rsp+50h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 50}
091dh vmovdqu xmmword ptr [rsp+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 40}
0923h mov rdx,[rsp+40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 40}
0928h vmovdqu xmm0,xmmword ptr [rsp+80h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 00 00 00}
0931h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
0937h vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
093dh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0943h mov rcx,[rsp+20h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 4c 24 20}
0948h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
094bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
094eh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0951h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0955h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0959h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
095dh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0962h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0966h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
096ah add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
096dh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0972h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0975h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0979h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
097dh jl short 094eh                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
097fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0982h lea rsi,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 80 00 00 00}
098ah call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 6f b4 5e}
098fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0991h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0994h jmp short 09bah                         ; JMP rel8 || EB cb || encoded[2]{eb 24}
0996h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0999h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
099ch mov r8,rbp                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c5}
099fh call 7ff7c7334630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 57 fd ff}
09a4h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
09a7h jmp short 09bah                         ; JMP rel8 || EB cb || encoded[2]{eb 11}
09a9h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
09ach mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
09afh mov r8,rbp                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c5}
09b2h call 7ff7c7334e00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 5e fd ff}
09b7h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
09bah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
09bdh add rsp,550h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 50 05 00 00}
09c4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
09c5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
09c6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
09c7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
09c8h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
09cah ret                                     ; RET || C3 || encoded[1]{c3}
09cbh mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
09d5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 7d b4 5e}
09dah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
09ddh mov [rsi+8],r14b                        ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 76 08}
09e1h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
09ebh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 7d b4 5e}
09f0h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
09f3h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
09f8h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0a02h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 16 c7 5e}
0a07h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0a0ah mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0a14h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 00 af 5e}
0a19h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0a1ch call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f a7 75 ff}
0a21h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0a23h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 d2 04 ff}
0a28h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0a2bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0a2eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0a31h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 51 03 ff}
0a36h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a39h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0a3ch call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 04 06 ff}
0a41h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0a44h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 c9 ab 5e}
0a49h int 3                                   ; INT3 || CC || encoded[1]{cc}
