------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> eval<byte>(UnaryBitLogicKind:byte kind, BitMatrix<byte> A)
; eval_g[8u](UnaryBitLogicKind~8u,bm8x8u)[259] = {57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 28 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 1c 40 80 fd 02 75 5c 48 8b fb e8 92 84 d6 5e 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 e8 4d 40 e3 ff 48 8b 06 48 8d 54 24 28 48 8b 12 48 8b 00 48 f7 d0 48 89 02 48 8b fb 48 8d 74 24 28 e8 4c 84 d6 5e 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 b9 20 c6 35 c7 f7 7f 00 00 e8 4f 92 d6 5e 48 8b f0 40 88 6e 08 48 b9 58 77 35 c6 f7 7f 00 00 e8 79 15 d1 5e 48 8b f8 48 b9 40 b0 5b c6 f7 7f 00 00 e8 27 92 d6 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 10 2b e9 5e 48 8b e8 48 8b cf e8 e5 51 26 ff 8b c8 e8 46 29 26 ff 4c 8b c0 48 8b cd 48 8b d6 e8 78 66 24 ff 48 8b d0 48 8b cb e8 35 b5 26 ff 48 8b cb e8 2d de cd 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000dh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0012h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0015h mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
0017h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
001ah cmp bpl,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 01}
001eh je short 003ch                          ; JE rel8 || 74 cb || encoded[2]{74 1c}
0020h cmp bpl,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 02}
0024h jne short 0082h                         ; JNE rel8 || 75 cb || encoded[2]{75 5c}
0026h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0029h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 84 d6 5e}
002eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0030h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0033h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0037h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0038h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0039h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
003ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0049h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
004eh call 7ff7c6f71a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 40 e3 ff}
0053h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0056h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
005eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0061h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0064h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0067h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006ah lea rsi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 28}
006fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 84 d6 5e}
0074h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0076h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0079h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
007dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0080h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0081h ret                                     ; RET || C3 || encoded[1]{c3}
0082h mov rcx,7ff7c735c620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c6 35 c7 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 92 d6 5e}
0091h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0094h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
0098h mov rcx,7ff7c6357758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 35 c6 f7 7f 00 00}
00a2h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 15 d1 5e}
00a7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00aah mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
00b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 92 d6 5e}
00b9h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bch mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00c1h mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
00cbh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 2b e9 5e}
00d0h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00d3h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d6h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 51 26 ff}
00dbh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00ddh call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 29 26 ff}
00e2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e5h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00e8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00ebh call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 66 24 ff}
00f0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f6h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 b5 26 ff}
00fbh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00feh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d de cd 5e}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, BitMatrix<ushort> A)
; eval_g[16u](UnaryBitLogicKind~8u,bm16x16u)[298] = {57 56 55 53 48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 48 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 23 40 80 fd 02 0f 85 7f 00 00 00 48 8b fb e8 5e 83 d6 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 8d 4c 24 48 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 48 e8 c6 77 e3 ff 48 8b 06 48 8d 54 24 48 48 8b 12 c5 fc 57 c0 c5 fd 11 44 24 20 c5 ff f0 00 c5 fd 11 44 24 20 c5 fd 10 44 24 20 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb 48 8d 74 24 48 e8 f8 82 d6 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 b9 20 c6 35 c7 f7 7f 00 00 e8 f8 90 d6 5e 48 8b f0 40 88 6e 08 48 b9 38 87 35 c6 f7 7f 00 00 e8 22 14 d1 5e 48 8b f8 48 b9 40 b0 5b c6 f7 7f 00 00 e8 d0 90 d6 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 b9 29 e9 5e 48 8b e8 48 8b cf e8 8e 50 26 ff 8b c8 e8 ef 27 26 ff 4c 8b c0 48 8b cd 48 8b d6 e8 21 65 24 ff 48 8b d0 48 8b cb e8 de b3 26 ff 48 8b cb e8 d6 dc cd 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000dh mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0012h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0015h mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
0017h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
001ah cmp bpl,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 01}
001eh je short 0043h                          ; JE rel8 || 74 cb || encoded[2]{74 23}
0020h cmp bpl,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 02}
0024h jne near ptr 00a9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 7f 00 00 00}
002ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
002dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 83 d6 5e}
0032h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0034h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0037h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003ah add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
003eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
003fh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
0043h lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
0048h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0050h lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
0055h call 7ff7c6f75320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 77 e3 ff}
005ah mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
005dh lea rdx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 48}
0062h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0065h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0069h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
006fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0073h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0079h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
007fh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0083h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0087h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
008bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
008eh lea rsi,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 48}
0093h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 82 d6 5e}
0098h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00a0h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00a4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h ret                                     ; RET || C3 || encoded[1]{c3}
00a9h mov rcx,7ff7c735c620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c6 35 c7 f7 7f 00 00}
00b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 90 d6 5e}
00b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bbh mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00bfh mov rcx,7ff7c6358738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 35 c6 f7 7f 00 00}
00c9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 14 d1 5e}
00ceh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d1h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
00dbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 90 d6 5e}
00e0h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00e3h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00e8h mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
00f2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 29 e9 5e}
00f7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00fah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00fdh call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 50 26 ff}
0102h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0104h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 27 26 ff}
0109h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
010fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0112h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 65 24 ff}
0117h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
011ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011dh call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de b3 26 ff}
0122h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0125h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 dc cd 5e}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> eval<uint>(UnaryBitLogicKind:byte kind, BitMatrix<uint> A)
; eval_g[32u](UnaryBitLogicKind~8u,bm32x32u)[330] = {57 56 55 53 48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 48 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 23 40 80 fd 02 0f 85 9f 00 00 00 48 8b fb e8 fe 7d d6 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 8d 4c 24 48 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 48 e8 2e 81 e3 ff 48 8b 06 48 8d 54 24 48 48 8b 12 33 c9 45 33 c0 4d 63 c8 49 c1 e1 02 4e 8d 14 08 c5 fc 57 c0 c5 fd 11 44 24 20 c4 c1 7f f0 02 c5 fd 11 44 24 20 c5 fd 10 44 24 20 c5 fd 76 c8 c5 fd ef c1 4c 03 ca c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c bf 48 8b fb 48 8d 74 24 48 e8 78 7d d6 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 b9 20 c6 35 c7 f7 7f 00 00 e8 78 8b d6 5e 48 8b f0 40 88 6e 08 48 b9 d8 96 35 c6 f7 7f 00 00 e8 a2 0e d1 5e 48 8b f8 48 b9 40 b0 5b c6 f7 7f 00 00 e8 50 8b d6 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 39 24 e9 5e 48 8b e8 48 8b cf e8 0e 4b 26 ff 8b c8 e8 6f 22 26 ff 4c 8b c0 48 8b cd 48 8b d6 e8 a1 5f 24 ff 48 8b d0 48 8b cb e8 5e ae 26 ff 48 8b cb e8 56 d7 cd 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000dh mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0012h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0015h mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
0017h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
001ah cmp bpl,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 01}
001eh je short 0043h                          ; JE rel8 || 74 cb || encoded[2]{74 23}
0020h cmp bpl,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 02}
0024h jne near ptr 00c9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 9f 00 00 00}
002ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
002dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 7d d6 5e}
0032h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0034h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0037h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003ah add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
003eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
003fh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
0043h lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
0048h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0050h lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
0055h call 7ff7c6f761e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 81 e3 ff}
005ah mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
005dh lea rdx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 48}
0062h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0065h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0067h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
006ah movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
006dh shl r9,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e1 02}
0071h lea r10,[rax+r9]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 08}
0075h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0079h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
007fh vlddqu ymm0,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 02}
0084h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
008ah vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0090h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0094h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0098h add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
009bh vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
00a0h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
00a2h add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
00a6h cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
00a9h jl short 006ah                          ; JL rel8 || 7C cb || encoded[2]{7c bf}
00abh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00aeh lea rsi,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 48}
00b3h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 7d d6 5e}
00b8h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00bah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00bdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c0h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00c4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c8h ret                                     ; RET || C3 || encoded[1]{c3}
00c9h mov rcx,7ff7c735c620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c6 35 c7 f7 7f 00 00}
00d3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 8b d6 5e}
00d8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00dbh mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00dfh mov rcx,7ff7c63596d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 35 c6 f7 7f 00 00}
00e9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 0e d1 5e}
00eeh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00f1h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
00fbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 8b d6 5e}
0100h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0103h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0108h mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
0112h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 24 e9 5e}
0117h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
011ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
011dh call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 4b 26 ff}
0122h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0124h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 22 26 ff}
0129h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
012ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
012fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0132h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 5f 24 ff}
0137h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
013ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013dh call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e ae 26 ff}
0142h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0145h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 d7 cd 5e}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, BitMatrix<ulong> A)
; eval_g[64u](UnaryBitLogicKind~8u,bm64x64u)[331] = {57 56 55 53 48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 48 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 23 40 80 fd 02 0f 85 a0 00 00 00 48 8b fb e8 8e 7c d6 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 8d 4c 24 48 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 48 e8 0e 81 e3 ff 48 8b 06 48 8d 54 24 48 48 8b 12 33 c9 45 33 c0 4d 63 c8 49 c1 e1 03 4e 8d 14 08 c5 fc 57 c0 c5 fd 11 44 24 20 c4 c1 7f f0 02 c5 fd 11 44 24 20 c5 fd 10 44 24 20 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c be 48 8b fb 48 8d 74 24 48 e8 07 7c d6 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 b9 20 c6 35 c7 f7 7f 00 00 e8 07 8a d6 5e 48 8b f0 40 88 6e 08 48 b9 78 a6 35 c6 f7 7f 00 00 e8 31 0d d1 5e 48 8b f8 48 b9 40 b0 5b c6 f7 7f 00 00 e8 df 89 d6 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 c8 22 e9 5e 48 8b e8 48 8b cf e8 9d 49 26 ff 8b c8 e8 fe 20 26 ff 4c 8b c0 48 8b cd 48 8b d6 e8 30 5e 24 ff 48 8b d0 48 8b cb e8 ed ac 26 ff 48 8b cb e8 e5 d5 cd 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000dh mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0012h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0015h mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
0017h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
001ah cmp bpl,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 01}
001eh je short 0043h                          ; JE rel8 || 74 cb || encoded[2]{74 23}
0020h cmp bpl,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 02}
0024h jne near ptr 00cah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 a0 00 00 00}
002ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
002dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 7c d6 5e}
0032h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0034h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0037h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003ah add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
003eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
003fh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0040h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0041h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
0043h lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
0048h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0050h lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
0055h call 7ff7c6f76338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 81 e3 ff}
005ah mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
005dh lea rdx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 48}
0062h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0065h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0067h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
006ah movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
006dh shl r9,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e1 03}
0071h lea r10,[rax+r9]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 08}
0075h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0079h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
007fh vlddqu ymm0,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 02}
0084h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
008ah vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0090h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0095h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0099h add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
009ch vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
00a1h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
00a3h add r8d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 04}
00a7h cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
00aah jl short 006ah                          ; JL rel8 || 7C cb || encoded[2]{7c be}
00ach mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00afh lea rsi,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 48}
00b4h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 7c d6 5e}
00b9h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00bbh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00beh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c1h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00c5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c6h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c9h ret                                     ; RET || C3 || encoded[1]{c3}
00cah mov rcx,7ff7c735c620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c6 35 c7 f7 7f 00 00}
00d4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 8a d6 5e}
00d9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00dch mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00e0h mov rcx,7ff7c635a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 35 c6 f7 7f 00 00}
00eah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 0d d1 5e}
00efh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00f2h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
00fch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 89 d6 5e}
0101h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0104h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0109h mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
0113h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 22 e9 5e}
0118h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
011bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
011eh call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 49 26 ff}
0123h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0125h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 20 26 ff}
012ah mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
012dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0130h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0133h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 5e 24 ff}
0138h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
013bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013eh call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed ac 26 ff}
0143h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0146h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 d5 cd 5e}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> eval<byte>(UnaryBitLogicKind:byte kind, BitMatrix<byte> A, ref BitMatrix<byte> Z)
; eval_g[8u](UnaryBitLogicKind~8u,bm8x8u,bm8x8u~ref)[301] = {57 56 55 53 48 83 ec 48 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 28 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 5c 40 80 fd 02 0f 85 7d 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 00 c5 fa 7f 44 24 38 48 8d 4c 24 38 48 8b 11 8b 49 08 4c 8d 44 24 28 49 8b 00 45 8b 40 08 41 3b c8 77 46 4c 63 c1 48 8b c8 e8 95 a7 da 4e 48 8b fb e8 cd 76 d6 5e 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 49 8b 00 48 8b 16 48 8b 00 48 f7 d0 48 89 02 48 8b fb e8 a8 76 d6 5e 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 e8 75 6f 25 ff cc 48 b9 20 c6 35 c7 f7 7f 00 00 e8 a5 84 d6 5e 48 8b f0 40 88 6e 08 48 b9 58 77 35 c6 f7 7f 00 00 e8 cf 07 d1 5e 48 8b f8 48 b9 40 b0 5b c6 f7 7f 00 00 e8 7d 84 d6 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 66 1d e9 5e 48 8b e8 48 8b cf e8 3b 44 26 ff 8b c8 e8 9c 1b 26 ff 4c 8b c0 48 8b cd 48 8b d6 e8 ce 58 24 ff 48 8b d0 48 8b cb e8 8b a7 26 ff 48 8b cb e8 83 d0 cd 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000dh mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0012h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0017h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001ah mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
001ch mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
001fh cmp bpl,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 01}
0023h je short 0081h                          ; JE rel8 || 74 cb || encoded[2]{74 5c}
0025h cmp bpl,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 02}
0029h jne near ptr 00ach                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 7d 00 00 00}
002fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0033h vmovdqu xmmword ptr [rsp+28h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 28}
0039h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
003eh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0044h lea rcx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 38}
0049h mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
004ch mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
004fh lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
0054h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0057h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
005bh cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
005eh ja short 00a6h                          ; JA rel8 || 77 cb || encoded[2]{77 46}
0060h movsxd r8,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c1}
0063h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0066h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 a7 da 4e}
006bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 76 d6 5e}
0073h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0075h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0078h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
007ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
0081h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0084h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0087h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
008ah not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
008dh mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0090h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0093h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 76 d6 5e}
0098h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
00a1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a5h ret                                     ; RET || C3 || encoded[1]{c3}
00a6h call 7ff7c6395770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 6f 25 ff}
00abh int 3                                   ; INT3 || CC || encoded[1]{cc}
00ach mov rcx,7ff7c735c620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c6 35 c7 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 84 d6 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00c2h mov rcx,7ff7c6357758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 35 c6 f7 7f 00 00}
00cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 07 d1 5e}
00d1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d4h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
00deh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 84 d6 5e}
00e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00ebh mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
00f5h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 1d e9 5e}
00fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00fdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0100h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 44 26 ff}
0105h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0107h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 1b 26 ff}
010ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0112h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0115h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 58 24 ff}
011ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
011dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0120h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b a7 26 ff}
0125h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0128h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 d0 cd 5e}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, BitMatrix<ushort> A, ref BitMatrix<ushort> Z)
; eval_g[16u](UnaryBitLogicKind~8u,bm16x16u,bm16x16u~ref)[339] = {57 56 55 53 48 83 ec 78 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 62 40 80 fd 02 0f 85 a3 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 20 c4 c1 7a 6f 00 c5 fa 7f 44 24 30 4c 8d 44 24 30 49 8b 10 45 8b 40 08 48 8d 4c 24 20 48 8b 01 8b 49 08 44 3b c1 77 6c 48 8b c8 4d 63 c0 49 d1 e0 e8 42 a6 da 4e 48 8b fb e8 7a 75 d6 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 49 8b 00 48 8b 16 c5 fc 57 c0 c5 fd 11 44 24 40 c5 ff f0 00 c5 fd 11 44 24 40 c5 fd 10 44 24 40 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb e8 35 75 d6 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 e8 ff 6d 25 ff cc 48 b9 20 c6 35 c7 f7 7f 00 00 e8 2f 83 d6 5e 48 8b f0 40 88 6e 08 48 b9 38 87 35 c6 f7 7f 00 00 e8 59 06 d1 5e 48 8b f8 48 b9 40 b0 5b c6 f7 7f 00 00 e8 07 83 d6 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 f0 1b e9 5e 48 8b e8 48 8b cf e8 c5 42 26 ff 8b c8 e8 26 1a 26 ff 4c 8b c0 48 8b cd 48 8b d6 e8 58 57 24 ff 48 8b d0 48 8b cb e8 15 a6 26 ff 48 8b cb e8 0d cf cd 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,78h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 78}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0017h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001ah mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
001ch mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
001fh cmp bpl,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 01}
0023h je short 0087h                          ; JE rel8 || 74 cb || encoded[2]{74 62}
0025h cmp bpl,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 02}
0029h jne near ptr 00d2h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 a3 00 00 00}
002fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0033h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0039h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
003eh vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
0044h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0049h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
004ch mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0050h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0055h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0058h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
005bh cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
005eh ja short 00cch                          ; JA rel8 || 77 cb || encoded[2]{77 6c}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0066h shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
0069h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 a6 da 4e}
006eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0071h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 75 d6 5e}
0076h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0078h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007eh add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
0082h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0083h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
0087h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
008ah mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
008dh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0091h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0097h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
009bh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
00a1h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
00a7h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00abh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00afh vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
00b3h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00b6h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 75 d6 5e}
00bbh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00bdh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00c0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c3h add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
00c7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00cah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00cbh ret                                     ; RET || C3 || encoded[1]{c3}
00cch call 7ff7c6395770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 6d 25 ff}
00d1h int 3                                   ; INT3 || CC || encoded[1]{cc}
00d2h mov rcx,7ff7c735c620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c6 35 c7 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 83 d6 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00e8h mov rcx,7ff7c6358738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 35 c6 f7 7f 00 00}
00f2h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 06 d1 5e}
00f7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00fah mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
0104h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 83 d6 5e}
0109h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
010ch mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0111h mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
011bh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 1b e9 5e}
0120h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0123h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0126h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 42 26 ff}
012bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
012dh call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 1a 26 ff}
0132h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0135h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0138h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
013bh call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 57 24 ff}
0140h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0143h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0146h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 a6 26 ff}
014bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
014eh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d cf cd 5e}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> eval<uint>(UnaryBitLogicKind:byte kind, BitMatrix<uint> A, ref BitMatrix<uint> Z)
; eval_g[32u](UnaryBitLogicKind~8u,bm32x32u,bm32x32u~ref)[376] = {57 56 55 53 48 83 ec 78 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 67 40 80 fd 02 0f 85 c8 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 20 c4 c1 7a 6f 00 c5 fa 7f 44 24 30 4c 8d 44 24 30 49 8b 10 45 8b 40 08 48 8d 4c 24 20 48 8b 01 8b 49 08 44 3b c1 0f 87 8d 00 00 00 48 8b c8 4d 63 c0 49 c1 e0 02 e8 bd a4 da 4e 48 8b fb e8 f5 73 d6 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 49 8b 00 48 8b 16 33 c9 45 33 c0 4d 63 c8 49 c1 e1 02 4e 8d 14 08 c5 fc 57 c0 c5 fd 11 44 24 40 c4 c1 7f f0 02 c5 fd 11 44 24 40 c5 fd 10 44 24 40 c5 fd 76 c8 c5 fd ef c1 4c 03 ca c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c bf 48 8b fb e8 90 73 d6 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 e8 5a 6c 25 ff cc 48 b9 20 c6 35 c7 f7 7f 00 00 e8 8a 81 d6 5e 48 8b f0 40 88 6e 08 48 b9 d8 96 35 c6 f7 7f 00 00 e8 b4 04 d1 5e 48 8b f8 48 b9 40 b0 5b c6 f7 7f 00 00 e8 62 81 d6 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 4b 1a e9 5e 48 8b e8 48 8b cf e8 20 41 26 ff 8b c8 e8 81 18 26 ff 4c 8b c0 48 8b cd 48 8b d6 e8 b3 55 24 ff 48 8b d0 48 8b cb e8 70 a4 26 ff 48 8b cb e8 68 cd cd 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,78h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 78}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0017h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001ah mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
001ch mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
001fh cmp bpl,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 01}
0023h je short 008ch                          ; JE rel8 || 74 cb || encoded[2]{74 67}
0025h cmp bpl,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 02}
0029h jne near ptr 00f7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 c8 00 00 00}
002fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0033h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0039h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
003eh vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
0044h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0049h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
004ch mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0050h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0055h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0058h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
005bh cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
005eh ja near ptr 00f1h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 8d 00 00 00}
0064h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0067h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
006ah shl r8,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 02}
006eh call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd a4 da 4e}
0073h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0076h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 73 d6 5e}
007bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
007dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0080h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0083h add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
008ch mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
008fh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0092h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0094h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0097h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
009ah shl r9,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e1 02}
009eh lea r10,[rax+r9]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 08}
00a2h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
00a6h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
00ach vlddqu ymm0,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 02}
00b1h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
00b7h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
00bdh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00c1h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c5h add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
00c8h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
00cdh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
00cfh add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
00d3h cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
00d6h jl short 0097h                          ; JL rel8 || 7C cb || encoded[2]{7c bf}
00d8h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00dbh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 73 d6 5e}
00e0h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00e2h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00e5h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00e8h add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
00ech pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00edh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00eeh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00efh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f0h ret                                     ; RET || C3 || encoded[1]{c3}
00f1h call 7ff7c6395770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 6c 25 ff}
00f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
00f7h mov rcx,7ff7c735c620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c6 35 c7 f7 7f 00 00}
0101h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 81 d6 5e}
0106h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0109h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
010dh mov rcx,7ff7c63596d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 35 c6 f7 7f 00 00}
0117h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 04 d1 5e}
011ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
011fh mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 81 d6 5e}
012eh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0131h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0136h mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
0140h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 1a e9 5e}
0145h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0148h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
014bh call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 41 26 ff}
0150h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0152h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 18 26 ff}
0157h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
015ah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
015dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0160h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 55 24 ff}
0165h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0168h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
016bh call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 a4 26 ff}
0170h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0173h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 cd cd 5e}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, BitMatrix<ulong> A, ref BitMatrix<ulong> Z)
; eval_g[64u](UnaryBitLogicKind~8u,bm64x64u,bm64x64u~ref)[377] = {57 56 55 53 48 83 ec 78 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 67 40 80 fd 02 0f 85 c9 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 20 c4 c1 7a 6f 00 c5 fa 7f 44 24 30 4c 8d 44 24 30 49 8b 10 45 8b 40 08 48 8d 4c 24 20 48 8b 01 8b 49 08 44 3b c1 0f 87 8e 00 00 00 48 8b c8 4d 63 c0 49 c1 e0 03 e8 0d 9f da 4e 48 8b fb e8 45 6e d6 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 49 8b 00 48 8b 16 33 c9 45 33 c0 4d 63 c8 49 c1 e1 03 4e 8d 14 08 c5 fc 57 c0 c5 fd 11 44 24 40 c4 c1 7f f0 02 c5 fd 11 44 24 40 c5 fd 10 44 24 40 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c be 48 8b fb e8 df 6d d6 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 e8 a9 66 25 ff cc 48 b9 20 c6 35 c7 f7 7f 00 00 e8 d9 7b d6 5e 48 8b f0 40 88 6e 08 48 b9 78 a6 35 c6 f7 7f 00 00 e8 03 ff d0 5e 48 8b f8 48 b9 40 b0 5b c6 f7 7f 00 00 e8 b1 7b d6 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 9a 14 e9 5e 48 8b e8 48 8b cf e8 6f 3b 26 ff 8b c8 e8 d0 12 26 ff 4c 8b c0 48 8b cd 48 8b d6 e8 02 50 24 ff 48 8b d0 48 8b cb e8 bf 9e 26 ff 48 8b cb e8 b7 c7 cd 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,78h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 78}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000dh mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0012h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0017h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
001ah mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
001ch mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
001fh cmp bpl,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 01}
0023h je short 008ch                          ; JE rel8 || 74 cb || encoded[2]{74 67}
0025h cmp bpl,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 02}
0029h jne near ptr 00f8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 c9 00 00 00}
002fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0033h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0039h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
003eh vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
0044h lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0049h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
004ch mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0050h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0055h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0058h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
005bh cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
005eh ja near ptr 00f2h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 8e 00 00 00}
0064h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0067h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
006ah shl r8,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 03}
006eh call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 9f da 4e}
0073h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0076h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 6e d6 5e}
007bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
007dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0080h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0083h add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
0087h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0088h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
008ch mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
008fh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0092h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0094h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0097h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
009ah shl r9,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e1 03}
009eh lea r10,[rax+r9]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 08}
00a2h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
00a6h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
00ach vlddqu ymm0,ymmword ptr [r10]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 02}
00b1h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
00b7h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
00bdh vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00c2h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c6h add r9,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 ca}
00c9h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
00ceh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
00d0h add r8d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 04}
00d4h cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
00d7h jl short 0097h                          ; JL rel8 || 7C cb || encoded[2]{7c be}
00d9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00dch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 6d d6 5e}
00e1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00e3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00e6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00e9h add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
00edh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00eeh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00efh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f1h ret                                     ; RET || C3 || encoded[1]{c3}
00f2h call 7ff7c6395770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 66 25 ff}
00f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
00f8h mov rcx,7ff7c735c620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 c6 35 c7 f7 7f 00 00}
0102h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 7b d6 5e}
0107h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
010ah mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
010eh mov rcx,7ff7c635a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 35 c6 f7 7f 00 00}
0118h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 ff d0 5e}
011dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0120h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
012ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 7b d6 5e}
012fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0132h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0137h mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
0141h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 14 e9 5e}
0146h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0149h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
014ch call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 3b 26 ff}
0151h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0153h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 12 26 ff}
0158h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
015bh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
015eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0161h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 50 24 ff}
0166h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0169h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
016ch call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 9e 26 ff}
0171h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0174h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 c7 cd 5e}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> eval<byte>(BinaryBitLogicKind:byte kind, BitMatrix<byte> A, BitMatrix<byte> B)
; eval_g[8u](BinaryBitLogicKind~8u,bm8x8u,bm8x8u)[1177] = {41 56 57 56 55 53 48 81 ec f0 00 00 00 48 8b f1 48 8d 7c 24 28 b9 30 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 44 8b f2 49 8b f0 49 8b e9 41 0f b6 ce 83 f9 0f 0f 87 82 03 00 00 8b c9 48 8d 15 fd 03 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 b9 ff 00 00 00 88 8c 24 e8 00 00 00 48 8b cb 0f b6 94 24 e8 00 00 00 e8 1a e1 ff ff 48 8b c3 e9 38 03 00 00 48 8b cb e8 52 06 e3 ff 48 8b c3 e9 28 03 00 00 48 8d 8c 24 d8 00 00 00 e8 3d 06 e3 ff 48 8b 06 48 8b 55 00 48 8d 8c 24 d8 00 00 00 48 8b 09 48 8b 00 48 8b 12 48 23 c2 48 89 01 48 8b fb 48 8d b4 24 d8 00 00 00 e8 2f 4a d6 5e 48 a5 48 8b c3 e9 e3 02 00 00 48 8d 8c 24 c8 00 00 00 e8 f8 05 e3 ff 48 8b 06 48 8b 55 00 48 8d 8c 24 c8 00 00 00 48 8b 09 48 8b 00 48 8b 12 48 23 c2 48 f7 d0 48 89 01 48 8b fb 48 8d b4 24 c8 00 00 00 e8 e7 49 d6 5e 48 a5 48 8b c3 e9 9b 02 00 00 48 8d 8c 24 b8 00 00 00 e8 b0 05 e3 ff 48 8b 06 48 8b 55 00 48 8d 8c 24 b8 00 00 00 48 8b 09 48 8b 00 48 8b 12 48 0b c2 48 89 01 48 8b fb 48 8d b4 24 b8 00 00 00 e8 a2 49 d6 5e 48 a5 48 8b c3 e9 56 02 00 00 48 8d 8c 24 a8 00 00 00 e8 6b 05 e3 ff 48 8b 06 48 8b 55 00 48 8d 8c 24 a8 00 00 00 48 8b 09 48 8b 00 48 8b 12 48 0b c2 48 f7 d0 48 89 01 48 8b fb 48 8d b4 24 a8 00 00 00 e8 5a 49 d6 5e 48 a5 48 8b c3 e9 0e 02 00 00 48 8d 8c 24 98 00 00 00 e8 23 05 e3 ff 48 8b 06 48 8b 55 00 48 8d 8c 24 98 00 00 00 48 8b 09 48 8b 00 48 8b 12 48 33 c2 48 89 01 48 8b fb 48 8d b4 24 98 00 00 00 e8 15 49 d6 5e 48 a5 48 8b c3 e9 c9 01 00 00 48 8d 8c 24 88 00 00 00 e8 de 04 e3 ff 48 8b 06 48 8b 55 00 48 8d 8c 24 88 00 00 00 48 8b 09 48 8b 00 48 8b 12 48 33 c2 48 f7 d0 48 89 01 48 8b fb 48 8d b4 24 88 00 00 00 e8 cd 48 d6 5e 48 a5 48 8b c3 e9 81 01 00 00 48 8b fb e8 bb 48 d6 5e 48 a5 48 8b c3 e9 6f 01 00 00 48 8b fb 48 8b f5 e8 a6 48 d6 5e 48 a5 48 8b c3 e9 5a 01 00 00 48 8d 4c 24 78 e8 72 04 e3 ff 48 8b 06 48 8d 54 24 78 48 8b 12 48 8b 00 48 f7 d0 48 89 02 48 8b fb 48 8d 74 24 78 e8 71 48 d6 5e 48 a5 48 8b c3 e9 25 01 00 00 48 8d 4c 24 68 e8 3d 04 e3 ff 48 8b 45 00 48 8d 54 24 68 48 8b 12 48 8b 00 48 f7 d0 48 89 02 48 8b fb 48 8d 74 24 68 e8 3b 48 d6 5e 48 a5 48 8b c3 e9 ef 00 00 00 48 8d 4c 24 58 e8 07 04 e3 ff 48 8b 06 48 8b 55 00 48 8d 4c 24 58 48 8b 09 48 8b 00 48 8b 12 48 f7 d2 48 0b c2 48 89 01 48 8b fb 48 8d 74 24 58 e8 fc 47 d6 5e 48 a5 48 8b c3 e9 b0 00 00 00 48 8d 4c 24 48 e8 c8 03 e3 ff 48 8b 06 48 8b 55 00 48 8d 4c 24 48 48 8b 09 48 8b 00 48 8b 12 c4 e2 f8 f2 c2 48 89 01 48 8b fb 48 8d 74 24 48 e8 be 47 d6 5e 48 a5 48 8b c3 eb 75 48 8d 4c 24 38 e8 8d 03 e3 ff 48 8b 06 48 8b 55 00 48 8d 4c 24 38 48 8b 09 48 8b 00 48 8b 12 48 f7 d0 48 0b c2 48 89 01 48 8b fb 48 8d 74 24 38 e8 82 47 d6 5e 48 a5 48 8b c3 eb 39 48 8d 4c 24 28 e8 51 03 e3 ff 48 8b 06 48 8b 55 00 48 8d 4c 24 28 48 8b 09 48 8b 00 48 8b 12 c4 e2 e8 f2 c0 48 89 01 48 8b fb 48 8d 74 24 28 e8 47 47 d6 5e 48 a5 48 8b c3 48 81 c4 f0 00 00 00 5b 5d 5e 5f 41 5e c3 48 b9 78 c9 35 c7 f7 7f 00 00 e8 45 55 d6 5e 48 8b f0 44 88 76 08 48 b9 58 77 35 c6 f7 7f 00 00 e8 6f d8 d0 5e 48 8b f8 48 b9 40 b0 5b c6 f7 7f 00 00 e8 1d 55 d6 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 06 ee e8 5e 48 8b e8 48 8b cf e8 db 14 26 ff 8b c8 e8 3c ec 25 ff 4c 8b c0 48 8b cd 48 8b d6 e8 6e 29 24 ff 48 8b d0 48 8b cb e8 2b 78 26 ff 48 8b cb e8 23 a1 cd 5e cc 00 00 49 00 00 00 59 00 00 00 48 03 00 00 00 02 00 00 d1 02 00 00 12 02 00 00 73 01 00 00 e6 00 00 00 2b 01 00 00 b8 01 00 00 5c 02 00 00 92 02 00 00 27 02 00 00 0c 03 00 00 9e 00 00 00 25 00 00 00 19 0d 07 00 0d 01 1e 00 06 30 05 50 04 60 03 70 02 e0 00 00 40 00 00 00 02}
; TermCode = CTC_Zx7
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
0069h call 7ff7c713f528h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a e1 ff ff}
006eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0071h jmp near ptr 03aeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 38 03 00 00}
0076h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0079h call 7ff7c6f71a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 06 e3 ff}
007eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0081h jmp near ptr 03aeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
0086h lea rcx,[rsp+0d8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d8 00 00 00}
008eh call 7ff7c6f71a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 06 e3 ff}
0093h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0096h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
009ah lea rcx,[rsp+0d8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d8 00 00 00}
00a2h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
00a5h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
00a8h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
00abh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
00aeh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
00b1h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00b4h lea rsi,[rsp+0d8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 d8 00 00 00}
00bch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 4a d6 5e}
00c1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00c3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00c6h jmp near ptr 03aeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e3 02 00 00}
00cbh lea rcx,[rsp+0c8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 c8 00 00 00}
00d3h call 7ff7c6f71a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 05 e3 ff}
00d8h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
00dbh mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
00dfh lea rcx,[rsp+0c8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 c8 00 00 00}
00e7h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
00eah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
00edh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
00f0h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
00f3h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00f6h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
00f9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00fch lea rsi,[rsp+0c8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 c8 00 00 00}
0104h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 49 d6 5e}
0109h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
010bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
010eh jmp near ptr 03aeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9b 02 00 00}
0113h lea rcx,[rsp+0b8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b8 00 00 00}
011bh call 7ff7c6f71a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 05 e3 ff}
0120h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0123h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0127h lea rcx,[rsp+0b8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b8 00 00 00}
012fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0132h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0135h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0138h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
013bh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
013eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0141h lea rsi,[rsp+0b8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 b8 00 00 00}
0149h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 49 d6 5e}
014eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0150h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0153h jmp near ptr 03aeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 56 02 00 00}
0158h lea rcx,[rsp+0a8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 a8 00 00 00}
0160h call 7ff7c6f71a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 05 e3 ff}
0165h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0168h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
016ch lea rcx,[rsp+0a8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 a8 00 00 00}
0174h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0177h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
017ah mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
017dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0180h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0183h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0186h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0189h lea rsi,[rsp+0a8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 a8 00 00 00}
0191h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 49 d6 5e}
0196h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0198h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
019bh jmp near ptr 03aeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0e 02 00 00}
01a0h lea rcx,[rsp+98h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 98 00 00 00}
01a8h call 7ff7c6f71a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 05 e3 ff}
01adh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
01b0h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
01b4h lea rcx,[rsp+98h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 98 00 00 00}
01bch mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
01bfh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
01c2h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
01c5h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
01c8h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
01cbh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01ceh lea rsi,[rsp+98h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 98 00 00 00}
01d6h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 49 d6 5e}
01dbh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01ddh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01e0h jmp near ptr 03aeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 c9 01 00 00}
01e5h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
01edh call 7ff7c6f71a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 04 e3 ff}
01f2h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
01f5h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
01f9h lea rcx,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 88 00 00 00}
0201h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0204h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0207h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
020ah xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
020dh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0210h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0213h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0216h lea rsi,[rsp+88h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 88 00 00 00}
021eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 48 d6 5e}
0223h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0225h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0228h jmp near ptr 03aeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 81 01 00 00}
022dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0230h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 48 d6 5e}
0235h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0237h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
023ah jmp near ptr 03aeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
023fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0242h mov rsi,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f5}
0245h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 48 d6 5e}
024ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
024ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
024fh jmp near ptr 03aeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5a 01 00 00}
0254h lea rcx,[rsp+78h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 78}
0259h call 7ff7c6f71a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 04 e3 ff}
025eh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0261h lea rdx,[rsp+78h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 78}
0266h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0269h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
026ch not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
026fh mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0272h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0275h lea rsi,[rsp+78h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 78}
027ah call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 48 d6 5e}
027fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0281h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0284h jmp near ptr 03aeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 25 01 00 00}
0289h lea rcx,[rsp+68h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 68}
028eh call 7ff7c6f71a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 04 e3 ff}
0293h mov rax,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 00}
0297h lea rdx,[rsp+68h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 68}
029ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
029fh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
02a2h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
02a5h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
02a8h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
02abh lea rsi,[rsp+68h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 68}
02b0h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 48 d6 5e}
02b5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02b7h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02bah jmp near ptr 03aeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ef 00 00 00}
02bfh lea rcx,[rsp+58h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 58}
02c4h call 7ff7c6f71a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 04 e3 ff}
02c9h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
02cch mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
02d0h lea rcx,[rsp+58h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 58}
02d5h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
02d8h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
02dbh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
02deh not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
02e1h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
02e4h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
02e7h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
02eah lea rsi,[rsp+58h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 58}
02efh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 47 d6 5e}
02f4h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02f6h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02f9h jmp near ptr 03aeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b0 00 00 00}
02feh lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
0303h call 7ff7c6f71a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 03 e3 ff}
0308h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
030bh mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
030fh lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
0314h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0317h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
031ah mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
031dh andn rax,rax,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f8 f2 c2}
0322h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0325h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0328h lea rsi,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 48}
032dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 47 d6 5e}
0332h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0334h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0337h jmp short 03aeh                         ; JMP rel8 || EB cb || encoded[2]{eb 75}
0339h lea rcx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 38}
033eh call 7ff7c6f71a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 03 e3 ff}
0343h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0346h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
034ah lea rcx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 38}
034fh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0352h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0355h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0358h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
035bh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
035eh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0361h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0364h lea rsi,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 38}
0369h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 47 d6 5e}
036eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0370h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0373h jmp short 03aeh                         ; JMP rel8 || EB cb || encoded[2]{eb 39}
0375h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
037ah call 7ff7c6f71a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 03 e3 ff}
037fh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0382h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0386h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
038bh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
038eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0391h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0394h andn rax,rdx,rax                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 c0}
0399h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
039ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
039fh lea rsi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 28}
03a4h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 47 d6 5e}
03a9h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
03abh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
03aeh add rsp,0f0h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 f0 00 00 00}
03b5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
03b6h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
03b7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
03b8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
03b9h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
03bbh ret                                     ; RET || C3 || encoded[1]{c3}
03bch mov rcx,7ff7c735c978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c9 35 c7 f7 7f 00 00}
03c6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 55 d6 5e}
03cbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ceh mov [rsi+8],r14b                        ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 76 08}
03d2h mov rcx,7ff7c6357758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 35 c6 f7 7f 00 00}
03dch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f d8 d0 5e}
03e1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03e4h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
03eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 55 d6 5e}
03f3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
03f6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
03fbh mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
0405h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 ee e8 5e}
040ah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
040dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0410h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 14 26 ff}
0415h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0417h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c ec 25 ff}
041ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
041fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0422h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0425h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 29 24 ff}
042ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
042dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0430h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 78 26 ff}
0435h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0438h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 a1 cd 5e}
043dh int 3                                   ; INT3 || CC || encoded[1]{cc}
043eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0440h add [r8],al                             ; ADD r/m8, r8 || 00 /r || encoded[3]{49 00 00}
0443h add [rcx],bl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 59 00}
0446h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0448h add rax,[rax]                           ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 00}
044bh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
044dh add al,[rax]                            ; ADD r8, r/m8 || 02 /r || encoded[2]{02 00}
044fh add cl,dl                               ; ADD r/m8, r8 || 00 /r || encoded[2]{00 d1}
0451h add al,[rax]                            ; ADD r8, r/m8 || 02 /r || encoded[2]{02 00}
0453h add [rdx],dl                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 12}
0455h add al,[rax]                            ; ADD r8, r/m8 || 02 /r || encoded[2]{02 00}
0457h add [rbx+1],dh                          ; ADD r/m8, r8 || 00 /r || encoded[3]{00 73 01}
045ah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
045ch out 0,al                                ; OUT imm8, AL || E6 ib || encoded[2]{e6 00}
045eh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0460h sub eax,[rcx]                           ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b 01}
0462h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0464h mov eax,5c000001h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 5c}
0469h add al,[rax]                            ; ADD r8, r/m8 || 02 /r || encoded[2]{02 00}
046bh add [rdx+27000002h],dl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 92 02 00 00 27}
0471h add al,[rax]                            ; ADD r8, r/m8 || 02 /r || encoded[2]{02 00}
0473h add [rbx+rax],cl                        ; ADD r/m8, r8 || 00 /r || encoded[3]{00 0c 03}
0476h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0478h sahf                                    ; SAHF || 9E || encoded[1]{9e}
0479h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
047bh add [rip+19000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 25 00 00 00 19}
0481h or eax,10d0007h                         ; OR EAX, imm32 || o32 0D id || encoded[5]{0d 07 00 0d 01}
0486h (bad)                                   ; <invalid> || <invalid> || encoded[2]{1e 00}
0488h (bad)                                   ; <invalid> || <invalid> || encoded[2]{06 30}
048ah add eax,3600450h                        ; ADD EAX, imm32 || o32 05 id || encoded[5]{05 50 04 60 03}
048fh jo short 0493h                          ; JO rel8 || 70 cb || encoded[2]{70 02}
0491h loopne 0493h                            ; LOOPNE rel8 || E0 cb || encoded[2]{e0 00}
0493h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 40 00}
0496h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
0498h (bad)                                   ; <invalid> || <invalid> || encoded[1]{02}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, BitMatrix<ushort> A, BitMatrix<ushort> B)
; eval_g[16u](BinaryBitLogicKind~8u,bm16x16u,bm16x16u)[2876] = {41 56 57 56 55 53 48 81 ec 70 07 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 d2 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 44 8b f2 49 8b e8 49 8b f1 41 0f b6 ce 83 f9 0f 0f 87 7e 0a 00 00 8b c9 48 8d 15 f2 0b 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 b9 ff ff 00 00 66 89 8c 24 68 07 00 00 48 8b cb 0f b7 94 24 68 07 00 00 e8 c6 f5 ff ff 48 8b c3 e9 30 0a 00 00 48 8b cb e8 4e 36 e3 ff 48 8b c3 e9 20 0a 00 00 48 8d 8c 24 58 07 00 00 e8 39 36 e3 ff 48 8b 45 00 48 8b 16 48 8d 8c 24 58 07 00 00 48 8b 09 c5 ff f0 00 c5 ff f0 0a c5 fd db c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 58 07 00 00 e8 77 41 d6 5e 48 a5 48 8b c3 e9 d7 09 00 00 48 8d 8c 24 48 07 00 00 e8 f0 35 e3 ff 48 8b 45 00 48 8b 16 8b 4e 08 4c 8d 84 24 38 07 00 00 49 89 10 41 89 48 08 c5 fa 6f 84 24 38 07 00 00 c5 fa 7f 84 24 28 07 00 00 48 8b 94 24 28 07 00 00 c5 fa 6f 84 24 48 07 00 00 c5 fa 7f 84 24 18 07 00 00 c5 fa 6f 84 24 18 07 00 00 c5 fa 7f 84 24 08 07 00 00 c5 fa 6f 84 24 08 07 00 00 c5 fa 7f 84 24 f8 06 00 00 48 8b 8c 24 f8 06 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd db c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 48 07 00 00 e8 c7 40 d6 5e 48 a5 48 8b c3 e9 27 09 00 00 48 8d 8c 24 e8 06 00 00 e8 40 35 e3 ff c5 fa 6f 45 00 c5 fa 7f 84 24 d8 06 00 00 c5 fa 6f 84 24 d8 06 00 00 c5 fa 7f 84 24 c8 06 00 00 c5 fa 6f 84 24 c8 06 00 00 c5 fa 7f 84 24 b8 06 00 00 48 8b 84 24 b8 06 00 00 c5 fa 6f 06 c5 fa 7f 84 24 a8 06 00 00 c5 fa 6f 84 24 a8 06 00 00 c5 fa 7f 84 24 98 06 00 00 c5 fa 6f 84 24 98 06 00 00 c5 fa 7f 84 24 88 06 00 00 48 8b 94 24 88 06 00 00 c5 fa 6f 84 24 e8 06 00 00 c5 fa 7f 84 24 78 06 00 00 c5 fa 6f 84 24 78 06 00 00 c5 fa 7f 84 24 68 06 00 00 c5 fa 6f 84 24 68 06 00 00 c5 fa 7f 84 24 58 06 00 00 48 8b 8c 24 58 06 00 00 c5 ff f0 00 c5 fd 11 84 24 20 06 00 00 c5 ff f0 02 c5 fd 11 84 24 00 06 00 00 c5 fd 10 84 24 20 06 00 00 c5 fd 10 8c 24 00 06 00 00 c5 fd eb c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 e8 06 00 00 e8 bb 3f d6 5e 48 a5 48 8b c3 e9 1b 08 00 00 48 8d 8c 24 f0 05 00 00 e8 34 34 e3 ff c5 fa 6f 45 00 c5 fa 7f 84 24 e0 05 00 00 c5 fa 6f 84 24 e0 05 00 00 c5 fa 7f 84 24 d0 05 00 00 c5 fa 6f 84 24 d0 05 00 00 c5 fa 7f 84 24 c0 05 00 00 48 8b 84 24 c0 05 00 00 c5 fa 6f 06 c5 fa 7f 84 24 b0 05 00 00 c5 fa 6f 84 24 b0 05 00 00 c5 fa 7f 84 24 a0 05 00 00 c5 fa 6f 84 24 a0 05 00 00 c5 fa 7f 84 24 90 05 00 00 48 8b 94 24 90 05 00 00 c5 fa 6f 84 24 f0 05 00 00 c5 fa 7f 84 24 80 05 00 00 c5 fa 6f 84 24 80 05 00 00 c5 fa 7f 84 24 70 05 00 00 c5 fa 6f 84 24 70 05 00 00 c5 fa 7f 84 24 60 05 00 00 48 8b 8c 24 60 05 00 00 c5 ff f0 00 c5 fd 11 84 24 40 05 00 00 c5 ff f0 02 c5 fd 11 84 24 20 05 00 00 c5 fd 10 84 24 40 05 00 00 c5 fd 10 8c 24 20 05 00 00 c5 fd eb c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 f0 05 00 00 e8 a7 3e d6 5e 48 a5 48 8b c3 e9 07 07 00 00 48 8d 8c 24 10 05 00 00 e8 20 33 e3 ff c5 fa 6f 45 00 c5 fa 7f 84 24 00 05 00 00 c5 fa 6f 84 24 00 05 00 00 c5 fa 7f 84 24 f0 04 00 00 c5 fa 6f 84 24 f0 04 00 00 c5 fa 7f 84 24 e0 04 00 00 48 8b 84 24 e0 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 04 00 00 c5 fa 6f 84 24 d0 04 00 00 c5 fa 7f 84 24 c0 04 00 00 c5 fa 6f 84 24 c0 04 00 00 c5 fa 7f 84 24 b0 04 00 00 48 8b 94 24 b0 04 00 00 c5 fa 6f 84 24 10 05 00 00 c5 fa 7f 84 24 a0 04 00 00 c5 fa 6f 84 24 a0 04 00 00 c5 fa 7f 84 24 90 04 00 00 c5 fa 6f 84 24 90 04 00 00 c5 fa 7f 84 24 80 04 00 00 48 8b 8c 24 80 04 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd ef c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 10 05 00 00 e8 bf 3d d6 5e 48 a5 48 8b c3 e9 1f 06 00 00 48 8d 8c 24 70 04 00 00 e8 38 32 e3 ff c5 fa 6f 45 00 c5 fa 7f 84 24 60 04 00 00 c5 fa 6f 84 24 60 04 00 00 c5 fa 7f 84 24 50 04 00 00 c5 fa 6f 84 24 50 04 00 00 c5 fa 7f 84 24 40 04 00 00 48 8b 84 24 40 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 30 04 00 00 c5 fa 6f 84 24 30 04 00 00 c5 fa 7f 84 24 20 04 00 00 c5 fa 6f 84 24 20 04 00 00 c5 fa 7f 84 24 10 04 00 00 48 8b 94 24 10 04 00 00 c5 fa 6f 84 24 70 04 00 00 c5 fa 7f 84 24 00 04 00 00 c5 fa 6f 84 24 00 04 00 00 c5 fa 7f 84 24 f0 03 00 00 c5 fa 6f 84 24 f0 03 00 00 c5 fa 7f 84 24 e0 03 00 00 48 8b 8c 24 e0 03 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd ef c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 70 04 00 00 e8 cf 3c d6 5e 48 a5 48 8b c3 e9 2f 05 00 00 48 8b fb 48 8b f5 e8 ba 3c d6 5e 48 a5 48 8b c3 e9 1a 05 00 00 48 8b fb e8 a8 3c d6 5e 48 a5 48 8b c3 e9 08 05 00 00 48 8d 8c 24 d0 03 00 00 e8 21 31 e3 ff c5 fa 6f 45 00 c5 fa 7f 84 24 c0 03 00 00 c5 fa 6f 84 24 c0 03 00 00 c5 fa 7f 84 24 b0 03 00 00 c5 fa 6f 84 24 b0 03 00 00 c5 fa 7f 84 24 a0 03 00 00 48 8b 84 24 a0 03 00 00 c5 fa 6f 84 24 d0 03 00 00 c5 fa 7f 84 24 90 03 00 00 c5 fa 6f 84 24 90 03 00 00 c5 fa 7f 84 24 80 03 00 00 c5 fa 6f 84 24 80 03 00 00 c5 fa 7f 84 24 70 03 00 00 48 8b 94 24 70 03 00 00 c5 ff f0 00 c5 fd 11 84 24 40 03 00 00 c5 fd 10 84 24 40 03 00 00 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb 48 8d b4 24 d0 03 00 00 e8 e7 3b d6 5e 48 a5 48 8b c3 e9 47 04 00 00 48 8d 8c 24 30 03 00 00 e8 60 30 e3 ff c5 fa 6f 06 c5 fa 7f 84 24 20 03 00 00 c5 fa 6f 84 24 20 03 00 00 c5 fa 7f 84 24 10 03 00 00 c5 fa 6f 84 24 10 03 00 00 c5 fa 7f 84 24 00 03 00 00 48 8b 84 24 00 03 00 00 c5 fa 6f 84 24 30 03 00 00 c5 fa 7f 84 24 f0 02 00 00 c5 fa 6f 84 24 f0 02 00 00 c5 fa 7f 84 24 e0 02 00 00 c5 fa 6f 84 24 e0 02 00 00 c5 fa 7f 84 24 d0 02 00 00 48 8b 94 24 d0 02 00 00 c5 ff f0 00 c5 fd 11 84 24 a0 02 00 00 c5 fd 10 84 24 a0 02 00 00 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb 48 8d b4 24 30 03 00 00 e8 27 3b d6 5e 48 a5 48 8b c3 e9 87 03 00 00 48 8d 8c 24 90 02 00 00 e8 a0 2f e3 ff c5 fa 6f 45 00 c5 fa 7f 84 24 80 02 00 00 c5 fa 6f 84 24 80 02 00 00 c5 fa 7f 84 24 70 02 00 00 c5 fa 6f 84 24 70 02 00 00 c5 fa 7f 84 24 60 02 00 00 48 8b 84 24 60 02 00 00 c5 fa 6f 06 c5 fa 7f 84 24 50 02 00 00 c5 fa 6f 84 24 50 02 00 00 c5 fa 7f 84 24 40 02 00 00 c5 fa 6f 84 24 40 02 00 00 c5 fa 7f 84 24 30 02 00 00 48 8b 94 24 30 02 00 00 c5 fa 6f 84 24 90 02 00 00 c5 fa 7f 84 24 20 02 00 00 c5 fa 6f 84 24 20 02 00 00 c5 fa 7f 84 24 10 02 00 00 c5 fa 6f 84 24 10 02 00 00 c5 fa 7f 84 24 00 02 00 00 48 8b 8c 24 00 02 00 00 c5 ff f0 00 c5 ff f0 0a c5 f5 75 d1 c5 f5 ef ca c5 fd eb c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 90 02 00 00 e8 37 3a d6 5e 48 a5 48 8b c3 e9 97 02 00 00 48 8d 8c 24 f0 01 00 00 e8 b0 2e e3 ff c5 fa 6f 45 00 c5 fa 7f 84 24 e0 01 00 00 c5 fa 6f 84 24 e0 01 00 00 c5 fa 7f 84 24 d0 01 00 00 c5 fa 6f 84 24 d0 01 00 00 c5 fa 7f 84 24 c0 01 00 00 48 8b 84 24 c0 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 b0 01 00 00 c5 fa 6f 84 24 b0 01 00 00 c5 fa 7f 84 24 a0 01 00 00 c5 fa 6f 84 24 a0 01 00 00 c5 fa 7f 84 24 90 01 00 00 48 8b 94 24 90 01 00 00 c5 fa 6f 84 24 f0 01 00 00 c5 fa 7f 84 24 80 01 00 00 c5 fa 6f 84 24 80 01 00 00 c5 fa 7f 84 24 70 01 00 00 c5 fa 6f 84 24 70 01 00 00 c5 fa 7f 84 24 60 01 00 00 48 8b 8c 24 60 01 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd df c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 f0 01 00 00 e8 4f 39 d6 5e 48 a5 48 8b c3 e9 af 01 00 00 48 8d 8c 24 50 01 00 00 e8 c8 2d e3 ff c5 fa 6f 45 00 c5 fa 7f 84 24 40 01 00 00 c5 fa 6f 84 24 40 01 00 00 c5 fa 7f 84 24 30 01 00 00 c5 fa 6f 84 24 30 01 00 00 c5 fa 7f 84 24 20 01 00 00 48 8b 84 24 20 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 10 01 00 00 c5 fa 6f 84 24 10 01 00 00 c5 fa 7f 84 24 00 01 00 00 c5 fa 6f 84 24 00 01 00 00 c5 fa 7f 84 24 f0 00 00 00 48 8b 94 24 f0 00 00 00 c5 fa 6f 84 24 50 01 00 00 c5 fa 7f 84 24 e0 00 00 00 c5 fa 6f 84 24 e0 00 00 00 c5 fa 7f 84 24 d0 00 00 00 c5 fa 6f 84 24 d0 00 00 00 c5 fa 7f 84 24 c0 00 00 00 48 8b 8c 24 c0 00 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd 75 d0 c5 fd ef c2 c5 fd eb c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 50 01 00 00 e8 5f 38 d6 5e 48 a5 48 8b c3 e9 bf 00 00 00 48 8d 8c 24 b0 00 00 00 e8 d8 2c e3 ff c5 fa 6f 45 00 c5 fa 7f 84 24 a0 00 00 00 c5 fa 6f 84 24 a0 00 00 00 c5 fa 7f 84 24 90 00 00 00 c5 fa 6f 84 24 90 00 00 00 c5 fa 7f 84 24 80 00 00 00 48 8b 84 24 80 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 70 c5 fa 6f 44 24 70 c5 fa 7f 44 24 60 c5 fa 6f 44 24 60 c5 fa 7f 44 24 50 48 8b 54 24 50 c5 fa 6f 84 24 b0 00 00 00 c5 fa 7f 44 24 40 c5 fa 6f 44 24 40 c5 fa 7f 44 24 30 c5 fa 6f 44 24 30 c5 fa 7f 44 24 20 48 8b 4c 24 20 c5 ff f0 00 c5 ff f0 0a c5 f5 df c0 c5 fe 7f 01 48 8b fb 48 8d b4 24 b0 00 00 00 e8 9b 37 d6 5e 48 a5 48 8b c3 c5 f8 77 48 81 c4 70 07 00 00 5b 5d 5e 5f 41 5e c3 48 b9 78 c9 35 c7 f7 7f 00 00 e8 96 45 d6 5e 48 8b f0 44 88 76 08 48 b9 38 87 35 c6 f7 7f 00 00 e8 c0 c8 d0 5e 48 8b f8 48 b9 40 b0 5b c6 f7 7f 00 00 e8 6e 45 d6 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 57 de e8 5e 48 8b e8 48 8b cf e8 2c 05 26 ff 8b c8 e8 8d dc 25 ff 4c 8b c0 48 8b cd 48 8b d6 e8 bf 19 24 ff 48 8b d0 48 8b cb e8 7c 68 26 ff 48 8b cb e8 74 91 cd 5e}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,770h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 70 07 00 00}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0013h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0018h mov ecx,1d2h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 d2 01 00 00}
001dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001fh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0027h mov r14d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b f2}
002ah mov rbp,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e8}
002dh mov rsi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f1}
0030h movzx ecx,r14b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ce}
0034h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0037h ja near ptr 0abbh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 7e 0a 00 00}
003dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
003fh lea rdx,[rip+0bf2h]                     ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 f2 0b 00 00}
0046h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0049h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
0050h add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
0053h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0055h mov ecx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff ff 00 00}
005ah mov [rsp+768h],cx                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 8c 24 68 07 00 00}
0062h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0065h movzx edx,word ptr [rsp+768h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[8]{0f b7 94 24 68 07 00 00}
006dh call 7ff7c7141288h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 f5 ff ff}
0072h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0075h jmp near ptr 0aaah                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 0a 00 00}
007ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
007dh call 7ff7c6f75320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 36 e3 ff}
0082h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0085h jmp near ptr 0aaah                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 0a 00 00}
008ah lea rcx,[rsp+758h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 58 07 00 00}
0092h call 7ff7c6f75320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 36 e3 ff}
0097h mov rax,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 00}
009bh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
009eh lea rcx,[rsp+758h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 58 07 00 00}
00a6h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
00a9h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
00adh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
00b1h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
00b5h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
00b9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00bch lea rsi,[rsp+758h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 58 07 00 00}
00c4h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 41 d6 5e}
00c9h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00cbh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00ceh jmp near ptr 0aaah                      ; JMP rel32 || E9 cd || encoded[5]{e9 d7 09 00 00}
00d3h lea rcx,[rsp+748h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 48 07 00 00}
00dbh call 7ff7c6f75320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 35 e3 ff}
00e0h mov rax,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 00}
00e4h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
00e7h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
00eah lea r8,[rsp+738h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{4c 8d 84 24 38 07 00 00}
00f2h mov [r8],rdx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 10}
00f5h mov [r8+8],ecx                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{41 89 48 08}
00f9h vmovdqu xmm0,xmmword ptr [rsp+738h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 38 07 00 00}
0102h vmovdqu xmmword ptr [rsp+728h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 28 07 00 00}
010bh mov rdx,[rsp+728h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 28 07 00 00}
0113h vmovdqu xmm0,xmmword ptr [rsp+748h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 48 07 00 00}
011ch vmovdqu xmmword ptr [rsp+718h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 18 07 00 00}
0125h vmovdqu xmm0,xmmword ptr [rsp+718h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 18 07 00 00}
012eh vmovdqu xmmword ptr [rsp+708h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 07 00 00}
0137h vmovdqu xmm0,xmmword ptr [rsp+708h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 07 00 00}
0140h vmovdqu xmmword ptr [rsp+6f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 06 00 00}
0149h mov rcx,[rsp+6f8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 f8 06 00 00}
0151h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0155h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0159h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
015dh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0161h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0165h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0169h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
016ch lea rsi,[rsp+748h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 48 07 00 00}
0174h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 40 d6 5e}
0179h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
017bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
017eh jmp near ptr 0aaah                      ; JMP rel32 || E9 cd || encoded[5]{e9 27 09 00 00}
0183h lea rcx,[rsp+6e8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 e8 06 00 00}
018bh call 7ff7c6f75320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 35 e3 ff}
0190h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0195h vmovdqu xmmword ptr [rsp+6d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 06 00 00}
019eh vmovdqu xmm0,xmmword ptr [rsp+6d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 06 00 00}
01a7h vmovdqu xmmword ptr [rsp+6c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 06 00 00}
01b0h vmovdqu xmm0,xmmword ptr [rsp+6c8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c8 06 00 00}
01b9h vmovdqu xmmword ptr [rsp+6b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 06 00 00}
01c2h mov rax,[rsp+6b8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 b8 06 00 00}
01cah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
01ceh vmovdqu xmmword ptr [rsp+6a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 06 00 00}
01d7h vmovdqu xmm0,xmmword ptr [rsp+6a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 06 00 00}
01e0h vmovdqu xmmword ptr [rsp+698h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 06 00 00}
01e9h vmovdqu xmm0,xmmword ptr [rsp+698h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 06 00 00}
01f2h vmovdqu xmmword ptr [rsp+688h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 06 00 00}
01fbh mov rdx,[rsp+688h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 88 06 00 00}
0203h vmovdqu xmm0,xmmword ptr [rsp+6e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 06 00 00}
020ch vmovdqu xmmword ptr [rsp+678h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 06 00 00}
0215h vmovdqu xmm0,xmmword ptr [rsp+678h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 06 00 00}
021eh vmovdqu xmmword ptr [rsp+668h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 68 06 00 00}
0227h vmovdqu xmm0,xmmword ptr [rsp+668h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 68 06 00 00}
0230h vmovdqu xmmword ptr [rsp+658h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 58 06 00 00}
0239h mov rcx,[rsp+658h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 58 06 00 00}
0241h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0245h vmovupd [rsp+620h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 06 00 00}
024eh vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0252h vmovupd [rsp+600h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 06 00 00}
025bh vmovupd ymm0,[rsp+620h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 20 06 00 00}
0264h vmovupd ymm1,[rsp+600h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 00 06 00 00}
026dh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0271h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0275h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0278h lea rsi,[rsp+6e8h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 e8 06 00 00}
0280h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 3f d6 5e}
0285h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0287h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
028ah jmp near ptr 0aaah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1b 08 00 00}
028fh lea rcx,[rsp+5f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 05 00 00}
0297h call 7ff7c6f75320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 34 e3 ff}
029ch vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
02a1h vmovdqu xmmword ptr [rsp+5e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 05 00 00}
02aah vmovdqu xmm0,xmmword ptr [rsp+5e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 05 00 00}
02b3h vmovdqu xmmword ptr [rsp+5d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 05 00 00}
02bch vmovdqu xmm0,xmmword ptr [rsp+5d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 05 00 00}
02c5h vmovdqu xmmword ptr [rsp+5c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 05 00 00}
02ceh mov rax,[rsp+5c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 c0 05 00 00}
02d6h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
02dah vmovdqu xmmword ptr [rsp+5b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 05 00 00}
02e3h vmovdqu xmm0,xmmword ptr [rsp+5b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 05 00 00}
02ech vmovdqu xmmword ptr [rsp+5a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 05 00 00}
02f5h vmovdqu xmm0,xmmword ptr [rsp+5a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 05 00 00}
02feh vmovdqu xmmword ptr [rsp+590h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 05 00 00}
0307h mov rdx,[rsp+590h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 90 05 00 00}
030fh vmovdqu xmm0,xmmword ptr [rsp+5f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 05 00 00}
0318h vmovdqu xmmword ptr [rsp+580h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 05 00 00}
0321h vmovdqu xmm0,xmmword ptr [rsp+580h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 05 00 00}
032ah vmovdqu xmmword ptr [rsp+570h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 05 00 00}
0333h vmovdqu xmm0,xmmword ptr [rsp+570h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 05 00 00}
033ch vmovdqu xmmword ptr [rsp+560h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 05 00 00}
0345h mov rcx,[rsp+560h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 60 05 00 00}
034dh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0351h vmovupd [rsp+540h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 05 00 00}
035ah vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
035eh vmovupd [rsp+520h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 05 00 00}
0367h vmovupd ymm0,[rsp+540h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 05 00 00}
0370h vmovupd ymm1,[rsp+520h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 20 05 00 00}
0379h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
037dh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0381h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0385h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0389h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
038ch lea rsi,[rsp+5f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 f0 05 00 00}
0394h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 3e d6 5e}
0399h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
039bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
039eh jmp near ptr 0aaah                      ; JMP rel32 || E9 cd || encoded[5]{e9 07 07 00 00}
03a3h lea rcx,[rsp+510h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 10 05 00 00}
03abh call 7ff7c6f75320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 33 e3 ff}
03b0h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
03b5h vmovdqu xmmword ptr [rsp+500h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 05 00 00}
03beh vmovdqu xmm0,xmmword ptr [rsp+500h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 05 00 00}
03c7h vmovdqu xmmword ptr [rsp+4f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 04 00 00}
03d0h vmovdqu xmm0,xmmword ptr [rsp+4f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 04 00 00}
03d9h vmovdqu xmmword ptr [rsp+4e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 04 00 00}
03e2h mov rax,[rsp+4e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e0 04 00 00}
03eah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
03eeh vmovdqu xmmword ptr [rsp+4d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 04 00 00}
03f7h vmovdqu xmm0,xmmword ptr [rsp+4d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 04 00 00}
0400h vmovdqu xmmword ptr [rsp+4c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 04 00 00}
0409h vmovdqu xmm0,xmmword ptr [rsp+4c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 04 00 00}
0412h vmovdqu xmmword ptr [rsp+4b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 04 00 00}
041bh mov rdx,[rsp+4b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 b0 04 00 00}
0423h vmovdqu xmm0,xmmword ptr [rsp+510h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 05 00 00}
042ch vmovdqu xmmword ptr [rsp+4a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 04 00 00}
0435h vmovdqu xmm0,xmmword ptr [rsp+4a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 04 00 00}
043eh vmovdqu xmmword ptr [rsp+490h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 04 00 00}
0447h vmovdqu xmm0,xmmword ptr [rsp+490h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 04 00 00}
0450h vmovdqu xmmword ptr [rsp+480h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 04 00 00}
0459h mov rcx,[rsp+480h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 80 04 00 00}
0461h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0465h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0469h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
046dh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0471h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0474h lea rsi,[rsp+510h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 10 05 00 00}
047ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 3d d6 5e}
0481h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0483h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0486h jmp near ptr 0aaah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1f 06 00 00}
048bh lea rcx,[rsp+470h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 70 04 00 00}
0493h call 7ff7c6f75320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 32 e3 ff}
0498h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
049dh vmovdqu xmmword ptr [rsp+460h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 04 00 00}
04a6h vmovdqu xmm0,xmmword ptr [rsp+460h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 04 00 00}
04afh vmovdqu xmmword ptr [rsp+450h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 04 00 00}
04b8h vmovdqu xmm0,xmmword ptr [rsp+450h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 04 00 00}
04c1h vmovdqu xmmword ptr [rsp+440h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 04 00 00}
04cah mov rax,[rsp+440h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 40 04 00 00}
04d2h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
04d6h vmovdqu xmmword ptr [rsp+430h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 04 00 00}
04dfh vmovdqu xmm0,xmmword ptr [rsp+430h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 04 00 00}
04e8h vmovdqu xmmword ptr [rsp+420h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 04 00 00}
04f1h vmovdqu xmm0,xmmword ptr [rsp+420h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 04 00 00}
04fah vmovdqu xmmword ptr [rsp+410h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 04 00 00}
0503h mov rdx,[rsp+410h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 10 04 00 00}
050bh vmovdqu xmm0,xmmword ptr [rsp+470h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 04 00 00}
0514h vmovdqu xmmword ptr [rsp+400h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 04 00 00}
051dh vmovdqu xmm0,xmmword ptr [rsp+400h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 04 00 00}
0526h vmovdqu xmmword ptr [rsp+3f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 03 00 00}
052fh vmovdqu xmm0,xmmword ptr [rsp+3f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 03 00 00}
0538h vmovdqu xmmword ptr [rsp+3e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 03 00 00}
0541h mov rcx,[rsp+3e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 e0 03 00 00}
0549h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
054dh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0551h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0555h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0559h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
055dh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0561h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0564h lea rsi,[rsp+470h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 70 04 00 00}
056ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 3c d6 5e}
0571h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0573h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0576h jmp near ptr 0aaah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2f 05 00 00}
057bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
057eh mov rsi,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f5}
0581h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 3c d6 5e}
0586h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0588h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
058bh jmp near ptr 0aaah                      ; JMP rel32 || E9 cd || encoded[5]{e9 1a 05 00 00}
0590h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0593h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 3c d6 5e}
0598h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
059ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
059dh jmp near ptr 0aaah                      ; JMP rel32 || E9 cd || encoded[5]{e9 08 05 00 00}
05a2h lea rcx,[rsp+3d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 03 00 00}
05aah call 7ff7c6f75320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 31 e3 ff}
05afh vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
05b4h vmovdqu xmmword ptr [rsp+3c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 03 00 00}
05bdh vmovdqu xmm0,xmmword ptr [rsp+3c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 03 00 00}
05c6h vmovdqu xmmword ptr [rsp+3b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 03 00 00}
05cfh vmovdqu xmm0,xmmword ptr [rsp+3b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 03 00 00}
05d8h vmovdqu xmmword ptr [rsp+3a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 03 00 00}
05e1h mov rax,[rsp+3a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 a0 03 00 00}
05e9h vmovdqu xmm0,xmmword ptr [rsp+3d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 03 00 00}
05f2h vmovdqu xmmword ptr [rsp+390h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 03 00 00}
05fbh vmovdqu xmm0,xmmword ptr [rsp+390h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 03 00 00}
0604h vmovdqu xmmword ptr [rsp+380h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 03 00 00}
060dh vmovdqu xmm0,xmmword ptr [rsp+380h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 03 00 00}
0616h vmovdqu xmmword ptr [rsp+370h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 03 00 00}
061fh mov rdx,[rsp+370h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 70 03 00 00}
0627h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
062bh vmovupd [rsp+340h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 03 00 00}
0634h vmovupd ymm0,[rsp+340h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 03 00 00}
063dh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0641h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0645h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0649h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
064ch lea rsi,[rsp+3d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 d0 03 00 00}
0654h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 3b d6 5e}
0659h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
065bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
065eh jmp near ptr 0aaah                      ; JMP rel32 || E9 cd || encoded[5]{e9 47 04 00 00}
0663h lea rcx,[rsp+330h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 30 03 00 00}
066bh call 7ff7c6f75320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 30 e3 ff}
0670h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0674h vmovdqu xmmword ptr [rsp+320h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 03 00 00}
067dh vmovdqu xmm0,xmmword ptr [rsp+320h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 03 00 00}
0686h vmovdqu xmmword ptr [rsp+310h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 03 00 00}
068fh vmovdqu xmm0,xmmword ptr [rsp+310h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 03 00 00}
0698h vmovdqu xmmword ptr [rsp+300h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 03 00 00}
06a1h mov rax,[rsp+300h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 00 03 00 00}
06a9h vmovdqu xmm0,xmmword ptr [rsp+330h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 03 00 00}
06b2h vmovdqu xmmword ptr [rsp+2f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 02 00 00}
06bbh vmovdqu xmm0,xmmword ptr [rsp+2f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 02 00 00}
06c4h vmovdqu xmmword ptr [rsp+2e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 02 00 00}
06cdh vmovdqu xmm0,xmmword ptr [rsp+2e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 02 00 00}
06d6h vmovdqu xmmword ptr [rsp+2d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 02 00 00}
06dfh mov rdx,[rsp+2d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 d0 02 00 00}
06e7h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
06ebh vmovupd [rsp+2a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 02 00 00}
06f4h vmovupd ymm0,[rsp+2a0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 a0 02 00 00}
06fdh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0701h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0705h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0709h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
070ch lea rsi,[rsp+330h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 30 03 00 00}
0714h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 3b d6 5e}
0719h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
071bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
071eh jmp near ptr 0aaah                      ; JMP rel32 || E9 cd || encoded[5]{e9 87 03 00 00}
0723h lea rcx,[rsp+290h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 02 00 00}
072bh call 7ff7c6f75320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 2f e3 ff}
0730h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0735h vmovdqu xmmword ptr [rsp+280h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 02 00 00}
073eh vmovdqu xmm0,xmmword ptr [rsp+280h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 02 00 00}
0747h vmovdqu xmmword ptr [rsp+270h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 02 00 00}
0750h vmovdqu xmm0,xmmword ptr [rsp+270h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 02 00 00}
0759h vmovdqu xmmword ptr [rsp+260h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 02 00 00}
0762h mov rax,[rsp+260h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 60 02 00 00}
076ah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
076eh vmovdqu xmmword ptr [rsp+250h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 02 00 00}
0777h vmovdqu xmm0,xmmword ptr [rsp+250h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 02 00 00}
0780h vmovdqu xmmword ptr [rsp+240h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 02 00 00}
0789h vmovdqu xmm0,xmmword ptr [rsp+240h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 02 00 00}
0792h vmovdqu xmmword ptr [rsp+230h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 02 00 00}
079bh mov rdx,[rsp+230h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 30 02 00 00}
07a3h vmovdqu xmm0,xmmword ptr [rsp+290h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 02 00 00}
07ach vmovdqu xmmword ptr [rsp+220h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 02 00 00}
07b5h vmovdqu xmm0,xmmword ptr [rsp+220h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 02 00 00}
07beh vmovdqu xmmword ptr [rsp+210h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 02 00 00}
07c7h vmovdqu xmm0,xmmword ptr [rsp+210h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 02 00 00}
07d0h vmovdqu xmmword ptr [rsp+200h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 02 00 00}
07d9h mov rcx,[rsp+200h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 00 02 00 00}
07e1h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
07e5h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
07e9h vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
07edh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
07f1h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
07f5h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
07f9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
07fch lea rsi,[rsp+290h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 90 02 00 00}
0804h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 3a d6 5e}
0809h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
080bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
080eh jmp near ptr 0aaah                      ; JMP rel32 || E9 cd || encoded[5]{e9 97 02 00 00}
0813h lea rcx,[rsp+1f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 01 00 00}
081bh call 7ff7c6f75320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 2e e3 ff}
0820h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0825h vmovdqu xmmword ptr [rsp+1e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 01 00 00}
082eh vmovdqu xmm0,xmmword ptr [rsp+1e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 01 00 00}
0837h vmovdqu xmmword ptr [rsp+1d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 01 00 00}
0840h vmovdqu xmm0,xmmword ptr [rsp+1d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 01 00 00}
0849h vmovdqu xmmword ptr [rsp+1c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 01 00 00}
0852h mov rax,[rsp+1c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 c0 01 00 00}
085ah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
085eh vmovdqu xmmword ptr [rsp+1b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 01 00 00}
0867h vmovdqu xmm0,xmmword ptr [rsp+1b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 01 00 00}
0870h vmovdqu xmmword ptr [rsp+1a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 01 00 00}
0879h vmovdqu xmm0,xmmword ptr [rsp+1a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 01 00 00}
0882h vmovdqu xmmword ptr [rsp+190h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 01 00 00}
088bh mov rdx,[rsp+190h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 90 01 00 00}
0893h vmovdqu xmm0,xmmword ptr [rsp+1f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 01 00 00}
089ch vmovdqu xmmword ptr [rsp+180h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 01 00 00}
08a5h vmovdqu xmm0,xmmword ptr [rsp+180h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 01 00 00}
08aeh vmovdqu xmmword ptr [rsp+170h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 01 00 00}
08b7h vmovdqu xmm0,xmmword ptr [rsp+170h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 01 00 00}
08c0h vmovdqu xmmword ptr [rsp+160h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 01 00 00}
08c9h mov rcx,[rsp+160h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 60 01 00 00}
08d1h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
08d5h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
08d9h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
08ddh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
08e1h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
08e4h lea rsi,[rsp+1f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 f0 01 00 00}
08ech call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 39 d6 5e}
08f1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
08f3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
08f6h jmp near ptr 0aaah                      ; JMP rel32 || E9 cd || encoded[5]{e9 af 01 00 00}
08fbh lea rcx,[rsp+150h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 50 01 00 00}
0903h call 7ff7c6f75320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 2d e3 ff}
0908h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
090dh vmovdqu xmmword ptr [rsp+140h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 01 00 00}
0916h vmovdqu xmm0,xmmword ptr [rsp+140h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 01 00 00}
091fh vmovdqu xmmword ptr [rsp+130h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 01 00 00}
0928h vmovdqu xmm0,xmmword ptr [rsp+130h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 01 00 00}
0931h vmovdqu xmmword ptr [rsp+120h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 01 00 00}
093ah mov rax,[rsp+120h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 20 01 00 00}
0942h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0946h vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
094fh vmovdqu xmm0,xmmword ptr [rsp+110h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 01 00 00}
0958h vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
0961h vmovdqu xmm0,xmmword ptr [rsp+100h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 01 00 00}
096ah vmovdqu xmmword ptr [rsp+0f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 00 00 00}
0973h mov rdx,[rsp+0f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 f0 00 00 00}
097bh vmovdqu xmm0,xmmword ptr [rsp+150h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 01 00 00}
0984h vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
098dh vmovdqu xmm0,xmmword ptr [rsp+0e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 00 00 00}
0996h vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
099fh vmovdqu xmm0,xmmword ptr [rsp+0d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 00 00 00}
09a8h vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
09b1h mov rcx,[rsp+0c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c0 00 00 00}
09b9h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
09bdh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
09c1h vpcmpeqw ymm2,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 d0}
09c5h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
09c9h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
09cdh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
09d1h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
09d4h lea rsi,[rsp+150h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 50 01 00 00}
09dch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 38 d6 5e}
09e1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
09e3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
09e6h jmp near ptr 0aaah                      ; JMP rel32 || E9 cd || encoded[5]{e9 bf 00 00 00}
09ebh lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
09f3h call 7ff7c6f75320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 2c e3 ff}
09f8h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
09fdh vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
0a06h vmovdqu xmm0,xmmword ptr [rsp+0a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 00 00 00}
0a0fh vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
0a18h vmovdqu xmm0,xmmword ptr [rsp+90h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 00 00 00}
0a21h vmovdqu xmmword ptr [rsp+80h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 00 00 00}
0a2ah mov rax,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 80 00 00 00}
0a32h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0a36h vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
0a3ch vmovdqu xmm0,xmmword ptr [rsp+70h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 70}
0a42h vmovdqu xmmword ptr [rsp+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 60}
0a48h vmovdqu xmm0,xmmword ptr [rsp+60h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 60}
0a4eh vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
0a54h mov rdx,[rsp+50h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 50}
0a59h vmovdqu xmm0,xmmword ptr [rsp+0b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 00 00 00}
0a62h vmovdqu xmmword ptr [rsp+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 40}
0a68h vmovdqu xmm0,xmmword ptr [rsp+40h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 40}
0a6eh vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
0a74h vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
0a7ah vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0a80h mov rcx,[rsp+20h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 4c 24 20}
0a85h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0a89h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0a8dh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
0a91h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0a95h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0a98h lea rsi,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 b0 00 00 00}
0aa0h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 37 d6 5e}
0aa5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0aa7h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0aaah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0aadh add rsp,770h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 70 07 00 00}
0ab4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0ab5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0ab6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0ab7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0ab8h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0abah ret                                     ; RET || C3 || encoded[1]{c3}
0abbh mov rcx,7ff7c735c978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c9 35 c7 f7 7f 00 00}
0ac5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 45 d6 5e}
0acah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0acdh mov [rsi+8],r14b                        ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 76 08}
0ad1h mov rcx,7ff7c6358738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 35 c6 f7 7f 00 00}
0adbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 c8 d0 5e}
0ae0h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0ae3h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
0aedh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 45 d6 5e}
0af2h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0af5h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0afah mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
0b04h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 de e8 5e}
0b09h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0b0ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0b0fh call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 05 26 ff}
0b14h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0b16h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d dc 25 ff}
0b1bh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0b1eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0b21h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0b24h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 19 24 ff}
0b29h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0b2ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0b2fh call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 68 26 ff}
0b34h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0b37h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 91 cd 5e}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> eval<uint>(BinaryBitLogicKind:byte kind, BitMatrix<uint> A, BitMatrix<uint> B)
; eval_g[32u](BinaryBitLogicKind~8u,bm32x32u,bm32x32u)[3219] = {41 57 41 56 41 54 57 56 55 53 48 81 ec a0 07 00 00 c5 f8 77 c5 f8 29 b4 24 90 07 00 00 c5 f8 29 bc 24 80 07 00 00 48 8b f1 48 8d 7c 24 60 b9 c4 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 44 8b f2 49 8b f0 49 8b e9 41 0f b6 ce 83 f9 0f 0f 87 12 0c 00 00 8b c9 48 8d 15 24 0d 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 c7 84 24 70 07 00 00 ff ff ff ff 8b 8c 24 70 07 00 00 89 8c 24 78 07 00 00 48 8b cb 8b 94 24 78 07 00 00 e8 bd f8 ff ff 48 8b c3 e9 a3 0b 00 00 48 8b cb e8 45 30 e3 ff 48 8b c3 e9 93 0b 00 00 48 8d 8c 24 60 07 00 00 e8 30 30 e3 ff c5 fa 6f 06 c5 fa 7f 84 24 50 07 00 00 c5 fa 6f 84 24 50 07 00 00 c5 fa 7f 84 24 40 07 00 00 c5 fa 6f 84 24 40 07 00 00 c5 fa 7f 84 24 30 07 00 00 48 8b 84 24 30 07 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 20 07 00 00 c5 fa 6f 84 24 20 07 00 00 c5 fa 7f 84 24 10 07 00 00 c5 fa 6f 84 24 10 07 00 00 c5 fa 7f 84 24 00 07 00 00 48 8b 94 24 00 07 00 00 c5 fa 6f 84 24 60 07 00 00 c5 fa 7f 84 24 f0 06 00 00 c5 fa 6f 84 24 f0 06 00 00 c5 fa 7f 84 24 e0 06 00 00 c5 fa 6f 84 24 e0 06 00 00 c5 fa 7f 84 24 d0 06 00 00 48 8b 8c 24 d0 06 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd db c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c cf 48 8b fb 48 8d b4 24 60 07 00 00 e8 e0 2b d6 5e 48 a5 48 8b c3 e9 84 0a 00 00 48 8d 8c 24 c0 06 00 00 e8 21 2f e3 ff c5 fa 6f 06 c5 fa 7f 84 24 b0 06 00 00 c5 fa 6f 84 24 b0 06 00 00 c5 fa 7f 84 24 a0 06 00 00 c5 fa 6f 84 24 a0 06 00 00 c5 fa 7f 84 24 90 06 00 00 48 8b 84 24 90 06 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 80 06 00 00 c5 fa 6f 84 24 80 06 00 00 c5 fa 7f 84 24 70 06 00 00 c5 fa 6f 84 24 70 06 00 00 c5 fa 7f 84 24 60 06 00 00 48 8b 94 24 60 06 00 00 c5 fa 6f 84 24 c0 06 00 00 c5 fa 7f 84 24 50 06 00 00 c5 fa 6f 84 24 50 06 00 00 c5 fa 7f 84 24 40 06 00 00 c5 fa 6f 84 24 40 06 00 00 c5 fa 7f 84 24 30 06 00 00 48 8b 8c 24 30 06 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd db c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb 48 8d b4 24 c0 06 00 00 e8 c9 2a d6 5e 48 a5 48 8b c3 e9 6d 09 00 00 48 8d 8c 24 20 06 00 00 e8 0a 2e e3 ff c5 fa 6f 06 c5 fa 7f 84 24 10 06 00 00 c5 fa 6f 84 24 10 06 00 00 c5 fa 7f 84 24 00 06 00 00 c5 fa 6f 84 24 00 06 00 00 c5 fa 7f 84 24 f0 05 00 00 48 8b 84 24 f0 05 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 e0 05 00 00 c5 fa 6f 84 24 e0 05 00 00 c5 fa 7f 84 24 d0 05 00 00 c5 fa 6f 84 24 d0 05 00 00 c5 fa 7f 84 24 c0 05 00 00 48 8b 94 24 c0 05 00 00 c5 fa 6f 84 24 20 06 00 00 c5 fa 7f 84 24 b0 05 00 00 c5 fa 6f 84 24 b0 05 00 00 c5 fa 7f 84 24 a0 05 00 00 c5 fa 6f 84 24 a0 05 00 00 c5 fa 7f 84 24 90 05 00 00 48 8b 8c 24 90 05 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c5 fc 57 c0 c5 fd 11 84 24 60 05 00 00 c5 fc 57 c0 c5 fd 11 84 24 40 05 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 60 05 00 00 c5 ff f0 06 c5 fd 11 84 24 40 05 00 00 c5 fd 10 84 24 60 05 00 00 c5 fd 10 8c 24 40 05 00 00 c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c 91 48 8b fb 48 8d b4 24 20 06 00 00 e8 7c 29 d6 5e 48 a5 48 8b c3 e9 20 08 00 00 48 8d 8c 24 30 05 00 00 e8 bd 2c e3 ff c5 fa 6f 06 c5 fa 7f 84 24 20 05 00 00 c5 fa 6f 84 24 20 05 00 00 c5 fa 7f 84 24 10 05 00 00 c5 fa 6f 84 24 10 05 00 00 c5 fa 7f 84 24 00 05 00 00 48 8b 84 24 00 05 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 f0 04 00 00 c5 fa 6f 84 24 f0 04 00 00 c5 fa 7f 84 24 e0 04 00 00 c5 fa 6f 84 24 e0 04 00 00 c5 fa 7f 84 24 d0 04 00 00 48 8b 94 24 d0 04 00 00 c5 fa 6f 84 24 30 05 00 00 c5 fa 7f 84 24 c0 04 00 00 c5 fa 6f 84 24 c0 04 00 00 c5 fa 7f 84 24 b0 04 00 00 c5 fa 6f 84 24 b0 04 00 00 c5 fa 7f 84 24 a0 04 00 00 48 8b 8c 24 a0 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c5 fc 57 c0 c5 fd 11 84 24 80 04 00 00 c5 fc 57 c0 c5 fd 11 84 24 60 04 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 80 04 00 00 c5 ff f0 06 c5 fd 11 84 24 60 04 00 00 c5 fd 10 84 24 80 04 00 00 c5 fd 10 8c 24 60 04 00 00 c5 fd eb c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c 89 48 8b fb 48 8d b4 24 30 05 00 00 e8 27 28 d6 5e 48 a5 48 8b c3 e9 cb 06 00 00 48 8d 8c 24 50 04 00 00 e8 68 2b e3 ff c5 fa 6f 06 c5 fa 7f 84 24 40 04 00 00 c5 fa 6f 84 24 40 04 00 00 c5 fa 7f 84 24 30 04 00 00 c5 fa 6f 84 24 30 04 00 00 c5 fa 7f 84 24 20 04 00 00 48 8b 84 24 20 04 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 10 04 00 00 c5 fa 6f 84 24 10 04 00 00 c5 fa 7f 84 24 00 04 00 00 c5 fa 6f 84 24 00 04 00 00 c5 fa 7f 84 24 f0 03 00 00 48 8b 94 24 f0 03 00 00 c5 fa 6f 84 24 50 04 00 00 c5 fa 7f 84 24 e0 03 00 00 c5 fa 6f 84 24 e0 03 00 00 c5 fa 7f 84 24 d0 03 00 00 c5 fa 6f 84 24 d0 03 00 00 c5 fa 7f 84 24 c0 03 00 00 48 8b 8c 24 c0 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c cf 48 8b fb 48 8d b4 24 50 04 00 00 e8 18 27 d6 5e 48 a5 48 8b c3 e9 bc 05 00 00 48 8d 8c 24 b0 03 00 00 e8 59 2a e3 ff c5 fa 6f 06 c5 fa 7f 84 24 a0 03 00 00 c5 fa 6f 84 24 a0 03 00 00 c5 fa 7f 84 24 90 03 00 00 c5 fa 6f 84 24 90 03 00 00 c5 fa 7f 84 24 80 03 00 00 48 8b 84 24 80 03 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 70 03 00 00 c5 fa 6f 84 24 70 03 00 00 c5 fa 7f 84 24 60 03 00 00 c5 fa 6f 84 24 60 03 00 00 c5 fa 7f 84 24 50 03 00 00 48 8b 94 24 50 03 00 00 c5 fa 6f 84 24 b0 03 00 00 c5 fa 7f 84 24 40 03 00 00 c5 fa 6f 84 24 40 03 00 00 c5 fa 7f 84 24 30 03 00 00 c5 fa 6f 84 24 30 03 00 00 c5 fa 7f 84 24 20 03 00 00 48 8b 8c 24 20 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd ef c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb 48 8d b4 24 b0 03 00 00 e8 01 26 d6 5e 48 a5 48 8b c3 e9 a5 04 00 00 48 8b fb e8 ef 25 d6 5e 48 a5 48 8b c3 e9 93 04 00 00 48 8b fb 48 8b f5 e8 da 25 d6 5e 48 a5 48 8b c3 e9 7e 04 00 00 48 8d 8c 24 10 03 00 00 e8 1b 29 e3 ff c5 fa 6f 06 c5 fa 7f 84 24 00 03 00 00 c5 fa 6f 84 24 00 03 00 00 c5 fa 7f 84 24 f0 02 00 00 c5 fa 6f 84 24 f0 02 00 00 c5 fa 7f 84 24 e0 02 00 00 48 8b 84 24 e0 02 00 00 c5 fa 6f 84 24 10 03 00 00 c5 fa 7f 84 24 d0 02 00 00 c5 fa 6f 84 24 d0 02 00 00 c5 fa 7f 84 24 c0 02 00 00 c5 fa 6f 84 24 c0 02 00 00 c5 fa 7f 84 24 b0 02 00 00 48 8b 94 24 b0 02 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c 88 c5 fc 57 c0 c5 fd 11 84 24 80 02 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 80 02 00 00 c5 fd 10 84 24 80 02 00 00 c5 fd 76 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c 8a c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c b6 48 8b fb 48 8d b4 24 10 03 00 00 e8 ed 24 d6 5e 48 a5 48 8b c3 e9 91 03 00 00 48 8d 8c 24 70 02 00 00 e8 2e 28 e3 ff c5 fa 6f 45 00 c5 fa 7f 84 24 60 02 00 00 c5 fa 6f 84 24 60 02 00 00 c5 fa 7f 84 24 50 02 00 00 c5 fa 6f 84 24 50 02 00 00 c5 fa 7f 84 24 40 02 00 00 48 8b 84 24 40 02 00 00 c5 fa 6f 84 24 70 02 00 00 c5 fa 7f 84 24 30 02 00 00 c5 fa 6f 84 24 30 02 00 00 c5 fa 7f 84 24 20 02 00 00 c5 fa 6f 84 24 20 02 00 00 c5 fa 7f 84 24 10 02 00 00 48 8b 94 24 10 02 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c 88 c5 fc 57 c0 c5 fd 11 84 24 e0 01 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 e0 01 00 00 c5 fd 10 84 24 e0 01 00 00 c5 fd 76 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c 8a c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c b6 48 8b fb 48 8d b4 24 70 02 00 00 e8 ff 23 d6 5e 48 a5 48 8b c3 e9 a3 02 00 00 48 8d 8c 24 d0 01 00 00 e8 40 27 e3 ff c5 fa 6f 06 c5 fa 7f 84 24 c0 01 00 00 c5 fa 6f 84 24 c0 01 00 00 c5 fa 7f 84 24 b0 01 00 00 c5 fa 6f 84 24 b0 01 00 00 c5 fa 7f 84 24 a0 01 00 00 48 8b 84 24 a0 01 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 90 01 00 00 c5 fa 6f 84 24 90 01 00 00 c5 fa 7f 84 24 80 01 00 00 c5 fa 6f 84 24 80 01 00 00 c5 fa 7f 84 24 70 01 00 00 48 8b 94 24 70 01 00 00 c5 fa 6f 84 24 d0 01 00 00 c5 fa 7f 84 24 60 01 00 00 c5 fa 6f 84 24 60 01 00 00 c5 fa 7f 84 24 50 01 00 00 c5 fa 6f 84 24 50 01 00 00 c5 fa 7f 84 24 40 01 00 00 48 8b 8c 24 40 01 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 f5 76 d1 c5 f5 ef ca c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb 48 8d b4 24 d0 01 00 00 e8 e8 22 d6 5e 48 a5 48 8b c3 e9 8c 01 00 00 48 8d 8c 24 30 01 00 00 e8 29 26 e3 ff c5 fa 6f 06 c5 fa 7f 84 24 20 01 00 00 c5 fa 6f 84 24 20 01 00 00 c5 fa 7f 84 24 10 01 00 00 c5 fa 6f 84 24 10 01 00 00 c5 fa 7f 84 24 00 01 00 00 48 8b b4 24 00 01 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 f0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 e0 00 00 00 c5 fa 6f 84 24 e0 00 00 00 c5 fa 7f 84 24 d0 00 00 00 48 8b bc 24 d0 00 00 00 c5 fa 6f 84 24 30 01 00 00 c5 fa 7f 84 24 c0 00 00 00 c5 fa 6f 84 24 c0 00 00 00 c5 fa 7f 84 24 b0 00 00 00 c5 fa 6f 84 24 b0 00 00 00 c5 fa 7f 84 24 a0 00 00 00 48 8b ac 24 a0 00 00 00 45 33 f6 45 33 ff 4d 63 e7 49 c1 e4 02 4a 8d 0c 26 4a 8d 14 27 c5 ff f0 31 c5 fc 57 c0 c5 fd 11 44 24 60 48 8b ca 48 8d 54 24 60 c4 e3 7d 19 f7 01 e8 b2 ee a1 ff c5 fd 10 44 24 60 48 8d 8c 24 80 00 00 00 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 48 8d 54 24 40 4c 8d 44 24 20 e8 ab 89 bc ff c5 fd 10 84 24 80 00 00 00 c5 fd 11 44 24 40 48 8d 4c 24 40 49 8d 14 2c e8 86 25 e3 ff 41 ff c6 41 83 c7 08 41 83 fe 04 0f 8c 73 ff ff ff 48 8b fb 48 8d b4 24 30 01 00 00 e8 7d 21 d6 5e 48 a5 48 8b c3 eb 24 48 8b cb 48 8b d6 4c 8b c5 e8 28 de ff ff 48 8b c3 eb 11 48 8b cb 48 8b d6 4c 8b c5 e8 c5 de ff ff 48 8b c3 c5 f8 28 b4 24 90 07 00 00 c5 f8 28 bc 24 80 07 00 00 c5 f8 77 48 81 c4 a0 07 00 00 5b 5d 5e 5f 41 5c 41 5e 41 5f c3 48 b9 40 b0 5b c6 f7 7f 00 00 e8 3c 2f d6 5e 48 8b f0 41 0f b6 ce e8 a0 dd ff ff 48 8b d0 48 8b ce e8 75 52 26 ff 48 8b ce e8 6d 7b cd 5e}
; TermCode = CTC_INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0006h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0007h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0008h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0009h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ah sub rsp,7a0h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec a0 07 00 00}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h vmovaps [rsp+790h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 90 07 00 00}
001dh vmovaps [rsp+780h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 80 07 00 00}
0026h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0029h lea rdi,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 60}
002eh mov ecx,1c4h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 c4 01 00 00}
0033h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0035h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0037h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
003dh mov r14d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b f2}
0040h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0043h mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
0046h movzx ecx,r14b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ce}
004ah cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
004dh ja near ptr 0c65h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 12 0c 00 00}
0053h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0055h lea rdx,[rip+0d24h]                     ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 24 0d 00 00}
005ch mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
005fh lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
0066h add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
0069h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
006bh mov dword ptr [rsp+770h],0ffffffffh     ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 70 07 00 00 ff ff ff ff}
0076h mov ecx,[rsp+770h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 8c 24 70 07 00 00}
007dh mov [rsp+778h],ecx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 8c 24 78 07 00 00}
0084h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0087h mov edx,[rsp+778h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 78 07 00 00}
008eh call 7ff7c7142a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd f8 ff ff}
0093h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0096h jmp near ptr 0c3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a3 0b 00 00}
009bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
009eh call 7ff7c6f761e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 30 e3 ff}
00a3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00a6h jmp near ptr 0c3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 93 0b 00 00}
00abh lea rcx,[rsp+760h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 60 07 00 00}
00b3h call 7ff7c6f761e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 30 e3 ff}
00b8h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
00bch vmovdqu xmmword ptr [rsp+750h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 07 00 00}
00c5h vmovdqu xmm0,xmmword ptr [rsp+750h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 07 00 00}
00ceh vmovdqu xmmword ptr [rsp+740h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 07 00 00}
00d7h vmovdqu xmm0,xmmword ptr [rsp+740h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 07 00 00}
00e0h vmovdqu xmmword ptr [rsp+730h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 07 00 00}
00e9h mov rax,[rsp+730h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 30 07 00 00}
00f1h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
00f6h vmovdqu xmmword ptr [rsp+720h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 07 00 00}
00ffh vmovdqu xmm0,xmmword ptr [rsp+720h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 07 00 00}
0108h vmovdqu xmmword ptr [rsp+710h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 07 00 00}
0111h vmovdqu xmm0,xmmword ptr [rsp+710h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 07 00 00}
011ah vmovdqu xmmword ptr [rsp+700h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 07 00 00}
0123h mov rdx,[rsp+700h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 07 00 00}
012bh vmovdqu xmm0,xmmword ptr [rsp+760h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 07 00 00}
0134h vmovdqu xmmword ptr [rsp+6f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 06 00 00}
013dh vmovdqu xmm0,xmmword ptr [rsp+6f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 06 00 00}
0146h vmovdqu xmmword ptr [rsp+6e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 06 00 00}
014fh vmovdqu xmm0,xmmword ptr [rsp+6e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 06 00 00}
0158h vmovdqu xmmword ptr [rsp+6d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 06 00 00}
0161h mov rcx,[rsp+6d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 d0 06 00 00}
0169h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
016ch xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
016fh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0172h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0176h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
017ah lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
017eh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0183h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0187h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
018bh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
018eh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0193h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0196h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
019ah cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
019eh jl short 016fh                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
01a0h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01a3h lea rsi,[rsp+760h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 60 07 00 00}
01abh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 2b d6 5e}
01b0h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01b2h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01b5h jmp near ptr 0c3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 84 0a 00 00}
01bah lea rcx,[rsp+6c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 c0 06 00 00}
01c2h call 7ff7c6f761e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 2f e3 ff}
01c7h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
01cbh vmovdqu xmmword ptr [rsp+6b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 06 00 00}
01d4h vmovdqu xmm0,xmmword ptr [rsp+6b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 06 00 00}
01ddh vmovdqu xmmword ptr [rsp+6a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 06 00 00}
01e6h vmovdqu xmm0,xmmword ptr [rsp+6a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 06 00 00}
01efh vmovdqu xmmword ptr [rsp+690h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 06 00 00}
01f8h mov rax,[rsp+690h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 90 06 00 00}
0200h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0205h vmovdqu xmmword ptr [rsp+680h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 06 00 00}
020eh vmovdqu xmm0,xmmword ptr [rsp+680h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 06 00 00}
0217h vmovdqu xmmword ptr [rsp+670h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 06 00 00}
0220h vmovdqu xmm0,xmmword ptr [rsp+670h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 06 00 00}
0229h vmovdqu xmmword ptr [rsp+660h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 06 00 00}
0232h mov rdx,[rsp+660h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 60 06 00 00}
023ah vmovdqu xmm0,xmmword ptr [rsp+6c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 06 00 00}
0243h vmovdqu xmmword ptr [rsp+650h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 06 00 00}
024ch vmovdqu xmm0,xmmword ptr [rsp+650h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 06 00 00}
0255h vmovdqu xmmword ptr [rsp+640h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 06 00 00}
025eh vmovdqu xmm0,xmmword ptr [rsp+640h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 06 00 00}
0267h vmovdqu xmmword ptr [rsp+630h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 06 00 00}
0270h mov rcx,[rsp+630h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 30 06 00 00}
0278h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
027bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
027eh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0281h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0285h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0289h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
028dh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0292h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0296h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
029ah vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
029eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
02a2h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
02a5h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
02aah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
02adh add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
02b1h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
02b5h jl short 027eh                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
02b7h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
02bah lea rsi,[rsp+6c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 c0 06 00 00}
02c2h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 2a d6 5e}
02c7h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02c9h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02cch jmp near ptr 0c3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6d 09 00 00}
02d1h lea rcx,[rsp+620h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 20 06 00 00}
02d9h call 7ff7c6f761e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 2e e3 ff}
02deh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
02e2h vmovdqu xmmword ptr [rsp+610h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 06 00 00}
02ebh vmovdqu xmm0,xmmword ptr [rsp+610h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 06 00 00}
02f4h vmovdqu xmmword ptr [rsp+600h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 06 00 00}
02fdh vmovdqu xmm0,xmmword ptr [rsp+600h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 06 00 00}
0306h vmovdqu xmmword ptr [rsp+5f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 05 00 00}
030fh mov rax,[rsp+5f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 f0 05 00 00}
0317h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
031ch vmovdqu xmmword ptr [rsp+5e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 05 00 00}
0325h vmovdqu xmm0,xmmword ptr [rsp+5e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 05 00 00}
032eh vmovdqu xmmword ptr [rsp+5d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 05 00 00}
0337h vmovdqu xmm0,xmmword ptr [rsp+5d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 05 00 00}
0340h vmovdqu xmmword ptr [rsp+5c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 05 00 00}
0349h mov rdx,[rsp+5c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 c0 05 00 00}
0351h vmovdqu xmm0,xmmword ptr [rsp+620h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 06 00 00}
035ah vmovdqu xmmword ptr [rsp+5b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 05 00 00}
0363h vmovdqu xmm0,xmmword ptr [rsp+5b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 05 00 00}
036ch vmovdqu xmmword ptr [rsp+5a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 05 00 00}
0375h vmovdqu xmm0,xmmword ptr [rsp+5a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 05 00 00}
037eh vmovdqu xmmword ptr [rsp+590h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 05 00 00}
0387h mov rcx,[rsp+590h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 90 05 00 00}
038fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0392h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0395h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0398h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
039ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
03a0h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
03a4h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
03a8h vmovupd [rsp+560h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 05 00 00}
03b1h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
03b5h vmovupd [rsp+540h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 05 00 00}
03beh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
03c3h vmovupd [rsp+560h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 05 00 00}
03cch vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
03d0h vmovupd [rsp+540h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 05 00 00}
03d9h vmovupd ymm0,[rsp+560h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 60 05 00 00}
03e2h vmovupd ymm1,[rsp+540h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 40 05 00 00}
03ebh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
03efh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
03f2h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
03f7h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
03fah add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
03feh cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0402h jl short 0395h                          ; JL rel8 || 7C cb || encoded[2]{7c 91}
0404h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0407h lea rsi,[rsp+620h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 20 06 00 00}
040fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 29 d6 5e}
0414h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0416h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0419h jmp near ptr 0c3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 08 00 00}
041eh lea rcx,[rsp+530h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 30 05 00 00}
0426h call 7ff7c6f761e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 2c e3 ff}
042bh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
042fh vmovdqu xmmword ptr [rsp+520h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 05 00 00}
0438h vmovdqu xmm0,xmmword ptr [rsp+520h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 05 00 00}
0441h vmovdqu xmmword ptr [rsp+510h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 05 00 00}
044ah vmovdqu xmm0,xmmword ptr [rsp+510h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 05 00 00}
0453h vmovdqu xmmword ptr [rsp+500h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 05 00 00}
045ch mov rax,[rsp+500h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 00 05 00 00}
0464h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0469h vmovdqu xmmword ptr [rsp+4f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 04 00 00}
0472h vmovdqu xmm0,xmmword ptr [rsp+4f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 04 00 00}
047bh vmovdqu xmmword ptr [rsp+4e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 04 00 00}
0484h vmovdqu xmm0,xmmword ptr [rsp+4e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 04 00 00}
048dh vmovdqu xmmword ptr [rsp+4d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 04 00 00}
0496h mov rdx,[rsp+4d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 d0 04 00 00}
049eh vmovdqu xmm0,xmmword ptr [rsp+530h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 05 00 00}
04a7h vmovdqu xmmword ptr [rsp+4c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 04 00 00}
04b0h vmovdqu xmm0,xmmword ptr [rsp+4c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 04 00 00}
04b9h vmovdqu xmmword ptr [rsp+4b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 04 00 00}
04c2h vmovdqu xmm0,xmmword ptr [rsp+4b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 04 00 00}
04cbh vmovdqu xmmword ptr [rsp+4a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 04 00 00}
04d4h mov rcx,[rsp+4a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 a0 04 00 00}
04dch xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
04dfh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
04e2h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
04e5h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
04e9h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
04edh lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
04f1h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
04f5h vmovupd [rsp+480h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 04 00 00}
04feh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0502h vmovupd [rsp+460h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 04 00 00}
050bh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0510h vmovupd [rsp+480h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 04 00 00}
0519h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
051dh vmovupd [rsp+460h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 04 00 00}
0526h vmovupd ymm0,[rsp+480h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 80 04 00 00}
052fh vmovupd ymm1,[rsp+460h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 60 04 00 00}
0538h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
053ch vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0540h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0544h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0547h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
054ch inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
054fh add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0553h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0557h jl short 04e2h                          ; JL rel8 || 7C cb || encoded[2]{7c 89}
0559h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
055ch lea rsi,[rsp+530h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 30 05 00 00}
0564h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 28 d6 5e}
0569h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
056bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
056eh jmp near ptr 0c3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 cb 06 00 00}
0573h lea rcx,[rsp+450h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 50 04 00 00}
057bh call 7ff7c6f761e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 2b e3 ff}
0580h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0584h vmovdqu xmmword ptr [rsp+440h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 04 00 00}
058dh vmovdqu xmm0,xmmword ptr [rsp+440h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 04 00 00}
0596h vmovdqu xmmword ptr [rsp+430h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 04 00 00}
059fh vmovdqu xmm0,xmmword ptr [rsp+430h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 04 00 00}
05a8h vmovdqu xmmword ptr [rsp+420h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 04 00 00}
05b1h mov rax,[rsp+420h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 20 04 00 00}
05b9h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
05beh vmovdqu xmmword ptr [rsp+410h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 04 00 00}
05c7h vmovdqu xmm0,xmmword ptr [rsp+410h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 04 00 00}
05d0h vmovdqu xmmword ptr [rsp+400h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 04 00 00}
05d9h vmovdqu xmm0,xmmword ptr [rsp+400h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 04 00 00}
05e2h vmovdqu xmmword ptr [rsp+3f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 03 00 00}
05ebh mov rdx,[rsp+3f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 f0 03 00 00}
05f3h vmovdqu xmm0,xmmword ptr [rsp+450h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 04 00 00}
05fch vmovdqu xmmword ptr [rsp+3e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 03 00 00}
0605h vmovdqu xmm0,xmmword ptr [rsp+3e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 03 00 00}
060eh vmovdqu xmmword ptr [rsp+3d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 03 00 00}
0617h vmovdqu xmm0,xmmword ptr [rsp+3d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 03 00 00}
0620h vmovdqu xmmword ptr [rsp+3c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 03 00 00}
0629h mov rcx,[rsp+3c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c0 03 00 00}
0631h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0634h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0637h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
063ah shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
063eh lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0642h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0646h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
064bh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
064fh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0653h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0656h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
065bh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
065eh add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0662h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0666h jl short 0637h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0668h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
066bh lea rsi,[rsp+450h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 50 04 00 00}
0673h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 27 d6 5e}
0678h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
067ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
067dh jmp near ptr 0c3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 bc 05 00 00}
0682h lea rcx,[rsp+3b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 03 00 00}
068ah call 7ff7c6f761e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 2a e3 ff}
068fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0693h vmovdqu xmmword ptr [rsp+3a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 03 00 00}
069ch vmovdqu xmm0,xmmword ptr [rsp+3a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 03 00 00}
06a5h vmovdqu xmmword ptr [rsp+390h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 03 00 00}
06aeh vmovdqu xmm0,xmmword ptr [rsp+390h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 03 00 00}
06b7h vmovdqu xmmword ptr [rsp+380h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 03 00 00}
06c0h mov rax,[rsp+380h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 80 03 00 00}
06c8h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
06cdh vmovdqu xmmword ptr [rsp+370h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 03 00 00}
06d6h vmovdqu xmm0,xmmword ptr [rsp+370h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 03 00 00}
06dfh vmovdqu xmmword ptr [rsp+360h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 03 00 00}
06e8h vmovdqu xmm0,xmmword ptr [rsp+360h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 03 00 00}
06f1h vmovdqu xmmword ptr [rsp+350h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 03 00 00}
06fah mov rdx,[rsp+350h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 50 03 00 00}
0702h vmovdqu xmm0,xmmword ptr [rsp+3b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 03 00 00}
070bh vmovdqu xmmword ptr [rsp+340h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 03 00 00}
0714h vmovdqu xmm0,xmmword ptr [rsp+340h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 03 00 00}
071dh vmovdqu xmmword ptr [rsp+330h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 03 00 00}
0726h vmovdqu xmm0,xmmword ptr [rsp+330h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 03 00 00}
072fh vmovdqu xmmword ptr [rsp+320h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 03 00 00}
0738h mov rcx,[rsp+320h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 20 03 00 00}
0740h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0743h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0746h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0749h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
074dh lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0751h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0755h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
075ah vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
075eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0762h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0766h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
076ah add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
076dh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0772h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0775h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0779h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
077dh jl short 0746h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
077fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0782h lea rsi,[rsp+3b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 b0 03 00 00}
078ah call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 26 d6 5e}
078fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0791h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0794h jmp near ptr 0c3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 04 00 00}
0799h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
079ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 25 d6 5e}
07a1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
07a3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
07a6h jmp near ptr 0c3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 93 04 00 00}
07abh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
07aeh mov rsi,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f5}
07b1h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 25 d6 5e}
07b6h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
07b8h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
07bbh jmp near ptr 0c3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 7e 04 00 00}
07c0h lea rcx,[rsp+310h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 10 03 00 00}
07c8h call 7ff7c6f761e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 29 e3 ff}
07cdh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
07d1h vmovdqu xmmword ptr [rsp+300h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 03 00 00}
07dah vmovdqu xmm0,xmmword ptr [rsp+300h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 03 00 00}
07e3h vmovdqu xmmword ptr [rsp+2f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 02 00 00}
07ech vmovdqu xmm0,xmmword ptr [rsp+2f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 02 00 00}
07f5h vmovdqu xmmword ptr [rsp+2e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 02 00 00}
07feh mov rax,[rsp+2e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e0 02 00 00}
0806h vmovdqu xmm0,xmmword ptr [rsp+310h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 03 00 00}
080fh vmovdqu xmmword ptr [rsp+2d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 02 00 00}
0818h vmovdqu xmm0,xmmword ptr [rsp+2d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 02 00 00}
0821h vmovdqu xmmword ptr [rsp+2c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 02 00 00}
082ah vmovdqu xmm0,xmmword ptr [rsp+2c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 02 00 00}
0833h vmovdqu xmmword ptr [rsp+2b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 02 00 00}
083ch mov rdx,[rsp+2b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 b0 02 00 00}
0844h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0846h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0849h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
084ch lea r9,[rax+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 88}
0850h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0854h vmovupd [rsp+280h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 02 00 00}
085dh vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
0862h vmovupd [rsp+280h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 02 00 00}
086bh vmovupd ymm0,[rsp+280h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 80 02 00 00}
0874h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0878h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
087ch movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
087fh lea r9,[rdx+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 8a}
0883h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0888h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
088ah add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
088eh cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
0891h jl short 0849h                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
0893h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0896h lea rsi,[rsp+310h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 10 03 00 00}
089eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 24 d6 5e}
08a3h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
08a5h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
08a8h jmp near ptr 0c3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 91 03 00 00}
08adh lea rcx,[rsp+270h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 70 02 00 00}
08b5h call 7ff7c6f761e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 28 e3 ff}
08bah vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
08bfh vmovdqu xmmword ptr [rsp+260h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 02 00 00}
08c8h vmovdqu xmm0,xmmword ptr [rsp+260h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 02 00 00}
08d1h vmovdqu xmmword ptr [rsp+250h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 02 00 00}
08dah vmovdqu xmm0,xmmword ptr [rsp+250h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 02 00 00}
08e3h vmovdqu xmmword ptr [rsp+240h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 02 00 00}
08ech mov rax,[rsp+240h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 40 02 00 00}
08f4h vmovdqu xmm0,xmmword ptr [rsp+270h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 02 00 00}
08fdh vmovdqu xmmword ptr [rsp+230h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 02 00 00}
0906h vmovdqu xmm0,xmmword ptr [rsp+230h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 02 00 00}
090fh vmovdqu xmmword ptr [rsp+220h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 02 00 00}
0918h vmovdqu xmm0,xmmword ptr [rsp+220h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 02 00 00}
0921h vmovdqu xmmword ptr [rsp+210h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 02 00 00}
092ah mov rdx,[rsp+210h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 10 02 00 00}
0932h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0934h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0937h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
093ah lea r9,[rax+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 88}
093eh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0942h vmovupd [rsp+1e0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 e0 01 00 00}
094bh vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
0950h vmovupd [rsp+1e0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 e0 01 00 00}
0959h vmovupd ymm0,[rsp+1e0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 e0 01 00 00}
0962h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0966h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
096ah movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
096dh lea r9,[rdx+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 8a}
0971h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0976h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0978h add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
097ch cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
097fh jl short 0937h                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
0981h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0984h lea rsi,[rsp+270h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 70 02 00 00}
098ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 23 d6 5e}
0991h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0993h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0996h jmp near ptr 0c3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a3 02 00 00}
099bh lea rcx,[rsp+1d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 01 00 00}
09a3h call 7ff7c6f761e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 27 e3 ff}
09a8h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
09ach vmovdqu xmmword ptr [rsp+1c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 01 00 00}
09b5h vmovdqu xmm0,xmmword ptr [rsp+1c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 01 00 00}
09beh vmovdqu xmmword ptr [rsp+1b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 01 00 00}
09c7h vmovdqu xmm0,xmmword ptr [rsp+1b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 01 00 00}
09d0h vmovdqu xmmword ptr [rsp+1a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 01 00 00}
09d9h mov rax,[rsp+1a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 a0 01 00 00}
09e1h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
09e6h vmovdqu xmmword ptr [rsp+190h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 01 00 00}
09efh vmovdqu xmm0,xmmword ptr [rsp+190h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 01 00 00}
09f8h vmovdqu xmmword ptr [rsp+180h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 01 00 00}
0a01h vmovdqu xmm0,xmmword ptr [rsp+180h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 01 00 00}
0a0ah vmovdqu xmmword ptr [rsp+170h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 01 00 00}
0a13h mov rdx,[rsp+170h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 70 01 00 00}
0a1bh vmovdqu xmm0,xmmword ptr [rsp+1d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 01 00 00}
0a24h vmovdqu xmmword ptr [rsp+160h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 01 00 00}
0a2dh vmovdqu xmm0,xmmword ptr [rsp+160h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 01 00 00}
0a36h vmovdqu xmmword ptr [rsp+150h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 01 00 00}
0a3fh vmovdqu xmm0,xmmword ptr [rsp+150h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 01 00 00}
0a48h vmovdqu xmmword ptr [rsp+140h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 01 00 00}
0a51h mov rcx,[rsp+140h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 40 01 00 00}
0a59h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0a5ch xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0a5fh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0a62h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0a66h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0a6ah lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0a6eh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0a73h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0a77h vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
0a7bh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0a7fh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0a83h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0a86h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0a8bh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0a8eh add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0a92h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0a96h jl short 0a5fh                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
0a98h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0a9bh lea rsi,[rsp+1d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 d0 01 00 00}
0aa3h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 22 d6 5e}
0aa8h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0aaah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0aadh jmp near ptr 0c3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8c 01 00 00}
0ab2h lea rcx,[rsp+130h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 30 01 00 00}
0abah call 7ff7c6f761e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 26 e3 ff}
0abfh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0ac3h vmovdqu xmmword ptr [rsp+120h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 01 00 00}
0acch vmovdqu xmm0,xmmword ptr [rsp+120h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 01 00 00}
0ad5h vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
0adeh vmovdqu xmm0,xmmword ptr [rsp+110h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 01 00 00}
0ae7h vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
0af0h mov rsi,[rsp+100h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 00 01 00 00}
0af8h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0afdh vmovdqu xmmword ptr [rsp+0f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 00 00 00}
0b06h vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
0b0fh vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
0b18h vmovdqu xmm0,xmmword ptr [rsp+0e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 00 00 00}
0b21h vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
0b2ah mov rdi,[rsp+0d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b bc 24 d0 00 00 00}
0b32h vmovdqu xmm0,xmmword ptr [rsp+130h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 01 00 00}
0b3bh vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
0b44h vmovdqu xmm0,xmmword ptr [rsp+0c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 00 00 00}
0b4dh vmovdqu xmmword ptr [rsp+0b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 00 00 00}
0b56h vmovdqu xmm0,xmmword ptr [rsp+0b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 00 00 00}
0b5fh vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
0b68h mov rbp,[rsp+0a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 a0 00 00 00}
0b70h xor r14d,r14d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 f6}
0b73h xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0b76h movsxd r12,r15d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 e7}
0b79h shl r12,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e4 02}
0b7dh lea rcx,[rsi+r12]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 0c 26}
0b81h lea rdx,[rdi+r12]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 14 27}
0b85h vlddqu ymm6,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 31}
0b89h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0b8dh vmovupd [rsp+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 60}
0b93h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0b96h lea rdx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 60}
0b9bh vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0ba1h call 7ff7c6b62b58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 ee a1 ff}
0ba6h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
0bach lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0bb4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0bbah vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0bc0h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0bc6h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0bcbh lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0bd0h call 7ff7c6d0c680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 89 bc ff}
0bd5h vmovupd ymm0,[rsp+80h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 80 00 00 00}
0bdeh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0be4h lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0be9h lea rdx,[r12+rbp]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 14 2c}
0bedh call 7ff7c6f76278h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 25 e3 ff}
0bf2h inc r14d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c6}
0bf5h add r15d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c7 08}
0bf9h cmp r14d,4                              ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 fe 04}
0bfdh jl near ptr 0b76h                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 73 ff ff ff}
0c03h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0c06h lea rsi,[rsp+130h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 30 01 00 00}
0c0eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 21 d6 5e}
0c13h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0c15h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0c18h jmp short 0c3eh                         ; JMP rel8 || EB cb || encoded[2]{eb 24}
0c1ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0c1dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0c20h mov r8,rbp                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c5}
0c23h call 7ff7c7141b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 de ff ff}
0c28h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0c2bh jmp short 0c3eh                         ; JMP rel8 || EB cb || encoded[2]{eb 11}
0c2dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0c30h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0c33h mov r8,rbp                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c5}
0c36h call 7ff7c7141c00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 de ff ff}
0c3bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0c3eh vmovaps xmm6,[rsp+790h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 90 07 00 00}
0c47h vmovaps xmm7,[rsp+780h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 80 07 00 00}
0c50h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0c53h add rsp,7a0h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 a0 07 00 00}
0c5ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0c5bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0c5ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0c5dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0c5eh pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0c60h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0c62h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0c64h ret                                     ; RET || C3 || encoded[1]{c3}
0c65h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
0c6fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 2f d6 5e}
0c74h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0c77h movzx ecx,r14b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ce}
0c7bh call 7ff7c7141b20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 dd ff ff}
0c80h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0c83h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0c86h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 52 26 ff}
0c8bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0c8eh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 7b cd 5e}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitMatrix<ulong> A, BitMatrix<ulong> B)
; eval_g[64u](BinaryBitLogicKind~8u,bm64x64u,bm64x64u)[3270] = {41 57 41 56 41 55 41 54 57 56 55 53 48 81 ec b8 07 00 00 c5 f8 77 c5 f8 29 b4 24 a0 07 00 00 c5 f8 29 bc 24 90 07 00 00 48 8b f1 48 8d 7c 24 60 b9 c8 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 44 8b f2 49 8b f0 49 8b e9 41 0f b6 ce 83 f9 0f 0f 87 43 0c 00 00 8b c9 48 8d 15 52 0d 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 48 c7 84 24 80 07 00 00 ff ff ff ff 48 8b 8c 24 80 07 00 00 48 89 8c 24 88 07 00 00 48 8b cb 48 8b 94 24 88 07 00 00 e8 2f ed ff ff 48 8b c3 e9 ce 0b 00 00 48 8b cb e8 8f 1f e3 ff 48 8b c3 e9 be 0b 00 00 48 8d 8c 24 70 07 00 00 e8 7a 1f e3 ff c5 fa 6f 06 c5 fa 7f 84 24 60 07 00 00 c5 fa 6f 84 24 60 07 00 00 c5 fa 7f 84 24 50 07 00 00 c5 fa 6f 84 24 50 07 00 00 c5 fa 7f 84 24 40 07 00 00 48 8b 84 24 40 07 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 30 07 00 00 c5 fa 6f 84 24 30 07 00 00 c5 fa 7f 84 24 20 07 00 00 c5 fa 6f 84 24 20 07 00 00 c5 fa 7f 84 24 10 07 00 00 48 8b 94 24 10 07 00 00 c5 fa 6f 84 24 70 07 00 00 c5 fa 7f 84 24 00 07 00 00 c5 fa 6f 84 24 00 07 00 00 c5 fa 7f 84 24 f0 06 00 00 c5 fa 6f 84 24 f0 06 00 00 c5 fa 7f 84 24 e0 06 00 00 48 8b 8c 24 e0 06 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd db c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c cf 48 8b fb 48 8d b4 24 70 07 00 00 e8 da 19 d6 5e 48 a5 48 8b c3 e9 af 0a 00 00 48 8d 8c 24 d0 06 00 00 e8 6b 1e e3 ff c5 fa 6f 06 c5 fa 7f 84 24 c0 06 00 00 c5 fa 6f 84 24 c0 06 00 00 c5 fa 7f 84 24 b0 06 00 00 c5 fa 6f 84 24 b0 06 00 00 c5 fa 7f 84 24 a0 06 00 00 48 8b 84 24 a0 06 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 90 06 00 00 c5 fa 6f 84 24 90 06 00 00 c5 fa 7f 84 24 80 06 00 00 c5 fa 6f 84 24 80 06 00 00 c5 fa 7f 84 24 70 06 00 00 48 8b 94 24 70 06 00 00 c5 fa 6f 84 24 d0 06 00 00 c5 fa 7f 84 24 60 06 00 00 c5 fa 6f 84 24 60 06 00 00 c5 fa 7f 84 24 50 06 00 00 c5 fa 6f 84 24 50 06 00 00 c5 fa 7f 84 24 40 06 00 00 48 8b 8c 24 40 06 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd db c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb 48 8d b4 24 d0 06 00 00 e8 c2 18 d6 5e 48 a5 48 8b c3 e9 97 09 00 00 48 8d 8c 24 30 06 00 00 e8 53 1d e3 ff c5 fa 6f 06 c5 fa 7f 84 24 20 06 00 00 c5 fa 6f 84 24 20 06 00 00 c5 fa 7f 84 24 10 06 00 00 c5 fa 6f 84 24 10 06 00 00 c5 fa 7f 84 24 00 06 00 00 48 8b 84 24 00 06 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 f0 05 00 00 c5 fa 6f 84 24 f0 05 00 00 c5 fa 7f 84 24 e0 05 00 00 c5 fa 6f 84 24 e0 05 00 00 c5 fa 7f 84 24 d0 05 00 00 48 8b 94 24 d0 05 00 00 c5 fa 6f 84 24 30 06 00 00 c5 fa 7f 84 24 c0 05 00 00 c5 fa 6f 84 24 c0 05 00 00 c5 fa 7f 84 24 b0 05 00 00 c5 fa 6f 84 24 b0 05 00 00 c5 fa 7f 84 24 a0 05 00 00 48 8b 8c 24 a0 05 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c5 fc 57 c0 c5 fd 11 84 24 80 05 00 00 c5 fc 57 c0 c5 fd 11 84 24 60 05 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 80 05 00 00 c5 ff f0 06 c5 fd 11 84 24 60 05 00 00 c5 fd 10 84 24 80 05 00 00 c5 fd 10 8c 24 60 05 00 00 c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c 91 48 8b fb 48 8d b4 24 30 06 00 00 e8 75 17 d6 5e 48 a5 48 8b c3 e9 4a 08 00 00 48 8d 8c 24 50 05 00 00 e8 06 1c e3 ff c5 fa 6f 06 c5 fa 7f 84 24 40 05 00 00 c5 fa 6f 84 24 40 05 00 00 c5 fa 7f 84 24 30 05 00 00 c5 fa 6f 84 24 30 05 00 00 c5 fa 7f 84 24 20 05 00 00 48 8b 84 24 20 05 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 10 05 00 00 c5 fa 6f 84 24 10 05 00 00 c5 fa 7f 84 24 00 05 00 00 c5 fa 6f 84 24 00 05 00 00 c5 fa 7f 84 24 f0 04 00 00 48 8b 94 24 f0 04 00 00 c5 fa 6f 84 24 50 05 00 00 c5 fa 7f 84 24 e0 04 00 00 c5 fa 6f 84 24 e0 04 00 00 c5 fa 7f 84 24 d0 04 00 00 c5 fa 6f 84 24 d0 04 00 00 c5 fa 7f 84 24 c0 04 00 00 48 8b 8c 24 c0 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c5 fc 57 c0 c5 fd 11 84 24 a0 04 00 00 c5 fc 57 c0 c5 fd 11 84 24 80 04 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 a0 04 00 00 c5 ff f0 06 c5 fd 11 84 24 80 04 00 00 c5 fd 10 84 24 a0 04 00 00 c5 fd 10 8c 24 80 04 00 00 c5 fd eb c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c 88 48 8b fb 48 8d b4 24 50 05 00 00 e8 1f 16 d6 5e 48 a5 48 8b c3 e9 f4 06 00 00 48 8d 8c 24 70 04 00 00 e8 b0 1a e3 ff c5 fa 6f 06 c5 fa 7f 84 24 60 04 00 00 c5 fa 6f 84 24 60 04 00 00 c5 fa 7f 84 24 50 04 00 00 c5 fa 6f 84 24 50 04 00 00 c5 fa 7f 84 24 40 04 00 00 48 8b 84 24 40 04 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 30 04 00 00 c5 fa 6f 84 24 30 04 00 00 c5 fa 7f 84 24 20 04 00 00 c5 fa 6f 84 24 20 04 00 00 c5 fa 7f 84 24 10 04 00 00 48 8b 94 24 10 04 00 00 c5 fa 6f 84 24 70 04 00 00 c5 fa 7f 84 24 00 04 00 00 c5 fa 6f 84 24 00 04 00 00 c5 fa 7f 84 24 f0 03 00 00 c5 fa 6f 84 24 f0 03 00 00 c5 fa 7f 84 24 e0 03 00 00 48 8b 8c 24 e0 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c cf 48 8b fb 48 8d b4 24 70 04 00 00 e8 10 15 d6 5e 48 a5 48 8b c3 e9 e5 05 00 00 48 8d 8c 24 d0 03 00 00 e8 a1 19 e3 ff c5 fa 6f 06 c5 fa 7f 84 24 c0 03 00 00 c5 fa 6f 84 24 c0 03 00 00 c5 fa 7f 84 24 b0 03 00 00 c5 fa 6f 84 24 b0 03 00 00 c5 fa 7f 84 24 a0 03 00 00 48 8b 84 24 a0 03 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 90 03 00 00 c5 fa 6f 84 24 90 03 00 00 c5 fa 7f 84 24 80 03 00 00 c5 fa 6f 84 24 80 03 00 00 c5 fa 7f 84 24 70 03 00 00 48 8b 94 24 70 03 00 00 c5 fa 6f 84 24 d0 03 00 00 c5 fa 7f 84 24 60 03 00 00 c5 fa 6f 84 24 60 03 00 00 c5 fa 7f 84 24 50 03 00 00 c5 fa 6f 84 24 50 03 00 00 c5 fa 7f 84 24 40 03 00 00 48 8b 8c 24 40 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd ef c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb 48 8d b4 24 d0 03 00 00 e8 f8 13 d6 5e 48 a5 48 8b c3 e9 cd 04 00 00 48 8b fb e8 e6 13 d6 5e 48 a5 48 8b c3 e9 bb 04 00 00 48 8b fb 48 8b f5 e8 d1 13 d6 5e 48 a5 48 8b c3 e9 a6 04 00 00 48 8d 8c 24 30 03 00 00 e8 62 18 e3 ff c5 fa 6f 06 c5 fa 7f 84 24 20 03 00 00 c5 fa 6f 84 24 20 03 00 00 c5 fa 7f 84 24 10 03 00 00 c5 fa 6f 84 24 10 03 00 00 c5 fa 7f 84 24 00 03 00 00 48 8b 84 24 00 03 00 00 c5 fa 6f 84 24 30 03 00 00 c5 fa 7f 84 24 f0 02 00 00 c5 fa 6f 84 24 f0 02 00 00 c5 fa 7f 84 24 e0 02 00 00 c5 fa 6f 84 24 e0 02 00 00 c5 fa 7f 84 24 d0 02 00 00 48 8b 94 24 d0 02 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c c8 c5 fc 57 c0 c5 fd 11 84 24 a0 02 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 a0 02 00 00 c5 fd 10 84 24 a0 02 00 00 c4 e2 7d 29 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c b5 48 8b fb 48 8d b4 24 30 03 00 00 e8 e3 12 d6 5e 48 a5 48 8b c3 e9 b8 03 00 00 48 8d 8c 24 90 02 00 00 e8 74 17 e3 ff c5 fa 6f 45 00 c5 fa 7f 84 24 80 02 00 00 c5 fa 6f 84 24 80 02 00 00 c5 fa 7f 84 24 70 02 00 00 c5 fa 6f 84 24 70 02 00 00 c5 fa 7f 84 24 60 02 00 00 48 8b 84 24 60 02 00 00 c5 fa 6f 84 24 90 02 00 00 c5 fa 7f 84 24 50 02 00 00 c5 fa 6f 84 24 50 02 00 00 c5 fa 7f 84 24 40 02 00 00 c5 fa 6f 84 24 40 02 00 00 c5 fa 7f 84 24 30 02 00 00 48 8b 94 24 30 02 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c c8 c5 fc 57 c0 c5 fd 11 84 24 00 02 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 00 02 00 00 c5 fd 10 84 24 00 02 00 00 c4 e2 7d 29 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c b5 48 8b fb 48 8d b4 24 90 02 00 00 e8 f4 11 d6 5e 48 a5 48 8b c3 e9 c9 02 00 00 48 8d 8c 24 f0 01 00 00 e8 85 16 e3 ff c5 fa 6f 06 c5 fa 7f 84 24 e0 01 00 00 c5 fa 6f 84 24 e0 01 00 00 c5 fa 7f 84 24 d0 01 00 00 c5 fa 6f 84 24 d0 01 00 00 c5 fa 7f 84 24 c0 01 00 00 48 8b 84 24 c0 01 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 b0 01 00 00 c5 fa 6f 84 24 b0 01 00 00 c5 fa 7f 84 24 a0 01 00 00 c5 fa 6f 84 24 a0 01 00 00 c5 fa 7f 84 24 90 01 00 00 48 8b 94 24 90 01 00 00 c5 fa 6f 84 24 f0 01 00 00 c5 fa 7f 84 24 80 01 00 00 c5 fa 6f 84 24 80 01 00 00 c5 fa 7f 84 24 70 01 00 00 c5 fa 6f 84 24 70 01 00 00 c5 fa 7f 84 24 60 01 00 00 48 8b 8c 24 60 01 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c4 e2 75 29 d1 c5 f5 ef ca c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb 48 8d b4 24 f0 01 00 00 e8 dc 10 d6 5e 48 a5 48 8b c3 e9 b1 01 00 00 48 8d 8c 24 50 01 00 00 e8 6d 15 e3 ff c5 fa 6f 06 c5 fa 7f 84 24 40 01 00 00 c5 fa 6f 84 24 40 01 00 00 c5 fa 7f 84 24 30 01 00 00 c5 fa 6f 84 24 30 01 00 00 c5 fa 7f 84 24 20 01 00 00 48 8b b4 24 20 01 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 10 01 00 00 c5 fa 6f 84 24 10 01 00 00 c5 fa 7f 84 24 00 01 00 00 c5 fa 6f 84 24 00 01 00 00 c5 fa 7f 84 24 f0 00 00 00 48 8b bc 24 f0 00 00 00 c5 fa 6f 84 24 50 01 00 00 c5 fa 7f 84 24 e0 00 00 00 c5 fa 6f 84 24 e0 00 00 00 c5 fa 7f 84 24 d0 00 00 00 c5 fa 6f 84 24 d0 00 00 00 c5 fa 7f 84 24 c0 00 00 00 48 8b ac 24 c0 00 00 00 45 33 f6 45 33 ff 4d 63 e7 49 c1 e4 03 4a 8d 0c 26 4e 8d 2c 27 c5 fc 57 c0 c5 fd 11 84 24 80 00 00 00 48 8d 94 24 80 00 00 00 e8 5d 79 a1 ff c5 fd 10 b4 24 80 00 00 00 c5 fc 57 c0 c5 fd 11 44 24 60 49 8b cd c4 e3 7d 19 f7 01 e8 6c cd 9f ff 48 8b c8 48 8d 54 24 60 e8 c7 86 a2 ff c5 fd 10 00 48 8d 8c 24 a0 00 00 00 c4 e3 4d 18 f7 01 c5 fd 11 74 24 40 c5 fd 11 44 24 20 48 8d 54 24 40 4c 8d 44 24 20 e8 da 77 bc ff c5 fd 10 84 24 a0 00 00 00 c5 fd 11 44 24 40 48 8d 4c 24 40 49 8d 14 2c e8 65 14 e3 ff 41 ff c6 41 83 c7 04 41 83 fe 10 0f 8c 4e ff ff ff 48 8b fb 48 8d b4 24 50 01 00 00 e8 4c 0f d6 5e 48 a5 48 8b c3 eb 24 48 8b cb 48 8b d6 4c 8b c5 e8 17 df ff ff 48 8b c3 eb 11 48 8b cb 48 8b d6 4c 8b c5 e8 b4 df ff ff 48 8b c3 c5 f8 28 b4 24 a0 07 00 00 c5 f8 28 bc 24 90 07 00 00 c5 f8 77 48 81 c4 b8 07 00 00 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 48 b9 40 b0 5b c6 f7 7f 00 00 e8 09 1d d6 5e 48 8b f0 41 0f b6 ce e8 8d de ff ff 48 8b d0 48 8b ce e8 42 40 26 ff 48 8b ce e8 3a 69 cd 5e}
; TermCode = CTC_INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,7b8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec b8 07 00 00}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h vmovaps [rsp+7a0h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 a0 07 00 00}
001fh vmovaps [rsp+790h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 90 07 00 00}
0028h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
002bh lea rdi,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 60}
0030h mov ecx,1c8h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 c8 01 00 00}
0035h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0037h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0039h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ch mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
003fh mov r14d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b f2}
0042h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0045h mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
0048h movzx ecx,r14b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ce}
004ch cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
004fh ja near ptr 0c98h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 43 0c 00 00}
0055h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0057h lea rdx,[rip+0d52h]                     ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 52 0d 00 00}
005eh mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0061h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
0068h add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
006bh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
006dh mov qword ptr [rsp+780h],0ffffffffffffffffh; MOV r/m64, imm32 || REX.W C7 /0 id || encoded[12]{48 c7 84 24 80 07 00 00 ff ff ff ff}
0079h mov rcx,[rsp+780h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 80 07 00 00}
0081h mov [rsp+788h],rcx                      ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{48 89 8c 24 88 07 00 00}
0089h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
008ch mov rdx,[rsp+788h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 88 07 00 00}
0094h call 7ff7c71430c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f ed ff ff}
0099h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009ch jmp near ptr 0c6fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ce 0b 00 00}
00a1h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00a4h call 7ff7c6f76338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 1f e3 ff}
00a9h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00ach jmp near ptr 0c6fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 be 0b 00 00}
00b1h lea rcx,[rsp+770h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 70 07 00 00}
00b9h call 7ff7c6f76338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 1f e3 ff}
00beh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
00c2h vmovdqu xmmword ptr [rsp+760h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 07 00 00}
00cbh vmovdqu xmm0,xmmword ptr [rsp+760h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 07 00 00}
00d4h vmovdqu xmmword ptr [rsp+750h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 07 00 00}
00ddh vmovdqu xmm0,xmmword ptr [rsp+750h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 07 00 00}
00e6h vmovdqu xmmword ptr [rsp+740h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 07 00 00}
00efh mov rax,[rsp+740h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 40 07 00 00}
00f7h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
00fch vmovdqu xmmword ptr [rsp+730h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 07 00 00}
0105h vmovdqu xmm0,xmmword ptr [rsp+730h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 07 00 00}
010eh vmovdqu xmmword ptr [rsp+720h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 07 00 00}
0117h vmovdqu xmm0,xmmword ptr [rsp+720h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 07 00 00}
0120h vmovdqu xmmword ptr [rsp+710h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 07 00 00}
0129h mov rdx,[rsp+710h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 10 07 00 00}
0131h vmovdqu xmm0,xmmword ptr [rsp+770h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 07 00 00}
013ah vmovdqu xmmword ptr [rsp+700h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 07 00 00}
0143h vmovdqu xmm0,xmmword ptr [rsp+700h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 07 00 00}
014ch vmovdqu xmmword ptr [rsp+6f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 06 00 00}
0155h vmovdqu xmm0,xmmword ptr [rsp+6f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 06 00 00}
015eh vmovdqu xmmword ptr [rsp+6e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 06 00 00}
0167h mov rcx,[rsp+6e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 e0 06 00 00}
016fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0172h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0175h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0178h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
017ch lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0180h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0184h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0189h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
018dh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0191h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0194h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0199h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
019ch add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
01a0h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
01a4h jl short 0175h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
01a6h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01a9h lea rsi,[rsp+770h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 70 07 00 00}
01b1h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 19 d6 5e}
01b6h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01b8h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01bbh jmp near ptr 0c6fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 af 0a 00 00}
01c0h lea rcx,[rsp+6d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 06 00 00}
01c8h call 7ff7c6f76338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 1e e3 ff}
01cdh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
01d1h vmovdqu xmmword ptr [rsp+6c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 06 00 00}
01dah vmovdqu xmm0,xmmword ptr [rsp+6c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 06 00 00}
01e3h vmovdqu xmmword ptr [rsp+6b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 06 00 00}
01ech vmovdqu xmm0,xmmword ptr [rsp+6b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 06 00 00}
01f5h vmovdqu xmmword ptr [rsp+6a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 06 00 00}
01feh mov rax,[rsp+6a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 a0 06 00 00}
0206h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
020bh vmovdqu xmmword ptr [rsp+690h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 06 00 00}
0214h vmovdqu xmm0,xmmword ptr [rsp+690h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 06 00 00}
021dh vmovdqu xmmword ptr [rsp+680h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 06 00 00}
0226h vmovdqu xmm0,xmmword ptr [rsp+680h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 06 00 00}
022fh vmovdqu xmmword ptr [rsp+670h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 06 00 00}
0238h mov rdx,[rsp+670h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 70 06 00 00}
0240h vmovdqu xmm0,xmmword ptr [rsp+6d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 06 00 00}
0249h vmovdqu xmmword ptr [rsp+660h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 06 00 00}
0252h vmovdqu xmm0,xmmword ptr [rsp+660h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 06 00 00}
025bh vmovdqu xmmword ptr [rsp+650h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 06 00 00}
0264h vmovdqu xmm0,xmmword ptr [rsp+650h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 06 00 00}
026dh vmovdqu xmmword ptr [rsp+640h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 06 00 00}
0276h mov rcx,[rsp+640h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 40 06 00 00}
027eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0281h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0284h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0287h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
028bh lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
028fh lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0293h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0298h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
029ch vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
02a0h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
02a5h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
02a9h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
02ach vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
02b1h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
02b4h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
02b8h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
02bch jl short 0284h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
02beh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
02c1h lea rsi,[rsp+6d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 d0 06 00 00}
02c9h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 18 d6 5e}
02ceh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02d0h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02d3h jmp near ptr 0c6fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 97 09 00 00}
02d8h lea rcx,[rsp+630h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 30 06 00 00}
02e0h call 7ff7c6f76338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 1d e3 ff}
02e5h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
02e9h vmovdqu xmmword ptr [rsp+620h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 06 00 00}
02f2h vmovdqu xmm0,xmmword ptr [rsp+620h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 06 00 00}
02fbh vmovdqu xmmword ptr [rsp+610h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 06 00 00}
0304h vmovdqu xmm0,xmmword ptr [rsp+610h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 06 00 00}
030dh vmovdqu xmmword ptr [rsp+600h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 06 00 00}
0316h mov rax,[rsp+600h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 00 06 00 00}
031eh vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0323h vmovdqu xmmword ptr [rsp+5f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 05 00 00}
032ch vmovdqu xmm0,xmmword ptr [rsp+5f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 05 00 00}
0335h vmovdqu xmmword ptr [rsp+5e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 05 00 00}
033eh vmovdqu xmm0,xmmword ptr [rsp+5e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 05 00 00}
0347h vmovdqu xmmword ptr [rsp+5d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 05 00 00}
0350h mov rdx,[rsp+5d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 d0 05 00 00}
0358h vmovdqu xmm0,xmmword ptr [rsp+630h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 06 00 00}
0361h vmovdqu xmmword ptr [rsp+5c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 05 00 00}
036ah vmovdqu xmm0,xmmword ptr [rsp+5c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 05 00 00}
0373h vmovdqu xmmword ptr [rsp+5b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 05 00 00}
037ch vmovdqu xmm0,xmmword ptr [rsp+5b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 05 00 00}
0385h vmovdqu xmmword ptr [rsp+5a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 05 00 00}
038eh mov rcx,[rsp+5a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 a0 05 00 00}
0396h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0399h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
039ch movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
039fh shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
03a3h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
03a7h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
03abh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
03afh vmovupd [rsp+580h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 05 00 00}
03b8h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
03bch vmovupd [rsp+560h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 05 00 00}
03c5h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
03cah vmovupd [rsp+580h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 05 00 00}
03d3h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
03d7h vmovupd [rsp+560h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 05 00 00}
03e0h vmovupd ymm0,[rsp+580h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 80 05 00 00}
03e9h vmovupd ymm1,[rsp+560h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 60 05 00 00}
03f2h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
03f6h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
03f9h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
03feh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0401h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0405h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0409h jl short 039ch                          ; JL rel8 || 7C cb || encoded[2]{7c 91}
040bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
040eh lea rsi,[rsp+630h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 30 06 00 00}
0416h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 17 d6 5e}
041bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
041dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0420h jmp near ptr 0c6fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 4a 08 00 00}
0425h lea rcx,[rsp+550h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 50 05 00 00}
042dh call 7ff7c6f76338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 1c e3 ff}
0432h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0436h vmovdqu xmmword ptr [rsp+540h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 05 00 00}
043fh vmovdqu xmm0,xmmword ptr [rsp+540h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 05 00 00}
0448h vmovdqu xmmword ptr [rsp+530h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 05 00 00}
0451h vmovdqu xmm0,xmmword ptr [rsp+530h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 05 00 00}
045ah vmovdqu xmmword ptr [rsp+520h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 05 00 00}
0463h mov rax,[rsp+520h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 20 05 00 00}
046bh vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0470h vmovdqu xmmword ptr [rsp+510h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 05 00 00}
0479h vmovdqu xmm0,xmmword ptr [rsp+510h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 05 00 00}
0482h vmovdqu xmmword ptr [rsp+500h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 05 00 00}
048bh vmovdqu xmm0,xmmword ptr [rsp+500h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 05 00 00}
0494h vmovdqu xmmword ptr [rsp+4f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 04 00 00}
049dh mov rdx,[rsp+4f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 f0 04 00 00}
04a5h vmovdqu xmm0,xmmword ptr [rsp+550h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 05 00 00}
04aeh vmovdqu xmmword ptr [rsp+4e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 04 00 00}
04b7h vmovdqu xmm0,xmmword ptr [rsp+4e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 04 00 00}
04c0h vmovdqu xmmword ptr [rsp+4d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 04 00 00}
04c9h vmovdqu xmm0,xmmword ptr [rsp+4d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 04 00 00}
04d2h vmovdqu xmmword ptr [rsp+4c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 04 00 00}
04dbh mov rcx,[rsp+4c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c0 04 00 00}
04e3h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
04e6h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
04e9h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
04ech shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
04f0h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
04f4h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
04f8h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
04fch vmovupd [rsp+4a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 04 00 00}
0505h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0509h vmovupd [rsp+480h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 04 00 00}
0512h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0517h vmovupd [rsp+4a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 04 00 00}
0520h vlddqu ymm0,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 06}
0524h vmovupd [rsp+480h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 04 00 00}
052dh vmovupd ymm0,[rsp+4a0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 a0 04 00 00}
0536h vmovupd ymm1,[rsp+480h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 80 04 00 00}
053fh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0543h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0548h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
054ch add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
054fh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0554h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0557h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
055bh cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
055fh jl short 04e9h                          ; JL rel8 || 7C cb || encoded[2]{7c 88}
0561h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0564h lea rsi,[rsp+550h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 50 05 00 00}
056ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 16 d6 5e}
0571h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0573h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0576h jmp near ptr 0c6fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f4 06 00 00}
057bh lea rcx,[rsp+470h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 70 04 00 00}
0583h call 7ff7c6f76338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 1a e3 ff}
0588h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
058ch vmovdqu xmmword ptr [rsp+460h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 04 00 00}
0595h vmovdqu xmm0,xmmword ptr [rsp+460h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 04 00 00}
059eh vmovdqu xmmword ptr [rsp+450h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 04 00 00}
05a7h vmovdqu xmm0,xmmword ptr [rsp+450h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 04 00 00}
05b0h vmovdqu xmmword ptr [rsp+440h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 04 00 00}
05b9h mov rax,[rsp+440h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 40 04 00 00}
05c1h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
05c6h vmovdqu xmmword ptr [rsp+430h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 04 00 00}
05cfh vmovdqu xmm0,xmmword ptr [rsp+430h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 04 00 00}
05d8h vmovdqu xmmword ptr [rsp+420h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 04 00 00}
05e1h vmovdqu xmm0,xmmword ptr [rsp+420h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 04 00 00}
05eah vmovdqu xmmword ptr [rsp+410h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 04 00 00}
05f3h mov rdx,[rsp+410h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 10 04 00 00}
05fbh vmovdqu xmm0,xmmword ptr [rsp+470h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 04 00 00}
0604h vmovdqu xmmword ptr [rsp+400h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 04 00 00}
060dh vmovdqu xmm0,xmmword ptr [rsp+400h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 04 00 00}
0616h vmovdqu xmmword ptr [rsp+3f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 03 00 00}
061fh vmovdqu xmm0,xmmword ptr [rsp+3f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 03 00 00}
0628h vmovdqu xmmword ptr [rsp+3e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 03 00 00}
0631h mov rcx,[rsp+3e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 e0 03 00 00}
0639h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
063ch xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
063fh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0642h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0646h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
064ah lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
064eh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0653h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0657h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
065bh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
065eh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0663h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0666h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
066ah cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
066eh jl short 063fh                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0670h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0673h lea rsi,[rsp+470h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 70 04 00 00}
067bh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 15 d6 5e}
0680h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0682h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0685h jmp near ptr 0c6fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 05 00 00}
068ah lea rcx,[rsp+3d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 03 00 00}
0692h call 7ff7c6f76338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 19 e3 ff}
0697h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
069bh vmovdqu xmmword ptr [rsp+3c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 03 00 00}
06a4h vmovdqu xmm0,xmmword ptr [rsp+3c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 03 00 00}
06adh vmovdqu xmmword ptr [rsp+3b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 03 00 00}
06b6h vmovdqu xmm0,xmmword ptr [rsp+3b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 03 00 00}
06bfh vmovdqu xmmword ptr [rsp+3a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 03 00 00}
06c8h mov rax,[rsp+3a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 a0 03 00 00}
06d0h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
06d5h vmovdqu xmmword ptr [rsp+390h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 03 00 00}
06deh vmovdqu xmm0,xmmword ptr [rsp+390h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 03 00 00}
06e7h vmovdqu xmmword ptr [rsp+380h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 03 00 00}
06f0h vmovdqu xmm0,xmmword ptr [rsp+380h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 03 00 00}
06f9h vmovdqu xmmword ptr [rsp+370h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 03 00 00}
0702h mov rdx,[rsp+370h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 70 03 00 00}
070ah vmovdqu xmm0,xmmword ptr [rsp+3d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 03 00 00}
0713h vmovdqu xmmword ptr [rsp+360h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 03 00 00}
071ch vmovdqu xmm0,xmmword ptr [rsp+360h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 03 00 00}
0725h vmovdqu xmmword ptr [rsp+350h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 03 00 00}
072eh vmovdqu xmm0,xmmword ptr [rsp+350h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 03 00 00}
0737h vmovdqu xmmword ptr [rsp+340h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 03 00 00}
0740h mov rcx,[rsp+340h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 40 03 00 00}
0748h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
074bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
074eh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0751h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0755h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0759h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
075dh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0762h vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0766h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
076ah vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
076fh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0773h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0776h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
077bh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
077eh add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0782h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0786h jl short 074eh                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
0788h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
078bh lea rsi,[rsp+3d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 d0 03 00 00}
0793h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 13 d6 5e}
0798h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
079ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
079dh jmp near ptr 0c6fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 cd 04 00 00}
07a2h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
07a5h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 13 d6 5e}
07aah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
07ach mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
07afh jmp near ptr 0c6fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 04 00 00}
07b4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
07b7h mov rsi,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f5}
07bah call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 13 d6 5e}
07bfh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
07c1h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
07c4h jmp near ptr 0c6fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 04 00 00}
07c9h lea rcx,[rsp+330h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 30 03 00 00}
07d1h call 7ff7c6f76338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 18 e3 ff}
07d6h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
07dah vmovdqu xmmword ptr [rsp+320h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 03 00 00}
07e3h vmovdqu xmm0,xmmword ptr [rsp+320h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 03 00 00}
07ech vmovdqu xmmword ptr [rsp+310h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 03 00 00}
07f5h vmovdqu xmm0,xmmword ptr [rsp+310h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 03 00 00}
07feh vmovdqu xmmword ptr [rsp+300h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 03 00 00}
0807h mov rax,[rsp+300h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 00 03 00 00}
080fh vmovdqu xmm0,xmmword ptr [rsp+330h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 03 00 00}
0818h vmovdqu xmmword ptr [rsp+2f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 02 00 00}
0821h vmovdqu xmm0,xmmword ptr [rsp+2f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 02 00 00}
082ah vmovdqu xmmword ptr [rsp+2e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 02 00 00}
0833h vmovdqu xmm0,xmmword ptr [rsp+2e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 02 00 00}
083ch vmovdqu xmmword ptr [rsp+2d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 02 00 00}
0845h mov rdx,[rsp+2d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 d0 02 00 00}
084dh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
084fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0852h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0855h lea r9,[rax+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c c8}
0859h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
085dh vmovupd [rsp+2a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 02 00 00}
0866h vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
086bh vmovupd [rsp+2a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 02 00 00}
0874h vmovupd ymm0,[rsp+2a0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 a0 02 00 00}
087dh vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0882h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0886h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0889h lea r9,[rdx+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c ca}
088dh vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0892h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0894h add r8d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 04}
0898h cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
089bh jl short 0852h                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
089dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
08a0h lea rsi,[rsp+330h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 30 03 00 00}
08a8h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 12 d6 5e}
08adh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
08afh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
08b2h jmp near ptr 0c6fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b8 03 00 00}
08b7h lea rcx,[rsp+290h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 02 00 00}
08bfh call 7ff7c6f76338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 17 e3 ff}
08c4h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
08c9h vmovdqu xmmword ptr [rsp+280h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 02 00 00}
08d2h vmovdqu xmm0,xmmword ptr [rsp+280h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 02 00 00}
08dbh vmovdqu xmmword ptr [rsp+270h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 02 00 00}
08e4h vmovdqu xmm0,xmmword ptr [rsp+270h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 02 00 00}
08edh vmovdqu xmmword ptr [rsp+260h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 02 00 00}
08f6h mov rax,[rsp+260h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 60 02 00 00}
08feh vmovdqu xmm0,xmmword ptr [rsp+290h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 02 00 00}
0907h vmovdqu xmmword ptr [rsp+250h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 02 00 00}
0910h vmovdqu xmm0,xmmword ptr [rsp+250h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 02 00 00}
0919h vmovdqu xmmword ptr [rsp+240h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 02 00 00}
0922h vmovdqu xmm0,xmmword ptr [rsp+240h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 02 00 00}
092bh vmovdqu xmmword ptr [rsp+230h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 02 00 00}
0934h mov rdx,[rsp+230h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 30 02 00 00}
093ch xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
093eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0941h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0944h lea r9,[rax+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c c8}
0948h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
094ch vmovupd [rsp+200h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 02 00 00}
0955h vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
095ah vmovupd [rsp+200h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 02 00 00}
0963h vmovupd ymm0,[rsp+200h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 00 02 00 00}
096ch vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0971h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0975h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0978h lea r9,[rdx+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c ca}
097ch vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0981h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0983h add r8d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 04}
0987h cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
098ah jl short 0941h                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
098ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
098fh lea rsi,[rsp+290h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 90 02 00 00}
0997h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 11 d6 5e}
099ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
099eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
09a1h jmp near ptr 0c6fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 c9 02 00 00}
09a6h lea rcx,[rsp+1f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 01 00 00}
09aeh call 7ff7c6f76338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 16 e3 ff}
09b3h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
09b7h vmovdqu xmmword ptr [rsp+1e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 01 00 00}
09c0h vmovdqu xmm0,xmmword ptr [rsp+1e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 01 00 00}
09c9h vmovdqu xmmword ptr [rsp+1d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 01 00 00}
09d2h vmovdqu xmm0,xmmword ptr [rsp+1d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 01 00 00}
09dbh vmovdqu xmmword ptr [rsp+1c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 01 00 00}
09e4h mov rax,[rsp+1c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 c0 01 00 00}
09ech vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
09f1h vmovdqu xmmword ptr [rsp+1b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 01 00 00}
09fah vmovdqu xmm0,xmmword ptr [rsp+1b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 01 00 00}
0a03h vmovdqu xmmword ptr [rsp+1a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 01 00 00}
0a0ch vmovdqu xmm0,xmmword ptr [rsp+1a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 01 00 00}
0a15h vmovdqu xmmword ptr [rsp+190h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 01 00 00}
0a1eh mov rdx,[rsp+190h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 90 01 00 00}
0a26h vmovdqu xmm0,xmmword ptr [rsp+1f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 01 00 00}
0a2fh vmovdqu xmmword ptr [rsp+180h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 01 00 00}
0a38h vmovdqu xmm0,xmmword ptr [rsp+180h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 01 00 00}
0a41h vmovdqu xmmword ptr [rsp+170h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 01 00 00}
0a4ah vmovdqu xmm0,xmmword ptr [rsp+170h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 01 00 00}
0a53h vmovdqu xmmword ptr [rsp+160h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 01 00 00}
0a5ch mov rcx,[rsp+160h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 60 01 00 00}
0a64h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0a67h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0a6ah movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0a6dh shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0a71h lea r11,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 10}
0a75h lea rsi,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 12}
0a79h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0a7eh vlddqu ymm1,ymmword ptr [rsi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0e}
0a82h vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
0a87h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0a8bh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0a8fh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0a92h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0a97h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0a9ah add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0a9eh cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0aa2h jl short 0a6ah                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
0aa4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0aa7h lea rsi,[rsp+1f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 f0 01 00 00}
0aafh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 10 d6 5e}
0ab4h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0ab6h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0ab9h jmp near ptr 0c6fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b1 01 00 00}
0abeh lea rcx,[rsp+150h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 50 01 00 00}
0ac6h call 7ff7c6f76338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 15 e3 ff}
0acbh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0acfh vmovdqu xmmword ptr [rsp+140h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 01 00 00}
0ad8h vmovdqu xmm0,xmmword ptr [rsp+140h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 01 00 00}
0ae1h vmovdqu xmmword ptr [rsp+130h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 01 00 00}
0aeah vmovdqu xmm0,xmmword ptr [rsp+130h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 01 00 00}
0af3h vmovdqu xmmword ptr [rsp+120h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 01 00 00}
0afch mov rsi,[rsp+120h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 20 01 00 00}
0b04h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0b09h vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
0b12h vmovdqu xmm0,xmmword ptr [rsp+110h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 01 00 00}
0b1bh vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
0b24h vmovdqu xmm0,xmmword ptr [rsp+100h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 01 00 00}
0b2dh vmovdqu xmmword ptr [rsp+0f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 00 00 00}
0b36h mov rdi,[rsp+0f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b bc 24 f0 00 00 00}
0b3eh vmovdqu xmm0,xmmword ptr [rsp+150h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 01 00 00}
0b47h vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
0b50h vmovdqu xmm0,xmmword ptr [rsp+0e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 00 00 00}
0b59h vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
0b62h vmovdqu xmm0,xmmword ptr [rsp+0d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 00 00 00}
0b6bh vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
0b74h mov rbp,[rsp+0c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 c0 00 00 00}
0b7ch xor r14d,r14d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 f6}
0b7fh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0b82h movsxd r12,r15d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 e7}
0b85h shl r12,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e4 03}
0b89h lea rcx,[rsi+r12]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 0c 26}
0b8dh lea r13,[rdi+r12]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 2c 27}
0b91h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0b95h vmovupd [rsp+80h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 00 00 00}
0b9eh lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
0ba6h call 7ff7c6b5c808h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 79 a1 ff}
0babh vmovupd ymm6,[rsp+80h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 b4 24 80 00 00 00}
0bb4h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0bb8h vmovupd [rsp+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 60}
0bbeh mov rcx,r13                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b cd}
0bc1h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0bc7h call 7ff7c6b41c38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c cd 9f ff}
0bcch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0bcfh lea rdx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 60}
0bd4h call 7ff7c6b6d5a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 86 a2 ff}
0bd9h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
0bddh lea rcx,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 a0 00 00 00}
0be5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0bebh vmovupd [rsp+40h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 40}
0bf1h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0bf7h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0bfch lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0c01h call 7ff7c6d0c6e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 77 bc ff}
0c06h vmovupd ymm0,[rsp+0a0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 a0 00 00 00}
0c0fh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0c15h lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0c1ah lea rdx,[r12+rbp]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 14 2c}
0c1eh call 7ff7c6f76388h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 14 e3 ff}
0c23h inc r14d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c6}
0c26h add r15d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c7 04}
0c2ah cmp r14d,10h                            ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 fe 10}
0c2eh jl near ptr 0b82h                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 4e ff ff ff}
0c34h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0c37h lea rsi,[rsp+150h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 50 01 00 00}
0c3fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 0f d6 5e}
0c44h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0c46h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0c49h jmp short 0c6fh                         ; JMP rel8 || EB cb || encoded[2]{eb 24}
0c4bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0c4eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0c51h mov r8,rbp                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c5}
0c54h call 7ff7c7142e70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 df ff ff}
0c59h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0c5ch jmp short 0c6fh                         ; JMP rel8 || EB cb || encoded[2]{eb 11}
0c5eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0c61h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0c64h mov r8,rbp                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c5}
0c67h call 7ff7c7142f20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 df ff ff}
0c6ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0c6fh vmovaps xmm6,[rsp+7a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 a0 07 00 00}
0c78h vmovaps xmm7,[rsp+790h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 90 07 00 00}
0c81h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0c84h add rsp,7b8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 b8 07 00 00}
0c8bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0c8ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0c8dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0c8eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0c8fh pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0c91h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0c93h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0c95h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0c97h ret                                     ; RET || C3 || encoded[1]{c3}
0c98h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
0ca2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 1d d6 5e}
0ca7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0caah movzx ecx,r14b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ce}
0caeh call 7ff7c7142e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d de ff ff}
0cb3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0cb6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0cb9h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 40 26 ff}
0cbeh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0cc1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 69 cd 5e}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> eval<byte>(BinaryBitLogicKind:byte kind, BitMatrix<byte> A, BitMatrix<byte> B, ref BitMatrix<byte> Z)
; eval_g[8u](BinaryBitLogicKind~8u,bm8x8u,bm8x8u,bm8x8u~ref)[902] = {57 56 55 53 48 83 ec 68 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 48 8b b4 24 b0 00 00 00 40 0f b6 cd 83 f9 0f 0f 87 cc 02 00 00 8b c9 48 8d 15 4e 03 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 b9 ff 00 00 00 88 4c 24 60 48 8b cb 0f b6 54 24 60 e8 81 93 ff ff 48 8b c3 e9 81 02 00 00 48 8b cb e8 b9 b8 e2 ff 48 8b c3 e9 71 02 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 23 c2 48 89 01 48 8b fb e8 b4 fc d5 5e 48 a5 48 8b c3 e9 4a 02 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 23 c2 48 f7 d0 48 89 01 48 8b fb e8 8a fc d5 5e 48 a5 48 8b c3 e9 20 02 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 0b c2 48 89 01 48 8b fb e8 63 fc d5 5e 48 a5 48 8b c3 e9 f9 01 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 0b c2 48 f7 d0 48 89 01 48 8b fb e8 39 fc d5 5e 48 a5 48 8b c3 e9 cf 01 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 33 c2 48 89 01 48 8b fb e8 12 fc d5 5e 48 a5 48 8b c3 e9 a8 01 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 33 c2 48 f7 d0 48 89 01 48 8b fb e8 e8 fb d5 5e 48 a5 48 8b c3 e9 7e 01 00 00 c5 fa 6f 06 c5 fa 7f 44 24 40 c4 c1 7a 6f 00 c5 fa 7f 44 24 50 48 8d 4c 24 50 48 8b 11 8b 49 08 4c 8d 44 24 40 49 8b 00 45 8b 40 08 41 3b c8 0f 87 52 01 00 00 4c 63 c1 48 8b c8 e8 5e 2c da 4e 48 8b fb e8 96 fb d5 5e 48 a5 48 8b c3 e9 2c 01 00 00 49 8b 00 48 8b 16 48 8b 00 48 f7 d0 48 89 02 48 8b fb e8 75 fb d5 5e 48 a5 48 8b c3 e9 0b 01 00 00 c5 fa 6f 06 c5 fa 7f 44 24 20 c4 c1 7a 6f 01 c5 fa 7f 44 24 30 48 8d 4c 24 30 48 8b 11 8b 49 08 4c 8d 44 24 20 49 8b 00 45 8b 40 08 41 3b c8 0f 87 e5 00 00 00 4c 63 c1 48 8b c8 e8 eb 2b da 4e 48 8b fb e8 23 fb d5 5e 48 a5 48 8b c3 e9 b9 00 00 00 49 8b 01 48 8b 16 48 8b 00 48 f7 d0 48 89 02 48 8b fb e8 02 fb d5 5e 48 a5 48 8b c3 e9 98 00 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 f7 d2 48 0b c2 48 89 01 48 8b fb e8 d8 fa d5 5e 48 a5 48 8b c3 eb 71 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 c4 e2 f8 f2 c2 48 89 01 48 8b fb e8 b2 fa d5 5e 48 a5 48 8b c3 eb 4b 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 f7 d0 48 0b c2 48 89 01 48 8b fb e8 8b fa d5 5e 48 a5 48 8b c3 eb 24 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 c4 e2 e8 f2 c0 48 89 01 48 8b fb e8 65 fa d5 5e 48 a5 48 8b c3 48 83 c4 68 5b 5d 5e 5f c3 e8 32 f3 24 ff cc e8 2c f3 24 ff cc 48 b9 78 c9 35 c7 f7 7f 00 00 e8 5c 08 d6 5e 48 8b f0 40 88 6e 08 48 b9 58 77 35 c6 f7 7f 00 00 e8 86 8b d0 5e 48 8b f8 48 b9 40 b0 5b c6 f7 7f 00 00 e8 34 08 d6 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 1d a1 e8 5e 48 8b e8 48 8b cf e8 f2 c7 25 ff 8b c8 e8 53 9f 25 ff 4c 8b c0 48 8b cd 48 8b d6 e8 85 dc 23 ff 48 8b d0 48 8b cb e8 42 2b 26 ff 48 8b cb e8 3a 54 cd 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0013h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0018h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001ah rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001fh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0022h mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
0024h mov rsi,[rsp+0b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 b0 00 00 00}
002ch movzx ecx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cd}
0030h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0033h ja near ptr 0305h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 cc 02 00 00}
0039h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
003bh lea rdx,[rip+34eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 4e 03 00 00}
0042h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0045h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
004ch add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
004fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0051h mov ecx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff 00 00 00}
0056h mov [rsp+60h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 60}
005ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
005dh movzx edx,byte ptr [rsp+60h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 60}
0062h call 7ff7c713f528h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 93 ff ff}
0067h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
006ah jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 81 02 00 00}
006fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0072h call 7ff7c6f71a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 b8 e2 ff}
0077h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007ah jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 71 02 00 00}
007fh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0082h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0085h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0088h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
008bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
008eh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0091h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0094h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0097h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 fc d5 5e}
009ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00a1h jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4a 02 00 00}
00a6h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
00a9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00ach mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
00afh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
00b2h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
00b5h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
00b8h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00bbh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
00beh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00c1h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a fc d5 5e}
00c6h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00c8h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00cbh jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 02 00 00}
00d0h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
00d3h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00d6h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
00d9h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
00dch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
00dfh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
00e2h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
00e5h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00e8h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 fc d5 5e}
00edh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00efh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00f2h jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f9 01 00 00}
00f7h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
00fah mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00fdh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0100h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0103h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0106h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0109h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
010ch mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
010fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0112h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 fc d5 5e}
0117h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0119h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
011ch jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cf 01 00 00}
0121h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0124h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0127h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
012ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
012dh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0130h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0133h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0136h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0139h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 fc d5 5e}
013eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0140h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0143h jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a8 01 00 00}
0148h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
014bh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
014eh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0151h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0154h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0157h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
015ah not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
015dh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0160h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0163h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 fb d5 5e}
0168h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
016ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
016dh jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7e 01 00 00}
0172h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0176h vmovdqu xmmword ptr [rsp+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 40}
017ch vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0181h vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
0187h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
018ch mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
018fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0192h lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
0197h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
019ah mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
019eh cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
01a1h ja near ptr 02f9h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 52 01 00 00}
01a7h movsxd r8,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c1}
01aah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01adh call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 2c da 4e}
01b2h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01b5h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 fb d5 5e}
01bah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01bch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01bfh jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 01 00 00}
01c4h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
01c7h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
01cah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
01cdh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01d0h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
01d3h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01d6h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 fb d5 5e}
01dbh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01ddh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01e0h jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0b 01 00 00}
01e5h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
01e9h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
01efh vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
01f4h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
01fah lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
01ffh mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
0202h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0205h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
020ah mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
020dh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0211h cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
0214h ja near ptr 02ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e5 00 00 00}
021ah movsxd r8,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c1}
021dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0220h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 2b da 4e}
0225h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0228h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 fb d5 5e}
022dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
022fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0232h jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b9 00 00 00}
0237h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
023ah mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
023dh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0240h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0243h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0246h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0249h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 fb d5 5e}
024eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0250h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0253h jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 98 00 00 00}
0258h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
025bh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
025eh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0261h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0264h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0267h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
026ah or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
026dh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0270h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0273h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 fa d5 5e}
0278h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
027ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
027dh jmp short 02f0h                         ; JMP rel8 || EB cb || encoded[2]{eb 71}
027fh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0282h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0285h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0288h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
028bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
028eh andn rax,rax,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f8 f2 c2}
0293h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0296h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0299h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 fa d5 5e}
029eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02a0h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02a3h jmp short 02f0h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
02a5h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
02a8h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
02abh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
02aeh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
02b1h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
02b4h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
02b7h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
02bah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
02bdh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
02c0h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b fa d5 5e}
02c5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02c7h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02cah jmp short 02f0h                         ; JMP rel8 || EB cb || encoded[2]{eb 24}
02cch mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
02cfh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
02d2h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
02d5h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
02d8h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
02dbh andn rax,rdx,rax                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 c0}
02e0h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
02e3h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
02e6h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 fa d5 5e}
02ebh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02edh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02f0h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
02f4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02f5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02f6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02f7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
02f8h ret                                     ; RET || C3 || encoded[1]{c3}
02f9h call 7ff7c6395770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f3 24 ff}
02feh int 3                                   ; INT3 || CC || encoded[1]{cc}
02ffh call 7ff7c6395770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c f3 24 ff}
0304h int 3                                   ; INT3 || CC || encoded[1]{cc}
0305h mov rcx,7ff7c735c978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c9 35 c7 f7 7f 00 00}
030fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 08 d6 5e}
0314h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0317h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
031bh mov rcx,7ff7c6357758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 35 c6 f7 7f 00 00}
0325h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 8b d0 5e}
032ah mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
032dh mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
0337h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 08 d6 5e}
033ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
033fh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0344h mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
034eh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d a1 e8 5e}
0353h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0356h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0359h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 c7 25 ff}
035eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0360h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 9f 25 ff}
0365h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0368h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
036bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
036eh call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 dc 23 ff}
0373h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0376h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0379h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 2b 26 ff}
037eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0381h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 54 cd 5e}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, BitMatrix<ushort> A, BitMatrix<ushort> B, ref BitMatrix<ushort> Z)
; eval_g[16u](BinaryBitLogicKind~8u,bm16x16u,bm16x16u,bm16x16u~ref)[2970] = {57 56 55 53 48 81 ec b8 07 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 e4 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 48 8b b4 24 00 08 00 00 40 0f b6 cd 83 f9 0f 0f 87 dd 0a 00 00 8b c9 48 8d 15 5b 0c 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 b9 ff ff 00 00 66 89 8c 24 b0 07 00 00 48 8b cb 0f b7 94 24 b0 07 00 00 e8 e7 ac ff ff 48 8b c3 e9 85 0a 00 00 48 8b cb e8 6f ed e2 ff 48 8b c3 e9 75 0a 00 00 49 8b 00 49 8b 11 c5 fa 6f 06 c5 fa 7f 84 24 a0 07 00 00 c5 fa 6f 84 24 a0 07 00 00 c5 fa 7f 84 24 90 07 00 00 c5 fa 6f 84 24 90 07 00 00 c5 fa 7f 84 24 80 07 00 00 48 8b 8c 24 80 07 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd db c1 c5 fe 7f 01 48 8b fb e8 80 f8 d5 5e 48 a5 48 8b c3 e9 14 0a 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 70 07 00 00 c5 fa 6f 84 24 70 07 00 00 c5 fa 7f 84 24 60 07 00 00 c5 fa 6f 84 24 60 07 00 00 c5 fa 7f 84 24 50 07 00 00 48 8b 84 24 50 07 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 40 07 00 00 c5 fa 6f 84 24 40 07 00 00 c5 fa 7f 84 24 30 07 00 00 c5 fa 6f 84 24 30 07 00 00 c5 fa 7f 84 24 20 07 00 00 48 8b 94 24 20 07 00 00 c5 fa 6f 06 c5 fa 7f 84 24 10 07 00 00 c5 fa 6f 84 24 10 07 00 00 c5 fa 7f 84 24 00 07 00 00 c5 fa 6f 84 24 00 07 00 00 c5 fa 7f 84 24 f0 06 00 00 48 8b 8c 24 f0 06 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd db c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb e8 a9 f7 d5 5e 48 a5 48 8b c3 e9 3d 09 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 e0 06 00 00 c5 fa 6f 84 24 e0 06 00 00 c5 fa 7f 84 24 d0 06 00 00 c5 fa 6f 84 24 d0 06 00 00 c5 fa 7f 84 24 c0 06 00 00 48 8b 84 24 c0 06 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 b0 06 00 00 c5 fa 6f 84 24 b0 06 00 00 c5 fa 7f 84 24 a0 06 00 00 c5 fa 6f 84 24 a0 06 00 00 c5 fa 7f 84 24 90 06 00 00 48 8b 94 24 90 06 00 00 c5 fa 6f 06 c5 fa 7f 84 24 80 06 00 00 c5 fa 6f 84 24 80 06 00 00 c5 fa 7f 84 24 70 06 00 00 c5 fa 6f 84 24 70 06 00 00 c5 fa 7f 84 24 60 06 00 00 48 8b 8c 24 60 06 00 00 c5 ff f0 00 c5 fd 11 84 24 40 06 00 00 c5 ff f0 02 c5 fd 11 84 24 20 06 00 00 c5 fd 10 84 24 40 06 00 00 c5 fd 10 8c 24 20 06 00 00 c5 fd eb c1 c5 fe 7f 01 48 8b fb e8 b6 f6 d5 5e 48 a5 48 8b c3 e9 4a 08 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 10 06 00 00 c5 fa 6f 84 24 10 06 00 00 c5 fa 7f 84 24 00 06 00 00 c5 fa 6f 84 24 00 06 00 00 c5 fa 7f 84 24 f0 05 00 00 48 8b 84 24 f0 05 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 e0 05 00 00 c5 fa 6f 84 24 e0 05 00 00 c5 fa 7f 84 24 d0 05 00 00 c5 fa 6f 84 24 d0 05 00 00 c5 fa 7f 84 24 c0 05 00 00 48 8b 94 24 c0 05 00 00 c5 fa 6f 06 c5 fa 7f 84 24 b0 05 00 00 c5 fa 6f 84 24 b0 05 00 00 c5 fa 7f 84 24 a0 05 00 00 c5 fa 6f 84 24 a0 05 00 00 c5 fa 7f 84 24 90 05 00 00 48 8b 8c 24 90 05 00 00 c5 ff f0 00 c5 fd 11 84 24 60 05 00 00 c5 ff f0 02 c5 fd 11 84 24 40 05 00 00 c5 fd 10 84 24 60 05 00 00 c5 fd 10 8c 24 40 05 00 00 c5 fd eb c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb e8 bb f5 d5 5e 48 a5 48 8b c3 e9 4f 07 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 30 05 00 00 c5 fa 6f 84 24 30 05 00 00 c5 fa 7f 84 24 20 05 00 00 c5 fa 6f 84 24 20 05 00 00 c5 fa 7f 84 24 10 05 00 00 48 8b 84 24 10 05 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 00 05 00 00 c5 fa 6f 84 24 00 05 00 00 c5 fa 7f 84 24 f0 04 00 00 c5 fa 6f 84 24 f0 04 00 00 c5 fa 7f 84 24 e0 04 00 00 48 8b 94 24 e0 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 04 00 00 c5 fa 6f 84 24 d0 04 00 00 c5 fa 7f 84 24 c0 04 00 00 c5 fa 6f 84 24 c0 04 00 00 c5 fa 7f 84 24 b0 04 00 00 48 8b 8c 24 b0 04 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd ef c1 c5 fe 7f 01 48 8b fb e8 ec f4 d5 5e 48 a5 48 8b c3 e9 80 06 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 a0 04 00 00 c5 fa 6f 84 24 a0 04 00 00 c5 fa 7f 84 24 90 04 00 00 c5 fa 6f 84 24 90 04 00 00 c5 fa 7f 84 24 80 04 00 00 48 8b 84 24 80 04 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 70 04 00 00 c5 fa 6f 84 24 70 04 00 00 c5 fa 7f 84 24 60 04 00 00 c5 fa 6f 84 24 60 04 00 00 c5 fa 7f 84 24 50 04 00 00 48 8b 94 24 50 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 40 04 00 00 c5 fa 6f 84 24 40 04 00 00 c5 fa 7f 84 24 30 04 00 00 c5 fa 6f 84 24 30 04 00 00 c5 fa 7f 84 24 20 04 00 00 48 8b 8c 24 20 04 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd ef c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb e8 15 f4 d5 5e 48 a5 48 8b c3 e9 a9 05 00 00 c5 fa 6f 06 c5 fa 7f 84 24 f0 03 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 10 04 00 00 c5 fa 6f 84 24 10 04 00 00 c5 fa 7f 84 24 00 04 00 00 c5 fa 6f 84 24 f0 03 00 00 c5 fa 7f 84 24 e0 03 00 00 c5 fa 6f 84 24 e0 03 00 00 c5 fa 7f 84 24 d0 03 00 00 44 8b 84 24 08 04 00 00 44 3b 84 24 d8 03 00 00 0f 87 51 05 00 00 48 8b 8c 24 d0 03 00 00 48 8b 94 24 00 04 00 00 44 8b 84 24 08 04 00 00 4d 63 c0 49 d1 e0 e8 41 24 da 4e 48 8b fb e8 79 f3 d5 5e 48 a5 48 8b c3 e9 0d 05 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 c0 03 00 00 c5 fa 6f 84 24 c0 03 00 00 c5 fa 7f 84 24 b0 03 00 00 c5 fa 6f 84 24 b0 03 00 00 c5 fa 7f 84 24 a0 03 00 00 48 8b 84 24 a0 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 03 00 00 c5 fa 6f 84 24 90 03 00 00 c5 fa 7f 84 24 80 03 00 00 c5 fa 6f 84 24 80 03 00 00 c5 fa 7f 84 24 70 03 00 00 48 8b 94 24 70 03 00 00 c5 ff f0 00 c5 fd 11 84 24 40 03 00 00 c5 fd 10 84 24 40 03 00 00 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb e8 d2 f2 d5 5e 48 a5 48 8b c3 e9 66 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 10 03 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 30 03 00 00 c5 fa 6f 84 24 30 03 00 00 c5 fa 7f 84 24 20 03 00 00 c5 fa 6f 84 24 10 03 00 00 c5 fa 7f 84 24 00 03 00 00 c5 fa 6f 84 24 00 03 00 00 c5 fa 7f 84 24 f0 02 00 00 44 8b 84 24 28 03 00 00 44 3b 84 24 f8 02 00 00 0f 87 14 04 00 00 48 8b 8c 24 f0 02 00 00 48 8b 94 24 20 03 00 00 44 8b 84 24 28 03 00 00 4d 63 c0 49 d1 e0 e8 fe 22 da 4e 48 8b fb e8 36 f2 d5 5e 48 a5 48 8b c3 e9 ca 03 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 e0 02 00 00 c5 fa 6f 84 24 e0 02 00 00 c5 fa 7f 84 24 d0 02 00 00 c5 fa 6f 84 24 d0 02 00 00 c5 fa 7f 84 24 c0 02 00 00 48 8b 84 24 c0 02 00 00 c5 fa 6f 06 c5 fa 7f 84 24 b0 02 00 00 c5 fa 6f 84 24 b0 02 00 00 c5 fa 7f 84 24 a0 02 00 00 c5 fa 6f 84 24 a0 02 00 00 c5 fa 7f 84 24 90 02 00 00 48 8b 94 24 90 02 00 00 c5 ff f0 00 c5 fd 11 84 24 60 02 00 00 c5 fd 10 84 24 60 02 00 00 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb e8 8f f1 d5 5e 48 a5 48 8b c3 e9 23 03 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 50 02 00 00 c5 fa 6f 84 24 50 02 00 00 c5 fa 7f 84 24 40 02 00 00 c5 fa 6f 84 24 40 02 00 00 c5 fa 7f 84 24 30 02 00 00 48 8b 84 24 30 02 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 20 02 00 00 c5 fa 6f 84 24 20 02 00 00 c5 fa 7f 84 24 10 02 00 00 c5 fa 6f 84 24 10 02 00 00 c5 fa 7f 84 24 00 02 00 00 48 8b 94 24 00 02 00 00 c5 fa 6f 06 c5 fa 7f 84 24 f0 01 00 00 c5 fa 6f 84 24 f0 01 00 00 c5 fa 7f 84 24 e0 01 00 00 c5 fa 6f 84 24 e0 01 00 00 c5 fa 7f 84 24 d0 01 00 00 48 8b 8c 24 d0 01 00 00 c5 ff f0 00 c5 ff f0 0a c5 f5 75 d1 c5 f5 ef ca c5 fd eb c1 c5 fe 7f 01 48 8b fb e8 b8 f0 d5 5e 48 a5 48 8b c3 e9 4c 02 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 c0 01 00 00 c5 fa 6f 84 24 c0 01 00 00 c5 fa 7f 84 24 b0 01 00 00 c5 fa 6f 84 24 b0 01 00 00 c5 fa 7f 84 24 a0 01 00 00 48 8b 84 24 a0 01 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 90 01 00 00 c5 fa 6f 84 24 90 01 00 00 c5 fa 7f 84 24 80 01 00 00 c5 fa 6f 84 24 80 01 00 00 c5 fa 7f 84 24 70 01 00 00 48 8b 94 24 70 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 60 01 00 00 c5 fa 6f 84 24 60 01 00 00 c5 fa 7f 84 24 50 01 00 00 c5 fa 6f 84 24 50 01 00 00 c5 fa 7f 84 24 40 01 00 00 48 8b 8c 24 40 01 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd df c1 c5 fe 7f 01 48 8b fb e8 e9 ef d5 5e 48 a5 48 8b c3 e9 7d 01 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 30 01 00 00 c5 fa 6f 84 24 30 01 00 00 c5 fa 7f 84 24 20 01 00 00 c5 fa 6f 84 24 20 01 00 00 c5 fa 7f 84 24 10 01 00 00 48 8b 84 24 10 01 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 00 01 00 00 c5 fa 6f 84 24 00 01 00 00 c5 fa 7f 84 24 f0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 e0 00 00 00 48 8b 94 24 e0 00 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 00 00 00 c5 fa 6f 84 24 d0 00 00 00 c5 fa 7f 84 24 c0 00 00 00 c5 fa 6f 84 24 c0 00 00 00 c5 fa 7f 84 24 b0 00 00 00 48 8b 8c 24 b0 00 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd 75 d0 c5 fd ef c2 c5 fd eb c1 c5 fe 7f 01 48 8b fb e8 12 ef d5 5e 48 a5 48 8b c3 e9 a6 00 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 a0 00 00 00 c5 fa 6f 84 24 a0 00 00 00 c5 fa 7f 84 24 90 00 00 00 c5 fa 6f 84 24 90 00 00 00 c5 fa 7f 84 24 80 00 00 00 48 8b 84 24 80 00 00 00 c4 c1 7a 6f 01 c5 fa 7f 44 24 70 c5 fa 6f 44 24 70 c5 fa 7f 44 24 60 c5 fa 6f 44 24 60 c5 fa 7f 44 24 50 48 8b 54 24 50 c5 fa 6f 06 c5 fa 7f 44 24 40 c5 fa 6f 44 24 40 c5 fa 7f 44 24 30 c5 fa 6f 44 24 30 c5 fa 7f 44 24 20 48 8b 4c 24 20 c5 ff f0 00 c5 ff f0 0a c5 f5 df c0 c5 fe 7f 01 48 8b fb e8 67 ee d5 5e 48 a5 48 8b c3 c5 f8 77 48 81 c4 b8 07 00 00 5b 5d 5e 5f c3 e8 2e e7 24 ff cc e8 28 e7 24 ff cc 48 b9 78 c9 35 c7 f7 7f 00 00 e8 58 fc d5 5e 48 8b f0 40 88 6e 08 48 b9 38 87 35 c6 f7 7f 00 00 e8 82 7f d0 5e 48 8b f8 48 b9 40 b0 5b c6 f7 7f 00 00 e8 30 fc d5 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 19 95 e8 5e 48 8b e8 48 8b cf e8 ee bb 25 ff 8b c8 e8 4f 93 25 ff 4c 8b c0 48 8b cd 48 8b d6 e8 81 d0 23 ff 48 8b d0 48 8b cb e8 3e 1f 26 ff 48 8b cb e8 36 48 cd 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,7b8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec b8 07 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0016h mov ecx,1e4h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 e4 01 00 00}
001bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001dh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0022h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0025h mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
0027h mov rsi,[rsp+800h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 00 08 00 00}
002fh movzx ecx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cd}
0033h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0036h ja near ptr 0b19h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 dd 0a 00 00}
003ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
003eh lea rdx,[rip+0c5bh]                     ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5b 0c 00 00}
0045h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0048h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
004fh add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
0052h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0054h mov ecx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff ff 00 00}
0059h mov [rsp+7b0h],cx                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 8c 24 b0 07 00 00}
0061h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0064h movzx edx,word ptr [rsp+7b0h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[8]{0f b7 94 24 b0 07 00 00}
006ch call 7ff7c7141288h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 ac ff ff}
0071h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0074h jmp near ptr 0afeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 85 0a 00 00}
0079h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
007ch call 7ff7c6f75320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f ed e2 ff}
0081h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0084h jmp near ptr 0afeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 0a 00 00}
0089h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
008ch mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
008fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0093h vmovdqu xmmword ptr [rsp+7a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 07 00 00}
009ch vmovdqu xmm0,xmmword ptr [rsp+7a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 07 00 00}
00a5h vmovdqu xmmword ptr [rsp+790h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 07 00 00}
00aeh vmovdqu xmm0,xmmword ptr [rsp+790h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 07 00 00}
00b7h vmovdqu xmmword ptr [rsp+780h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 07 00 00}
00c0h mov rcx,[rsp+780h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 80 07 00 00}
00c8h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
00cch vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
00d0h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
00d4h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
00d8h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00dbh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 f8 d5 5e}
00e0h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00e2h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00e5h jmp near ptr 0afeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 14 0a 00 00}
00eah vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
00efh vmovdqu xmmword ptr [rsp+770h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 07 00 00}
00f8h vmovdqu xmm0,xmmword ptr [rsp+770h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 07 00 00}
0101h vmovdqu xmmword ptr [rsp+760h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 07 00 00}
010ah vmovdqu xmm0,xmmword ptr [rsp+760h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 07 00 00}
0113h vmovdqu xmmword ptr [rsp+750h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 07 00 00}
011ch mov rax,[rsp+750h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 50 07 00 00}
0124h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
0129h vmovdqu xmmword ptr [rsp+740h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 07 00 00}
0132h vmovdqu xmm0,xmmword ptr [rsp+740h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 07 00 00}
013bh vmovdqu xmmword ptr [rsp+730h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 07 00 00}
0144h vmovdqu xmm0,xmmword ptr [rsp+730h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 07 00 00}
014dh vmovdqu xmmword ptr [rsp+720h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 07 00 00}
0156h mov rdx,[rsp+720h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 20 07 00 00}
015eh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0162h vmovdqu xmmword ptr [rsp+710h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 07 00 00}
016bh vmovdqu xmm0,xmmword ptr [rsp+710h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 07 00 00}
0174h vmovdqu xmmword ptr [rsp+700h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 07 00 00}
017dh vmovdqu xmm0,xmmword ptr [rsp+700h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 07 00 00}
0186h vmovdqu xmmword ptr [rsp+6f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 06 00 00}
018fh mov rcx,[rsp+6f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 f0 06 00 00}
0197h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
019bh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
019fh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
01a3h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
01a7h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
01abh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
01afh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01b2h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 f7 d5 5e}
01b7h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01b9h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01bch jmp near ptr 0afeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 3d 09 00 00}
01c1h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
01c6h vmovdqu xmmword ptr [rsp+6e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 06 00 00}
01cfh vmovdqu xmm0,xmmword ptr [rsp+6e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 06 00 00}
01d8h vmovdqu xmmword ptr [rsp+6d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 06 00 00}
01e1h vmovdqu xmm0,xmmword ptr [rsp+6d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 06 00 00}
01eah vmovdqu xmmword ptr [rsp+6c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 06 00 00}
01f3h mov rax,[rsp+6c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 c0 06 00 00}
01fbh vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
0200h vmovdqu xmmword ptr [rsp+6b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 06 00 00}
0209h vmovdqu xmm0,xmmword ptr [rsp+6b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 06 00 00}
0212h vmovdqu xmmword ptr [rsp+6a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 06 00 00}
021bh vmovdqu xmm0,xmmword ptr [rsp+6a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 06 00 00}
0224h vmovdqu xmmword ptr [rsp+690h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 06 00 00}
022dh mov rdx,[rsp+690h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 90 06 00 00}
0235h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0239h vmovdqu xmmword ptr [rsp+680h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 06 00 00}
0242h vmovdqu xmm0,xmmword ptr [rsp+680h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 06 00 00}
024bh vmovdqu xmmword ptr [rsp+670h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 06 00 00}
0254h vmovdqu xmm0,xmmword ptr [rsp+670h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 06 00 00}
025dh vmovdqu xmmword ptr [rsp+660h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 06 00 00}
0266h mov rcx,[rsp+660h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 60 06 00 00}
026eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0272h vmovupd [rsp+640h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 06 00 00}
027bh vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
027fh vmovupd [rsp+620h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 06 00 00}
0288h vmovupd ymm0,[rsp+640h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 06 00 00}
0291h vmovupd ymm1,[rsp+620h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 20 06 00 00}
029ah vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
029eh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
02a2h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
02a5h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 f6 d5 5e}
02aah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02ach mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02afh jmp near ptr 0afeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 4a 08 00 00}
02b4h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
02b9h vmovdqu xmmword ptr [rsp+610h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 06 00 00}
02c2h vmovdqu xmm0,xmmword ptr [rsp+610h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 06 00 00}
02cbh vmovdqu xmmword ptr [rsp+600h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 06 00 00}
02d4h vmovdqu xmm0,xmmword ptr [rsp+600h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 06 00 00}
02ddh vmovdqu xmmword ptr [rsp+5f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 05 00 00}
02e6h mov rax,[rsp+5f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 f0 05 00 00}
02eeh vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
02f3h vmovdqu xmmword ptr [rsp+5e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 05 00 00}
02fch vmovdqu xmm0,xmmword ptr [rsp+5e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 05 00 00}
0305h vmovdqu xmmword ptr [rsp+5d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 05 00 00}
030eh vmovdqu xmm0,xmmword ptr [rsp+5d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 05 00 00}
0317h vmovdqu xmmword ptr [rsp+5c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 05 00 00}
0320h mov rdx,[rsp+5c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 c0 05 00 00}
0328h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
032ch vmovdqu xmmword ptr [rsp+5b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 05 00 00}
0335h vmovdqu xmm0,xmmword ptr [rsp+5b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 05 00 00}
033eh vmovdqu xmmword ptr [rsp+5a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 05 00 00}
0347h vmovdqu xmm0,xmmword ptr [rsp+5a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 05 00 00}
0350h vmovdqu xmmword ptr [rsp+590h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 05 00 00}
0359h mov rcx,[rsp+590h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 90 05 00 00}
0361h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0365h vmovupd [rsp+560h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 05 00 00}
036eh vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0372h vmovupd [rsp+540h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 05 00 00}
037bh vmovupd ymm0,[rsp+560h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 60 05 00 00}
0384h vmovupd ymm1,[rsp+540h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 40 05 00 00}
038dh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0391h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0395h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0399h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
039dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
03a0h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb f5 d5 5e}
03a5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
03a7h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
03aah jmp near ptr 0afeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 4f 07 00 00}
03afh vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
03b4h vmovdqu xmmword ptr [rsp+530h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 05 00 00}
03bdh vmovdqu xmm0,xmmword ptr [rsp+530h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 05 00 00}
03c6h vmovdqu xmmword ptr [rsp+520h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 05 00 00}
03cfh vmovdqu xmm0,xmmword ptr [rsp+520h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 05 00 00}
03d8h vmovdqu xmmword ptr [rsp+510h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 05 00 00}
03e1h mov rax,[rsp+510h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 10 05 00 00}
03e9h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
03eeh vmovdqu xmmword ptr [rsp+500h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 05 00 00}
03f7h vmovdqu xmm0,xmmword ptr [rsp+500h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 05 00 00}
0400h vmovdqu xmmword ptr [rsp+4f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 04 00 00}
0409h vmovdqu xmm0,xmmword ptr [rsp+4f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 04 00 00}
0412h vmovdqu xmmword ptr [rsp+4e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 04 00 00}
041bh mov rdx,[rsp+4e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 e0 04 00 00}
0423h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0427h vmovdqu xmmword ptr [rsp+4d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 04 00 00}
0430h vmovdqu xmm0,xmmword ptr [rsp+4d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 04 00 00}
0439h vmovdqu xmmword ptr [rsp+4c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 04 00 00}
0442h vmovdqu xmm0,xmmword ptr [rsp+4c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 04 00 00}
044bh vmovdqu xmmword ptr [rsp+4b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 04 00 00}
0454h mov rcx,[rsp+4b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 b0 04 00 00}
045ch vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0460h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0464h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0468h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
046ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
046fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec f4 d5 5e}
0474h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0476h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0479h jmp near ptr 0afeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 06 00 00}
047eh vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0483h vmovdqu xmmword ptr [rsp+4a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 04 00 00}
048ch vmovdqu xmm0,xmmword ptr [rsp+4a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 04 00 00}
0495h vmovdqu xmmword ptr [rsp+490h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 04 00 00}
049eh vmovdqu xmm0,xmmword ptr [rsp+490h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 04 00 00}
04a7h vmovdqu xmmword ptr [rsp+480h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 04 00 00}
04b0h mov rax,[rsp+480h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 80 04 00 00}
04b8h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
04bdh vmovdqu xmmword ptr [rsp+470h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 04 00 00}
04c6h vmovdqu xmm0,xmmword ptr [rsp+470h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 04 00 00}
04cfh vmovdqu xmmword ptr [rsp+460h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 04 00 00}
04d8h vmovdqu xmm0,xmmword ptr [rsp+460h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 04 00 00}
04e1h vmovdqu xmmword ptr [rsp+450h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 04 00 00}
04eah mov rdx,[rsp+450h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 50 04 00 00}
04f2h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
04f6h vmovdqu xmmword ptr [rsp+440h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 04 00 00}
04ffh vmovdqu xmm0,xmmword ptr [rsp+440h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 04 00 00}
0508h vmovdqu xmmword ptr [rsp+430h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 04 00 00}
0511h vmovdqu xmm0,xmmword ptr [rsp+430h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 04 00 00}
051ah vmovdqu xmmword ptr [rsp+420h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 04 00 00}
0523h mov rcx,[rsp+420h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 20 04 00 00}
052bh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
052fh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0533h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0537h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
053bh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
053fh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0543h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0546h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 f4 d5 5e}
054bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
054dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0550h jmp near ptr 0afeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a9 05 00 00}
0555h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0559h vmovdqu xmmword ptr [rsp+3f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 03 00 00}
0562h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0567h vmovdqu xmmword ptr [rsp+410h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 04 00 00}
0570h vmovdqu xmm0,xmmword ptr [rsp+410h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 04 00 00}
0579h vmovdqu xmmword ptr [rsp+400h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 04 00 00}
0582h vmovdqu xmm0,xmmword ptr [rsp+3f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 03 00 00}
058bh vmovdqu xmmword ptr [rsp+3e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 03 00 00}
0594h vmovdqu xmm0,xmmword ptr [rsp+3e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 03 00 00}
059dh vmovdqu xmmword ptr [rsp+3d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 03 00 00}
05a6h mov r8d,[rsp+408h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 08 04 00 00}
05aeh cmp r8d,[rsp+3d8h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 d8 03 00 00}
05b6h ja near ptr 0b0dh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 51 05 00 00}
05bch mov rcx,[rsp+3d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 d0 03 00 00}
05c4h mov rdx,[rsp+400h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 04 00 00}
05cch mov r8d,[rsp+408h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 08 04 00 00}
05d4h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
05d7h shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
05dah call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 24 da 4e}
05dfh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
05e2h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f3 d5 5e}
05e7h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
05e9h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
05ech jmp near ptr 0afeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0d 05 00 00}
05f1h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
05f6h vmovdqu xmmword ptr [rsp+3c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 03 00 00}
05ffh vmovdqu xmm0,xmmword ptr [rsp+3c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 03 00 00}
0608h vmovdqu xmmword ptr [rsp+3b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 03 00 00}
0611h vmovdqu xmm0,xmmword ptr [rsp+3b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 03 00 00}
061ah vmovdqu xmmword ptr [rsp+3a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 03 00 00}
0623h mov rax,[rsp+3a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 a0 03 00 00}
062bh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
062fh vmovdqu xmmword ptr [rsp+390h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 03 00 00}
0638h vmovdqu xmm0,xmmword ptr [rsp+390h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 03 00 00}
0641h vmovdqu xmmword ptr [rsp+380h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 03 00 00}
064ah vmovdqu xmm0,xmmword ptr [rsp+380h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 03 00 00}
0653h vmovdqu xmmword ptr [rsp+370h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 03 00 00}
065ch mov rdx,[rsp+370h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 70 03 00 00}
0664h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0668h vmovupd [rsp+340h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 03 00 00}
0671h vmovupd ymm0,[rsp+340h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 03 00 00}
067ah vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
067eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0682h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0686h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0689h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 f2 d5 5e}
068eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0690h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0693h jmp near ptr 0afeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 66 04 00 00}
0698h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
069ch vmovdqu xmmword ptr [rsp+310h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 03 00 00}
06a5h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
06aah vmovdqu xmmword ptr [rsp+330h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 03 00 00}
06b3h vmovdqu xmm0,xmmword ptr [rsp+330h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 03 00 00}
06bch vmovdqu xmmword ptr [rsp+320h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 03 00 00}
06c5h vmovdqu xmm0,xmmword ptr [rsp+310h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 03 00 00}
06ceh vmovdqu xmmword ptr [rsp+300h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 03 00 00}
06d7h vmovdqu xmm0,xmmword ptr [rsp+300h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 03 00 00}
06e0h vmovdqu xmmword ptr [rsp+2f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 02 00 00}
06e9h mov r8d,[rsp+328h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 28 03 00 00}
06f1h cmp r8d,[rsp+2f8h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 f8 02 00 00}
06f9h ja near ptr 0b13h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 14 04 00 00}
06ffh mov rcx,[rsp+2f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 f0 02 00 00}
0707h mov rdx,[rsp+320h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 20 03 00 00}
070fh mov r8d,[rsp+328h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 28 03 00 00}
0717h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
071ah shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
071dh call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 22 da 4e}
0722h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0725h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 f2 d5 5e}
072ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
072ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
072fh jmp near ptr 0afeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ca 03 00 00}
0734h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
0739h vmovdqu xmmword ptr [rsp+2e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 02 00 00}
0742h vmovdqu xmm0,xmmword ptr [rsp+2e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 02 00 00}
074bh vmovdqu xmmword ptr [rsp+2d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 02 00 00}
0754h vmovdqu xmm0,xmmword ptr [rsp+2d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 02 00 00}
075dh vmovdqu xmmword ptr [rsp+2c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 02 00 00}
0766h mov rax,[rsp+2c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 c0 02 00 00}
076eh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0772h vmovdqu xmmword ptr [rsp+2b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 02 00 00}
077bh vmovdqu xmm0,xmmword ptr [rsp+2b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 02 00 00}
0784h vmovdqu xmmword ptr [rsp+2a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 02 00 00}
078dh vmovdqu xmm0,xmmword ptr [rsp+2a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 02 00 00}
0796h vmovdqu xmmword ptr [rsp+290h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 02 00 00}
079fh mov rdx,[rsp+290h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 90 02 00 00}
07a7h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
07abh vmovupd [rsp+260h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 02 00 00}
07b4h vmovupd ymm0,[rsp+260h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 60 02 00 00}
07bdh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
07c1h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
07c5h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
07c9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
07cch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f f1 d5 5e}
07d1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
07d3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
07d6h jmp near ptr 0afeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 23 03 00 00}
07dbh vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
07e0h vmovdqu xmmword ptr [rsp+250h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 02 00 00}
07e9h vmovdqu xmm0,xmmword ptr [rsp+250h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 02 00 00}
07f2h vmovdqu xmmword ptr [rsp+240h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 02 00 00}
07fbh vmovdqu xmm0,xmmword ptr [rsp+240h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 02 00 00}
0804h vmovdqu xmmword ptr [rsp+230h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 02 00 00}
080dh mov rax,[rsp+230h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 30 02 00 00}
0815h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
081ah vmovdqu xmmword ptr [rsp+220h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 02 00 00}
0823h vmovdqu xmm0,xmmword ptr [rsp+220h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 02 00 00}
082ch vmovdqu xmmword ptr [rsp+210h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 02 00 00}
0835h vmovdqu xmm0,xmmword ptr [rsp+210h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 02 00 00}
083eh vmovdqu xmmword ptr [rsp+200h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 02 00 00}
0847h mov rdx,[rsp+200h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 02 00 00}
084fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0853h vmovdqu xmmword ptr [rsp+1f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 01 00 00}
085ch vmovdqu xmm0,xmmword ptr [rsp+1f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 01 00 00}
0865h vmovdqu xmmword ptr [rsp+1e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 01 00 00}
086eh vmovdqu xmm0,xmmword ptr [rsp+1e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 01 00 00}
0877h vmovdqu xmmword ptr [rsp+1d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 01 00 00}
0880h mov rcx,[rsp+1d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 d0 01 00 00}
0888h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
088ch vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0890h vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
0894h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0898h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
089ch vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
08a0h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
08a3h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f0 d5 5e}
08a8h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
08aah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
08adh jmp near ptr 0afeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 4c 02 00 00}
08b2h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
08b7h vmovdqu xmmword ptr [rsp+1c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 01 00 00}
08c0h vmovdqu xmm0,xmmword ptr [rsp+1c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 01 00 00}
08c9h vmovdqu xmmword ptr [rsp+1b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 01 00 00}
08d2h vmovdqu xmm0,xmmword ptr [rsp+1b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 01 00 00}
08dbh vmovdqu xmmword ptr [rsp+1a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 01 00 00}
08e4h mov rax,[rsp+1a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 a0 01 00 00}
08ech vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
08f1h vmovdqu xmmword ptr [rsp+190h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 01 00 00}
08fah vmovdqu xmm0,xmmword ptr [rsp+190h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 01 00 00}
0903h vmovdqu xmmword ptr [rsp+180h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 01 00 00}
090ch vmovdqu xmm0,xmmword ptr [rsp+180h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 01 00 00}
0915h vmovdqu xmmword ptr [rsp+170h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 01 00 00}
091eh mov rdx,[rsp+170h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 70 01 00 00}
0926h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
092ah vmovdqu xmmword ptr [rsp+160h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 01 00 00}
0933h vmovdqu xmm0,xmmword ptr [rsp+160h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 01 00 00}
093ch vmovdqu xmmword ptr [rsp+150h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 01 00 00}
0945h vmovdqu xmm0,xmmword ptr [rsp+150h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 01 00 00}
094eh vmovdqu xmmword ptr [rsp+140h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 01 00 00}
0957h mov rcx,[rsp+140h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 40 01 00 00}
095fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0963h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0967h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
096bh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
096fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0972h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 ef d5 5e}
0977h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0979h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
097ch jmp near ptr 0afeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 7d 01 00 00}
0981h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0986h vmovdqu xmmword ptr [rsp+130h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 01 00 00}
098fh vmovdqu xmm0,xmmword ptr [rsp+130h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 01 00 00}
0998h vmovdqu xmmword ptr [rsp+120h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 01 00 00}
09a1h vmovdqu xmm0,xmmword ptr [rsp+120h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 01 00 00}
09aah vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
09b3h mov rax,[rsp+110h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 10 01 00 00}
09bbh vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
09c0h vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
09c9h vmovdqu xmm0,xmmword ptr [rsp+100h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 01 00 00}
09d2h vmovdqu xmmword ptr [rsp+0f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 00 00 00}
09dbh vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
09e4h vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
09edh mov rdx,[rsp+0e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 e0 00 00 00}
09f5h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
09f9h vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
0a02h vmovdqu xmm0,xmmword ptr [rsp+0d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 00 00 00}
0a0bh vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
0a14h vmovdqu xmm0,xmmword ptr [rsp+0c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 00 00 00}
0a1dh vmovdqu xmmword ptr [rsp+0b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 00 00 00}
0a26h mov rcx,[rsp+0b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 b0 00 00 00}
0a2eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0a32h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0a36h vpcmpeqw ymm2,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 d0}
0a3ah vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0a3eh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0a42h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0a46h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0a49h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 ef d5 5e}
0a4eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0a50h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0a53h jmp near ptr 0afeh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 00 00 00}
0a58h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0a5dh vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
0a66h vmovdqu xmm0,xmmword ptr [rsp+0a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 00 00 00}
0a6fh vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
0a78h vmovdqu xmm0,xmmword ptr [rsp+90h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 00 00 00}
0a81h vmovdqu xmmword ptr [rsp+80h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 00 00 00}
0a8ah mov rax,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 80 00 00 00}
0a92h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
0a97h vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
0a9dh vmovdqu xmm0,xmmword ptr [rsp+70h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 70}
0aa3h vmovdqu xmmword ptr [rsp+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 60}
0aa9h vmovdqu xmm0,xmmword ptr [rsp+60h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 60}
0aafh vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
0ab5h mov rdx,[rsp+50h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 50}
0abah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0abeh vmovdqu xmmword ptr [rsp+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 40}
0ac4h vmovdqu xmm0,xmmword ptr [rsp+40h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 40}
0acah vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
0ad0h vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
0ad6h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0adch mov rcx,[rsp+20h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 4c 24 20}
0ae1h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0ae5h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0ae9h vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
0aedh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0af1h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0af4h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 ee d5 5e}
0af9h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0afbh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0afeh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0b01h add rsp,7b8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 b8 07 00 00}
0b08h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0b09h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0b0ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0b0bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0b0ch ret                                     ; RET || C3 || encoded[1]{c3}
0b0dh call 7ff7c6395770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e e7 24 ff}
0b12h int 3                                   ; INT3 || CC || encoded[1]{cc}
0b13h call 7ff7c6395770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 e7 24 ff}
0b18h int 3                                   ; INT3 || CC || encoded[1]{cc}
0b19h mov rcx,7ff7c735c978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c9 35 c7 f7 7f 00 00}
0b23h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 fc d5 5e}
0b28h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0b2bh mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
0b2fh mov rcx,7ff7c6358738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 35 c6 f7 7f 00 00}
0b39h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 7f d0 5e}
0b3eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0b41h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
0b4bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 fc d5 5e}
0b50h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0b53h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0b58h mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
0b62h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 95 e8 5e}
0b67h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0b6ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0b6dh call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee bb 25 ff}
0b72h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0b74h call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 93 25 ff}
0b79h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0b7ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0b7fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0b82h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 d0 23 ff}
0b87h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0b8ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0b8dh call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 1f 26 ff}
0b92h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0b95h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 48 cd 5e}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> eval<uint>(BinaryBitLogicKind:byte kind, BitMatrix<uint> A, BitMatrix<uint> B, ref BitMatrix<uint> Z)
; eval_g[32u](BinaryBitLogicKind~8u,bm32x32u,bm32x32u,bm32x32u~ref)[3093] = {57 56 55 53 48 81 ec 38 07 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 30 b9 be 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 49 8b c8 49 8b c1 48 8b b4 24 80 07 00 00 40 0f b6 d5 83 fa 0f 0f 87 a5 0b 00 00 8b d2 4c 8d 05 bd 0c 00 00 45 8b 04 90 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 c7 84 24 28 07 00 00 ff ff ff ff 8b 8c 24 28 07 00 00 89 8c 24 30 07 00 00 48 8b cb 8b 94 24 30 07 00 00 e8 9c b7 ff ff 48 8b c3 e9 40 0b 00 00 48 8b cb e8 24 ef e2 ff 48 8b c3 e9 30 0b 00 00 c5 fa 6f 01 c5 fa 7f 84 24 18 07 00 00 c5 fa 6f 84 24 18 07 00 00 c5 fa 7f 84 24 08 07 00 00 c5 fa 6f 84 24 08 07 00 00 c5 fa 7f 84 24 f8 06 00 00 48 8b 94 24 f8 06 00 00 c5 fa 6f 00 c5 fa 7f 84 24 e8 06 00 00 c5 fa 6f 84 24 e8 06 00 00 c5 fa 7f 84 24 d8 06 00 00 c5 fa 6f 84 24 d8 06 00 00 c5 fa 7f 84 24 c8 06 00 00 48 8b 84 24 c8 06 00 00 c5 fa 6f 06 c5 fa 7f 84 24 b8 06 00 00 c5 fa 6f 84 24 b8 06 00 00 c5 fa 7f 84 24 a8 06 00 00 c5 fa 6f 84 24 a8 06 00 00 c5 fa 7f 84 24 98 06 00 00 48 8b 8c 24 98 06 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd db c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c cf 48 8b fb e8 da ea d5 5e 48 a5 48 8b c3 e9 3c 0a 00 00 c5 fa 6f 01 c5 fa 7f 84 24 88 06 00 00 c5 fa 6f 84 24 88 06 00 00 c5 fa 7f 84 24 78 06 00 00 c5 fa 6f 84 24 78 06 00 00 c5 fa 7f 84 24 68 06 00 00 48 8b 94 24 68 06 00 00 c5 fa 6f 00 c5 fa 7f 84 24 58 06 00 00 c5 fa 6f 84 24 58 06 00 00 c5 fa 7f 84 24 48 06 00 00 c5 fa 6f 84 24 48 06 00 00 c5 fa 7f 84 24 38 06 00 00 48 8b 84 24 38 06 00 00 c5 fa 6f 06 c5 fa 7f 84 24 28 06 00 00 c5 fa 6f 84 24 28 06 00 00 c5 fa 7f 84 24 18 06 00 00 c5 fa 6f 84 24 18 06 00 00 c5 fa 7f 84 24 08 06 00 00 48 8b 8c 24 08 06 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd db c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb e8 de e9 d5 5e 48 a5 48 8b c3 e9 40 09 00 00 c5 fa 6f 01 c5 fa 7f 84 24 f8 05 00 00 c5 fa 6f 84 24 f8 05 00 00 c5 fa 7f 84 24 e8 05 00 00 c5 fa 6f 84 24 e8 05 00 00 c5 fa 7f 84 24 d8 05 00 00 48 8b 94 24 d8 05 00 00 c5 fa 6f 00 c5 fa 7f 84 24 c8 05 00 00 c5 fa 6f 84 24 c8 05 00 00 c5 fa 7f 84 24 b8 05 00 00 c5 fa 6f 84 24 b8 05 00 00 c5 fa 7f 84 24 a8 05 00 00 48 8b 84 24 a8 05 00 00 c5 fa 6f 06 c5 fa 7f 84 24 98 05 00 00 c5 fa 6f 84 24 98 05 00 00 c5 fa 7f 84 24 88 05 00 00 c5 fa 6f 84 24 88 05 00 00 c5 fa 7f 84 24 78 05 00 00 48 8b 8c 24 78 05 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c5 fc 57 c0 c5 fd 11 84 24 40 05 00 00 c5 fc 57 c0 c5 fd 11 84 24 20 05 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 40 05 00 00 c5 ff f0 07 c5 fd 11 84 24 20 05 00 00 c5 fd 10 84 24 40 05 00 00 c5 fd 10 8c 24 20 05 00 00 c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c 91 48 8b fb e8 ac e8 d5 5e 48 a5 48 8b c3 e9 0e 08 00 00 c5 fa 6f 01 c5 fa 7f 84 24 10 05 00 00 c5 fa 6f 84 24 10 05 00 00 c5 fa 7f 84 24 00 05 00 00 c5 fa 6f 84 24 00 05 00 00 c5 fa 7f 84 24 f0 04 00 00 48 8b 94 24 f0 04 00 00 c5 fa 6f 00 c5 fa 7f 84 24 e0 04 00 00 c5 fa 6f 84 24 e0 04 00 00 c5 fa 7f 84 24 d0 04 00 00 c5 fa 6f 84 24 d0 04 00 00 c5 fa 7f 84 24 c0 04 00 00 48 8b 84 24 c0 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 b0 04 00 00 c5 fa 6f 84 24 b0 04 00 00 c5 fa 7f 84 24 a0 04 00 00 c5 fa 6f 84 24 a0 04 00 00 c5 fa 7f 84 24 90 04 00 00 48 8b 8c 24 90 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c5 fc 57 c0 c5 fd 11 84 24 60 04 00 00 c5 fc 57 c0 c5 fd 11 84 24 40 04 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 60 04 00 00 c5 ff f0 07 c5 fd 11 84 24 40 04 00 00 c5 fd 10 84 24 60 04 00 00 c5 fd 10 8c 24 40 04 00 00 c5 fd eb c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c 89 48 8b fb e8 72 e7 d5 5e 48 a5 48 8b c3 e9 d4 06 00 00 c5 fa 6f 01 c5 fa 7f 84 24 30 04 00 00 c5 fa 6f 84 24 30 04 00 00 c5 fa 7f 84 24 20 04 00 00 c5 fa 6f 84 24 20 04 00 00 c5 fa 7f 84 24 10 04 00 00 48 8b 94 24 10 04 00 00 c5 fa 6f 00 c5 fa 7f 84 24 00 04 00 00 c5 fa 6f 84 24 00 04 00 00 c5 fa 7f 84 24 f0 03 00 00 c5 fa 6f 84 24 f0 03 00 00 c5 fa 7f 84 24 e0 03 00 00 48 8b 84 24 e0 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 03 00 00 c5 fa 6f 84 24 d0 03 00 00 c5 fa 7f 84 24 c0 03 00 00 c5 fa 6f 84 24 c0 03 00 00 c5 fa 7f 84 24 b0 03 00 00 48 8b 8c 24 b0 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c cf 48 8b fb e8 7e e6 d5 5e 48 a5 48 8b c3 e9 e0 05 00 00 c5 fa 6f 01 c5 fa 7f 84 24 a0 03 00 00 c5 fa 6f 84 24 a0 03 00 00 c5 fa 7f 84 24 90 03 00 00 c5 fa 6f 84 24 90 03 00 00 c5 fa 7f 84 24 80 03 00 00 48 8b 94 24 80 03 00 00 c5 fa 6f 00 c5 fa 7f 84 24 70 03 00 00 c5 fa 6f 84 24 70 03 00 00 c5 fa 7f 84 24 60 03 00 00 c5 fa 6f 84 24 60 03 00 00 c5 fa 7f 84 24 50 03 00 00 48 8b 84 24 50 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 40 03 00 00 c5 fa 6f 84 24 40 03 00 00 c5 fa 7f 84 24 30 03 00 00 c5 fa 6f 84 24 30 03 00 00 c5 fa 7f 84 24 20 03 00 00 48 8b 8c 24 20 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd ef c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb e8 82 e5 d5 5e 48 a5 48 8b c3 e9 e4 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 f0 02 00 00 c5 fa 6f 01 c5 fa 7f 84 24 10 03 00 00 c5 fa 6f 84 24 10 03 00 00 c5 fa 7f 84 24 00 03 00 00 c5 fa 6f 84 24 f0 02 00 00 c5 fa 7f 84 24 e0 02 00 00 c5 fa 6f 84 24 e0 02 00 00 c5 fa 7f 84 24 d0 02 00 00 44 8b 84 24 08 03 00 00 44 3b 84 24 d8 02 00 00 0f 87 8d 04 00 00 48 8b 8c 24 d0 02 00 00 48 8b 94 24 00 03 00 00 44 8b 84 24 08 03 00 00 4d 63 c0 49 c1 e0 02 e8 ae 15 da 4e 48 8b fb e8 e6 e4 d5 5e 48 a5 48 8b c3 e9 48 04 00 00 c5 fa 6f 01 c5 fa 7f 84 24 c0 02 00 00 c5 fa 6f 84 24 c0 02 00 00 c5 fa 7f 84 24 b0 02 00 00 c5 fa 6f 84 24 b0 02 00 00 c5 fa 7f 84 24 a0 02 00 00 48 8b 84 24 a0 02 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 02 00 00 c5 fa 6f 84 24 90 02 00 00 c5 fa 7f 84 24 80 02 00 00 c5 fa 6f 84 24 80 02 00 00 c5 fa 7f 84 24 70 02 00 00 48 8b 94 24 70 02 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c 88 c5 fc 57 c0 c5 fd 11 84 24 40 02 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 40 02 00 00 c5 fd 10 84 24 40 02 00 00 c5 fd 76 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c 8a c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c b6 48 8b fb e8 13 e4 d5 5e 48 a5 48 8b c3 e9 75 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 10 02 00 00 c5 fa 6f 00 c5 fa 7f 84 24 30 02 00 00 c5 fa 6f 84 24 30 02 00 00 c5 fa 7f 84 24 20 02 00 00 c5 fa 6f 84 24 10 02 00 00 c5 fa 7f 84 24 00 02 00 00 c5 fa 6f 84 24 00 02 00 00 c5 fa 7f 84 24 f0 01 00 00 44 8b 84 24 28 02 00 00 44 3b 84 24 f8 01 00 00 0f 87 24 03 00 00 48 8b 8c 24 f0 01 00 00 48 8b 94 24 20 02 00 00 44 8b 84 24 28 02 00 00 4d 63 c0 49 c1 e0 02 e8 3f 14 da 4e 48 8b fb e8 77 e3 d5 5e 48 a5 48 8b c3 e9 d9 02 00 00 c5 fa 6f 00 c5 fa 7f 84 24 e0 01 00 00 c5 fa 6f 84 24 e0 01 00 00 c5 fa 7f 84 24 d0 01 00 00 c5 fa 6f 84 24 d0 01 00 00 c5 fa 7f 84 24 c0 01 00 00 48 8b 84 24 c0 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 b0 01 00 00 c5 fa 6f 84 24 b0 01 00 00 c5 fa 7f 84 24 a0 01 00 00 c5 fa 6f 84 24 a0 01 00 00 c5 fa 7f 84 24 90 01 00 00 48 8b 94 24 90 01 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c 88 c5 fc 57 c0 c5 fd 11 84 24 60 01 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 60 01 00 00 c5 fd 10 84 24 60 01 00 00 c5 fd 76 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c 8a c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c b6 48 8b fb e8 a4 e2 d5 5e 48 a5 48 8b c3 e9 06 02 00 00 c5 fa 6f 01 c5 fa 7f 84 24 50 01 00 00 c5 fa 6f 84 24 50 01 00 00 c5 fa 7f 84 24 40 01 00 00 c5 fa 6f 84 24 40 01 00 00 c5 fa 7f 84 24 30 01 00 00 48 8b 94 24 30 01 00 00 c5 fa 6f 00 c5 fa 7f 84 24 20 01 00 00 c5 fa 6f 84 24 20 01 00 00 c5 fa 7f 84 24 10 01 00 00 c5 fa 6f 84 24 10 01 00 00 c5 fa 7f 84 24 00 01 00 00 48 8b 84 24 00 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 f0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 e0 00 00 00 c5 fa 6f 84 24 e0 00 00 00 c5 fa 7f 84 24 d0 00 00 00 48 8b 8c 24 d0 00 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 f5 76 d1 c5 f5 ef ca c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb e8 a8 e1 d5 5e 48 a5 48 8b c3 e9 0a 01 00 00 c5 fa 6f 01 c5 fa 7f 84 24 c0 00 00 00 c5 fa 6f 84 24 c0 00 00 00 c5 fa 7f 84 24 b0 00 00 00 c5 fa 6f 84 24 b0 00 00 00 c5 fa 7f 84 24 a0 00 00 00 4c 8b 8c 24 a0 00 00 00 c5 fa 6f 00 c5 fa 7f 84 24 90 00 00 00 c5 fa 6f 84 24 90 00 00 00 c5 fa 7f 84 24 80 00 00 00 c5 fa 6f 84 24 80 00 00 00 c5 fa 7f 44 24 70 48 8b 4c 24 70 c5 fa 6f 06 c5 fa 7f 44 24 60 c5 fa 6f 44 24 60 c5 fa 7f 44 24 50 c5 fa 6f 44 24 50 c5 fa 7f 44 24 40 48 8b 54 24 40 c6 44 24 30 00 4c 0f be 44 24 30 44 88 44 24 38 48 89 4c 24 20 48 89 54 24 28 48 0f be 4c 24 38 ba 04 00 00 00 41 b8 08 00 00 00 e8 0b b0 ff ff 48 8b fb e8 d3 e0 d5 5e 48 a5 48 8b c3 eb 38 48 8b d0 4c 8b c6 e8 89 e1 ff ff 48 8b f0 48 8b fb e8 b6 e0 d5 5e 48 a5 48 8b c3 eb 1b 48 8b d0 4c 8b c6 e8 1c e2 ff ff 48 8b f0 48 8b fb e8 99 e0 d5 5e 48 a5 48 8b c3 c5 f8 77 48 81 c4 38 07 00 00 5b 5d 5e 5f c3 e8 60 d9 24 ff cc e8 5a d9 24 ff cc 48 b9 40 b0 5b c6 f7 7f 00 00 e8 8a ee d5 5e 48 8b f0 40 0f b6 cd e8 ee 9c ff ff 48 8b d0 48 8b ce e8 c3 11 26 ff 48 8b ce e8 bb 3a cd 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,738h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 38 07 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h lea rdi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 30}
0016h mov ecx,1beh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 be 01 00 00}
001bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001dh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0022h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0025h mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
0027h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
002ah mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
002dh mov rsi,[rsp+780h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 80 07 00 00}
0035h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0039h cmp edx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fa 0f}
003ch ja near ptr 0be7h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a5 0b 00 00}
0042h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0044h lea r8,[rip+0cbdh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 bd 0c 00 00}
004bh mov r8d,[r8+rdx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 90}
004fh lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0056h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0059h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
005ch mov dword ptr [rsp+728h],0ffffffffh     ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 28 07 00 00 ff ff ff ff}
0067h mov ecx,[rsp+728h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 8c 24 28 07 00 00}
006eh mov [rsp+730h],ecx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 8c 24 30 07 00 00}
0075h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0078h mov edx,[rsp+730h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 30 07 00 00}
007fh call 7ff7c7142a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c b7 ff ff}
0084h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0087h jmp near ptr 0bcch                      ; JMP rel32 || E9 cd || encoded[5]{e9 40 0b 00 00}
008ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
008fh call 7ff7c6f761e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ef e2 ff}
0094h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0097h jmp near ptr 0bcch                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 0b 00 00}
009ch vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00a0h vmovdqu xmmword ptr [rsp+718h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 18 07 00 00}
00a9h vmovdqu xmm0,xmmword ptr [rsp+718h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 18 07 00 00}
00b2h vmovdqu xmmword ptr [rsp+708h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 07 00 00}
00bbh vmovdqu xmm0,xmmword ptr [rsp+708h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 07 00 00}
00c4h vmovdqu xmmword ptr [rsp+6f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 06 00 00}
00cdh mov rdx,[rsp+6f8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 f8 06 00 00}
00d5h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
00d9h vmovdqu xmmword ptr [rsp+6e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 06 00 00}
00e2h vmovdqu xmm0,xmmword ptr [rsp+6e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 06 00 00}
00ebh vmovdqu xmmword ptr [rsp+6d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 06 00 00}
00f4h vmovdqu xmm0,xmmword ptr [rsp+6d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 06 00 00}
00fdh vmovdqu xmmword ptr [rsp+6c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 06 00 00}
0106h mov rax,[rsp+6c8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 c8 06 00 00}
010eh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0112h vmovdqu xmmword ptr [rsp+6b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 06 00 00}
011bh vmovdqu xmm0,xmmword ptr [rsp+6b8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b8 06 00 00}
0124h vmovdqu xmmword ptr [rsp+6a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 06 00 00}
012dh vmovdqu xmm0,xmmword ptr [rsp+6a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 06 00 00}
0136h vmovdqu xmmword ptr [rsp+698h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 06 00 00}
013fh mov rcx,[rsp+698h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 98 06 00 00}
0147h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
014ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
014dh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0150h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0154h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
0158h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
015ch vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0161h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
0165h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0169h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
016ch vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0171h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0174h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0178h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
017ch jl short 014dh                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
017eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0181h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da ea d5 5e}
0186h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0188h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
018bh jmp near ptr 0bcch                      ; JMP rel32 || E9 cd || encoded[5]{e9 3c 0a 00 00}
0190h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0194h vmovdqu xmmword ptr [rsp+688h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 06 00 00}
019dh vmovdqu xmm0,xmmword ptr [rsp+688h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 88 06 00 00}
01a6h vmovdqu xmmword ptr [rsp+678h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 06 00 00}
01afh vmovdqu xmm0,xmmword ptr [rsp+678h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 06 00 00}
01b8h vmovdqu xmmword ptr [rsp+668h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 68 06 00 00}
01c1h mov rdx,[rsp+668h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 68 06 00 00}
01c9h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
01cdh vmovdqu xmmword ptr [rsp+658h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 58 06 00 00}
01d6h vmovdqu xmm0,xmmword ptr [rsp+658h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 58 06 00 00}
01dfh vmovdqu xmmword ptr [rsp+648h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 48 06 00 00}
01e8h vmovdqu xmm0,xmmword ptr [rsp+648h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 48 06 00 00}
01f1h vmovdqu xmmword ptr [rsp+638h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 38 06 00 00}
01fah mov rax,[rsp+638h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 38 06 00 00}
0202h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0206h vmovdqu xmmword ptr [rsp+628h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 28 06 00 00}
020fh vmovdqu xmm0,xmmword ptr [rsp+628h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 28 06 00 00}
0218h vmovdqu xmmword ptr [rsp+618h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 18 06 00 00}
0221h vmovdqu xmm0,xmmword ptr [rsp+618h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 18 06 00 00}
022ah vmovdqu xmmword ptr [rsp+608h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 06 00 00}
0233h mov rcx,[rsp+608h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 08 06 00 00}
023bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
023eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0241h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0244h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0248h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
024ch lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
0250h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0255h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
0259h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
025dh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0261h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0265h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0268h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
026dh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0270h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0274h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0278h jl short 0241h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
027ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
027dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de e9 d5 5e}
0282h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0284h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0287h jmp near ptr 0bcch                      ; JMP rel32 || E9 cd || encoded[5]{e9 40 09 00 00}
028ch vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0290h vmovdqu xmmword ptr [rsp+5f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 05 00 00}
0299h vmovdqu xmm0,xmmword ptr [rsp+5f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 05 00 00}
02a2h vmovdqu xmmword ptr [rsp+5e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 05 00 00}
02abh vmovdqu xmm0,xmmword ptr [rsp+5e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 05 00 00}
02b4h vmovdqu xmmword ptr [rsp+5d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 05 00 00}
02bdh mov rdx,[rsp+5d8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 d8 05 00 00}
02c5h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
02c9h vmovdqu xmmword ptr [rsp+5c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 05 00 00}
02d2h vmovdqu xmm0,xmmword ptr [rsp+5c8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c8 05 00 00}
02dbh vmovdqu xmmword ptr [rsp+5b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 05 00 00}
02e4h vmovdqu xmm0,xmmword ptr [rsp+5b8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b8 05 00 00}
02edh vmovdqu xmmword ptr [rsp+5a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 05 00 00}
02f6h mov rax,[rsp+5a8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 a8 05 00 00}
02feh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0302h vmovdqu xmmword ptr [rsp+598h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 05 00 00}
030bh vmovdqu xmm0,xmmword ptr [rsp+598h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 05 00 00}
0314h vmovdqu xmmword ptr [rsp+588h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 05 00 00}
031dh vmovdqu xmm0,xmmword ptr [rsp+588h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 88 05 00 00}
0326h vmovdqu xmmword ptr [rsp+578h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 05 00 00}
032fh mov rcx,[rsp+578h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 78 05 00 00}
0337h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
033ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
033dh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0340h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0344h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
0348h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
034ch vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0350h vmovupd [rsp+540h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 05 00 00}
0359h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
035dh vmovupd [rsp+520h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 05 00 00}
0366h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
036bh vmovupd [rsp+540h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 05 00 00}
0374h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
0378h vmovupd [rsp+520h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 05 00 00}
0381h vmovupd ymm0,[rsp+540h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 05 00 00}
038ah vmovupd ymm1,[rsp+520h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 20 05 00 00}
0393h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0397h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
039ah vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
039fh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
03a2h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
03a6h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
03aah jl short 033dh                          ; JL rel8 || 7C cb || encoded[2]{7c 91}
03ach mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
03afh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac e8 d5 5e}
03b4h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
03b6h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
03b9h jmp near ptr 0bcch                      ; JMP rel32 || E9 cd || encoded[5]{e9 0e 08 00 00}
03beh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
03c2h vmovdqu xmmword ptr [rsp+510h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 05 00 00}
03cbh vmovdqu xmm0,xmmword ptr [rsp+510h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 05 00 00}
03d4h vmovdqu xmmword ptr [rsp+500h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 05 00 00}
03ddh vmovdqu xmm0,xmmword ptr [rsp+500h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 05 00 00}
03e6h vmovdqu xmmword ptr [rsp+4f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 04 00 00}
03efh mov rdx,[rsp+4f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 f0 04 00 00}
03f7h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
03fbh vmovdqu xmmword ptr [rsp+4e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 04 00 00}
0404h vmovdqu xmm0,xmmword ptr [rsp+4e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 04 00 00}
040dh vmovdqu xmmword ptr [rsp+4d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 04 00 00}
0416h vmovdqu xmm0,xmmword ptr [rsp+4d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 04 00 00}
041fh vmovdqu xmmword ptr [rsp+4c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 04 00 00}
0428h mov rax,[rsp+4c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 c0 04 00 00}
0430h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0434h vmovdqu xmmword ptr [rsp+4b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 04 00 00}
043dh vmovdqu xmm0,xmmword ptr [rsp+4b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 04 00 00}
0446h vmovdqu xmmword ptr [rsp+4a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 04 00 00}
044fh vmovdqu xmm0,xmmword ptr [rsp+4a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 04 00 00}
0458h vmovdqu xmmword ptr [rsp+490h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 04 00 00}
0461h mov rcx,[rsp+490h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 90 04 00 00}
0469h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
046ch xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
046fh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0472h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0476h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
047ah lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
047eh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0482h vmovupd [rsp+460h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 04 00 00}
048bh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
048fh vmovupd [rsp+440h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 04 00 00}
0498h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
049dh vmovupd [rsp+460h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 04 00 00}
04a6h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
04aah vmovupd [rsp+440h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 04 00 00}
04b3h vmovupd ymm0,[rsp+460h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 60 04 00 00}
04bch vmovupd ymm1,[rsp+440h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 40 04 00 00}
04c5h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
04c9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
04cdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
04d1h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
04d4h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
04d9h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
04dch add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
04e0h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
04e4h jl short 046fh                          ; JL rel8 || 7C cb || encoded[2]{7c 89}
04e6h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
04e9h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 e7 d5 5e}
04eeh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
04f0h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
04f3h jmp near ptr 0bcch                      ; JMP rel32 || E9 cd || encoded[5]{e9 d4 06 00 00}
04f8h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
04fch vmovdqu xmmword ptr [rsp+430h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 04 00 00}
0505h vmovdqu xmm0,xmmword ptr [rsp+430h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 04 00 00}
050eh vmovdqu xmmword ptr [rsp+420h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 04 00 00}
0517h vmovdqu xmm0,xmmword ptr [rsp+420h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 04 00 00}
0520h vmovdqu xmmword ptr [rsp+410h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 04 00 00}
0529h mov rdx,[rsp+410h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 10 04 00 00}
0531h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0535h vmovdqu xmmword ptr [rsp+400h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 04 00 00}
053eh vmovdqu xmm0,xmmword ptr [rsp+400h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 04 00 00}
0547h vmovdqu xmmword ptr [rsp+3f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 03 00 00}
0550h vmovdqu xmm0,xmmword ptr [rsp+3f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 03 00 00}
0559h vmovdqu xmmword ptr [rsp+3e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 03 00 00}
0562h mov rax,[rsp+3e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e0 03 00 00}
056ah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
056eh vmovdqu xmmword ptr [rsp+3d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 03 00 00}
0577h vmovdqu xmm0,xmmword ptr [rsp+3d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 03 00 00}
0580h vmovdqu xmmword ptr [rsp+3c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 03 00 00}
0589h vmovdqu xmm0,xmmword ptr [rsp+3c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 03 00 00}
0592h vmovdqu xmmword ptr [rsp+3b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 03 00 00}
059bh mov rcx,[rsp+3b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 b0 03 00 00}
05a3h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
05a6h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
05a9h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
05ach shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
05b0h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
05b4h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
05b8h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
05bdh vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
05c1h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
05c5h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
05c8h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
05cdh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
05d0h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
05d4h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
05d8h jl short 05a9h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
05dah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
05ddh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e e6 d5 5e}
05e2h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
05e4h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
05e7h jmp near ptr 0bcch                      ; JMP rel32 || E9 cd || encoded[5]{e9 e0 05 00 00}
05ech vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
05f0h vmovdqu xmmword ptr [rsp+3a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 03 00 00}
05f9h vmovdqu xmm0,xmmword ptr [rsp+3a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 03 00 00}
0602h vmovdqu xmmword ptr [rsp+390h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 03 00 00}
060bh vmovdqu xmm0,xmmword ptr [rsp+390h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 03 00 00}
0614h vmovdqu xmmword ptr [rsp+380h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 03 00 00}
061dh mov rdx,[rsp+380h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 80 03 00 00}
0625h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0629h vmovdqu xmmword ptr [rsp+370h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 03 00 00}
0632h vmovdqu xmm0,xmmword ptr [rsp+370h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 03 00 00}
063bh vmovdqu xmmword ptr [rsp+360h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 03 00 00}
0644h vmovdqu xmm0,xmmword ptr [rsp+360h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 03 00 00}
064dh vmovdqu xmmword ptr [rsp+350h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 03 00 00}
0656h mov rax,[rsp+350h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 50 03 00 00}
065eh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0662h vmovdqu xmmword ptr [rsp+340h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 03 00 00}
066bh vmovdqu xmm0,xmmword ptr [rsp+340h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 03 00 00}
0674h vmovdqu xmmword ptr [rsp+330h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 03 00 00}
067dh vmovdqu xmm0,xmmword ptr [rsp+330h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 03 00 00}
0686h vmovdqu xmmword ptr [rsp+320h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 03 00 00}
068fh mov rcx,[rsp+320h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 20 03 00 00}
0697h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
069ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
069dh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
06a0h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
06a4h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
06a8h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
06ach vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
06b1h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
06b5h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
06b9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
06bdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
06c1h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
06c4h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
06c9h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
06cch add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
06d0h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
06d4h jl short 069dh                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
06d6h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
06d9h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 e5 d5 5e}
06deh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
06e0h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
06e3h jmp near ptr 0bcch                      ; JMP rel32 || E9 cd || encoded[5]{e9 e4 04 00 00}
06e8h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
06ech vmovdqu xmmword ptr [rsp+2f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 02 00 00}
06f5h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
06f9h vmovdqu xmmword ptr [rsp+310h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 03 00 00}
0702h vmovdqu xmm0,xmmword ptr [rsp+310h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 03 00 00}
070bh vmovdqu xmmword ptr [rsp+300h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 03 00 00}
0714h vmovdqu xmm0,xmmword ptr [rsp+2f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 02 00 00}
071dh vmovdqu xmmword ptr [rsp+2e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 02 00 00}
0726h vmovdqu xmm0,xmmword ptr [rsp+2e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 02 00 00}
072fh vmovdqu xmmword ptr [rsp+2d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 02 00 00}
0738h mov r8d,[rsp+308h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 08 03 00 00}
0740h cmp r8d,[rsp+2d8h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 d8 02 00 00}
0748h ja near ptr 0bdbh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 8d 04 00 00}
074eh mov rcx,[rsp+2d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 d0 02 00 00}
0756h mov rdx,[rsp+300h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 03 00 00}
075eh mov r8d,[rsp+308h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 08 03 00 00}
0766h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0769h shl r8,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 02}
076dh call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 15 da 4e}
0772h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0775h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 e4 d5 5e}
077ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
077ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
077fh jmp near ptr 0bcch                      ; JMP rel32 || E9 cd || encoded[5]{e9 48 04 00 00}
0784h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0788h vmovdqu xmmword ptr [rsp+2c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 02 00 00}
0791h vmovdqu xmm0,xmmword ptr [rsp+2c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 02 00 00}
079ah vmovdqu xmmword ptr [rsp+2b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 02 00 00}
07a3h vmovdqu xmm0,xmmword ptr [rsp+2b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 02 00 00}
07ach vmovdqu xmmword ptr [rsp+2a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 02 00 00}
07b5h mov rax,[rsp+2a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 a0 02 00 00}
07bdh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
07c1h vmovdqu xmmword ptr [rsp+290h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 02 00 00}
07cah vmovdqu xmm0,xmmword ptr [rsp+290h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 02 00 00}
07d3h vmovdqu xmmword ptr [rsp+280h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 02 00 00}
07dch vmovdqu xmm0,xmmword ptr [rsp+280h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 02 00 00}
07e5h vmovdqu xmmword ptr [rsp+270h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 02 00 00}
07eeh mov rdx,[rsp+270h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 70 02 00 00}
07f6h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
07f8h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
07fbh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
07feh lea r9,[rax+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 88}
0802h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0806h vmovupd [rsp+240h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 02 00 00}
080fh vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
0814h vmovupd [rsp+240h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 02 00 00}
081dh vmovupd ymm0,[rsp+240h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 02 00 00}
0826h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
082ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
082eh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0831h lea r9,[rdx+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 8a}
0835h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
083ah inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
083ch add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
0840h cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
0843h jl short 07fbh                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
0845h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0848h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 e4 d5 5e}
084dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
084fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0852h jmp near ptr 0bcch                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 03 00 00}
0857h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
085bh vmovdqu xmmword ptr [rsp+210h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 02 00 00}
0864h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0868h vmovdqu xmmword ptr [rsp+230h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 02 00 00}
0871h vmovdqu xmm0,xmmword ptr [rsp+230h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 02 00 00}
087ah vmovdqu xmmword ptr [rsp+220h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 02 00 00}
0883h vmovdqu xmm0,xmmword ptr [rsp+210h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 02 00 00}
088ch vmovdqu xmmword ptr [rsp+200h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 02 00 00}
0895h vmovdqu xmm0,xmmword ptr [rsp+200h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 02 00 00}
089eh vmovdqu xmmword ptr [rsp+1f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 01 00 00}
08a7h mov r8d,[rsp+228h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 28 02 00 00}
08afh cmp r8d,[rsp+1f8h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 f8 01 00 00}
08b7h ja near ptr 0be1h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 24 03 00 00}
08bdh mov rcx,[rsp+1f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 f0 01 00 00}
08c5h mov rdx,[rsp+220h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 20 02 00 00}
08cdh mov r8d,[rsp+228h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 28 02 00 00}
08d5h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
08d8h shl r8,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 02}
08dch call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 14 da 4e}
08e1h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
08e4h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 e3 d5 5e}
08e9h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
08ebh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
08eeh jmp near ptr 0bcch                      ; JMP rel32 || E9 cd || encoded[5]{e9 d9 02 00 00}
08f3h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
08f7h vmovdqu xmmword ptr [rsp+1e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 01 00 00}
0900h vmovdqu xmm0,xmmword ptr [rsp+1e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 01 00 00}
0909h vmovdqu xmmword ptr [rsp+1d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 01 00 00}
0912h vmovdqu xmm0,xmmword ptr [rsp+1d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 01 00 00}
091bh vmovdqu xmmword ptr [rsp+1c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 01 00 00}
0924h mov rax,[rsp+1c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 c0 01 00 00}
092ch vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0930h vmovdqu xmmword ptr [rsp+1b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 01 00 00}
0939h vmovdqu xmm0,xmmword ptr [rsp+1b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 01 00 00}
0942h vmovdqu xmmword ptr [rsp+1a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 01 00 00}
094bh vmovdqu xmm0,xmmword ptr [rsp+1a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 01 00 00}
0954h vmovdqu xmmword ptr [rsp+190h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 01 00 00}
095dh mov rdx,[rsp+190h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 90 01 00 00}
0965h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0967h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
096ah movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
096dh lea r9,[rax+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 88}
0971h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0975h vmovupd [rsp+160h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 01 00 00}
097eh vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
0983h vmovupd [rsp+160h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 01 00 00}
098ch vmovupd ymm0,[rsp+160h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 60 01 00 00}
0995h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0999h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
099dh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
09a0h lea r9,[rdx+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 8a}
09a4h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
09a9h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
09abh add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
09afh cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
09b2h jl short 096ah                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
09b4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
09b7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 e2 d5 5e}
09bch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
09beh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
09c1h jmp near ptr 0bcch                      ; JMP rel32 || E9 cd || encoded[5]{e9 06 02 00 00}
09c6h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
09cah vmovdqu xmmword ptr [rsp+150h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 01 00 00}
09d3h vmovdqu xmm0,xmmword ptr [rsp+150h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 01 00 00}
09dch vmovdqu xmmword ptr [rsp+140h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 01 00 00}
09e5h vmovdqu xmm0,xmmword ptr [rsp+140h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 01 00 00}
09eeh vmovdqu xmmword ptr [rsp+130h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 01 00 00}
09f7h mov rdx,[rsp+130h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 30 01 00 00}
09ffh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0a03h vmovdqu xmmword ptr [rsp+120h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 01 00 00}
0a0ch vmovdqu xmm0,xmmword ptr [rsp+120h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 01 00 00}
0a15h vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
0a1eh vmovdqu xmm0,xmmword ptr [rsp+110h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 01 00 00}
0a27h vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
0a30h mov rax,[rsp+100h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 00 01 00 00}
0a38h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0a3ch vmovdqu xmmword ptr [rsp+0f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 00 00 00}
0a45h vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
0a4eh vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
0a57h vmovdqu xmm0,xmmword ptr [rsp+0e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 00 00 00}
0a60h vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
0a69h mov rcx,[rsp+0d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 d0 00 00 00}
0a71h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0a74h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0a77h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0a7ah shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0a7eh lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
0a82h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
0a86h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0a8bh vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
0a8fh vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
0a93h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0a97h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0a9bh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0a9eh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0aa3h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0aa6h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0aaah cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0aaeh jl short 0a77h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
0ab0h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0ab3h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 e1 d5 5e}
0ab8h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0abah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0abdh jmp near ptr 0bcch                      ; JMP rel32 || E9 cd || encoded[5]{e9 0a 01 00 00}
0ac2h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0ac6h vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
0acfh vmovdqu xmm0,xmmword ptr [rsp+0c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 00 00 00}
0ad8h vmovdqu xmmword ptr [rsp+0b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 00 00 00}
0ae1h vmovdqu xmm0,xmmword ptr [rsp+0b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 00 00 00}
0aeah vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
0af3h mov r9,[rsp+0a0h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{4c 8b 8c 24 a0 00 00 00}
0afbh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0affh vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
0b08h vmovdqu xmm0,xmmword ptr [rsp+90h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 00 00 00}
0b11h vmovdqu xmmword ptr [rsp+80h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 00 00 00}
0b1ah vmovdqu xmm0,xmmword ptr [rsp+80h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 00 00 00}
0b23h vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
0b29h mov rcx,[rsp+70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 4c 24 70}
0b2eh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0b32h vmovdqu xmmword ptr [rsp+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 60}
0b38h vmovdqu xmm0,xmmword ptr [rsp+60h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 60}
0b3eh vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
0b44h vmovdqu xmm0,xmmword ptr [rsp+50h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 50}
0b4ah vmovdqu xmmword ptr [rsp+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 40}
0b50h mov rdx,[rsp+40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 40}
0b55h mov byte ptr [rsp+30h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 30 00}
0b5ah movsx r8,byte ptr [rsp+30h]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{4c 0f be 44 24 30}
0b60h mov [rsp+38h],r8b                       ; MOV r/m8, r8 || 88 /r || encoded[5]{44 88 44 24 38}
0b65h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0b6ah mov [rsp+28h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 28}
0b6fh movsx rcx,byte ptr [rsp+38h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 38}
0b75h mov edx,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 04 00 00 00}
0b7ah mov r8d,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 08 00 00 00}
0b80h call 7ff7c7142dc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b b0 ff ff}
0b85h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0b88h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 e0 d5 5e}
0b8dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0b8fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0b92h jmp short 0bcch                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0b94h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0b97h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0b9ah call 7ff7c7145f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 e1 ff ff}
0b9fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0ba2h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0ba5h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 e0 d5 5e}
0baah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0bach mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0bafh jmp short 0bcch                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0bb1h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0bb4h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0bb7h call 7ff7c7146008h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c e2 ff ff}
0bbch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0bbfh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0bc2h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 e0 d5 5e}
0bc7h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0bc9h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0bcch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0bcfh add rsp,738h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 38 07 00 00}
0bd6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0bd7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0bd8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0bd9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0bdah ret                                     ; RET || C3 || encoded[1]{c3}
0bdbh call 7ff7c6395770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 d9 24 ff}
0be0h int 3                                   ; INT3 || CC || encoded[1]{cc}
0be1h call 7ff7c6395770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a d9 24 ff}
0be6h int 3                                   ; INT3 || CC || encoded[1]{cc}
0be7h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
0bf1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a ee d5 5e}
0bf6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0bf9h movzx ecx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cd}
0bfdh call 7ff7c7141b20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 9c ff ff}
0c02h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0c05h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0c08h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 11 26 ff}
0c0dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0c10h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 3a cd 5e}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitMatrix<ulong> A, BitMatrix<ulong> B, ref BitMatrix<ulong> Z)
; eval_g[64u](BinaryBitLogicKind~8u,bm64x64u,bm64x64u,bm64x64u~ref)[3048] = {57 56 55 53 48 81 ec 18 07 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 ba 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 49 8b c8 49 8b c1 48 8b b4 24 60 07 00 00 40 0f b6 d5 83 fa 0f 0f 87 78 0b 00 00 8b d2 4c 8d 05 8d 0c 00 00 45 8b 04 90 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 48 c7 84 24 08 07 00 00 ff ff ff ff 48 8b 8c 24 08 07 00 00 48 89 8c 24 10 07 00 00 48 8b cb 48 8b 94 24 10 07 00 00 e8 a0 ac ff ff 48 8b c3 e9 0f 0b 00 00 48 8b cb e8 00 df e2 ff 48 8b c3 e9 ff 0a 00 00 c5 fa 6f 01 c5 fa 7f 84 24 f8 06 00 00 c5 fa 6f 84 24 f8 06 00 00 c5 fa 7f 84 24 e8 06 00 00 c5 fa 6f 84 24 e8 06 00 00 c5 fa 7f 84 24 d8 06 00 00 48 8b 94 24 d8 06 00 00 c5 fa 6f 00 c5 fa 7f 84 24 c8 06 00 00 c5 fa 6f 84 24 c8 06 00 00 c5 fa 7f 84 24 b8 06 00 00 c5 fa 6f 84 24 b8 06 00 00 c5 fa 7f 84 24 a8 06 00 00 48 8b 84 24 a8 06 00 00 c5 fa 6f 06 c5 fa 7f 84 24 98 06 00 00 c5 fa 6f 84 24 98 06 00 00 c5 fa 7f 84 24 88 06 00 00 c5 fa 6f 84 24 88 06 00 00 c5 fa 7f 84 24 78 06 00 00 48 8b 8c 24 78 06 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd db c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c cf 48 8b fb e8 66 d9 d5 5e 48 a5 48 8b c3 e9 0b 0a 00 00 c5 fa 6f 01 c5 fa 7f 84 24 68 06 00 00 c5 fa 6f 84 24 68 06 00 00 c5 fa 7f 84 24 58 06 00 00 c5 fa 6f 84 24 58 06 00 00 c5 fa 7f 84 24 48 06 00 00 48 8b 94 24 48 06 00 00 c5 fa 6f 00 c5 fa 7f 84 24 38 06 00 00 c5 fa 6f 84 24 38 06 00 00 c5 fa 7f 84 24 28 06 00 00 c5 fa 6f 84 24 28 06 00 00 c5 fa 7f 84 24 18 06 00 00 48 8b 84 24 18 06 00 00 c5 fa 6f 06 c5 fa 7f 84 24 08 06 00 00 c5 fa 6f 84 24 08 06 00 00 c5 fa 7f 84 24 f8 05 00 00 c5 fa 6f 84 24 f8 05 00 00 c5 fa 7f 84 24 e8 05 00 00 48 8b 8c 24 e8 05 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd db c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb e8 69 d8 d5 5e 48 a5 48 8b c3 e9 0e 09 00 00 c5 fa 6f 01 c5 fa 7f 84 24 d8 05 00 00 c5 fa 6f 84 24 d8 05 00 00 c5 fa 7f 84 24 c8 05 00 00 c5 fa 6f 84 24 c8 05 00 00 c5 fa 7f 84 24 b8 05 00 00 48 8b 94 24 b8 05 00 00 c5 fa 6f 00 c5 fa 7f 84 24 a8 05 00 00 c5 fa 6f 84 24 a8 05 00 00 c5 fa 7f 84 24 98 05 00 00 c5 fa 6f 84 24 98 05 00 00 c5 fa 7f 84 24 88 05 00 00 48 8b 84 24 88 05 00 00 c5 fa 6f 06 c5 fa 7f 84 24 78 05 00 00 c5 fa 6f 84 24 78 05 00 00 c5 fa 7f 84 24 68 05 00 00 c5 fa 6f 84 24 68 05 00 00 c5 fa 7f 84 24 58 05 00 00 48 8b 8c 24 58 05 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c5 fc 57 c0 c5 fd 11 84 24 20 05 00 00 c5 fc 57 c0 c5 fd 11 84 24 00 05 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 20 05 00 00 c5 ff f0 07 c5 fd 11 84 24 00 05 00 00 c5 fd 10 84 24 20 05 00 00 c5 fd 10 8c 24 00 05 00 00 c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c 91 48 8b fb e8 37 d7 d5 5e 48 a5 48 8b c3 e9 dc 07 00 00 c5 fa 6f 01 c5 fa 7f 84 24 f0 04 00 00 c5 fa 6f 84 24 f0 04 00 00 c5 fa 7f 84 24 e0 04 00 00 c5 fa 6f 84 24 e0 04 00 00 c5 fa 7f 84 24 d0 04 00 00 48 8b 94 24 d0 04 00 00 c5 fa 6f 00 c5 fa 7f 84 24 c0 04 00 00 c5 fa 6f 84 24 c0 04 00 00 c5 fa 7f 84 24 b0 04 00 00 c5 fa 6f 84 24 b0 04 00 00 c5 fa 7f 84 24 a0 04 00 00 48 8b 84 24 a0 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 04 00 00 c5 fa 6f 84 24 90 04 00 00 c5 fa 7f 84 24 80 04 00 00 c5 fa 6f 84 24 80 04 00 00 c5 fa 7f 84 24 70 04 00 00 48 8b 8c 24 70 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c5 fc 57 c0 c5 fd 11 84 24 40 04 00 00 c5 fc 57 c0 c5 fd 11 84 24 20 04 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 40 04 00 00 c5 ff f0 07 c5 fd 11 84 24 20 04 00 00 c5 fd 10 84 24 40 04 00 00 c5 fd 10 8c 24 20 04 00 00 c5 fd eb c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c 88 48 8b fb e8 fc d5 d5 5e 48 a5 48 8b c3 e9 a1 06 00 00 c5 fa 6f 01 c5 fa 7f 84 24 10 04 00 00 c5 fa 6f 84 24 10 04 00 00 c5 fa 7f 84 24 00 04 00 00 c5 fa 6f 84 24 00 04 00 00 c5 fa 7f 84 24 f0 03 00 00 48 8b 94 24 f0 03 00 00 c5 fa 6f 00 c5 fa 7f 84 24 e0 03 00 00 c5 fa 6f 84 24 e0 03 00 00 c5 fa 7f 84 24 d0 03 00 00 c5 fa 6f 84 24 d0 03 00 00 c5 fa 7f 84 24 c0 03 00 00 48 8b 84 24 c0 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 b0 03 00 00 c5 fa 6f 84 24 b0 03 00 00 c5 fa 7f 84 24 a0 03 00 00 c5 fa 6f 84 24 a0 03 00 00 c5 fa 7f 84 24 90 03 00 00 48 8b 8c 24 90 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c cf 48 8b fb e8 08 d5 d5 5e 48 a5 48 8b c3 e9 ad 05 00 00 c5 fa 6f 01 c5 fa 7f 84 24 80 03 00 00 c5 fa 6f 84 24 80 03 00 00 c5 fa 7f 84 24 70 03 00 00 c5 fa 6f 84 24 70 03 00 00 c5 fa 7f 84 24 60 03 00 00 48 8b 94 24 60 03 00 00 c5 fa 6f 00 c5 fa 7f 84 24 50 03 00 00 c5 fa 6f 84 24 50 03 00 00 c5 fa 7f 84 24 40 03 00 00 c5 fa 6f 84 24 40 03 00 00 c5 fa 7f 84 24 30 03 00 00 48 8b 84 24 30 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 20 03 00 00 c5 fa 6f 84 24 20 03 00 00 c5 fa 7f 84 24 10 03 00 00 c5 fa 6f 84 24 10 03 00 00 c5 fa 7f 84 24 00 03 00 00 48 8b 8c 24 00 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd ef c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb e8 0b d4 d5 5e 48 a5 48 8b c3 e9 b0 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 02 00 00 c5 fa 6f 01 c5 fa 7f 84 24 f0 02 00 00 c5 fa 6f 84 24 f0 02 00 00 c5 fa 7f 84 24 e0 02 00 00 c5 fa 6f 84 24 d0 02 00 00 c5 fa 7f 84 24 c0 02 00 00 c5 fa 6f 84 24 c0 02 00 00 c5 fa 7f 84 24 b0 02 00 00 44 8b 84 24 e8 02 00 00 44 3b 84 24 b8 02 00 00 0f 87 59 04 00 00 48 8b 8c 24 b0 02 00 00 48 8b 94 24 e0 02 00 00 44 8b 84 24 e8 02 00 00 4d 63 c0 49 c1 e0 03 e8 37 04 da 4e 48 8b fb e8 6f d3 d5 5e 48 a5 48 8b c3 e9 14 04 00 00 c5 fa 6f 01 c5 fa 7f 84 24 a0 02 00 00 c5 fa 6f 84 24 a0 02 00 00 c5 fa 7f 84 24 90 02 00 00 c5 fa 6f 84 24 90 02 00 00 c5 fa 7f 84 24 80 02 00 00 48 8b 84 24 80 02 00 00 c5 fa 6f 06 c5 fa 7f 84 24 70 02 00 00 c5 fa 6f 84 24 70 02 00 00 c5 fa 7f 84 24 60 02 00 00 c5 fa 6f 84 24 60 02 00 00 c5 fa 7f 84 24 50 02 00 00 48 8b 94 24 50 02 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c c8 c5 fc 57 c0 c5 fd 11 84 24 20 02 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 20 02 00 00 c5 fd 10 84 24 20 02 00 00 c4 e2 7d 29 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c b5 48 8b fb e8 9b d2 d5 5e 48 a5 48 8b c3 e9 40 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 f0 01 00 00 c5 fa 6f 00 c5 fa 7f 84 24 10 02 00 00 c5 fa 6f 84 24 10 02 00 00 c5 fa 7f 84 24 00 02 00 00 c5 fa 6f 84 24 f0 01 00 00 c5 fa 7f 84 24 e0 01 00 00 c5 fa 6f 84 24 e0 01 00 00 c5 fa 7f 84 24 d0 01 00 00 44 8b 84 24 08 02 00 00 44 3b 84 24 d8 01 00 00 0f 87 ef 02 00 00 48 8b 8c 24 d0 01 00 00 48 8b 94 24 00 02 00 00 44 8b 84 24 08 02 00 00 4d 63 c0 49 c1 e0 03 e8 c7 02 da 4e 48 8b fb e8 ff d1 d5 5e 48 a5 48 8b c3 e9 a4 02 00 00 c5 fa 6f 00 c5 fa 7f 84 24 c0 01 00 00 c5 fa 6f 84 24 c0 01 00 00 c5 fa 7f 84 24 b0 01 00 00 c5 fa 6f 84 24 b0 01 00 00 c5 fa 7f 84 24 a0 01 00 00 48 8b 84 24 a0 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 01 00 00 c5 fa 6f 84 24 90 01 00 00 c5 fa 7f 84 24 80 01 00 00 c5 fa 6f 84 24 80 01 00 00 c5 fa 7f 84 24 70 01 00 00 48 8b 94 24 70 01 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c c8 c5 fc 57 c0 c5 fd 11 84 24 40 01 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 40 01 00 00 c5 fd 10 84 24 40 01 00 00 c4 e2 7d 29 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c b5 48 8b fb e8 2b d1 d5 5e 48 a5 48 8b c3 e9 d0 01 00 00 c5 fa 6f 01 c5 fa 7f 84 24 30 01 00 00 c5 fa 6f 84 24 30 01 00 00 c5 fa 7f 84 24 20 01 00 00 c5 fa 6f 84 24 20 01 00 00 c5 fa 7f 84 24 10 01 00 00 48 8b 94 24 10 01 00 00 c5 fa 6f 00 c5 fa 7f 84 24 00 01 00 00 c5 fa 6f 84 24 00 01 00 00 c5 fa 7f 84 24 f0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 e0 00 00 00 48 8b 84 24 e0 00 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 00 00 00 c5 fa 6f 84 24 d0 00 00 00 c5 fa 7f 84 24 c0 00 00 00 c5 fa 6f 84 24 c0 00 00 00 c5 fa 7f 84 24 b0 00 00 00 48 8b 8c 24 b0 00 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c4 e2 75 29 d1 c5 f5 ef ca c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb e8 2e d0 d5 5e 48 a5 48 8b c3 e9 d3 00 00 00 c5 fa 6f 01 c5 fa 7f 84 24 a0 00 00 00 c5 fa 6f 84 24 a0 00 00 00 c5 fa 7f 84 24 90 00 00 00 c5 fa 6f 84 24 90 00 00 00 c5 fa 7f 84 24 80 00 00 00 48 8b 8c 24 80 00 00 00 c5 fa 6f 00 c5 fa 7f 44 24 70 c5 fa 6f 44 24 70 c5 fa 7f 44 24 60 c5 fa 6f 44 24 60 c5 fa 7f 44 24 50 48 8b 54 24 50 c5 fa 6f 06 c5 fa 7f 44 24 40 c5 fa 6f 44 24 40 c5 fa 7f 44 24 30 c5 fa 6f 44 24 30 c5 fa 7f 44 24 20 4c 8b 44 24 20 e8 e8 b1 ff ff 48 8b fb e8 90 cf d5 5e 48 a5 48 8b c3 eb 38 48 8b d0 4c 8b c6 e8 d6 d1 ff ff 48 8b f0 48 8b fb e8 73 cf d5 5e 48 a5 48 8b c3 eb 1b 48 8b d0 4c 8b c6 e8 c9 f0 ff ff 48 8b f0 48 8b fb e8 56 cf d5 5e 48 a5 48 8b c3 c5 f8 77 48 81 c4 18 07 00 00 5b 5d 5e 5f c3 e8 1d c8 24 ff cc e8 17 c8 24 ff cc 48 b9 40 b0 5b c6 f7 7f 00 00 e8 47 dd d5 5e 48 8b f0 40 0f b6 cd e8 cb 9e ff ff 48 8b d0 48 8b ce e8 80 00 26 ff 48 8b ce e8 78 29 cd 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,718h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 18 07 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0016h mov ecx,1bah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ba 01 00 00}
001bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001dh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0022h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0025h mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
0027h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
002ah mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
002dh mov rsi,[rsp+760h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 60 07 00 00}
0035h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0039h cmp edx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fa 0f}
003ch ja near ptr 0bbah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 78 0b 00 00}
0042h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0044h lea r8,[rip+0c8dh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 8d 0c 00 00}
004bh mov r8d,[r8+rdx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 90}
004fh lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0056h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0059h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
005ch mov qword ptr [rsp+708h],0ffffffffffffffffh; MOV r/m64, imm32 || REX.W C7 /0 id || encoded[12]{48 c7 84 24 08 07 00 00 ff ff ff ff}
0068h mov rcx,[rsp+708h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 08 07 00 00}
0070h mov [rsp+710h],rcx                      ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{48 89 8c 24 10 07 00 00}
0078h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
007bh mov rdx,[rsp+710h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 10 07 00 00}
0083h call 7ff7c71430c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 ac ff ff}
0088h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
008bh jmp near ptr 0b9fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0f 0b 00 00}
0090h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0093h call 7ff7c6f76338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 df e2 ff}
0098h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009bh jmp near ptr 0b9fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ff 0a 00 00}
00a0h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00a4h vmovdqu xmmword ptr [rsp+6f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 06 00 00}
00adh vmovdqu xmm0,xmmword ptr [rsp+6f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 06 00 00}
00b6h vmovdqu xmmword ptr [rsp+6e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 06 00 00}
00bfh vmovdqu xmm0,xmmword ptr [rsp+6e8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e8 06 00 00}
00c8h vmovdqu xmmword ptr [rsp+6d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 06 00 00}
00d1h mov rdx,[rsp+6d8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 d8 06 00 00}
00d9h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
00ddh vmovdqu xmmword ptr [rsp+6c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 06 00 00}
00e6h vmovdqu xmm0,xmmword ptr [rsp+6c8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c8 06 00 00}
00efh vmovdqu xmmword ptr [rsp+6b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 06 00 00}
00f8h vmovdqu xmm0,xmmword ptr [rsp+6b8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b8 06 00 00}
0101h vmovdqu xmmword ptr [rsp+6a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 06 00 00}
010ah mov rax,[rsp+6a8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 a8 06 00 00}
0112h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0116h vmovdqu xmmword ptr [rsp+698h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 06 00 00}
011fh vmovdqu xmm0,xmmword ptr [rsp+698h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 06 00 00}
0128h vmovdqu xmmword ptr [rsp+688h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 06 00 00}
0131h vmovdqu xmm0,xmmword ptr [rsp+688h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 88 06 00 00}
013ah vmovdqu xmmword ptr [rsp+678h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 06 00 00}
0143h mov rcx,[rsp+678h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 78 06 00 00}
014bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
014eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0151h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0154h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0158h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
015ch lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
0160h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0165h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
0169h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
016dh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0170h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0175h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0178h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
017ch cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0180h jl short 0151h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0182h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0185h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 d9 d5 5e}
018ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
018ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
018fh jmp near ptr 0b9fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0b 0a 00 00}
0194h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0198h vmovdqu xmmword ptr [rsp+668h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 68 06 00 00}
01a1h vmovdqu xmm0,xmmword ptr [rsp+668h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 68 06 00 00}
01aah vmovdqu xmmword ptr [rsp+658h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 58 06 00 00}
01b3h vmovdqu xmm0,xmmword ptr [rsp+658h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 58 06 00 00}
01bch vmovdqu xmmword ptr [rsp+648h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 48 06 00 00}
01c5h mov rdx,[rsp+648h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 48 06 00 00}
01cdh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
01d1h vmovdqu xmmword ptr [rsp+638h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 38 06 00 00}
01dah vmovdqu xmm0,xmmword ptr [rsp+638h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 38 06 00 00}
01e3h vmovdqu xmmword ptr [rsp+628h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 28 06 00 00}
01ech vmovdqu xmm0,xmmword ptr [rsp+628h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 28 06 00 00}
01f5h vmovdqu xmmword ptr [rsp+618h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 18 06 00 00}
01feh mov rax,[rsp+618h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 18 06 00 00}
0206h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
020ah vmovdqu xmmword ptr [rsp+608h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 06 00 00}
0213h vmovdqu xmm0,xmmword ptr [rsp+608h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 08 06 00 00}
021ch vmovdqu xmmword ptr [rsp+5f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 05 00 00}
0225h vmovdqu xmm0,xmmword ptr [rsp+5f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 05 00 00}
022eh vmovdqu xmmword ptr [rsp+5e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 05 00 00}
0237h mov rcx,[rsp+5e8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 e8 05 00 00}
023fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0242h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0245h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0248h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
024ch lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
0250h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
0254h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0259h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
025dh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0261h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0266h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
026ah add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
026dh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0272h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0275h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0279h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
027dh jl short 0245h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
027fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0282h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 d8 d5 5e}
0287h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0289h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
028ch jmp near ptr 0b9fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0e 09 00 00}
0291h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0295h vmovdqu xmmword ptr [rsp+5d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 05 00 00}
029eh vmovdqu xmm0,xmmword ptr [rsp+5d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 05 00 00}
02a7h vmovdqu xmmword ptr [rsp+5c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 05 00 00}
02b0h vmovdqu xmm0,xmmword ptr [rsp+5c8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c8 05 00 00}
02b9h vmovdqu xmmword ptr [rsp+5b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 05 00 00}
02c2h mov rdx,[rsp+5b8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 b8 05 00 00}
02cah vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
02ceh vmovdqu xmmword ptr [rsp+5a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 05 00 00}
02d7h vmovdqu xmm0,xmmword ptr [rsp+5a8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a8 05 00 00}
02e0h vmovdqu xmmword ptr [rsp+598h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 05 00 00}
02e9h vmovdqu xmm0,xmmword ptr [rsp+598h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 05 00 00}
02f2h vmovdqu xmmword ptr [rsp+588h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 05 00 00}
02fbh mov rax,[rsp+588h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 88 05 00 00}
0303h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0307h vmovdqu xmmword ptr [rsp+578h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 05 00 00}
0310h vmovdqu xmm0,xmmword ptr [rsp+578h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 05 00 00}
0319h vmovdqu xmmword ptr [rsp+568h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 68 05 00 00}
0322h vmovdqu xmm0,xmmword ptr [rsp+568h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 68 05 00 00}
032bh vmovdqu xmmword ptr [rsp+558h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 58 05 00 00}
0334h mov rcx,[rsp+558h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 58 05 00 00}
033ch xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
033fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0342h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0345h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0349h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
034dh lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
0351h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0355h vmovupd [rsp+520h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 05 00 00}
035eh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0362h vmovupd [rsp+500h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 05 00 00}
036bh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0370h vmovupd [rsp+520h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 05 00 00}
0379h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
037dh vmovupd [rsp+500h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 05 00 00}
0386h vmovupd ymm0,[rsp+520h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 20 05 00 00}
038fh vmovupd ymm1,[rsp+500h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 00 05 00 00}
0398h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
039ch add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
039fh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
03a4h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
03a7h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
03abh cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
03afh jl short 0342h                          ; JL rel8 || 7C cb || encoded[2]{7c 91}
03b1h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
03b4h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 d7 d5 5e}
03b9h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
03bbh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
03beh jmp near ptr 0b9fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dc 07 00 00}
03c3h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
03c7h vmovdqu xmmword ptr [rsp+4f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 04 00 00}
03d0h vmovdqu xmm0,xmmword ptr [rsp+4f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 04 00 00}
03d9h vmovdqu xmmword ptr [rsp+4e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 04 00 00}
03e2h vmovdqu xmm0,xmmword ptr [rsp+4e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 04 00 00}
03ebh vmovdqu xmmword ptr [rsp+4d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 04 00 00}
03f4h mov rdx,[rsp+4d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 d0 04 00 00}
03fch vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0400h vmovdqu xmmword ptr [rsp+4c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 04 00 00}
0409h vmovdqu xmm0,xmmword ptr [rsp+4c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 04 00 00}
0412h vmovdqu xmmword ptr [rsp+4b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 04 00 00}
041bh vmovdqu xmm0,xmmword ptr [rsp+4b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 04 00 00}
0424h vmovdqu xmmword ptr [rsp+4a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 04 00 00}
042dh mov rax,[rsp+4a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 a0 04 00 00}
0435h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0439h vmovdqu xmmword ptr [rsp+490h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 04 00 00}
0442h vmovdqu xmm0,xmmword ptr [rsp+490h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 04 00 00}
044bh vmovdqu xmmword ptr [rsp+480h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 04 00 00}
0454h vmovdqu xmm0,xmmword ptr [rsp+480h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 04 00 00}
045dh vmovdqu xmmword ptr [rsp+470h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 04 00 00}
0466h mov rcx,[rsp+470h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 70 04 00 00}
046eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0471h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0474h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0477h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
047bh lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
047fh lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
0483h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0487h vmovupd [rsp+440h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 04 00 00}
0490h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0494h vmovupd [rsp+420h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 04 00 00}
049dh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
04a2h vmovupd [rsp+440h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 04 00 00}
04abh vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
04afh vmovupd [rsp+420h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 04 00 00}
04b8h vmovupd ymm0,[rsp+440h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 04 00 00}
04c1h vmovupd ymm1,[rsp+420h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 20 04 00 00}
04cah vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
04ceh vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
04d3h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
04d7h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
04dah vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
04dfh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
04e2h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
04e6h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
04eah jl short 0474h                          ; JL rel8 || 7C cb || encoded[2]{7c 88}
04ech mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
04efh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc d5 d5 5e}
04f4h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
04f6h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
04f9h jmp near ptr 0b9fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a1 06 00 00}
04feh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0502h vmovdqu xmmword ptr [rsp+410h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 04 00 00}
050bh vmovdqu xmm0,xmmword ptr [rsp+410h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 04 00 00}
0514h vmovdqu xmmword ptr [rsp+400h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 04 00 00}
051dh vmovdqu xmm0,xmmword ptr [rsp+400h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 04 00 00}
0526h vmovdqu xmmword ptr [rsp+3f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 03 00 00}
052fh mov rdx,[rsp+3f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 f0 03 00 00}
0537h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
053bh vmovdqu xmmword ptr [rsp+3e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 03 00 00}
0544h vmovdqu xmm0,xmmword ptr [rsp+3e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 03 00 00}
054dh vmovdqu xmmword ptr [rsp+3d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 03 00 00}
0556h vmovdqu xmm0,xmmword ptr [rsp+3d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 03 00 00}
055fh vmovdqu xmmword ptr [rsp+3c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 03 00 00}
0568h mov rax,[rsp+3c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 c0 03 00 00}
0570h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0574h vmovdqu xmmword ptr [rsp+3b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 03 00 00}
057dh vmovdqu xmm0,xmmword ptr [rsp+3b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 03 00 00}
0586h vmovdqu xmmword ptr [rsp+3a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 03 00 00}
058fh vmovdqu xmm0,xmmword ptr [rsp+3a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 03 00 00}
0598h vmovdqu xmmword ptr [rsp+390h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 03 00 00}
05a1h mov rcx,[rsp+390h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 90 03 00 00}
05a9h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
05ach xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
05afh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
05b2h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
05b6h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
05bah lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
05beh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
05c3h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
05c7h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
05cbh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
05ceh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
05d3h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
05d6h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
05dah cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
05deh jl short 05afh                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
05e0h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
05e3h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 d5 d5 5e}
05e8h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
05eah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
05edh jmp near ptr 0b9fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ad 05 00 00}
05f2h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
05f6h vmovdqu xmmword ptr [rsp+380h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 03 00 00}
05ffh vmovdqu xmm0,xmmword ptr [rsp+380h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 03 00 00}
0608h vmovdqu xmmword ptr [rsp+370h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 03 00 00}
0611h vmovdqu xmm0,xmmword ptr [rsp+370h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 03 00 00}
061ah vmovdqu xmmword ptr [rsp+360h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 03 00 00}
0623h mov rdx,[rsp+360h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 60 03 00 00}
062bh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
062fh vmovdqu xmmword ptr [rsp+350h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 03 00 00}
0638h vmovdqu xmm0,xmmword ptr [rsp+350h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 03 00 00}
0641h vmovdqu xmmword ptr [rsp+340h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 03 00 00}
064ah vmovdqu xmm0,xmmword ptr [rsp+340h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 03 00 00}
0653h vmovdqu xmmword ptr [rsp+330h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 03 00 00}
065ch mov rax,[rsp+330h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 30 03 00 00}
0664h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0668h vmovdqu xmmword ptr [rsp+320h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 03 00 00}
0671h vmovdqu xmm0,xmmword ptr [rsp+320h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 03 00 00}
067ah vmovdqu xmmword ptr [rsp+310h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 03 00 00}
0683h vmovdqu xmm0,xmmword ptr [rsp+310h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 03 00 00}
068ch vmovdqu xmmword ptr [rsp+300h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 03 00 00}
0695h mov rcx,[rsp+300h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 00 03 00 00}
069dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
06a0h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
06a3h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
06a6h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
06aah lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
06aeh lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
06b2h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
06b7h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
06bbh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
06bfh vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
06c4h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
06c8h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
06cbh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
06d0h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
06d3h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
06d7h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
06dbh jl short 06a3h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
06ddh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
06e0h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b d4 d5 5e}
06e5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
06e7h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
06eah jmp near ptr 0b9fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b0 04 00 00}
06efh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
06f3h vmovdqu xmmword ptr [rsp+2d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 02 00 00}
06fch vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0700h vmovdqu xmmword ptr [rsp+2f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 02 00 00}
0709h vmovdqu xmm0,xmmword ptr [rsp+2f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 02 00 00}
0712h vmovdqu xmmword ptr [rsp+2e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 02 00 00}
071bh vmovdqu xmm0,xmmword ptr [rsp+2d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 02 00 00}
0724h vmovdqu xmmword ptr [rsp+2c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 02 00 00}
072dh vmovdqu xmm0,xmmword ptr [rsp+2c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 02 00 00}
0736h vmovdqu xmmword ptr [rsp+2b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 02 00 00}
073fh mov r8d,[rsp+2e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 e8 02 00 00}
0747h cmp r8d,[rsp+2b8h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 b8 02 00 00}
074fh ja near ptr 0baeh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 59 04 00 00}
0755h mov rcx,[rsp+2b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 b0 02 00 00}
075dh mov rdx,[rsp+2e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 e0 02 00 00}
0765h mov r8d,[rsp+2e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 e8 02 00 00}
076dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0770h shl r8,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 03}
0774h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 04 da 4e}
0779h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
077ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f d3 d5 5e}
0781h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0783h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0786h jmp near ptr 0b9fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 14 04 00 00}
078bh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
078fh vmovdqu xmmword ptr [rsp+2a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 02 00 00}
0798h vmovdqu xmm0,xmmword ptr [rsp+2a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 02 00 00}
07a1h vmovdqu xmmword ptr [rsp+290h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 02 00 00}
07aah vmovdqu xmm0,xmmword ptr [rsp+290h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 02 00 00}
07b3h vmovdqu xmmword ptr [rsp+280h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 02 00 00}
07bch mov rax,[rsp+280h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 80 02 00 00}
07c4h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
07c8h vmovdqu xmmword ptr [rsp+270h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 02 00 00}
07d1h vmovdqu xmm0,xmmword ptr [rsp+270h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 02 00 00}
07dah vmovdqu xmmword ptr [rsp+260h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 02 00 00}
07e3h vmovdqu xmm0,xmmword ptr [rsp+260h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 02 00 00}
07ech vmovdqu xmmword ptr [rsp+250h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 02 00 00}
07f5h mov rdx,[rsp+250h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 50 02 00 00}
07fdh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
07ffh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0802h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0805h lea r9,[rax+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c c8}
0809h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
080dh vmovupd [rsp+220h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 02 00 00}
0816h vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
081bh vmovupd [rsp+220h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 02 00 00}
0824h vmovupd ymm0,[rsp+220h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 20 02 00 00}
082dh vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0832h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0836h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0839h lea r9,[rdx+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c ca}
083dh vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0842h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0844h add r8d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 04}
0848h cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
084bh jl short 0802h                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
084dh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0850h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b d2 d5 5e}
0855h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0857h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
085ah jmp near ptr 0b9fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 40 03 00 00}
085fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0863h vmovdqu xmmword ptr [rsp+1f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 01 00 00}
086ch vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0870h vmovdqu xmmword ptr [rsp+210h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 02 00 00}
0879h vmovdqu xmm0,xmmword ptr [rsp+210h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 02 00 00}
0882h vmovdqu xmmword ptr [rsp+200h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 02 00 00}
088bh vmovdqu xmm0,xmmword ptr [rsp+1f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 01 00 00}
0894h vmovdqu xmmword ptr [rsp+1e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 01 00 00}
089dh vmovdqu xmm0,xmmword ptr [rsp+1e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 01 00 00}
08a6h vmovdqu xmmword ptr [rsp+1d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 01 00 00}
08afh mov r8d,[rsp+208h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 08 02 00 00}
08b7h cmp r8d,[rsp+1d8h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 d8 01 00 00}
08bfh ja near ptr 0bb4h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ef 02 00 00}
08c5h mov rcx,[rsp+1d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 d0 01 00 00}
08cdh mov rdx,[rsp+200h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 02 00 00}
08d5h mov r8d,[rsp+208h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 08 02 00 00}
08ddh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
08e0h shl r8,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 03}
08e4h call 7ff815ee8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 02 da 4e}
08e9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
08ech call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff d1 d5 5e}
08f1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
08f3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
08f6h jmp near ptr 0b9fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a4 02 00 00}
08fbh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
08ffh vmovdqu xmmword ptr [rsp+1c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 01 00 00}
0908h vmovdqu xmm0,xmmword ptr [rsp+1c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 01 00 00}
0911h vmovdqu xmmword ptr [rsp+1b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 01 00 00}
091ah vmovdqu xmm0,xmmword ptr [rsp+1b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 01 00 00}
0923h vmovdqu xmmword ptr [rsp+1a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 01 00 00}
092ch mov rax,[rsp+1a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 a0 01 00 00}
0934h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0938h vmovdqu xmmword ptr [rsp+190h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 01 00 00}
0941h vmovdqu xmm0,xmmword ptr [rsp+190h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 01 00 00}
094ah vmovdqu xmmword ptr [rsp+180h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 01 00 00}
0953h vmovdqu xmm0,xmmword ptr [rsp+180h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 01 00 00}
095ch vmovdqu xmmword ptr [rsp+170h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 01 00 00}
0965h mov rdx,[rsp+170h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 70 01 00 00}
096dh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
096fh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0972h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0975h lea r9,[rax+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c c8}
0979h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
097dh vmovupd [rsp+140h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 01 00 00}
0986h vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
098bh vmovupd [rsp+140h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 01 00 00}
0994h vmovupd ymm0,[rsp+140h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 01 00 00}
099dh vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
09a2h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
09a6h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
09a9h lea r9,[rdx+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c ca}
09adh vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
09b2h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
09b4h add r8d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 04}
09b8h cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
09bbh jl short 0972h                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
09bdh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
09c0h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b d1 d5 5e}
09c5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
09c7h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
09cah jmp near ptr 0b9fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d0 01 00 00}
09cfh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
09d3h vmovdqu xmmword ptr [rsp+130h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 01 00 00}
09dch vmovdqu xmm0,xmmword ptr [rsp+130h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 01 00 00}
09e5h vmovdqu xmmword ptr [rsp+120h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 01 00 00}
09eeh vmovdqu xmm0,xmmword ptr [rsp+120h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 01 00 00}
09f7h vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
0a00h mov rdx,[rsp+110h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 10 01 00 00}
0a08h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0a0ch vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
0a15h vmovdqu xmm0,xmmword ptr [rsp+100h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 01 00 00}
0a1eh vmovdqu xmmword ptr [rsp+0f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 00 00 00}
0a27h vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
0a30h vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
0a39h mov rax,[rsp+0e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e0 00 00 00}
0a41h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0a45h vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
0a4eh vmovdqu xmm0,xmmword ptr [rsp+0d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 00 00 00}
0a57h vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
0a60h vmovdqu xmm0,xmmword ptr [rsp+0c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 00 00 00}
0a69h vmovdqu xmmword ptr [rsp+0b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 00 00 00}
0a72h mov rcx,[rsp+0b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 b0 00 00 00}
0a7ah xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0a7dh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0a80h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0a83h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0a87h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
0a8bh lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
0a8fh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0a94h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
0a98h vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
0a9dh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0aa1h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0aa5h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0aa8h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0aadh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0ab0h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0ab4h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0ab8h jl short 0a80h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
0abah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0abdh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e d0 d5 5e}
0ac2h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0ac4h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0ac7h jmp near ptr 0b9fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d3 00 00 00}
0acch vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0ad0h vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
0ad9h vmovdqu xmm0,xmmword ptr [rsp+0a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 00 00 00}
0ae2h vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
0aebh vmovdqu xmm0,xmmword ptr [rsp+90h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 00 00 00}
0af4h vmovdqu xmmword ptr [rsp+80h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 00 00 00}
0afdh mov rcx,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 80 00 00 00}
0b05h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0b09h vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
0b0fh vmovdqu xmm0,xmmword ptr [rsp+70h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 70}
0b15h vmovdqu xmmword ptr [rsp+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 60}
0b1bh vmovdqu xmm0,xmmword ptr [rsp+60h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 60}
0b21h vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
0b27h mov rdx,[rsp+50h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 50}
0b2ch vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0b30h vmovdqu xmmword ptr [rsp+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 40}
0b36h vmovdqu xmm0,xmmword ptr [rsp+40h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 40}
0b3ch vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
0b42h vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
0b48h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0b4eh mov r8,[rsp+20h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 44 24 20}
0b53h call 7ff7c71440e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 b1 ff ff}
0b58h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0b5bh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 cf d5 5e}
0b60h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0b62h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0b65h jmp short 0b9fh                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0b67h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0b6ah mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0b6dh call 7ff7c71460e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 d1 ff ff}
0b72h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0b75h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0b78h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 cf d5 5e}
0b7dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0b7fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0b82h jmp short 0b9fh                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0b84h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0b87h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0b8ah call 7ff7c7147ff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f0 ff ff}
0b8fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0b92h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0b95h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 cf d5 5e}
0b9ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0b9ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0b9fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0ba2h add rsp,718h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 18 07 00 00}
0ba9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0baah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0babh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0bach pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0badh ret                                     ; RET || C3 || encoded[1]{c3}
0baeh call 7ff7c6395770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d c8 24 ff}
0bb3h int 3                                   ; INT3 || CC || encoded[1]{cc}
0bb4h call 7ff7c6395770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 c8 24 ff}
0bb9h int 3                                   ; INT3 || CC || encoded[1]{cc}
0bbah mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
0bc4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 dd d5 5e}
0bc9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0bcch movzx ecx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cd}
0bd0h call 7ff7c7142e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 9e ff ff}
0bd5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0bd8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0bdbh call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 00 26 ff}
0be0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0be3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 29 cd 5e}
------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<byte> lookup<byte>(BinaryBitLogicKind:byte kind)
; lookup_g[8u](BinaryBitLogicKind~8u)[74] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 60 39 c7 f7 7f 00 00 e8 92 db d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 c3}
; TermCode = CTC_RET_INTR
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
002fh mov rcx,7ff7c7396050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 60 39 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 db d5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrixBinaryRefOp<ushort> lookup<ushort>(BinaryBitLogicKind:byte kind)
; lookup_g[16u](BinaryBitLogicKind~8u)[1273] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 80 69 39 c7 f7 7f 00 00 e8 82 d6 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b3 c7 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 82 14 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 80 69 39 c7 f7 7f 00 00 e8 43 d6 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 74 c7 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 82 14 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 80 69 39 c7 f7 7f 00 00 e8 04 d6 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 35 c7 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 5e 14 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 80 69 39 c7 f7 7f 00 00 e8 c5 d5 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f6 c6 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 5d 14 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 80 69 39 c7 f7 7f 00 00 e8 86 d5 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 b7 c6 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 5e 14 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 80 69 39 c7 f7 7f 00 00 e8 47 d5 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 78 c6 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 5e 14 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 80 69 39 c7 f7 7f 00 00 e8 08 d5 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 39 c6 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 38 5e 14 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 80 69 39 c7 f7 7f 00 00 e8 c9 d4 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fa c5 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 5e 14 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 80 69 39 c7 f7 7f 00 00 e8 8a d4 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bb c5 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 5e 14 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 80 69 39 c7 f7 7f 00 00 e8 4b d4 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 7c c5 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 5d 14 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 80 69 39 c7 f7 7f 00 00 e8 0c d4 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 3d c5 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 5e 14 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 80 69 39 c7 f7 7f 00 00 e8 cd d3 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 fe c4 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 5d 14 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 80 69 39 c7 f7 7f 00 00 e8 8e d3 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 bf c4 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 5d 14 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 80 69 39 c7 f7 7f 00 00 e8 4f d3 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 80 c4 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 5e 14 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 80 69 39 c7 f7 7f 00 00 e8 13 d3 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 44 c4 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 5d 14 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 80 69 39 c7 f7 7f 00 00 e8 d7 d2 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 08 c4 d5 5e 48 b8 80 e0 25 c6 f7 7f 00 00 48 89 46 18 48 b8 78 5e 14 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 78 c9 35 c7 f7 7f 00 00 e8 91 d2 d5 5e 48 8b f8 40 88 77 08 48 b9 38 87 35 c6 f7 7f 00 00 e8 bb 55 d0 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 69 d2 d5 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 52 6b e8 5e 48 8b e8 48 8b ce e8 27 92 25 ff 8b c8 e8 88 69 25 ff 4c 8b c0 48 8b cd 48 8b d7 e8 ba a6 23 ff 48 8b d0 48 8b cb e8 77 f5 25 ff 48 8b cb e8 6f 1e cd 5e cc 00 00 00 00 00 00 64 00 00 00 a3 00 00 00 d0 03 00 00 1d 02 00 00 58 03 00 00 9b 02 00 00 9f 01 00 00 21 01 00 00 60 01 00 00 de 01 00 00 da 02 00 00 19 03 00 00 5c 02 00 00 94 03 00 00 e2 00 00 00 25 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
002fh mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 d6 d5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 c7 d5 5e}
004dh mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c71482a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 82 14 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 d6 d5 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 c7 d5 5e}
008ch mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c71482b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 82 14 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 d6 d5 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 c7 d5 5e}
00cbh mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7145e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5e 14 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 d5 d5 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 c6 d5 5e}
010ah mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7145db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 5d 14 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 d5 d5 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 c6 d5 5e}
0149h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7145e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 5e 14 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 d5 d5 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 c6 d5 5e}
0188h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7145e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5e 14 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 d5 d5 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 c6 d5 5e}
01c7h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7145e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 5e 14 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 d4 d5 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa c5 d5 5e}
0206h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7145e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 5e 14 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a d4 d5 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb c5 d5 5e}
0245h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7145e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5e 14 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b d4 d5 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c c5 d5 5e}
0284h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c7145dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 5d 14 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c d4 d5 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d c5 d5 5e}
02c3h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7145e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5e 14 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd d3 d5 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe c4 d5 5e}
0302h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7145df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5d 14 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e d3 d5 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf c4 d5 5e}
0341h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7145de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 5d 14 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f d3 d5 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 c4 d5 5e}
0380h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7145e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 5e 14 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 d3 d5 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 c4 d5 5e}
03bch mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7145dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 5d 14 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c7396980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 69 39 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 d2 d5 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 c4 d5 5e}
03f8h mov rax,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e0 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7145e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 5e 14 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
0420h mov rcx,7ff7c735c978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c9 35 c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 d2 d5 5e}
042fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0432h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0436h mov rcx,7ff7c6358738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 35 c6 f7 7f 00 00}
0440h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 55 d0 5e}
0445h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0448h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
0452h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 d2 d5 5e}
0457h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
045ah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
045fh mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
0469h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 6b e8 5e}
046eh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0471h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0474h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 92 25 ff}
0479h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
047bh call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 69 25 ff}
0480h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0483h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0486h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0489h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba a6 23 ff}
048eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0491h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0494h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 f5 25 ff}
0499h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
049ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 1e cd 5e}
04a1h int 3                                   ; INT3 || CC || encoded[1]{cc}
04a2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a4h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a8h add fs:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{64 00 00}
04abh add [rbx-30000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 a3 00 00 00 d0}
04b1h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
04b3h add [rip+58000002h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 1d 02 00 00 58}
04b9h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
04bbh add [rbx-60fffffeh],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 9b 02 00 00 9f}
04c1h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
04c3h add [rcx],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 21}
04c5h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
04c7h add [rax+1],ah                          ; ADD r/m8, r8 || 00 /r || encoded[3]{00 60 01}
04cah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04cch fiadd word ptr [rcx]                    ; FIADD m16int || DE /0 || encoded[2]{de 01}
04ceh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d0h fiadd dword ptr [rdx]                   ; FIADD m32int || DA /0 || encoded[2]{da 02}
04d2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d4h sbb [rbx],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 03}
04d6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d8h pop rsp                                 ; POP r64 || 58+ro || encoded[1]{5c}
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
; BitMatrixBinaryRefOp<uint> lookup<uint>(BinaryBitLogicKind:byte kind)
; lookup_g[32u](BinaryBitLogicKind~8u)[1273] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 50 6c 39 c7 f7 7f 00 00 e8 72 d1 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a3 c2 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 00 83 14 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 50 6c 39 c7 f7 7f 00 00 e8 33 d1 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 64 c2 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 10 83 14 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 50 6c 39 c7 f7 7f 00 00 e8 f4 d0 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 25 c2 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 60 14 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 50 6c 39 c7 f7 7f 00 00 e8 b5 d0 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e6 c1 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 48 5f 14 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 50 6c 39 c7 f7 7f 00 00 e8 76 d0 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 a7 c1 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 5f 14 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 50 6c 39 c7 f7 7f 00 00 e8 37 d0 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 68 c1 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 5f 14 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 50 6c 39 c7 f7 7f 00 00 e8 f8 cf d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 29 c1 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 5f 14 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 50 6c 39 c7 f7 7f 00 00 e8 b9 cf d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ea c0 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 5f 14 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 50 6c 39 c7 f7 7f 00 00 e8 7a cf d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ab c0 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 5f 14 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 50 6c 39 c7 f7 7f 00 00 e8 3b cf d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 6c c0 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 5f 14 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 50 6c 39 c7 f7 7f 00 00 e8 fc ce d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 2d c0 d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 5f 14 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 50 6c 39 c7 f7 7f 00 00 e8 bd ce d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 ee bf d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 88 5f 14 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 50 6c 39 c7 f7 7f 00 00 e8 7e ce d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 af bf d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 78 5f 14 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 50 6c 39 c7 f7 7f 00 00 e8 3f ce d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 70 bf d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 5f 14 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 50 6c 39 c7 f7 7f 00 00 e8 03 ce d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 34 bf d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 5f 14 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 50 6c 39 c7 f7 7f 00 00 e8 c7 cd d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 f8 be d5 5e 48 b8 80 e0 25 c6 f7 7f 00 00 48 89 46 18 48 b8 08 60 14 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 78 c9 35 c7 f7 7f 00 00 e8 81 cd d5 5e 48 8b f8 40 88 77 08 48 b9 d8 96 35 c6 f7 7f 00 00 e8 ab 50 d0 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 59 cd d5 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 42 66 e8 5e 48 8b e8 48 8b ce e8 17 8d 25 ff 8b c8 e8 78 64 25 ff 4c 8b c0 48 8b cd 48 8b d7 e8 aa a1 23 ff 48 8b d0 48 8b cb e8 67 f0 25 ff 48 8b cb e8 5f 19 cd 5e cc 00 00 00 00 00 00 64 00 00 00 a3 00 00 00 d0 03 00 00 1d 02 00 00 58 03 00 00 9b 02 00 00 9f 01 00 00 21 01 00 00 60 01 00 00 de 01 00 00 da 02 00 00 19 03 00 00 5c 02 00 00 94 03 00 00 e2 00 00 00 25 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
002fh mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 d1 d5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 c2 d5 5e}
004dh mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7148300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 83 14 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 d1 d5 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 c2 d5 5e}
008ch mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7148310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 83 14 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 d0 d5 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c2 d5 5e}
00cbh mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7146018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 60 14 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 d0 d5 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 c1 d5 5e}
010ah mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c7145f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5f 14 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 d0 d5 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 c1 d5 5e}
0149h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7145fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 5f 14 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 d0 d5 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 c1 d5 5e}
0188h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7145fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 5f 14 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 cf d5 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 c1 d5 5e}
01c7h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7145fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 5f 14 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 cf d5 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea c0 d5 5e}
0206h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7145f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5f 14 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a cf d5 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab c0 d5 5e}
0245h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7145ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5f 14 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b cf d5 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c c0 d5 5e}
0284h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c7145f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5f 14 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc ce d5 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d c0 d5 5e}
02c3h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7145fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 5f 14 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd ce d5 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee bf d5 5e}
0302h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7145f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 5f 14 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e ce d5 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af bf d5 5e}
0341h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7145f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5f 14 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f ce d5 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 bf d5 5e}
0380h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7145fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 5f 14 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 ce d5 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 bf d5 5e}
03bch mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c7145f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 5f 14 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c7396c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6c 39 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 cd d5 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 be d5 5e}
03f8h mov rax,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e0 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7146008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 60 14 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
0420h mov rcx,7ff7c735c978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c9 35 c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 cd d5 5e}
042fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0432h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0436h mov rcx,7ff7c63596d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 35 c6 f7 7f 00 00}
0440h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 50 d0 5e}
0445h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0448h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
0452h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 cd d5 5e}
0457h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
045ah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
045fh mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
0469h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 66 e8 5e}
046eh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0471h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0474h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 8d 25 ff}
0479h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
047bh call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 64 25 ff}
0480h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0483h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0486h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0489h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa a1 23 ff}
048eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0491h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0494h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 f0 25 ff}
0499h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
049ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 19 cd 5e}
04a1h int 3                                   ; INT3 || CC || encoded[1]{cc}
04a2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a4h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a8h add fs:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{64 00 00}
04abh add [rbx-30000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 a3 00 00 00 d0}
04b1h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
04b3h add [rip+58000002h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 1d 02 00 00 58}
04b9h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
04bbh add [rbx-60fffffeh],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 9b 02 00 00 9f}
04c1h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
04c3h add [rcx],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 21}
04c5h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
04c7h add [rax+1],ah                          ; ADD r/m8, r8 || 00 /r || encoded[3]{00 60 01}
04cah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04cch fiadd word ptr [rcx]                    ; FIADD m16int || DE /0 || encoded[2]{de 01}
04ceh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d0h fiadd dword ptr [rdx]                   ; FIADD m32int || DA /0 || encoded[2]{da 02}
04d2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d4h sbb [rbx],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 03}
04d6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d8h pop rsp                                 ; POP r64 || 58+ro || encoded[1]{5c}
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
; BitMatrixBinaryRefOp<ulong> lookup<ulong>(BinaryBitLogicKind:byte kind)
; lookup_g[64u](BinaryBitLogicKind~8u)[1273] = {57 56 55 53 48 83 ec 28 8b f1 40 0f b6 ce 83 f9 0f 0f 87 09 04 00 00 8b c9 48 8d 05 88 04 00 00 8b 04 88 48 8d 15 e0 ff ff ff 48 03 c2 ff e0 48 b9 20 6f 39 c7 f7 7f 00 00 e8 62 cc d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 93 bd d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 58 83 14 c7 f7 7f 00 00 48 89 4e 20 e9 a6 03 00 00 48 b9 20 6f 39 c7 f7 7f 00 00 e8 23 cc d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 54 bd d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 68 83 14 c7 f7 7f 00 00 48 89 4e 20 e9 67 03 00 00 48 b9 20 6f 39 c7 f7 7f 00 00 e8 e4 cb d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 15 bd d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 80 14 c7 f7 7f 00 00 48 89 4e 20 e9 28 03 00 00 48 b9 20 6f 39 c7 f7 7f 00 00 e8 a5 cb d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 d6 bc d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 60 14 c7 f7 7f 00 00 48 89 4e 20 e9 e9 02 00 00 48 b9 20 6f 39 c7 f7 7f 00 00 e8 66 cb d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 97 bc d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 a8 7f 14 c7 f7 7f 00 00 48 89 4e 20 e9 aa 02 00 00 48 b9 20 6f 39 c7 f7 7f 00 00 e8 27 cb d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 58 bc d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 98 7f 14 c7 f7 7f 00 00 48 89 4e 20 e9 6b 02 00 00 48 b9 20 6f 39 c7 f7 7f 00 00 e8 e8 ca d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 19 bc d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 b8 7f 14 c7 f7 7f 00 00 48 89 4e 20 e9 2c 02 00 00 48 b9 20 6f 39 c7 f7 7f 00 00 e8 a9 ca d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 da bb d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 28 61 14 c7 f7 7f 00 00 48 89 4e 20 e9 ed 01 00 00 48 b9 20 6f 39 c7 f7 7f 00 00 e8 6a ca d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9b bb d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 7f 14 c7 f7 7f 00 00 48 89 4e 20 e9 ae 01 00 00 48 b9 20 6f 39 c7 f7 7f 00 00 e8 2b ca d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 5c bb d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 f8 60 14 c7 f7 7f 00 00 48 89 4e 20 e9 6f 01 00 00 48 b9 20 6f 39 c7 f7 7f 00 00 e8 ec c9 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 1d bb d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 c8 7f 14 c7 f7 7f 00 00 48 89 4e 20 e9 30 01 00 00 48 b9 20 6f 39 c7 f7 7f 00 00 e8 ad c9 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 de ba d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 18 61 14 c7 f7 7f 00 00 48 89 4e 20 e9 f1 00 00 00 48 b9 20 6f 39 c7 f7 7f 00 00 e8 6e c9 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 9f ba d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 08 61 14 c7 f7 7f 00 00 48 89 4e 20 e9 b2 00 00 00 48 b9 20 6f 39 c7 f7 7f 00 00 e8 2f c9 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 60 ba d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 d8 7f 14 c7 f7 7f 00 00 48 89 4e 20 eb 76 48 b9 20 6f 39 c7 f7 7f 00 00 e8 f3 c8 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 24 ba d5 5e 48 b9 80 e0 25 c6 f7 7f 00 00 48 89 4e 18 48 b9 e8 60 14 c7 f7 7f 00 00 48 89 4e 20 eb 3a 48 b9 20 6f 39 c7 f7 7f 00 00 e8 b7 c8 d5 5e 48 8b f0 48 8d 4e 08 48 8b d6 e8 e8 b9 d5 5e 48 b8 80 e0 25 c6 f7 7f 00 00 48 89 46 18 48 b8 f8 7f 14 c7 f7 7f 00 00 48 89 46 20 48 8b c6 48 83 c4 28 5b 5d 5e 5f c3 48 b9 78 c9 35 c7 f7 7f 00 00 e8 71 c8 d5 5e 48 8b f8 40 88 77 08 48 b9 78 a6 35 c6 f7 7f 00 00 e8 9b 4b d0 5e 48 8b f0 48 b9 40 b0 5b c6 f7 7f 00 00 e8 49 c8 d5 5e 48 8b d8 b9 4c 04 00 00 48 ba 38 c7 7c c6 f7 7f 00 00 e8 32 61 e8 5e 48 8b e8 48 8b ce e8 07 88 25 ff 8b c8 e8 68 5f 25 ff 4c 8b c0 48 8b cd 48 8b d7 e8 9a 9c 23 ff 48 8b d0 48 8b cb e8 57 eb 25 ff 48 8b cb e8 4f 14 cd 5e cc 00 00 00 00 00 00 64 00 00 00 a3 00 00 00 d0 03 00 00 1d 02 00 00 58 03 00 00 9b 02 00 00 9f 01 00 00 21 01 00 00 60 01 00 00 de 01 00 00 da 02 00 00 19 03 00 00 5c 02 00 00 94 03 00 00 e2 00 00 00 25 00 00 00 19 08 05 00 08 42 04 30 03 50 02 60 01 70 00 00 40}
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
002fh mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
0039h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 cc d5 5e}
003eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0041h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0045h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0048h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 bd d5 5e}
004dh mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0057h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
005bh mov rcx,7ff7c7148358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 83 14 c7 f7 7f 00 00}
0065h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0069h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
006eh mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
0078h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 cc d5 5e}
007dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0080h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0084h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0087h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 bd d5 5e}
008ch mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0096h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
009ah mov rcx,7ff7c7148368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 83 14 c7 f7 7f 00 00}
00a4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00a8h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 03 00 00}
00adh mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 cb d5 5e}
00bch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bfh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
00c3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c6h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 bd d5 5e}
00cbh mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
00d5h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
00d9h mov rcx,7ff7c7148008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 80 14 c7 f7 7f 00 00}
00e3h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
00e7h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 28 03 00 00}
00ech mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 cb d5 5e}
00fbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00feh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0102h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0105h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 bc d5 5e}
010ah mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0114h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0118h mov rcx,7ff7c71460d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 60 14 c7 f7 7f 00 00}
0122h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0126h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e9 02 00 00}
012bh mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
0135h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 cb d5 5e}
013ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
013dh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0141h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0144h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 bc d5 5e}
0149h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0153h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0157h mov rcx,7ff7c7147fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 7f 14 c7 f7 7f 00 00}
0161h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0165h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 02 00 00}
016ah mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
0174h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 cb d5 5e}
0179h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
017ch lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0180h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0183h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 bc d5 5e}
0188h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0192h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0196h mov rcx,7ff7c7147f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 7f 14 c7 f7 7f 00 00}
01a0h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01a4h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 02 00 00}
01a9h mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
01b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 ca d5 5e}
01b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01bbh lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01bfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01c2h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 bc d5 5e}
01c7h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
01d1h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
01d5h mov rcx,7ff7c7147fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 7f 14 c7 f7 7f 00 00}
01dfh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
01e3h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 02 00 00}
01e8h mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
01f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 ca d5 5e}
01f7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fah lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
01feh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0201h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da bb d5 5e}
0206h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
0210h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0214h mov rcx,7ff7c7146128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 61 14 c7 f7 7f 00 00}
021eh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0222h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0227h mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
0231h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a ca d5 5e}
0236h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0239h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
023dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0240h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b bb d5 5e}
0245h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
024fh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0253h mov rcx,7ff7c7147fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 7f 14 c7 f7 7f 00 00}
025dh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
0261h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
0266h mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
0270h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b ca d5 5e}
0275h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0278h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
027ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027fh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c bb d5 5e}
0284h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
028eh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0292h mov rcx,7ff7c71460f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 60 14 c7 f7 7f 00 00}
029ch mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02a0h jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
02a5h mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec c9 d5 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02bbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02beh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d bb d5 5e}
02c3h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
02cdh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
02d1h mov rcx,7ff7c7147fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7f 14 c7 f7 7f 00 00}
02dbh mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
02dfh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 01 00 00}
02e4h mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
02eeh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad c9 d5 5e}
02f3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02f6h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
02fah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02fdh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de ba d5 5e}
0302h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
030ch mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
0310h mov rcx,7ff7c7146118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 61 14 c7 f7 7f 00 00}
031ah mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
031eh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0323h mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
032dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e c9 d5 5e}
0332h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0335h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0339h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033ch call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f ba d5 5e}
0341h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
034bh mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
034fh mov rcx,7ff7c7146108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 61 14 c7 f7 7f 00 00}
0359h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
035dh jmp near ptr 0414h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
0362h mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
036ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f c9 d5 5e}
0371h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0374h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
0378h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
037bh call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 ba d5 5e}
0380h mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
038ah mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
038eh mov rcx,7ff7c7147fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 7f 14 c7 f7 7f 00 00}
0398h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
039ch jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 76}
039eh mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
03a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 c8 d5 5e}
03adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03b0h lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03b7h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ba d5 5e}
03bch mov rcx,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e0 25 c6 f7 7f 00 00}
03c6h mov [rsi+18h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 18}
03cah mov rcx,7ff7c71460e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 60 14 c7 f7 7f 00 00}
03d4h mov [rsi+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 4e 20}
03d8h jmp short 0414h                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
03dah mov rcx,7ff7c7396f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6f 39 c7 f7 7f 00 00}
03e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 c8 d5 5e}
03e9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03ech lea rcx,[rsi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4e 08}
03f0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f3h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 b9 d5 5e}
03f8h mov rax,7ff7c625e080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 e0 25 c6 f7 7f 00 00}
0402h mov [rsi+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 18}
0406h mov rax,7ff7c7147ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 7f 14 c7 f7 7f 00 00}
0410h mov [rsi+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 20}
0414h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0417h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
041bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
041ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
041dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
041eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
041fh ret                                     ; RET || C3 || encoded[1]{c3}
0420h mov rcx,7ff7c735c978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c9 35 c7 f7 7f 00 00}
042ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 c8 d5 5e}
042fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0432h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0436h mov rcx,7ff7c635a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 35 c6 f7 7f 00 00}
0440h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 4b d0 5e}
0445h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0448h mov rcx,7ff7c65bb040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b0 5b c6 f7 7f 00 00}
0452h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 c8 d5 5e}
0457h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
045ah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
045fh mov rdx,7ff7c67cc738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 c7 7c c6 f7 7f 00 00}
0469h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 61 e8 5e}
046eh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0471h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0474h call 7ff7c63a2c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 88 25 ff}
0479h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
047bh call 7ff7c63a03f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 5f 25 ff}
0480h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0483h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0486h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0489h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 9c 23 ff}
048eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0491h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0494h call 7ff7c63a9000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 eb 25 ff}
0499h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
049ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 14 cd 5e}
04a1h int 3                                   ; INT3 || CC || encoded[1]{cc}
04a2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a4h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04a8h add fs:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{64 00 00}
04abh add [rbx-30000000h],ah                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 a3 00 00 00 d0}
04b1h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
04b3h add [rip+58000002h],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 1d 02 00 00 58}
04b9h add eax,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 00}
04bbh add [rbx-60fffffeh],bl                  ; ADD r/m8, r8 || 00 /r || encoded[6]{00 9b 02 00 00 9f}
04c1h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
04c3h add [rcx],ah                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 21}
04c5h add [rax],eax                           ; ADD r/m32, r32 || o32 01 /r || encoded[2]{01 00}
04c7h add [rax+1],ah                          ; ADD r/m8, r8 || 00 /r || encoded[3]{00 60 01}
04cah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04cch fiadd word ptr [rcx]                    ; FIADD m16int || DE /0 || encoded[2]{de 01}
04ceh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d0h fiadd dword ptr [rdx]                   ; FIADD m32int || DA /0 || encoded[2]{da 02}
04d2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d4h sbb [rbx],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 03}
04d6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
04d8h pop rsp                                 ; POP r64 || 58+ro || encoded[1]{5c}
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
