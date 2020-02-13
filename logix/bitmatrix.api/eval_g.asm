------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> eval<byte>(UnaryBitLogicKind:byte kind, BitMatrix<byte> A)
; eval_g[8u](UnaryBitLogicKind~8u,bm8x8u)[260] = {57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 28 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 1c 40 80 fd 02 75 5c 48 8b fb e8 32 59 be 5e 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 e8 f5 e8 fd ff 48 8b 06 48 8d 54 24 28 48 8b 12 48 8b 00 48 f7 d0 48 89 02 48 8b fb 48 8d 74 24 28 e8 ec 58 be 5e 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 b9 a0 6a 04 c8 f7 7f 00 00 e8 ef 66 be 5e 48 8b f0 40 88 6e 08 48 b9 58 77 71 c7 f7 7f 00 00 e8 19 ea b8 5e 48 8b f8 48 b9 20 96 98 c7 f7 7f 00 00 e8 c7 66 be 5e 48 8b d8 b9 4c 04 00 00 48 ba 00 7c b3 c7 f7 7f 00 00 e8 b0 ff d0 5e 48 8b e8 48 8b cf e8 05 5e 0e ff 8b c8 e8 56 2f 0e ff 4c 8b c0 48 8b cd 48 8b d6 e8 18 3b 0c ff 48 8b d0 48 8b cb e8 45 9c 0e ff 48 8b cb e8 cd b2 b5 5e cc}
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
0029h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 59 be 5e}
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
004eh call 7ff7c865ee78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 e8 fd ff}
0053h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0056h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
005eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0061h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0064h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0067h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006ah lea rsi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 28}
006fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 58 be 5e}
0074h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0076h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0079h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
007dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0080h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0081h ret                                     ; RET || C3 || encoded[1]{c3}
0082h mov rcx,7ff7c8046aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6a 04 c8 f7 7f 00 00}
008ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 66 be 5e}
0091h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0094h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
0098h mov rcx,7ff7c7717758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 71 c7 f7 7f 00 00}
00a2h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 ea b8 5e}
00a7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00aah mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
00b4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 66 be 5e}
00b9h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bch mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00c1h mov rdx,7ff7c7b37c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 7c b3 c7 f7 7f 00 00}
00cbh call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 ff d0 5e}
00d0h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00d3h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d6h call 7ff7c7766410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 5e 0e ff}
00dbh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00ddh call 7ff7c7763568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 2f 0e ff}
00e2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e5h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00e8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00ebh call 7ff7c7744138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 3b 0c ff}
00f0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f6h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 9c 0e ff}
00fbh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00feh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd b2 b5 5e}
0103h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, BitMatrix<ushort> A)
; eval_g[16u](UnaryBitLogicKind~8u,bm16x16u)[299] = {57 56 55 53 48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 48 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 23 40 80 fd 02 0f 85 7f 00 00 00 48 8b fb e8 fe 57 be 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 8d 4c 24 48 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 48 e8 0e e8 fd ff 48 8b 06 48 8d 54 24 48 48 8b 12 c5 fc 57 c0 c5 fd 11 44 24 20 c5 ff f0 00 c5 fd 11 44 24 20 c5 fd 10 44 24 20 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb 48 8d 74 24 48 e8 98 57 be 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 b9 a0 6a 04 c8 f7 7f 00 00 e8 98 65 be 5e 48 8b f0 40 88 6e 08 48 b9 38 87 71 c7 f7 7f 00 00 e8 c2 e8 b8 5e 48 8b f8 48 b9 20 96 98 c7 f7 7f 00 00 e8 70 65 be 5e 48 8b d8 b9 4c 04 00 00 48 ba 00 7c b3 c7 f7 7f 00 00 e8 59 fe d0 5e 48 8b e8 48 8b cf e8 ae 5c 0e ff 8b c8 e8 ff 2d 0e ff 4c 8b c0 48 8b cd 48 8b d6 e8 c1 39 0c ff 48 8b d0 48 8b cb e8 ee 9a 0e ff 48 8b cb e8 76 b1 b5 5e cc}
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
002dh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 57 be 5e}
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
0055h call 7ff7c865eec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e e8 fd ff}
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
0093h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 57 be 5e}
0098h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00a0h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00a4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h ret                                     ; RET || C3 || encoded[1]{c3}
00a9h mov rcx,7ff7c8046aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6a 04 c8 f7 7f 00 00}
00b3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 65 be 5e}
00b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bbh mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00bfh mov rcx,7ff7c7718738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 71 c7 f7 7f 00 00}
00c9h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 e8 b8 5e}
00ceh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d1h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
00dbh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 65 be 5e}
00e0h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00e3h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00e8h mov rdx,7ff7c7b37c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 7c b3 c7 f7 7f 00 00}
00f2h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 fe d0 5e}
00f7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00fah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00fdh call 7ff7c7766410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 5c 0e ff}
0102h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0104h call 7ff7c7763568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 2d 0e ff}
0109h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
010fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0112h call 7ff7c7744138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 39 0c ff}
0117h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
011ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011dh call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 9a 0e ff}
0122h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0125h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 b1 b5 5e}
012ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> eval<uint>(UnaryBitLogicKind:byte kind, BitMatrix<uint> A)
; eval_g[32u](UnaryBitLogicKind~8u,bm32x32u)[331] = {57 56 55 53 48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 48 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 23 40 80 fd 02 0f 85 9f 00 00 00 48 8b fb e8 9e 52 be 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 8d 4c 24 48 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 48 e8 ce e2 fd ff 48 8b 06 48 8d 54 24 48 48 8b 12 33 c9 45 33 c0 4d 63 c8 49 c1 e1 02 4e 8d 14 08 c5 fc 57 c0 c5 fd 11 44 24 20 c4 c1 7f f0 02 c5 fd 11 44 24 20 c5 fd 10 44 24 20 c5 fd 76 c8 c5 fd ef c1 4c 03 ca c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c bf 48 8b fb 48 8d 74 24 48 e8 18 52 be 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 b9 a0 6a 04 c8 f7 7f 00 00 e8 18 60 be 5e 48 8b f0 40 88 6e 08 48 b9 d8 96 71 c7 f7 7f 00 00 e8 42 e3 b8 5e 48 8b f8 48 b9 20 96 98 c7 f7 7f 00 00 e8 f0 5f be 5e 48 8b d8 b9 4c 04 00 00 48 ba 00 7c b3 c7 f7 7f 00 00 e8 d9 f8 d0 5e 48 8b e8 48 8b cf e8 2e 57 0e ff 8b c8 e8 7f 28 0e ff 4c 8b c0 48 8b cd 48 8b d6 e8 41 34 0c ff 48 8b d0 48 8b cb e8 6e 95 0e ff 48 8b cb e8 f6 ab b5 5e cc}
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
002dh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 52 be 5e}
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
0055h call 7ff7c865eee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce e2 fd ff}
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
00b3h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 52 be 5e}
00b8h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00bah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00bdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c0h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00c4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c8h ret                                     ; RET || C3 || encoded[1]{c3}
00c9h mov rcx,7ff7c8046aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6a 04 c8 f7 7f 00 00}
00d3h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 60 be 5e}
00d8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00dbh mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00dfh mov rcx,7ff7c77196d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 71 c7 f7 7f 00 00}
00e9h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 e3 b8 5e}
00eeh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00f1h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
00fbh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 5f be 5e}
0100h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0103h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0108h mov rdx,7ff7c7b37c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 7c b3 c7 f7 7f 00 00}
0112h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f8 d0 5e}
0117h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
011ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
011dh call 7ff7c7766410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 57 0e ff}
0122h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0124h call 7ff7c7763568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 28 0e ff}
0129h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
012ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
012fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0132h call 7ff7c7744138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 34 0c ff}
0137h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
013ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013dh call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 95 0e ff}
0142h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0145h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 ab b5 5e}
014ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, BitMatrix<ulong> A)
; eval_g[64u](UnaryBitLogicKind~8u,bm64x64u)[332] = {57 56 55 53 48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 48 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 23 40 80 fd 02 0f 85 a0 00 00 00 48 8b fb e8 2e 51 be 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 8d 4c 24 48 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 48 e8 7e e1 fd ff 48 8b 06 48 8d 54 24 48 48 8b 12 33 c9 45 33 c0 4d 63 c8 49 c1 e1 03 4e 8d 14 08 c5 fc 57 c0 c5 fd 11 44 24 20 c4 c1 7f f0 02 c5 fd 11 44 24 20 c5 fd 10 44 24 20 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c be 48 8b fb 48 8d 74 24 48 e8 a7 50 be 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 b9 a0 6a 04 c8 f7 7f 00 00 e8 a7 5e be 5e 48 8b f0 40 88 6e 08 48 b9 78 a6 71 c7 f7 7f 00 00 e8 d1 e1 b8 5e 48 8b f8 48 b9 20 96 98 c7 f7 7f 00 00 e8 7f 5e be 5e 48 8b d8 b9 4c 04 00 00 48 ba 00 7c b3 c7 f7 7f 00 00 e8 68 f7 d0 5e 48 8b e8 48 8b cf e8 bd 55 0e ff 8b c8 e8 0e 27 0e ff 4c 8b c0 48 8b cd 48 8b d6 e8 d0 32 0c ff 48 8b d0 48 8b cb e8 fd 93 0e ff 48 8b cb e8 85 aa b5 5e cc}
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
002dh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 51 be 5e}
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
0055h call 7ff7c865ef08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e e1 fd ff}
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
00b4h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 50 be 5e}
00b9h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00bbh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00beh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c1h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00c5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c6h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c9h ret                                     ; RET || C3 || encoded[1]{c3}
00cah mov rcx,7ff7c8046aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6a 04 c8 f7 7f 00 00}
00d4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 5e be 5e}
00d9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00dch mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00e0h mov rcx,7ff7c771a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 71 c7 f7 7f 00 00}
00eah call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 e1 b8 5e}
00efh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00f2h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
00fch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 5e be 5e}
0101h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0104h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0109h mov rdx,7ff7c7b37c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 7c b3 c7 f7 7f 00 00}
0113h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 f7 d0 5e}
0118h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
011bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
011eh call 7ff7c7766410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 55 0e ff}
0123h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0125h call 7ff7c7763568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 27 0e ff}
012ah mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
012dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0130h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0133h call 7ff7c7744138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 32 0c ff}
0138h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
013bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013eh call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 93 0e ff}
0143h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0146h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 aa b5 5e}
014bh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> eval<byte>(UnaryBitLogicKind:byte kind, BitMatrix<byte> A, ref BitMatrix<byte> Z)
; eval_g[8u](UnaryBitLogicKind~8u,bm8x8u,bm8x8u~ref)[302] = {57 56 55 53 48 83 ec 48 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 28 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 5c 40 80 fd 02 0f 85 7d 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 00 c5 fa 7f 44 24 38 48 8d 4c 24 38 48 8b 11 8b 49 08 4c 8d 44 24 28 49 8b 00 45 8b 40 08 41 3b c8 77 46 4c 63 c1 48 8b c8 e8 35 7c 67 4e 48 8b fb e8 6d 4b be 5e 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 49 8b 00 48 8b 16 48 8b 00 48 f7 d0 48 89 02 48 8b fb e8 48 4b be 5e 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 e8 55 44 0d ff cc 48 b9 a0 6a 04 c8 f7 7f 00 00 e8 45 59 be 5e 48 8b f0 40 88 6e 08 48 b9 58 77 71 c7 f7 7f 00 00 e8 6f dc b8 5e 48 8b f8 48 b9 20 96 98 c7 f7 7f 00 00 e8 1d 59 be 5e 48 8b d8 b9 4c 04 00 00 48 ba 00 7c b3 c7 f7 7f 00 00 e8 06 f2 d0 5e 48 8b e8 48 8b cf e8 5b 50 0e ff 8b c8 e8 ac 21 0e ff 4c 8b c0 48 8b cd 48 8b d6 e8 6e 2d 0c ff 48 8b d0 48 8b cb e8 9b 8e 0e ff 48 8b cb e8 23 a5 b5 5e cc}
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
0066h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 7c 67 4e}
006bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 4b be 5e}
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
0093h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 4b be 5e}
0098h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
00a1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a5h ret                                     ; RET || C3 || encoded[1]{c3}
00a6h call 7ff7c77557b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 44 0d ff}
00abh int 3                                   ; INT3 || CC || encoded[1]{cc}
00ach mov rcx,7ff7c8046aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6a 04 c8 f7 7f 00 00}
00b6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 59 be 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00c2h mov rcx,7ff7c7717758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 71 c7 f7 7f 00 00}
00cch call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f dc b8 5e}
00d1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d4h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
00deh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 59 be 5e}
00e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00e6h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00ebh mov rdx,7ff7c7b37c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 7c b3 c7 f7 7f 00 00}
00f5h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 f2 d0 5e}
00fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00fdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0100h call 7ff7c7766410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 50 0e ff}
0105h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0107h call 7ff7c7763568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 21 0e ff}
010ch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0112h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0115h call 7ff7c7744138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 2d 0c ff}
011ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
011dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0120h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 8e 0e ff}
0125h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0128h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 a5 b5 5e}
012dh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, BitMatrix<ushort> A, ref BitMatrix<ushort> Z)
; eval_g[16u](UnaryBitLogicKind~8u,bm16x16u,bm16x16u~ref)[340] = {57 56 55 53 48 83 ec 78 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 62 40 80 fd 02 0f 85 a3 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 20 c4 c1 7a 6f 00 c5 fa 7f 44 24 30 4c 8d 44 24 30 49 8b 10 45 8b 40 08 48 8d 4c 24 20 48 8b 01 8b 49 08 44 3b c1 77 6c 48 8b c8 4d 63 c0 49 d1 e0 e8 e2 7a 67 4e 48 8b fb e8 1a 4a be 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 49 8b 00 48 8b 16 c5 fc 57 c0 c5 fd 11 44 24 40 c5 ff f0 00 c5 fd 11 44 24 40 c5 fd 10 44 24 40 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb e8 d5 49 be 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 e8 df 42 0d ff cc 48 b9 a0 6a 04 c8 f7 7f 00 00 e8 cf 57 be 5e 48 8b f0 40 88 6e 08 48 b9 38 87 71 c7 f7 7f 00 00 e8 f9 da b8 5e 48 8b f8 48 b9 20 96 98 c7 f7 7f 00 00 e8 a7 57 be 5e 48 8b d8 b9 4c 04 00 00 48 ba 00 7c b3 c7 f7 7f 00 00 e8 90 f0 d0 5e 48 8b e8 48 8b cf e8 e5 4e 0e ff 8b c8 e8 36 20 0e ff 4c 8b c0 48 8b cd 48 8b d6 e8 f8 2b 0c ff 48 8b d0 48 8b cb e8 25 8d 0e ff 48 8b cb e8 ad a3 b5 5e cc}
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
0069h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 7a 67 4e}
006eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0071h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 4a be 5e}
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
00b6h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 49 be 5e}
00bbh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00bdh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00c0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c3h add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
00c7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00cah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00cbh ret                                     ; RET || C3 || encoded[1]{c3}
00cch call 7ff7c77557b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 42 0d ff}
00d1h int 3                                   ; INT3 || CC || encoded[1]{cc}
00d2h mov rcx,7ff7c8046aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6a 04 c8 f7 7f 00 00}
00dch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 57 be 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00e8h mov rcx,7ff7c7718738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 71 c7 f7 7f 00 00}
00f2h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 da b8 5e}
00f7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00fah mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
0104h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 57 be 5e}
0109h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
010ch mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0111h mov rdx,7ff7c7b37c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 7c b3 c7 f7 7f 00 00}
011bh call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 f0 d0 5e}
0120h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0123h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0126h call 7ff7c7766410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 4e 0e ff}
012bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
012dh call 7ff7c7763568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 20 0e ff}
0132h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0135h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0138h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
013bh call 7ff7c7744138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 2b 0c ff}
0140h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0143h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0146h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 8d 0e ff}
014bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
014eh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad a3 b5 5e}
0153h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> eval<uint>(UnaryBitLogicKind:byte kind, BitMatrix<uint> A, ref BitMatrix<uint> Z)
; eval_g[32u](UnaryBitLogicKind~8u,bm32x32u,bm32x32u~ref)[377] = {57 56 55 53 48 83 ec 78 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 67 40 80 fd 02 0f 85 c8 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 20 c4 c1 7a 6f 00 c5 fa 7f 44 24 30 4c 8d 44 24 30 49 8b 10 45 8b 40 08 48 8d 4c 24 20 48 8b 01 8b 49 08 44 3b c1 0f 87 8d 00 00 00 48 8b c8 4d 63 c0 49 c1 e0 02 e8 5d 79 67 4e 48 8b fb e8 95 48 be 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 49 8b 00 48 8b 16 33 c9 45 33 c0 4d 63 c8 49 c1 e1 02 4e 8d 14 08 c5 fc 57 c0 c5 fd 11 44 24 40 c4 c1 7f f0 02 c5 fd 11 44 24 40 c5 fd 10 44 24 40 c5 fd 76 c8 c5 fd ef c1 4c 03 ca c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c bf 48 8b fb e8 30 48 be 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 e8 3a 41 0d ff cc 48 b9 a0 6a 04 c8 f7 7f 00 00 e8 2a 56 be 5e 48 8b f0 40 88 6e 08 48 b9 d8 96 71 c7 f7 7f 00 00 e8 54 d9 b8 5e 48 8b f8 48 b9 20 96 98 c7 f7 7f 00 00 e8 02 56 be 5e 48 8b d8 b9 4c 04 00 00 48 ba 00 7c b3 c7 f7 7f 00 00 e8 eb ee d0 5e 48 8b e8 48 8b cf e8 40 4d 0e ff 8b c8 e8 91 1e 0e ff 4c 8b c0 48 8b cd 48 8b d6 e8 53 2a 0c ff 48 8b d0 48 8b cb e8 80 8b 0e ff 48 8b cb e8 08 a2 b5 5e cc}
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
006eh call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 79 67 4e}
0073h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0076h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 48 be 5e}
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
00dbh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 48 be 5e}
00e0h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00e2h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00e5h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00e8h add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
00ech pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00edh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00eeh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00efh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f0h ret                                     ; RET || C3 || encoded[1]{c3}
00f1h call 7ff7c77557b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 41 0d ff}
00f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
00f7h mov rcx,7ff7c8046aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6a 04 c8 f7 7f 00 00}
0101h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 56 be 5e}
0106h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0109h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
010dh mov rcx,7ff7c77196d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 71 c7 f7 7f 00 00}
0117h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 d9 b8 5e}
011ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
011fh mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 56 be 5e}
012eh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0131h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0136h mov rdx,7ff7c7b37c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 7c b3 c7 f7 7f 00 00}
0140h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb ee d0 5e}
0145h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0148h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
014bh call 7ff7c7766410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 4d 0e ff}
0150h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0152h call 7ff7c7763568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 1e 0e ff}
0157h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
015ah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
015dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0160h call 7ff7c7744138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 2a 0c ff}
0165h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0168h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
016bh call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 8b 0e ff}
0170h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0173h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 a2 b5 5e}
0178h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, BitMatrix<ulong> A, ref BitMatrix<ulong> Z)
; eval_g[64u](UnaryBitLogicKind~8u,bm64x64u,bm64x64u~ref)[378] = {57 56 55 53 48 83 ec 78 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 67 40 80 fd 02 0f 85 c9 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 20 c4 c1 7a 6f 00 c5 fa 7f 44 24 30 4c 8d 44 24 30 49 8b 10 45 8b 40 08 48 8d 4c 24 20 48 8b 01 8b 49 08 44 3b c1 0f 87 8e 00 00 00 48 8b c8 4d 63 c0 49 c1 e0 03 e8 bd 77 67 4e 48 8b fb e8 f5 46 be 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 49 8b 00 48 8b 16 33 c9 45 33 c0 4d 63 c8 49 c1 e1 03 4e 8d 14 08 c5 fc 57 c0 c5 fd 11 44 24 40 c4 c1 7f f0 02 c5 fd 11 44 24 40 c5 fd 10 44 24 40 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c be 48 8b fb e8 8f 46 be 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 e8 99 3f 0d ff cc 48 b9 a0 6a 04 c8 f7 7f 00 00 e8 89 54 be 5e 48 8b f0 40 88 6e 08 48 b9 78 a6 71 c7 f7 7f 00 00 e8 b3 d7 b8 5e 48 8b f8 48 b9 20 96 98 c7 f7 7f 00 00 e8 61 54 be 5e 48 8b d8 b9 4c 04 00 00 48 ba 00 7c b3 c7 f7 7f 00 00 e8 4a ed d0 5e 48 8b e8 48 8b cf e8 9f 4b 0e ff 8b c8 e8 f0 1c 0e ff 4c 8b c0 48 8b cd 48 8b d6 e8 b2 28 0c ff 48 8b d0 48 8b cb e8 df 89 0e ff 48 8b cb e8 67 a0 b5 5e cc}
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
006eh call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 77 67 4e}
0073h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0076h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 46 be 5e}
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
00dch call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 46 be 5e}
00e1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00e3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00e6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00e9h add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
00edh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00eeh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00efh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f1h ret                                     ; RET || C3 || encoded[1]{c3}
00f2h call 7ff7c77557b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 3f 0d ff}
00f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
00f8h mov rcx,7ff7c8046aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6a 04 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 54 be 5e}
0107h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
010ah mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
010eh mov rcx,7ff7c771a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 71 c7 f7 7f 00 00}
0118h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 d7 b8 5e}
011dh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0120h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
012ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 54 be 5e}
012fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0132h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0137h mov rdx,7ff7c7b37c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 7c b3 c7 f7 7f 00 00}
0141h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a ed d0 5e}
0146h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0149h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
014ch call 7ff7c7766410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 4b 0e ff}
0151h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0153h call 7ff7c7763568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 1c 0e ff}
0158h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
015bh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
015eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0161h call 7ff7c7744138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 28 0c ff}
0166h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0169h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
016ch call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 89 0e ff}
0171h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0174h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 a0 b5 5e}
0179h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> eval<byte>(BinaryBitLogicKind:byte kind, BitMatrix<byte> A, BitMatrix<byte> B)
; eval_g[8u](BinaryBitLogicKind~8u,bm8x8u,bm8x8u)[113] = {41 56 57 56 55 53 48 81 ec f0 00 00 00 48 8b f1 48 8d 7c 24 28 b9 30 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 44 8b f2 49 8b f0 49 8b e9 41 0f b6 ce 83 f9 0f 0f 87 82 03 00 00 8b c9 48 8d 15 fd 03 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 b9 ff 00 00 00 88 8c 24 e8 00 00 00 48 8b cb 0f b6 94 24 e8 00 00 00 e8 8a dd ff ff 48 8b c3}
; TermCode = CTC_RET_Zx7
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
0069h call 7ff7c8681c38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a dd ff ff}
006eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, BitMatrix<ushort> A, BitMatrix<ushort> B)
; eval_g[16u](BinaryBitLogicKind~8u,bm16x16u,bm16x16u)[1963] = {41 56 57 56 55 53 48 81 ec 50 04 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 0a 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 44 8b f2 49 8b f0 49 8b e9 41 0f b6 ce 83 f9 0f 0f 87 ec 06 00 00 8b c9 48 8d 15 fa 07 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 b9 ff ff 00 00 66 89 8c 24 48 04 00 00 48 8b cb 0f b7 94 24 48 04 00 00 e8 9e f5 ff ff 48 8b c3 e9 9e 06 00 00 48 8b cb e8 56 a7 fd ff 48 8b c3 e9 8e 06 00 00 48 8d 8c 24 38 04 00 00 e8 41 a7 fd ff 48 8b 06 48 8b 55 00 48 8d 8c 24 38 04 00 00 48 8b 09 c5 ff f0 00 c5 ff f0 0a c5 fd db c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 38 04 00 00 e8 d7 16 be 5e 48 a5 48 8b c3 e9 45 06 00 00 48 8d 8c 24 28 04 00 00 e8 f8 a6 fd ff 48 8b 06 48 8b 55 00 48 8d 8c 24 28 04 00 00 48 8b 09 c5 ff f0 00 c5 ff f0 0a c5 fd db c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 28 04 00 00 e8 86 16 be 5e 48 a5 48 8b c3 e9 f4 05 00 00 48 8d 8c 24 18 04 00 00 e8 a7 a6 fd ff 48 8b 06 48 8b 55 00 48 8d 8c 24 18 04 00 00 48 8b 09 c5 ff f0 00 c5 fd 11 84 24 e0 03 00 00 c5 ff f0 02 c5 fd 11 84 24 c0 03 00 00 c5 fd 10 84 24 e0 03 00 00 c5 fd 10 8c 24 c0 03 00 00 c5 fd eb c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 18 04 00 00 e8 19 16 be 5e 48 a5 48 8b c3 e9 87 05 00 00 48 8d 8c 24 b0 03 00 00 e8 3a a6 fd ff 48 8b 06 48 8b 55 00 48 8d 8c 24 b0 03 00 00 48 8b 09 c5 ff f0 00 c5 fd 11 84 24 80 03 00 00 c5 ff f0 02 c5 fd 11 84 24 60 03 00 00 c5 fd 10 84 24 80 03 00 00 c5 fd 10 8c 24 60 03 00 00 c5 fd eb c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 b0 03 00 00 e8 a4 15 be 5e 48 a5 48 8b c3 e9 12 05 00 00 48 8d 8c 24 50 03 00 00 e8 c5 a5 fd ff 48 8b 06 48 8b 55 00 48 8d 8c 24 50 03 00 00 48 8b 09 c5 ff f0 00 c5 ff f0 0a c5 fd ef c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 50 03 00 00 e8 5b 15 be 5e 48 a5 48 8b c3 e9 c9 04 00 00 48 8d 8c 24 40 03 00 00 e8 7c a5 fd ff c5 fa 6f 06 c5 fa 7f 84 24 30 03 00 00 c5 fa 6f 84 24 30 03 00 00 c5 fa 7f 84 24 20 03 00 00 48 8b 84 24 20 03 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 10 03 00 00 c5 fa 6f 84 24 10 03 00 00 c5 fa 7f 84 24 00 03 00 00 48 8b 94 24 00 03 00 00 c5 fa 6f 84 24 40 03 00 00 c5 fa 7f 84 24 f0 02 00 00 c5 fa 6f 84 24 f0 02 00 00 c5 fa 7f 84 24 e0 02 00 00 48 8b 8c 24 e0 02 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd ef c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 40 03 00 00 e8 a1 14 be 5e 48 a5 48 8b c3 e9 0f 04 00 00 48 8b fb e8 8f 14 be 5e 48 a5 48 8b c3 e9 fd 03 00 00 48 8b fb 48 8b f5 e8 7a 14 be 5e 48 a5 48 8b c3 e9 e8 03 00 00 48 8d 8c 24 d0 02 00 00 e8 9b a4 fd ff c5 fa 6f 06 c5 fa 7f 84 24 c0 02 00 00 c5 fa 6f 84 24 c0 02 00 00 c5 fa 7f 84 24 b0 02 00 00 48 8b 84 24 b0 02 00 00 c5 fa 6f 84 24 d0 02 00 00 c5 fa 7f 84 24 a0 02 00 00 c5 fa 6f 84 24 a0 02 00 00 c5 fa 7f 84 24 90 02 00 00 48 8b 94 24 90 02 00 00 c5 ff f0 00 c5 fd 11 84 24 60 02 00 00 c5 fd 10 84 24 60 02 00 00 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb 48 8d b4 24 d0 02 00 00 e8 de 13 be 5e 48 a5 48 8b c3 e9 4c 03 00 00 48 8d 8c 24 50 02 00 00 e8 ff a3 fd ff c5 fa 6f 45 00 c5 fa 7f 84 24 40 02 00 00 c5 fa 6f 84 24 40 02 00 00 c5 fa 7f 84 24 30 02 00 00 48 8b 84 24 30 02 00 00 c5 fa 6f 84 24 50 02 00 00 c5 fa 7f 84 24 20 02 00 00 c5 fa 6f 84 24 20 02 00 00 c5 fa 7f 84 24 10 02 00 00 48 8b 94 24 10 02 00 00 c5 ff f0 00 c5 fd 11 84 24 e0 01 00 00 c5 fd 10 84 24 e0 01 00 00 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb 48 8d b4 24 50 02 00 00 e8 41 13 be 5e 48 a5 48 8b c3 e9 af 02 00 00 48 8d 8c 24 d0 01 00 00 e8 62 a3 fd ff c5 fa 6f 06 c5 fa 7f 84 24 c0 01 00 00 c5 fa 6f 84 24 c0 01 00 00 c5 fa 7f 84 24 b0 01 00 00 48 8b 84 24 b0 01 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 a0 01 00 00 c5 fa 6f 84 24 a0 01 00 00 c5 fa 7f 84 24 90 01 00 00 48 8b 94 24 90 01 00 00 c5 fa 6f 84 24 d0 01 00 00 c5 fa 7f 84 24 80 01 00 00 c5 fa 6f 84 24 80 01 00 00 c5 fa 7f 84 24 70 01 00 00 48 8b 8c 24 70 01 00 00 c5 ff f0 00 c5 ff f0 0a c5 f5 75 d1 c5 f5 ef ca c5 fd eb c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 d0 01 00 00 e8 87 12 be 5e 48 a5 48 8b c3 e9 f5 01 00 00 48 8d 8c 24 60 01 00 00 e8 a8 a2 fd ff c5 fa 6f 06 c5 fa 7f 84 24 50 01 00 00 c5 fa 6f 84 24 50 01 00 00 c5 fa 7f 84 24 40 01 00 00 48 8b 84 24 40 01 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 30 01 00 00 c5 fa 6f 84 24 30 01 00 00 c5 fa 7f 84 24 20 01 00 00 48 8b 94 24 20 01 00 00 c5 fa 6f 84 24 60 01 00 00 c5 fa 7f 84 24 10 01 00 00 c5 fa 6f 84 24 10 01 00 00 c5 fa 7f 84 24 00 01 00 00 48 8b 8c 24 00 01 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd df c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 60 01 00 00 e8 d5 11 be 5e 48 a5 48 8b c3 e9 43 01 00 00 48 8d 8c 24 f0 00 00 00 e8 f6 a1 fd ff c5 fa 6f 06 c5 fa 7f 84 24 e0 00 00 00 c5 fa 6f 84 24 e0 00 00 00 c5 fa 7f 84 24 d0 00 00 00 48 8b 84 24 d0 00 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 c0 00 00 00 c5 fa 6f 84 24 c0 00 00 00 c5 fa 7f 84 24 b0 00 00 00 48 8b 94 24 b0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 a0 00 00 00 c5 fa 6f 84 24 a0 00 00 00 c5 fa 7f 84 24 90 00 00 00 48 8b 8c 24 90 00 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd 75 d0 c5 fd ef c2 c5 fd eb c1 c5 fe 7f 01 48 8b fb 48 8d b4 24 f0 00 00 00 e8 1b 11 be 5e 48 a5 48 8b c3 e9 89 00 00 00 48 8d 8c 24 80 00 00 00 e8 3c a1 fd ff c5 fa 6f 06 c5 fa 7f 44 24 70 c5 fa 6f 44 24 70 c5 fa 7f 44 24 60 48 8b 44 24 60 c5 fa 6f 45 00 c5 fa 7f 44 24 50 c5 fa 6f 44 24 50 c5 fa 7f 44 24 40 48 8b 54 24 40 c5 fa 6f 84 24 80 00 00 00 c5 fa 7f 44 24 30 c5 fa 6f 44 24 30 c5 fa 7f 44 24 20 48 8b 4c 24 20 c5 ff f0 00 c5 ff f0 0a c5 f5 df c0 c5 fe 7f 01 48 8b fb 48 8d b4 24 80 00 00 00 e8 8d 10 be 5e 48 a5 48 8b c3 c5 f8 77 48 81 c4 50 04 00 00 5b 5d 5e 5f 41 5e c3 48 b9 f0 6b 04 c8 f7 7f 00 00 e8 88 1e be 5e 48 8b f0 44 88 76 08 48 b9 38 87 71 c7 f7 7f 00 00 e8 b2 a1 b8 5e 48 8b f8 48 b9 20 96 98 c7 f7 7f 00 00 e8 60 1e be 5e 48 8b d8 b9 4c 04 00 00 48 ba 00 7c b3 c7 f7 7f 00 00 e8 49 b7 d0 5e 48 8b e8 48 8b cf e8 9e 15 0e ff 8b c8 e8 ef e6 0d ff 4c 8b c0 48 8b cd 48 8b d6 e8 b1 f2 0b ff 48 8b d0 48 8b cb e8 de 53 0e ff 48 8b cb e8 66 6a b5 5e cc}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,450h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 50 04 00 00}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0013h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0018h mov ecx,10ah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0a 01 00 00}
001dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001fh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0021h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0024h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0027h mov r14d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b f2}
002ah mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
002dh mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
0030h movzx ecx,r14b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ce}
0034h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0037h ja near ptr 0729h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ec 06 00 00}
003dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
003fh lea rdx,[rip+7fah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 fa 07 00 00}
0046h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0049h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
0050h add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
0053h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0055h mov ecx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff ff 00 00}
005ah mov [rsp+448h],cx                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 8c 24 48 04 00 00}
0062h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0065h movzx edx,word ptr [rsp+448h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[8]{0f b7 94 24 48 04 00 00}
006dh call 7ff7c8683d00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e f5 ff ff}
0072h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0075h jmp near ptr 0718h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 06 00 00}
007ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
007dh call 7ff7c865eec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 a7 fd ff}
0082h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0085h jmp near ptr 0718h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 06 00 00}
008ah lea rcx,[rsp+438h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 38 04 00 00}
0092h call 7ff7c865eec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 a7 fd ff}
0097h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
009ah mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
009eh lea rcx,[rsp+438h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 38 04 00 00}
00a6h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
00a9h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
00adh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
00b1h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
00b5h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
00b9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00bch lea rsi,[rsp+438h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 38 04 00 00}
00c4h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 16 be 5e}
00c9h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00cbh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00ceh jmp near ptr 0718h                      ; JMP rel32 || E9 cd || encoded[5]{e9 45 06 00 00}
00d3h lea rcx,[rsp+428h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 28 04 00 00}
00dbh call 7ff7c865eec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 a6 fd ff}
00e0h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
00e3h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
00e7h lea rcx,[rsp+428h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 28 04 00 00}
00efh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
00f2h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
00f6h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
00fah vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
00feh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0102h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0106h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
010ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
010dh lea rsi,[rsp+428h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 28 04 00 00}
0115h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 16 be 5e}
011ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
011ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
011fh jmp near ptr 0718h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f4 05 00 00}
0124h lea rcx,[rsp+418h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 18 04 00 00}
012ch call 7ff7c865eec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 a6 fd ff}
0131h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0134h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
0138h lea rcx,[rsp+418h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 18 04 00 00}
0140h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0143h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0147h vmovupd [rsp+3e0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 e0 03 00 00}
0150h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0154h vmovupd [rsp+3c0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 c0 03 00 00}
015dh vmovupd ymm0,[rsp+3e0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 e0 03 00 00}
0166h vmovupd ymm1,[rsp+3c0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 c0 03 00 00}
016fh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0173h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0177h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
017ah lea rsi,[rsp+418h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 18 04 00 00}
0182h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 16 be 5e}
0187h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0189h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
018ch jmp near ptr 0718h                      ; JMP rel32 || E9 cd || encoded[5]{e9 87 05 00 00}
0191h lea rcx,[rsp+3b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 03 00 00}
0199h call 7ff7c865eec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a a6 fd ff}
019eh mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
01a1h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
01a5h lea rcx,[rsp+3b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 03 00 00}
01adh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
01b0h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
01b4h vmovupd [rsp+380h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 03 00 00}
01bdh vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
01c1h vmovupd [rsp+360h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 03 00 00}
01cah vmovupd ymm0,[rsp+380h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 80 03 00 00}
01d3h vmovupd ymm1,[rsp+360h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 60 03 00 00}
01dch vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01e0h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
01e4h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
01e8h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
01ech mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01efh lea rsi,[rsp+3b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 b0 03 00 00}
01f7h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 15 be 5e}
01fch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01feh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0201h jmp near ptr 0718h                      ; JMP rel32 || E9 cd || encoded[5]{e9 12 05 00 00}
0206h lea rcx,[rsp+350h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 50 03 00 00}
020eh call 7ff7c865eec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 a5 fd ff}
0213h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0216h mov rdx,[rbp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 00}
021ah lea rcx,[rsp+350h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 50 03 00 00}
0222h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0225h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0229h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
022dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0231h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0235h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0238h lea rsi,[rsp+350h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 50 03 00 00}
0240h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 15 be 5e}
0245h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0247h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
024ah jmp near ptr 0718h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c9 04 00 00}
024fh lea rcx,[rsp+340h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 40 03 00 00}
0257h call 7ff7c865eec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c a5 fd ff}
025ch vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0260h vmovdqu xmmword ptr [rsp+330h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 03 00 00}
0269h vmovdqu xmm0,xmmword ptr [rsp+330h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 03 00 00}
0272h vmovdqu xmmword ptr [rsp+320h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 03 00 00}
027bh mov rax,[rsp+320h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 20 03 00 00}
0283h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
0288h vmovdqu xmmword ptr [rsp+310h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 03 00 00}
0291h vmovdqu xmm0,xmmword ptr [rsp+310h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 03 00 00}
029ah vmovdqu xmmword ptr [rsp+300h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 03 00 00}
02a3h mov rdx,[rsp+300h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 03 00 00}
02abh vmovdqu xmm0,xmmword ptr [rsp+340h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 03 00 00}
02b4h vmovdqu xmmword ptr [rsp+2f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 02 00 00}
02bdh vmovdqu xmm0,xmmword ptr [rsp+2f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 02 00 00}
02c6h vmovdqu xmmword ptr [rsp+2e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 02 00 00}
02cfh mov rcx,[rsp+2e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 e0 02 00 00}
02d7h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
02dbh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
02dfh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
02e3h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
02e7h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
02ebh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
02efh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
02f2h lea rsi,[rsp+340h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 40 03 00 00}
02fah call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 14 be 5e}
02ffh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0301h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0304h jmp near ptr 0718h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0f 04 00 00}
0309h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
030ch call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 14 be 5e}
0311h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0313h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0316h jmp near ptr 0718h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fd 03 00 00}
031bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
031eh mov rsi,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f5}
0321h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 14 be 5e}
0326h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0328h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
032bh jmp near ptr 0718h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e8 03 00 00}
0330h lea rcx,[rsp+2d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 02 00 00}
0338h call 7ff7c865eec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b a4 fd ff}
033dh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0341h vmovdqu xmmword ptr [rsp+2c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 02 00 00}
034ah vmovdqu xmm0,xmmword ptr [rsp+2c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 02 00 00}
0353h vmovdqu xmmword ptr [rsp+2b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 02 00 00}
035ch mov rax,[rsp+2b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 b0 02 00 00}
0364h vmovdqu xmm0,xmmword ptr [rsp+2d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 02 00 00}
036dh vmovdqu xmmword ptr [rsp+2a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 02 00 00}
0376h vmovdqu xmm0,xmmword ptr [rsp+2a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 02 00 00}
037fh vmovdqu xmmword ptr [rsp+290h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 02 00 00}
0388h mov rdx,[rsp+290h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 90 02 00 00}
0390h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0394h vmovupd [rsp+260h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 02 00 00}
039dh vmovupd ymm0,[rsp+260h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 60 02 00 00}
03a6h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
03aah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
03aeh vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
03b2h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
03b5h lea rsi,[rsp+2d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 d0 02 00 00}
03bdh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 13 be 5e}
03c2h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
03c4h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
03c7h jmp near ptr 0718h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4c 03 00 00}
03cch lea rcx,[rsp+250h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 50 02 00 00}
03d4h call 7ff7c865eec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff a3 fd ff}
03d9h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
03deh vmovdqu xmmword ptr [rsp+240h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 02 00 00}
03e7h vmovdqu xmm0,xmmword ptr [rsp+240h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 02 00 00}
03f0h vmovdqu xmmword ptr [rsp+230h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 02 00 00}
03f9h mov rax,[rsp+230h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 30 02 00 00}
0401h vmovdqu xmm0,xmmword ptr [rsp+250h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 02 00 00}
040ah vmovdqu xmmword ptr [rsp+220h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 02 00 00}
0413h vmovdqu xmm0,xmmword ptr [rsp+220h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 02 00 00}
041ch vmovdqu xmmword ptr [rsp+210h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 02 00 00}
0425h mov rdx,[rsp+210h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 10 02 00 00}
042dh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0431h vmovupd [rsp+1e0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 e0 01 00 00}
043ah vmovupd ymm0,[rsp+1e0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 e0 01 00 00}
0443h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0447h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
044bh vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
044fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0452h lea rsi,[rsp+250h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 50 02 00 00}
045ah call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 13 be 5e}
045fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0461h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0464h jmp near ptr 0718h                      ; JMP rel32 || E9 cd || encoded[5]{e9 af 02 00 00}
0469h lea rcx,[rsp+1d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 01 00 00}
0471h call 7ff7c865eec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 a3 fd ff}
0476h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
047ah vmovdqu xmmword ptr [rsp+1c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 01 00 00}
0483h vmovdqu xmm0,xmmword ptr [rsp+1c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 01 00 00}
048ch vmovdqu xmmword ptr [rsp+1b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 01 00 00}
0495h mov rax,[rsp+1b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 b0 01 00 00}
049dh vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
04a2h vmovdqu xmmword ptr [rsp+1a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 01 00 00}
04abh vmovdqu xmm0,xmmword ptr [rsp+1a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 01 00 00}
04b4h vmovdqu xmmword ptr [rsp+190h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 01 00 00}
04bdh mov rdx,[rsp+190h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 90 01 00 00}
04c5h vmovdqu xmm0,xmmword ptr [rsp+1d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 01 00 00}
04ceh vmovdqu xmmword ptr [rsp+180h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 01 00 00}
04d7h vmovdqu xmm0,xmmword ptr [rsp+180h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 01 00 00}
04e0h vmovdqu xmmword ptr [rsp+170h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 01 00 00}
04e9h mov rcx,[rsp+170h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 70 01 00 00}
04f1h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
04f5h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
04f9h vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
04fdh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0501h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0505h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0509h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
050ch lea rsi,[rsp+1d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 d0 01 00 00}
0514h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 12 be 5e}
0519h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
051bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
051eh jmp near ptr 0718h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f5 01 00 00}
0523h lea rcx,[rsp+160h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 60 01 00 00}
052bh call 7ff7c865eec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 a2 fd ff}
0530h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0534h vmovdqu xmmword ptr [rsp+150h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 01 00 00}
053dh vmovdqu xmm0,xmmword ptr [rsp+150h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 01 00 00}
0546h vmovdqu xmmword ptr [rsp+140h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 01 00 00}
054fh mov rax,[rsp+140h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 40 01 00 00}
0557h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
055ch vmovdqu xmmword ptr [rsp+130h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 01 00 00}
0565h vmovdqu xmm0,xmmword ptr [rsp+130h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 01 00 00}
056eh vmovdqu xmmword ptr [rsp+120h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 01 00 00}
0577h mov rdx,[rsp+120h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 20 01 00 00}
057fh vmovdqu xmm0,xmmword ptr [rsp+160h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 01 00 00}
0588h vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
0591h vmovdqu xmm0,xmmword ptr [rsp+110h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 01 00 00}
059ah vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
05a3h mov rcx,[rsp+100h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 00 01 00 00}
05abh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
05afh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
05b3h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
05b7h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
05bbh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
05beh lea rsi,[rsp+160h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 60 01 00 00}
05c6h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 11 be 5e}
05cbh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
05cdh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
05d0h jmp near ptr 0718h                      ; JMP rel32 || E9 cd || encoded[5]{e9 43 01 00 00}
05d5h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
05ddh call 7ff7c865eec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 a1 fd ff}
05e2h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
05e6h vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
05efh vmovdqu xmm0,xmmword ptr [rsp+0e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 00 00 00}
05f8h vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
0601h mov rax,[rsp+0d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 d0 00 00 00}
0609h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
060eh vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
0617h vmovdqu xmm0,xmmword ptr [rsp+0c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 00 00 00}
0620h vmovdqu xmmword ptr [rsp+0b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 00 00 00}
0629h mov rdx,[rsp+0b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 b0 00 00 00}
0631h vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
063ah vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
0643h vmovdqu xmm0,xmmword ptr [rsp+0a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 00 00 00}
064ch vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
0655h mov rcx,[rsp+90h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 90 00 00 00}
065dh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0661h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0665h vpcmpeqw ymm2,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 d0}
0669h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
066dh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0671h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0675h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0678h lea rsi,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 f0 00 00 00}
0680h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 11 be 5e}
0685h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0687h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
068ah jmp near ptr 0718h                      ; JMP rel32 || E9 cd || encoded[5]{e9 89 00 00 00}
068fh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0697h call 7ff7c865eec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c a1 fd ff}
069ch vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
06a0h vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
06a6h vmovdqu xmm0,xmmword ptr [rsp+70h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 70}
06ach vmovdqu xmmword ptr [rsp+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 60}
06b2h mov rax,[rsp+60h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 60}
06b7h vmovdqu xmm0,xmmword ptr [rbp]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c5 fa 6f 45 00}
06bch vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
06c2h vmovdqu xmm0,xmmword ptr [rsp+50h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 50}
06c8h vmovdqu xmmword ptr [rsp+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 40}
06ceh mov rdx,[rsp+40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 40}
06d3h vmovdqu xmm0,xmmword ptr [rsp+80h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 00 00 00}
06dch vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
06e2h vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
06e8h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
06eeh mov rcx,[rsp+20h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 4c 24 20}
06f3h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
06f7h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
06fbh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
06ffh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0703h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0706h lea rsi,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d b4 24 80 00 00 00}
070eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 10 be 5e}
0713h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0715h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0718h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
071bh add rsp,450h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 50 04 00 00}
0722h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0723h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0724h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0725h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0726h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0728h ret                                     ; RET || C3 || encoded[1]{c3}
0729h mov rcx,7ff7c8046bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 04 c8 f7 7f 00 00}
0733h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 1e be 5e}
0738h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
073bh mov [rsi+8],r14b                        ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 76 08}
073fh mov rcx,7ff7c7718738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 71 c7 f7 7f 00 00}
0749h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 a1 b8 5e}
074eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0751h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
075bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 1e be 5e}
0760h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0763h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0768h mov rdx,7ff7c7b37c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 7c b3 c7 f7 7f 00 00}
0772h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 b7 d0 5e}
0777h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
077ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
077dh call 7ff7c7766410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 15 0e ff}
0782h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0784h call 7ff7c7763568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef e6 0d ff}
0789h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
078ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
078fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0792h call 7ff7c7744138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 f2 0b ff}
0797h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
079ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
079dh call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 53 0e ff}
07a2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
07a5h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 6a b5 5e}
07aah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> eval<uint>(BinaryBitLogicKind:byte kind, BitMatrix<uint> A, BitMatrix<uint> B)
; eval_g[32u](BinaryBitLogicKind~8u,bm32x32u,bm32x32u)[2635] = {41 56 57 56 55 53 48 81 ec 80 05 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 54 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 44 8b f2 49 8b f0 49 8b e9 41 0f b6 ce 83 f9 0f 0f 87 df 09 00 00 8b c9 48 8d 15 b2 0a 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 c7 84 24 70 05 00 00 ff ff ff ff 8b 8c 24 70 05 00 00 89 8c 24 78 05 00 00 48 8b cb 8b 94 24 78 05 00 00 e8 63 f1 ff ff 48 8b c3 e9 86 09 00 00 48 8b cb e8 6b 99 fd ff 48 8b c3 e9 76 09 00 00 48 8d 8c 24 60 05 00 00 e8 56 99 fd ff c5 fa 6f 06 c5 fa 7f 84 24 50 05 00 00 c5 fa 6f 84 24 50 05 00 00 c5 fa 7f 84 24 40 05 00 00 48 8b 84 24 40 05 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 30 05 00 00 c5 fa 6f 84 24 30 05 00 00 c5 fa 7f 84 24 20 05 00 00 48 8b 94 24 20 05 00 00 c5 fa 6f 84 24 60 05 00 00 c5 fa 7f 84 24 10 05 00 00 c5 fa 6f 84 24 10 05 00 00 c5 fa 7f 84 24 00 05 00 00 48 8b 8c 24 00 05 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd db c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c cf 48 8b fb 48 8d b4 24 60 05 00 00 e8 3c 08 be 5e 48 a5 48 8b c3 e9 9d 08 00 00 48 8d 8c 24 f0 04 00 00 e8 7d 98 fd ff c5 fa 6f 06 c5 fa 7f 84 24 e0 04 00 00 c5 fa 6f 84 24 e0 04 00 00 c5 fa 7f 84 24 d0 04 00 00 48 8b 84 24 d0 04 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 c0 04 00 00 c5 fa 6f 84 24 c0 04 00 00 c5 fa 7f 84 24 b0 04 00 00 48 8b 94 24 b0 04 00 00 c5 fa 6f 84 24 f0 04 00 00 c5 fa 7f 84 24 a0 04 00 00 c5 fa 6f 84 24 a0 04 00 00 c5 fa 7f 84 24 90 04 00 00 48 8b 8c 24 90 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd db c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb 48 8d b4 24 f0 04 00 00 e8 5b 07 be 5e 48 a5 48 8b c3 e9 bc 07 00 00 48 8d 8c 24 80 04 00 00 e8 9c 97 fd ff c5 fa 6f 06 c5 fa 7f 84 24 70 04 00 00 c5 fa 6f 84 24 70 04 00 00 c5 fa 7f 84 24 60 04 00 00 48 8b 84 24 60 04 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 50 04 00 00 c5 fa 6f 84 24 50 04 00 00 c5 fa 7f 84 24 40 04 00 00 48 8b 94 24 40 04 00 00 c5 fa 6f 84 24 80 04 00 00 c5 fa 7f 84 24 30 04 00 00 c5 fa 6f 84 24 30 04 00 00 c5 fa 7f 84 24 20 04 00 00 48 8b 8c 24 20 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c5 fc 57 c0 c5 fd 11 84 24 f0 03 00 00 c5 fc 57 c0 c5 fd 11 84 24 d0 03 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 f0 03 00 00 c5 ff f0 06 c5 fd 11 84 24 d0 03 00 00 c5 fd 10 84 24 f0 03 00 00 c5 fd 10 8c 24 d0 03 00 00 c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c 91 48 8b fb 48 8d b4 24 80 04 00 00 e8 44 06 be 5e 48 a5 48 8b c3 e9 a5 06 00 00 48 8d 8c 24 c0 03 00 00 e8 85 96 fd ff c5 fa 6f 06 c5 fa 7f 84 24 b0 03 00 00 c5 fa 6f 84 24 b0 03 00 00 c5 fa 7f 84 24 a0 03 00 00 48 8b 84 24 a0 03 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 90 03 00 00 c5 fa 6f 84 24 90 03 00 00 c5 fa 7f 84 24 80 03 00 00 48 8b 94 24 80 03 00 00 c5 fa 6f 84 24 c0 03 00 00 c5 fa 7f 84 24 70 03 00 00 c5 fa 6f 84 24 70 03 00 00 c5 fa 7f 84 24 60 03 00 00 48 8b 8c 24 60 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c5 fc 57 c0 c5 fd 11 84 24 30 03 00 00 c5 fc 57 c0 c5 fd 11 84 24 10 03 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 30 03 00 00 c5 ff f0 06 c5 fd 11 84 24 10 03 00 00 c5 fd 10 84 24 30 03 00 00 c5 fd 10 8c 24 10 03 00 00 c5 fd eb c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c 89 48 8b fb 48 8d b4 24 c0 03 00 00 e8 25 05 be 5e 48 a5 48 8b c3 e9 86 05 00 00 48 8d 8c 24 00 03 00 00 e8 66 95 fd ff c5 fa 6f 06 c5 fa 7f 84 24 f0 02 00 00 c5 fa 6f 84 24 f0 02 00 00 c5 fa 7f 84 24 e0 02 00 00 48 8b 84 24 e0 02 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 d0 02 00 00 c5 fa 6f 84 24 d0 02 00 00 c5 fa 7f 84 24 c0 02 00 00 48 8b 94 24 c0 02 00 00 c5 fa 6f 84 24 00 03 00 00 c5 fa 7f 84 24 b0 02 00 00 c5 fa 6f 84 24 b0 02 00 00 c5 fa 7f 84 24 a0 02 00 00 48 8b 8c 24 a0 02 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c cf 48 8b fb 48 8d b4 24 00 03 00 00 e8 4c 04 be 5e 48 a5 48 8b c3 e9 ad 04 00 00 48 8d 8c 24 90 02 00 00 e8 8d 94 fd ff c5 fa 6f 06 c5 fa 7f 84 24 80 02 00 00 c5 fa 6f 84 24 80 02 00 00 c5 fa 7f 84 24 70 02 00 00 48 8b 84 24 70 02 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 60 02 00 00 c5 fa 6f 84 24 60 02 00 00 c5 fa 7f 84 24 50 02 00 00 48 8b 94 24 50 02 00 00 c5 fa 6f 84 24 90 02 00 00 c5 fa 7f 84 24 40 02 00 00 c5 fa 6f 84 24 40 02 00 00 c5 fa 7f 84 24 30 02 00 00 48 8b 8c 24 30 02 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd ef c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb 48 8d b4 24 90 02 00 00 e8 6b 03 be 5e 48 a5 48 8b c3 e9 cc 03 00 00 48 8b fb e8 59 03 be 5e 48 a5 48 8b c3 e9 ba 03 00 00 48 8b fb 48 8b f5 e8 44 03 be 5e 48 a5 48 8b c3 e9 a5 03 00 00 48 8d 8c 24 20 02 00 00 e8 85 93 fd ff c5 fa 6f 06 c5 fa 7f 84 24 10 02 00 00 c5 fa 6f 84 24 10 02 00 00 c5 fa 7f 84 24 00 02 00 00 48 8b 84 24 00 02 00 00 c5 fa 6f 84 24 20 02 00 00 c5 fa 7f 84 24 f0 01 00 00 c5 fa 6f 84 24 f0 01 00 00 c5 fa 7f 84 24 e0 01 00 00 48 8b 94 24 e0 01 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c 88 c5 fc 57 c0 c5 fd 11 84 24 b0 01 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 b0 01 00 00 c5 fd 10 84 24 b0 01 00 00 c5 fd 76 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c 8a c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c b6 48 8b fb 48 8d b4 24 20 02 00 00 e8 7b 02 be 5e 48 a5 48 8b c3 e9 dc 02 00 00 48 8d 8c 24 a0 01 00 00 e8 bc 92 fd ff c5 fa 6f 45 00 c5 fa 7f 84 24 90 01 00 00 c5 fa 6f 84 24 90 01 00 00 c5 fa 7f 84 24 80 01 00 00 48 8b 84 24 80 01 00 00 c5 fa 6f 84 24 a0 01 00 00 c5 fa 7f 84 24 70 01 00 00 c5 fa 6f 84 24 70 01 00 00 c5 fa 7f 84 24 60 01 00 00 48 8b 94 24 60 01 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c 88 c5 fc 57 c0 c5 fd 11 84 24 30 01 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 30 01 00 00 c5 fd 10 84 24 30 01 00 00 c5 fd 76 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c 8a c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c b6 48 8b fb 48 8d b4 24 a0 01 00 00 e8 b1 01 be 5e 48 a5 48 8b c3 e9 12 02 00 00 48 8d 8c 24 20 01 00 00 e8 f2 91 fd ff c5 fa 6f 06 c5 fa 7f 84 24 10 01 00 00 c5 fa 6f 84 24 10 01 00 00 c5 fa 7f 84 24 00 01 00 00 48 8b 84 24 00 01 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 f0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 e0 00 00 00 48 8b 94 24 e0 00 00 00 c5 fa 6f 84 24 20 01 00 00 c5 fa 7f 84 24 d0 00 00 00 c5 fa 6f 84 24 d0 00 00 00 c5 fa 7f 84 24 c0 00 00 00 48 8b 8c 24 c0 00 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 f5 76 d1 c5 f5 ef ca c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb 48 8d b4 24 20 01 00 00 e8 d0 00 be 5e 48 a5 48 8b c3 e9 31 01 00 00 48 8d 8c 24 b0 00 00 00 e8 11 91 fd ff c5 fa 6f 06 c5 fa 7f 84 24 a0 00 00 00 c5 fa 6f 84 24 a0 00 00 00 c5 fa 7f 84 24 90 00 00 00 48 8b 84 24 90 00 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 80 00 00 00 c5 fa 6f 84 24 80 00 00 00 c5 fa 7f 44 24 70 48 8b 54 24 70 c5 fa 6f 84 24 b0 00 00 00 c5 fa 7f 44 24 60 c5 fa 6f 44 24 60 c5 fa 7f 44 24 50 48 8b 4c 24 50 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd df c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c cf 48 8b fb 48 8d b4 24 b0 00 00 00 e8 09 00 be 5e 48 a5 48 8b c3 eb 6d 48 8d 4c 24 40 e8 50 90 fd ff c5 fa 6f 06 c5 fa 7f 44 24 30 c5 fa 6f 44 24 30 c5 fa 7f 44 24 20 48 8b 74 24 20 48 8b cd e8 cd 95 fd ff 48 8b f8 48 8d 4c 24 40 e8 c0 95 fd ff 4c 8b c0 48 8b d7 48 8b ce e8 fa 7e fd ff 48 8b fb 48 8d 74 24 40 e8 ad ff bd 5e 48 a5 48 8b c3 eb 11 48 8b cb 48 8b d6 4c 8b c5 e8 78 e7 ff ff 48 8b c3 c5 f8 77 48 81 c4 80 05 00 00 5b 5d 5e 5f 41 5e c3 48 b9 20 96 98 c7 f7 7f 00 00 e8 95 0d be 5e 48 8b f0 41 0f b6 ce e8 69 e6 ff ff 48 8b d0 48 8b ce e8 3e 43 0e ff 48 8b ce e8 c6 59 b5 5e cc}
; TermCode = CTC_INTRx2
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
0078h call 7ff7c86846d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 f1 ff ff}
007dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0080h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 86 09 00 00}
0085h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0088h call 7ff7c865eee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 99 fd ff}
008dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0090h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 76 09 00 00}
0095h lea rcx,[rsp+560h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 60 05 00 00}
009dh call 7ff7c865eee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 99 fd ff}
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
015fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 08 be 5e}
0164h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0166h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0169h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9d 08 00 00}
016eh lea rcx,[rsp+4f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 04 00 00}
0176h call 7ff7c865eee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 98 fd ff}
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
0240h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 07 be 5e}
0245h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0247h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
024ah jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 bc 07 00 00}
024fh lea rcx,[rsp+480h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 04 00 00}
0257h call 7ff7c865eee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 97 fd ff}
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
0357h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 06 be 5e}
035ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
035eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0361h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 06 00 00}
0366h lea rcx,[rsp+3c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 c0 03 00 00}
036eh call 7ff7c865eee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 96 fd ff}
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
0476h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 05 be 5e}
047bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
047dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0480h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 86 05 00 00}
0485h lea rcx,[rsp+300h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 00 03 00 00}
048dh call 7ff7c865eee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 95 fd ff}
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
054fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 04 be 5e}
0554h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0556h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0559h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ad 04 00 00}
055eh lea rcx,[rsp+290h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 02 00 00}
0566h call 7ff7c865eee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 94 fd ff}
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
0630h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 03 be 5e}
0635h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0637h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
063ah jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 cc 03 00 00}
063fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0642h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 03 be 5e}
0647h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0649h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
064ch jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ba 03 00 00}
0651h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0654h mov rsi,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f5}
0657h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 03 be 5e}
065ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
065eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0661h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 03 00 00}
0666h lea rcx,[rsp+220h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 20 02 00 00}
066eh call 7ff7c865eee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 93 fd ff}
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
0720h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 02 be 5e}
0725h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0727h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
072ah jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dc 02 00 00}
072fh lea rcx,[rsp+1a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 a0 01 00 00}
0737h call 7ff7c865eee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 92 fd ff}
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
07eah call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 01 be 5e}
07efh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
07f1h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
07f4h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 12 02 00 00}
07f9h lea rcx,[rsp+120h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 20 01 00 00}
0801h call 7ff7c865eee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 91 fd ff}
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
08cbh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 00 be 5e}
08d0h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
08d2h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
08d5h jmp near ptr 0a0bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 31 01 00 00}
08dah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
08e2h call 7ff7c865eee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 91 fd ff}
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
0992h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 00 be 5e}
0997h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0999h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
099ch jmp short 0a0bh                         ; JMP rel8 || EB cb || encoded[2]{eb 6d}
099eh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
09a3h call 7ff7c865eee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 90 fd ff}
09a8h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
09ach vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
09b2h vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
09b8h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
09beh mov rsi,[rsp+20h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 74 24 20}
09c3h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
09c6h call 7ff7c865f488h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 95 fd ff}
09cbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
09ceh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
09d3h call 7ff7c865f488h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 95 fd ff}
09d8h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
09dbh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
09deh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
09e1h call 7ff7c865ddd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 7e fd ff}
09e6h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
09e9h lea rsi,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 40}
09eeh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad ff bd 5e}
09f3h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
09f5h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
09f8h jmp short 0a0bh                         ; JMP rel8 || EB cb || encoded[2]{eb 11}
09fah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
09fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0a00h mov r8,rbp                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c5}
0a03h call 7ff7c8684670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 e7 ff ff}
0a08h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0a0bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0a0eh add rsp,580h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 80 05 00 00}
0a15h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0a16h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0a17h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0a18h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0a19h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0a1bh ret                                     ; RET || C3 || encoded[1]{c3}
0a1ch mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
0a26h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 0d be 5e}
0a2bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a2eh movzx ecx,r14b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ce}
0a32h call 7ff7c8684590h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 e6 ff ff}
0a37h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a3ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0a3dh call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 43 0e ff}
0a42h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0a45h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 59 b5 5e}
0a4ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitMatrix<ulong> A, BitMatrix<ulong> B)
; eval_g[64u](BinaryBitLogicKind~8u,bm64x64u,bm64x64u)[2637] = {41 56 57 56 55 53 48 81 ec 50 05 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 48 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 44 8b f2 49 8b f0 49 8b e9 41 0f b6 ce 83 f9 0f 0f 87 8e 09 00 00 8b c9 48 8d 15 aa 0a 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 48 c7 84 24 40 05 00 00 ff ff ff ff 48 8b 8c 24 40 05 00 00 48 89 8c 24 48 05 00 00 48 8b cb 48 8b 94 24 48 05 00 00 e8 bf f9 ff ff 48 8b c3 e9 31 09 00 00 48 8b cb e8 17 86 fd ff 48 8b c3 e9 21 09 00 00 48 8d 8c 24 30 05 00 00 e8 02 86 fd ff c5 fa 6f 06 c5 fa 7f 84 24 20 05 00 00 c5 fa 6f 84 24 20 05 00 00 c5 fa 7f 84 24 10 05 00 00 48 8b 84 24 10 05 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 00 05 00 00 c5 fa 6f 84 24 00 05 00 00 c5 fa 7f 84 24 f0 04 00 00 48 8b 94 24 f0 04 00 00 c5 fa 6f 84 24 30 05 00 00 c5 fa 7f 84 24 e0 04 00 00 c5 fa 6f 84 24 e0 04 00 00 c5 fa 7f 84 24 d0 04 00 00 48 8b 8c 24 d0 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd db c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c cf 48 8b fb 48 8d b4 24 30 05 00 00 e8 c8 f4 bd 5e 48 a5 48 8b c3 e9 48 08 00 00 48 8d 8c 24 c0 04 00 00 e8 29 85 fd ff c5 fa 6f 06 c5 fa 7f 84 24 b0 04 00 00 c5 fa 6f 84 24 b0 04 00 00 c5 fa 7f 84 24 a0 04 00 00 48 8b 84 24 a0 04 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 90 04 00 00 c5 fa 6f 84 24 90 04 00 00 c5 fa 7f 84 24 80 04 00 00 48 8b 94 24 80 04 00 00 c5 fa 6f 84 24 c0 04 00 00 c5 fa 7f 84 24 70 04 00 00 c5 fa 6f 84 24 70 04 00 00 c5 fa 7f 84 24 60 04 00 00 48 8b 8c 24 60 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd db c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb 48 8d b4 24 c0 04 00 00 e8 e6 f3 bd 5e 48 a5 48 8b c3 e9 66 07 00 00 48 8d 8c 24 50 04 00 00 e8 47 84 fd ff c5 fa 6f 06 c5 fa 7f 84 24 40 04 00 00 c5 fa 6f 84 24 40 04 00 00 c5 fa 7f 84 24 30 04 00 00 48 8b 84 24 30 04 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 20 04 00 00 c5 fa 6f 84 24 20 04 00 00 c5 fa 7f 84 24 10 04 00 00 48 8b 94 24 10 04 00 00 c5 fa 6f 84 24 50 04 00 00 c5 fa 7f 84 24 00 04 00 00 c5 fa 6f 84 24 00 04 00 00 c5 fa 7f 84 24 f0 03 00 00 48 8b 8c 24 f0 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c5 fc 57 c0 c5 fd 11 84 24 c0 03 00 00 c5 fc 57 c0 c5 fd 11 84 24 a0 03 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 c0 03 00 00 c5 ff f0 06 c5 fd 11 84 24 a0 03 00 00 c5 fd 10 84 24 c0 03 00 00 c5 fd 10 8c 24 a0 03 00 00 c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c 91 48 8b fb 48 8d b4 24 50 04 00 00 e8 cf f2 bd 5e 48 a5 48 8b c3 e9 4f 06 00 00 48 8d 8c 24 90 03 00 00 e8 30 83 fd ff c5 fa 6f 06 c5 fa 7f 84 24 80 03 00 00 c5 fa 6f 84 24 80 03 00 00 c5 fa 7f 84 24 70 03 00 00 48 8b 84 24 70 03 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 60 03 00 00 c5 fa 6f 84 24 60 03 00 00 c5 fa 7f 84 24 50 03 00 00 48 8b 94 24 50 03 00 00 c5 fa 6f 84 24 90 03 00 00 c5 fa 7f 84 24 40 03 00 00 c5 fa 6f 84 24 40 03 00 00 c5 fa 7f 84 24 30 03 00 00 48 8b 8c 24 30 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c5 fc 57 c0 c5 fd 11 84 24 00 03 00 00 c5 fc 57 c0 c5 fd 11 84 24 e0 02 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 00 03 00 00 c5 ff f0 06 c5 fd 11 84 24 e0 02 00 00 c5 fd 10 84 24 00 03 00 00 c5 fd 10 8c 24 e0 02 00 00 c5 fd eb c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c 88 48 8b fb 48 8d b4 24 90 03 00 00 e8 af f1 bd 5e 48 a5 48 8b c3 e9 2f 05 00 00 48 8d 8c 24 d0 02 00 00 e8 10 82 fd ff c5 fa 6f 06 c5 fa 7f 84 24 c0 02 00 00 c5 fa 6f 84 24 c0 02 00 00 c5 fa 7f 84 24 b0 02 00 00 48 8b 84 24 b0 02 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 a0 02 00 00 c5 fa 6f 84 24 a0 02 00 00 c5 fa 7f 84 24 90 02 00 00 48 8b 94 24 90 02 00 00 c5 fa 6f 84 24 d0 02 00 00 c5 fa 7f 84 24 80 02 00 00 c5 fa 6f 84 24 80 02 00 00 c5 fa 7f 84 24 70 02 00 00 48 8b 8c 24 70 02 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c cf 48 8b fb 48 8d b4 24 d0 02 00 00 e8 d6 f0 bd 5e 48 a5 48 8b c3 e9 56 04 00 00 48 8d 8c 24 60 02 00 00 e8 37 81 fd ff c5 fa 6f 06 c5 fa 7f 84 24 50 02 00 00 c5 fa 6f 84 24 50 02 00 00 c5 fa 7f 84 24 40 02 00 00 48 8b 84 24 40 02 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 30 02 00 00 c5 fa 6f 84 24 30 02 00 00 c5 fa 7f 84 24 20 02 00 00 48 8b 94 24 20 02 00 00 c5 fa 6f 84 24 60 02 00 00 c5 fa 7f 84 24 10 02 00 00 c5 fa 6f 84 24 10 02 00 00 c5 fa 7f 84 24 00 02 00 00 48 8b 8c 24 00 02 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd ef c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb 48 8d b4 24 60 02 00 00 e8 f4 ef bd 5e 48 a5 48 8b c3 e9 74 03 00 00 48 8b fb e8 e2 ef bd 5e 48 a5 48 8b c3 e9 62 03 00 00 48 8b fb 48 8b f5 e8 cd ef bd 5e 48 a5 48 8b c3 e9 4d 03 00 00 48 8d 8c 24 f0 01 00 00 e8 2e 80 fd ff c5 fa 6f 06 c5 fa 7f 84 24 e0 01 00 00 c5 fa 6f 84 24 e0 01 00 00 c5 fa 7f 84 24 d0 01 00 00 48 8b 84 24 d0 01 00 00 c5 fa 6f 84 24 f0 01 00 00 c5 fa 7f 84 24 c0 01 00 00 c5 fa 6f 84 24 c0 01 00 00 c5 fa 7f 84 24 b0 01 00 00 48 8b 94 24 b0 01 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c c8 c5 fc 57 c0 c5 fd 11 84 24 80 01 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 80 01 00 00 c5 fd 10 84 24 80 01 00 00 c4 e2 7d 29 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c b5 48 8b fb 48 8d b4 24 f0 01 00 00 e8 03 ef bd 5e 48 a5 48 8b c3 e9 83 02 00 00 48 8d 8c 24 70 01 00 00 e8 64 7f fd ff c5 fa 6f 45 00 c5 fa 7f 84 24 60 01 00 00 c5 fa 6f 84 24 60 01 00 00 c5 fa 7f 84 24 50 01 00 00 48 8b 84 24 50 01 00 00 c5 fa 6f 84 24 70 01 00 00 c5 fa 7f 84 24 40 01 00 00 c5 fa 6f 84 24 40 01 00 00 c5 fa 7f 84 24 30 01 00 00 48 8b 94 24 30 01 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c c8 c5 fc 57 c0 c5 fd 11 84 24 00 01 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 00 01 00 00 c5 fd 10 84 24 00 01 00 00 c4 e2 7d 29 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c b5 48 8b fb 48 8d b4 24 70 01 00 00 e8 38 ee bd 5e 48 a5 48 8b c3 e9 b8 01 00 00 48 8d 8c 24 f0 00 00 00 e8 99 7e fd ff c5 fa 6f 06 c5 fa 7f 84 24 e0 00 00 00 c5 fa 6f 84 24 e0 00 00 00 c5 fa 7f 84 24 d0 00 00 00 48 8b 84 24 d0 00 00 00 c5 fa 6f 45 00 c5 fa 7f 84 24 c0 00 00 00 c5 fa 6f 84 24 c0 00 00 00 c5 fa 7f 84 24 b0 00 00 00 48 8b 94 24 b0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 a0 00 00 00 c5 fa 6f 84 24 a0 00 00 00 c5 fa 7f 84 24 90 00 00 00 48 8b 8c 24 90 00 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c4 e2 75 29 d1 c5 f5 ef ca c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb 48 8d b4 24 f0 00 00 00 e8 56 ed bd 5e 48 a5 48 8b c3 e9 d6 00 00 00 48 8d 8c 24 80 00 00 00 e8 b7 7d fd ff c5 fa 6f 06 c5 fa 7f 44 24 70 c5 fa 6f 44 24 70 c5 fa 7f 44 24 60 48 8b 44 24 60 c5 fa 6f 45 00 c5 fa 7f 44 24 50 c5 fa 6f 44 24 50 c5 fa 7f 44 24 40 48 8b 54 24 40 c5 fa 6f 84 24 80 00 00 00 c5 fa 7f 44 24 30 c5 fa 6f 44 24 30 c5 fa 7f 44 24 20 48 8b 4c 24 20 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 10 4a 8d 34 12 c4 c1 7f f0 03 c5 ff f0 0e c5 fd df c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c cf 48 8b fb 48 8d b4 24 80 00 00 00 e8 a1 ec bd 5e 48 a5 48 8b c3 eb 24 48 8b cb 48 8b d6 4c 8b c5 e8 ec 8e fd ff 48 8b c3 eb 11 48 8b cb 48 8b d6 4c 8b c5 e8 b9 96 fd ff 48 8b c3 c5 f8 77 48 81 c4 50 05 00 00 5b 5d 5e 5f 41 5e c3 48 b9 f0 6b 04 c8 f7 7f 00 00 e8 76 fa bd 5e 48 8b f0 44 88 76 08 48 b9 78 a6 71 c7 f7 7f 00 00 e8 a0 7d b8 5e 48 8b f8 48 b9 20 96 98 c7 f7 7f 00 00 e8 4e fa bd 5e 48 8b d8 b9 4c 04 00 00 48 ba 00 7c b3 c7 f7 7f 00 00 e8 37 93 d0 5e 48 8b e8 48 8b cf e8 8c f1 0d ff 8b c8 e8 dd c2 0d ff 4c 8b c0 48 8b cd 48 8b d6 e8 9f ce 0b ff 48 8b d0 48 8b cb e8 cc 2f 0e ff 48 8b cb e8 54 46 b5 5e cc}
; TermCode = CTC_INTRx2
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
007ch call 7ff7c86862a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf f9 ff ff}
0081h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0084h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 31 09 00 00}
0089h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
008ch call 7ff7c865ef08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 86 fd ff}
0091h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0094h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 21 09 00 00}
0099h lea rcx,[rsp+530h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 30 05 00 00}
00a1h call 7ff7c865ef08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 86 fd ff}
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
0163h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 f4 bd 5e}
0168h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
016ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
016dh jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 48 08 00 00}
0172h lea rcx,[rsp+4c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 c0 04 00 00}
017ah call 7ff7c865ef08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 85 fd ff}
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
0245h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 f3 bd 5e}
024ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
024ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
024fh jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 66 07 00 00}
0254h lea rcx,[rsp+450h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 50 04 00 00}
025ch call 7ff7c865ef08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 84 fd ff}
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
035ch call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf f2 bd 5e}
0361h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0363h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0366h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 4f 06 00 00}
036bh lea rcx,[rsp+390h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 03 00 00}
0373h call 7ff7c865ef08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 83 fd ff}
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
047ch call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af f1 bd 5e}
0481h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0483h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0486h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 2f 05 00 00}
048bh lea rcx,[rsp+2d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 02 00 00}
0493h call 7ff7c865ef08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 82 fd ff}
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
0555h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 f0 bd 5e}
055ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
055ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
055fh jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 56 04 00 00}
0564h lea rcx,[rsp+260h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 60 02 00 00}
056ch call 7ff7c865ef08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 81 fd ff}
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
0637h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 ef bd 5e}
063ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
063eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0641h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 74 03 00 00}
0646h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0649h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ef bd 5e}
064eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0650h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0653h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 62 03 00 00}
0658h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
065bh mov rsi,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f5}
065eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd ef bd 5e}
0663h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0665h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0668h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 4d 03 00 00}
066dh lea rcx,[rsp+1f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 01 00 00}
0675h call 7ff7c865ef08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 80 fd ff}
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
0728h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 ef bd 5e}
072dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
072fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0732h jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 02 00 00}
0737h lea rcx,[rsp+170h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 70 01 00 00}
073fh call 7ff7c865ef08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 7f fd ff}
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
07f3h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 ee bd 5e}
07f8h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
07fah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
07fdh jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 b8 01 00 00}
0802h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
080ah call 7ff7c865ef08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 7e fd ff}
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
08d5h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 ed bd 5e}
08dah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
08dch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
08dfh jmp near ptr 09bah                      ; JMP rel32 || E9 cd || encoded[5]{e9 d6 00 00 00}
08e4h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
08ech call 7ff7c865ef08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 7d fd ff}
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
098ah call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 ec bd 5e}
098fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0991h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0994h jmp short 09bah                         ; JMP rel8 || EB cb || encoded[2]{eb 24}
0996h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0999h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
099ch mov r8,rbp                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c5}
099fh call 7ff7c86600f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 8e fd ff}
09a4h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
09a7h jmp short 09bah                         ; JMP rel8 || EB cb || encoded[2]{eb 11}
09a9h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
09ach mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
09afh mov r8,rbp                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c5}
09b2h call 7ff7c86608d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 96 fd ff}
09b7h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
09bah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
09bdh add rsp,550h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 50 05 00 00}
09c4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
09c5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
09c6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
09c7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
09c8h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
09cah ret                                     ; RET || C3 || encoded[1]{c3}
09cbh mov rcx,7ff7c8046bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 04 c8 f7 7f 00 00}
09d5h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 fa bd 5e}
09dah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
09ddh mov [rsi+8],r14b                        ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 76 08}
09e1h mov rcx,7ff7c771a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 71 c7 f7 7f 00 00}
09ebh call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 7d b8 5e}
09f0h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
09f3h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
09fdh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e fa bd 5e}
0a02h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0a05h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0a0ah mov rdx,7ff7c7b37c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 7c b3 c7 f7 7f 00 00}
0a14h call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 93 d0 5e}
0a19h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0a1ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0a1fh call 7ff7c7766410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c f1 0d ff}
0a24h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0a26h call 7ff7c7763568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd c2 0d ff}
0a2bh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0a2eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0a31h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0a34h call 7ff7c7744138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f ce 0b ff}
0a39h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a3ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0a3fh call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 2f 0e ff}
0a44h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0a47h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 46 b5 5e}
0a4ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> eval<byte>(BinaryBitLogicKind:byte kind, BitMatrix<byte> A, BitMatrix<byte> B, ref BitMatrix<byte> Z)
; eval_g[8u](BinaryBitLogicKind~8u,bm8x8u,bm8x8u,bm8x8u~ref)[903] = {57 56 55 53 48 83 ec 68 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 48 8b b4 24 b0 00 00 00 40 0f b6 cd 83 f9 0f 0f 87 cc 02 00 00 8b c9 48 8d 15 4e 03 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 b9 ff 00 00 00 88 4c 24 60 48 8b cb 0f b6 54 24 60 e8 01 9c ff ff 48 8b c3 e9 81 02 00 00 48 8b cb e8 31 6e fd ff 48 8b c3 e9 71 02 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 23 c2 48 89 01 48 8b fb e8 24 de bd 5e 48 a5 48 8b c3 e9 4a 02 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 23 c2 48 f7 d0 48 89 01 48 8b fb e8 fa dd bd 5e 48 a5 48 8b c3 e9 20 02 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 0b c2 48 89 01 48 8b fb e8 d3 dd bd 5e 48 a5 48 8b c3 e9 f9 01 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 0b c2 48 f7 d0 48 89 01 48 8b fb e8 a9 dd bd 5e 48 a5 48 8b c3 e9 cf 01 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 33 c2 48 89 01 48 8b fb e8 82 dd bd 5e 48 a5 48 8b c3 e9 a8 01 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 33 c2 48 f7 d0 48 89 01 48 8b fb e8 58 dd bd 5e 48 a5 48 8b c3 e9 7e 01 00 00 c5 fa 6f 06 c5 fa 7f 44 24 40 c4 c1 7a 6f 00 c5 fa 7f 44 24 50 48 8d 4c 24 50 48 8b 11 8b 49 08 4c 8d 44 24 40 49 8b 00 45 8b 40 08 41 3b c8 0f 87 52 01 00 00 4c 63 c1 48 8b c8 e8 ce 0d 67 4e 48 8b fb e8 06 dd bd 5e 48 a5 48 8b c3 e9 2c 01 00 00 49 8b 00 48 8b 16 48 8b 00 48 f7 d0 48 89 02 48 8b fb e8 e5 dc bd 5e 48 a5 48 8b c3 e9 0b 01 00 00 c5 fa 6f 06 c5 fa 7f 44 24 20 c4 c1 7a 6f 01 c5 fa 7f 44 24 30 48 8d 4c 24 30 48 8b 11 8b 49 08 4c 8d 44 24 20 49 8b 00 45 8b 40 08 41 3b c8 0f 87 e5 00 00 00 4c 63 c1 48 8b c8 e8 5b 0d 67 4e 48 8b fb e8 93 dc bd 5e 48 a5 48 8b c3 e9 b9 00 00 00 49 8b 01 48 8b 16 48 8b 00 48 f7 d0 48 89 02 48 8b fb e8 72 dc bd 5e 48 a5 48 8b c3 e9 98 00 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 f7 d2 48 0b c2 48 89 01 48 8b fb e8 48 dc bd 5e 48 a5 48 8b c3 eb 71 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 c4 e2 f8 f2 c2 48 89 01 48 8b fb e8 22 dc bd 5e 48 a5 48 8b c3 eb 4b 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 f7 d0 48 0b c2 48 89 01 48 8b fb e8 fb db bd 5e 48 a5 48 8b c3 eb 24 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 c4 e2 e8 f2 c0 48 89 01 48 8b fb e8 d5 db bd 5e 48 a5 48 8b c3 48 83 c4 68 5b 5d 5e 5f c3 e8 e2 d4 0c ff cc e8 dc d4 0c ff cc 48 b9 f0 6b 04 c8 f7 7f 00 00 e8 cc e9 bd 5e 48 8b f0 40 88 6e 08 48 b9 58 77 71 c7 f7 7f 00 00 e8 f6 6c b8 5e 48 8b f8 48 b9 20 96 98 c7 f7 7f 00 00 e8 a4 e9 bd 5e 48 8b d8 b9 4c 04 00 00 48 ba 00 7c b3 c7 f7 7f 00 00 e8 8d 82 d0 5e 48 8b e8 48 8b cf e8 e2 e0 0d ff 8b c8 e8 33 b2 0d ff 4c 8b c0 48 8b cd 48 8b d6 e8 f5 bd 0b ff 48 8b d0 48 8b cb e8 22 1f 0e ff 48 8b cb e8 aa 35 b5 5e cc}
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
0062h call 7ff7c8681c38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 9c ff ff}
0067h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
006ah jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 81 02 00 00}
006fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0072h call 7ff7c865ee78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 6e fd ff}
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
0097h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 de bd 5e}
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
00c1h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa dd bd 5e}
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
00e8h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 dd bd 5e}
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
0112h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 dd bd 5e}
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
0139h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 dd bd 5e}
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
0163h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 dd bd 5e}
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
01adh call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 0d 67 4e}
01b2h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01b5h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 dd bd 5e}
01bah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01bch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01bfh jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 01 00 00}
01c4h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
01c7h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
01cah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
01cdh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01d0h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
01d3h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01d6h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 dc bd 5e}
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
0220h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 0d 67 4e}
0225h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0228h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 dc bd 5e}
022dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
022fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0232h jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b9 00 00 00}
0237h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
023ah mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
023dh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0240h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0243h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0246h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0249h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 dc bd 5e}
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
0273h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 dc bd 5e}
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
0299h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 dc bd 5e}
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
02c0h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb db bd 5e}
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
02e6h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 db bd 5e}
02ebh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02edh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02f0h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
02f4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02f5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02f6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02f7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
02f8h ret                                     ; RET || C3 || encoded[1]{c3}
02f9h call 7ff7c77557b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 d4 0c ff}
02feh int 3                                   ; INT3 || CC || encoded[1]{cc}
02ffh call 7ff7c77557b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc d4 0c ff}
0304h int 3                                   ; INT3 || CC || encoded[1]{cc}
0305h mov rcx,7ff7c8046bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 04 c8 f7 7f 00 00}
030fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc e9 bd 5e}
0314h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0317h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
031bh mov rcx,7ff7c7717758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 71 c7 f7 7f 00 00}
0325h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 6c b8 5e}
032ah mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
032dh mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
0337h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 e9 bd 5e}
033ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
033fh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0344h mov rdx,7ff7c7b37c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 7c b3 c7 f7 7f 00 00}
034eh call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 82 d0 5e}
0353h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0356h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0359h call 7ff7c7766410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 e0 0d ff}
035eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0360h call 7ff7c7763568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 b2 0d ff}
0365h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0368h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
036bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
036eh call 7ff7c7744138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 bd 0b ff}
0373h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0376h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0379h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 1f 0e ff}
037eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0381h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 35 b5 5e}
0386h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, BitMatrix<ushort> A, BitMatrix<ushort> B, ref BitMatrix<ushort> Z)
; eval_g[16u](BinaryBitLogicKind~8u,bm16x16u,bm16x16u,bm16x16u~ref)[2056] = {57 56 55 53 48 81 ec 98 04 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 18 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 48 8b b4 24 e0 04 00 00 40 0f b6 cd 83 f9 0f 0f 87 4a 07 00 00 8b c9 48 8d 15 6b 08 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 b9 ff ff 00 00 66 89 8c 24 90 04 00 00 48 8b cb 0f b7 94 24 90 04 00 00 e8 bf b4 ff ff 48 8b c3 e9 f2 06 00 00 48 8b cb e8 77 66 fd ff 48 8b c3 e9 e2 06 00 00 49 8b 00 49 8b 11 48 8b 0e c5 ff f0 00 c5 ff f0 0a c5 fd db c1 c5 fe 7f 01 48 8b fb e8 16 d6 bd 5e 48 a5 48 8b c3 e9 b7 06 00 00 49 8b 00 49 8b 11 48 8b 0e c5 ff f0 00 c5 ff f0 0a c5 fd db c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb e8 e3 d5 bd 5e 48 a5 48 8b c3 e9 84 06 00 00 49 8b 00 49 8b 11 48 8b 0e c5 ff f0 00 c5 fd 11 84 24 60 04 00 00 c5 ff f0 02 c5 fd 11 84 24 40 04 00 00 c5 fd 10 84 24 60 04 00 00 c5 fd 10 8c 24 40 04 00 00 c5 fd eb c1 c5 fe 7f 01 48 8b fb e8 94 d5 bd 5e 48 a5 48 8b c3 e9 35 06 00 00 49 8b 00 49 8b 11 48 8b 0e 44 8b 46 08 4c 8d 8c 24 30 04 00 00 49 89 09 45 89 41 08 48 8b 8c 24 30 04 00 00 c5 ff f0 00 c5 fd 11 84 24 00 04 00 00 c5 ff f0 02 c5 fd 11 84 24 e0 03 00 00 c5 fd 10 84 24 00 04 00 00 c5 fd 10 8c 24 e0 03 00 00 c5 fd eb c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb e8 22 d5 bd 5e 48 a5 48 8b c3 e9 c3 05 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 d0 03 00 00 c5 fa 6f 84 24 d0 03 00 00 c5 fa 7f 84 24 c0 03 00 00 48 8b 84 24 c0 03 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 b0 03 00 00 c5 fa 6f 84 24 b0 03 00 00 c5 fa 7f 84 24 a0 03 00 00 48 8b 94 24 a0 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 03 00 00 c5 fa 6f 84 24 90 03 00 00 c5 fa 7f 84 24 80 03 00 00 48 8b 8c 24 80 03 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd ef c1 c5 fe 7f 01 48 8b fb e8 89 d4 bd 5e 48 a5 48 8b c3 e9 2a 05 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 70 03 00 00 c5 fa 6f 84 24 70 03 00 00 c5 fa 7f 84 24 60 03 00 00 48 8b 84 24 60 03 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 50 03 00 00 c5 fa 6f 84 24 50 03 00 00 c5 fa 7f 84 24 40 03 00 00 48 8b 94 24 40 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 30 03 00 00 c5 fa 6f 84 24 30 03 00 00 c5 fa 7f 84 24 20 03 00 00 48 8b 8c 24 20 03 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd ef c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb e8 e8 d3 bd 5e 48 a5 48 8b c3 e9 89 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 f0 02 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 10 03 00 00 c5 fa 6f 84 24 10 03 00 00 c5 fa 7f 84 24 00 03 00 00 c5 fa 6f 84 24 f0 02 00 00 c5 fa 7f 84 24 e0 02 00 00 c5 fa 6f 84 24 e0 02 00 00 c5 fa 7f 84 24 d0 02 00 00 44 8b 84 24 08 03 00 00 44 3b 84 24 d8 02 00 00 0f 87 31 04 00 00 48 8b 8c 24 d0 02 00 00 48 8b 94 24 00 03 00 00 44 8b 84 24 08 03 00 00 4d 63 c0 49 d1 e0 e8 14 04 67 4e 48 8b fb e8 4c d3 bd 5e 48 a5 48 8b c3 e9 ed 03 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 c0 02 00 00 c5 fa 6f 84 24 c0 02 00 00 c5 fa 7f 84 24 b0 02 00 00 48 8b 84 24 b0 02 00 00 c5 fa 6f 06 c5 fa 7f 84 24 a0 02 00 00 c5 fa 6f 84 24 a0 02 00 00 c5 fa 7f 84 24 90 02 00 00 48 8b 94 24 90 02 00 00 c5 ff f0 00 c5 fd 11 84 24 60 02 00 00 c5 fd 10 84 24 60 02 00 00 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb e8 c9 d2 bd 5e 48 a5 48 8b c3 e9 6a 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 30 02 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 50 02 00 00 c5 fa 6f 84 24 50 02 00 00 c5 fa 7f 84 24 40 02 00 00 c5 fa 6f 84 24 30 02 00 00 c5 fa 7f 84 24 20 02 00 00 c5 fa 6f 84 24 20 02 00 00 c5 fa 7f 84 24 10 02 00 00 44 8b 84 24 48 02 00 00 44 3b 84 24 18 02 00 00 0f 87 18 03 00 00 48 8b 8c 24 10 02 00 00 48 8b 94 24 40 02 00 00 44 8b 84 24 48 02 00 00 4d 63 c0 49 d1 e0 e8 f5 02 67 4e 48 8b fb e8 2d d2 bd 5e 48 a5 48 8b c3 e9 ce 02 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 00 02 00 00 c5 fa 6f 84 24 00 02 00 00 c5 fa 7f 84 24 f0 01 00 00 48 8b 84 24 f0 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 e0 01 00 00 c5 fa 6f 84 24 e0 01 00 00 c5 fa 7f 84 24 d0 01 00 00 48 8b 94 24 d0 01 00 00 c5 ff f0 00 c5 fd 11 84 24 a0 01 00 00 c5 fd 10 84 24 a0 01 00 00 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb e8 aa d1 bd 5e 48 a5 48 8b c3 e9 4b 02 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 90 01 00 00 c5 fa 6f 84 24 90 01 00 00 c5 fa 7f 84 24 80 01 00 00 48 8b 84 24 80 01 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 70 01 00 00 c5 fa 6f 84 24 70 01 00 00 c5 fa 7f 84 24 60 01 00 00 48 8b 94 24 60 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 50 01 00 00 c5 fa 6f 84 24 50 01 00 00 c5 fa 7f 84 24 40 01 00 00 48 8b 8c 24 40 01 00 00 c5 ff f0 00 c5 ff f0 0a c5 f5 75 d1 c5 f5 ef ca c5 fd eb c1 c5 fe 7f 01 48 8b fb e8 09 d1 bd 5e 48 a5 48 8b c3 e9 aa 01 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 30 01 00 00 c5 fa 6f 84 24 30 01 00 00 c5 fa 7f 84 24 20 01 00 00 48 8b 84 24 20 01 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 10 01 00 00 c5 fa 6f 84 24 10 01 00 00 c5 fa 7f 84 24 00 01 00 00 48 8b 94 24 00 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 f0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 e0 00 00 00 48 8b 8c 24 e0 00 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd df c1 c5 fe 7f 01 48 8b fb e8 70 d0 bd 5e 48 a5 48 8b c3 e9 11 01 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 d0 00 00 00 c5 fa 6f 84 24 d0 00 00 00 c5 fa 7f 84 24 c0 00 00 00 48 8b 84 24 c0 00 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 b0 00 00 00 c5 fa 6f 84 24 b0 00 00 00 c5 fa 7f 84 24 a0 00 00 00 48 8b 94 24 a0 00 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 00 00 00 c5 fa 6f 84 24 90 00 00 00 c5 fa 7f 84 24 80 00 00 00 48 8b 8c 24 80 00 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd 75 d0 c5 fd ef c2 c5 fd eb c1 c5 fe 7f 01 48 8b fb e8 cf cf bd 5e 48 a5 48 8b c3 e9 70 00 00 00 c4 c1 7a 6f 00 c5 fa 7f 44 24 70 c5 fa 6f 44 24 70 c5 fa 7f 44 24 60 48 8b 44 24 60 c4 c1 7a 6f 01 c5 fa 7f 44 24 50 c5 fa 6f 44 24 50 c5 fa 7f 44 24 40 48 8b 54 24 40 c5 fa 6f 06 c5 fa 7f 44 24 30 c5 fa 6f 44 24 30 c5 fa 7f 44 24 20 48 8b 4c 24 20 c5 ff f0 00 c5 ff f0 0a c5 f5 df c0 c5 fe 7f 01 48 8b fb e8 5a cf bd 5e 48 a5 48 8b c3 c5 f8 77 48 81 c4 98 04 00 00 5b 5d 5e 5f c3 e8 61 c8 0c ff cc e8 5b c8 0c ff cc 48 b9 f0 6b 04 c8 f7 7f 00 00 e8 4b dd bd 5e 48 8b f0 40 88 6e 08 48 b9 38 87 71 c7 f7 7f 00 00 e8 75 60 b8 5e 48 8b f8 48 b9 20 96 98 c7 f7 7f 00 00 e8 23 dd bd 5e 48 8b d8 b9 4c 04 00 00 48 ba 00 7c b3 c7 f7 7f 00 00 e8 0c 76 d0 5e 48 8b e8 48 8b cf e8 61 d4 0d ff 8b c8 e8 b2 a5 0d ff 4c 8b c0 48 8b cd 48 8b d6 e8 74 b1 0b ff 48 8b d0 48 8b cb e8 a1 12 0e ff 48 8b cb e8 29 29 b5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,498h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 98 04 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0016h mov ecx,118h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 18 01 00 00}
001bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001dh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0022h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0025h mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
0027h mov rsi,[rsp+4e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 e0 04 00 00}
002fh movzx ecx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cd}
0033h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0036h ja near ptr 0786h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 4a 07 00 00}
003ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
003eh lea rdx,[rip+86bh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 6b 08 00 00}
0045h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0048h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
004fh add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
0052h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0054h mov ecx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff ff 00 00}
0059h mov [rsp+490h],cx                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 8c 24 90 04 00 00}
0061h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0064h movzx edx,word ptr [rsp+490h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[8]{0f b7 94 24 90 04 00 00}
006ch call 7ff7c8683d00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf b4 ff ff}
0071h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0074h jmp near ptr 076bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f2 06 00 00}
0079h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
007ch call 7ff7c865eec8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 66 fd ff}
0081h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0084h jmp near ptr 076bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e2 06 00 00}
0089h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
008ch mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
008fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0092h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0096h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
009ah vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
009eh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
00a2h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00a5h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 d6 bd 5e}
00aah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00ach mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00afh jmp near ptr 076bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b7 06 00 00}
00b4h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
00b7h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00bah mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
00bdh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
00c1h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
00c5h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
00c9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00cdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00d1h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
00d5h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00d8h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 d5 bd 5e}
00ddh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00dfh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00e2h jmp near ptr 076bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 84 06 00 00}
00e7h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
00eah mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00edh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
00f0h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
00f4h vmovupd [rsp+460h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 04 00 00}
00fdh vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0101h vmovupd [rsp+440h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 04 00 00}
010ah vmovupd ymm0,[rsp+460h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 60 04 00 00}
0113h vmovupd ymm1,[rsp+440h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 40 04 00 00}
011ch vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0120h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0124h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0127h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 d5 bd 5e}
012ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
012eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0131h jmp near ptr 076bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 35 06 00 00}
0136h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0139h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
013ch mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
013fh mov r8d,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 46 08}
0143h lea r9,[rsp+430h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{4c 8d 8c 24 30 04 00 00}
014bh mov [r9],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 09}
014eh mov [r9+8],r8d                          ; MOV r/m32, r32 || o32 89 /r || encoded[4]{45 89 41 08}
0152h mov rcx,[rsp+430h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 30 04 00 00}
015ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
015eh vmovupd [rsp+400h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 04 00 00}
0167h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
016bh vmovupd [rsp+3e0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 e0 03 00 00}
0174h vmovupd ymm0,[rsp+400h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 00 04 00 00}
017dh vmovupd ymm1,[rsp+3e0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 e0 03 00 00}
0186h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
018ah vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
018eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0192h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0196h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0199h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 d5 bd 5e}
019eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01a0h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01a3h jmp near ptr 076bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 c3 05 00 00}
01a8h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
01adh vmovdqu xmmword ptr [rsp+3d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 03 00 00}
01b6h vmovdqu xmm0,xmmword ptr [rsp+3d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 03 00 00}
01bfh vmovdqu xmmword ptr [rsp+3c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 03 00 00}
01c8h mov rax,[rsp+3c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 c0 03 00 00}
01d0h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
01d5h vmovdqu xmmword ptr [rsp+3b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 03 00 00}
01deh vmovdqu xmm0,xmmword ptr [rsp+3b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 03 00 00}
01e7h vmovdqu xmmword ptr [rsp+3a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 03 00 00}
01f0h mov rdx,[rsp+3a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 a0 03 00 00}
01f8h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
01fch vmovdqu xmmword ptr [rsp+390h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 03 00 00}
0205h vmovdqu xmm0,xmmword ptr [rsp+390h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 03 00 00}
020eh vmovdqu xmmword ptr [rsp+380h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 03 00 00}
0217h mov rcx,[rsp+380h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 80 03 00 00}
021fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0223h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0227h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
022bh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
022fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0232h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 d4 bd 5e}
0237h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0239h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
023ch jmp near ptr 076bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2a 05 00 00}
0241h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0246h vmovdqu xmmword ptr [rsp+370h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 03 00 00}
024fh vmovdqu xmm0,xmmword ptr [rsp+370h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 03 00 00}
0258h vmovdqu xmmword ptr [rsp+360h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 03 00 00}
0261h mov rax,[rsp+360h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 60 03 00 00}
0269h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
026eh vmovdqu xmmword ptr [rsp+350h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 03 00 00}
0277h vmovdqu xmm0,xmmword ptr [rsp+350h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 03 00 00}
0280h vmovdqu xmmword ptr [rsp+340h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 03 00 00}
0289h mov rdx,[rsp+340h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 40 03 00 00}
0291h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0295h vmovdqu xmmword ptr [rsp+330h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 03 00 00}
029eh vmovdqu xmm0,xmmword ptr [rsp+330h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 03 00 00}
02a7h vmovdqu xmmword ptr [rsp+320h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 03 00 00}
02b0h mov rcx,[rsp+320h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 20 03 00 00}
02b8h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
02bch vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
02c0h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
02c4h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
02c8h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
02cch vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
02d0h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
02d3h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 d3 bd 5e}
02d8h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02dah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02ddh jmp near ptr 076bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 89 04 00 00}
02e2h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
02e6h vmovdqu xmmword ptr [rsp+2f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 02 00 00}
02efh vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
02f4h vmovdqu xmmword ptr [rsp+310h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 03 00 00}
02fdh vmovdqu xmm0,xmmword ptr [rsp+310h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 03 00 00}
0306h vmovdqu xmmword ptr [rsp+300h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 03 00 00}
030fh vmovdqu xmm0,xmmword ptr [rsp+2f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 02 00 00}
0318h vmovdqu xmmword ptr [rsp+2e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 02 00 00}
0321h vmovdqu xmm0,xmmword ptr [rsp+2e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 02 00 00}
032ah vmovdqu xmmword ptr [rsp+2d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 02 00 00}
0333h mov r8d,[rsp+308h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 08 03 00 00}
033bh cmp r8d,[rsp+2d8h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 d8 02 00 00}
0343h ja near ptr 077ah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 31 04 00 00}
0349h mov rcx,[rsp+2d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 d0 02 00 00}
0351h mov rdx,[rsp+300h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 03 00 00}
0359h mov r8d,[rsp+308h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 08 03 00 00}
0361h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0364h shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
0367h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 04 67 4e}
036ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
036fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c d3 bd 5e}
0374h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0376h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0379h jmp near ptr 076bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 03 00 00}
037eh vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0383h vmovdqu xmmword ptr [rsp+2c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 02 00 00}
038ch vmovdqu xmm0,xmmword ptr [rsp+2c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 02 00 00}
0395h vmovdqu xmmword ptr [rsp+2b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 02 00 00}
039eh mov rax,[rsp+2b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 b0 02 00 00}
03a6h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
03aah vmovdqu xmmword ptr [rsp+2a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 02 00 00}
03b3h vmovdqu xmm0,xmmword ptr [rsp+2a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 02 00 00}
03bch vmovdqu xmmword ptr [rsp+290h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 02 00 00}
03c5h mov rdx,[rsp+290h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 90 02 00 00}
03cdh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
03d1h vmovupd [rsp+260h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 02 00 00}
03dah vmovupd ymm0,[rsp+260h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 60 02 00 00}
03e3h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
03e7h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
03ebh vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
03efh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
03f2h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 d2 bd 5e}
03f7h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
03f9h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
03fch jmp near ptr 076bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6a 03 00 00}
0401h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0405h vmovdqu xmmword ptr [rsp+230h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 02 00 00}
040eh vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
0413h vmovdqu xmmword ptr [rsp+250h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 02 00 00}
041ch vmovdqu xmm0,xmmword ptr [rsp+250h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 02 00 00}
0425h vmovdqu xmmword ptr [rsp+240h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 02 00 00}
042eh vmovdqu xmm0,xmmword ptr [rsp+230h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 02 00 00}
0437h vmovdqu xmmword ptr [rsp+220h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 02 00 00}
0440h vmovdqu xmm0,xmmword ptr [rsp+220h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 02 00 00}
0449h vmovdqu xmmword ptr [rsp+210h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 02 00 00}
0452h mov r8d,[rsp+248h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 48 02 00 00}
045ah cmp r8d,[rsp+218h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 18 02 00 00}
0462h ja near ptr 0780h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 18 03 00 00}
0468h mov rcx,[rsp+210h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 10 02 00 00}
0470h mov rdx,[rsp+240h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 40 02 00 00}
0478h mov r8d,[rsp+248h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 48 02 00 00}
0480h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0483h shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
0486h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 02 67 4e}
048bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
048eh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d d2 bd 5e}
0493h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0495h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0498h jmp near ptr 076bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ce 02 00 00}
049dh vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
04a2h vmovdqu xmmword ptr [rsp+200h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 02 00 00}
04abh vmovdqu xmm0,xmmword ptr [rsp+200h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 02 00 00}
04b4h vmovdqu xmmword ptr [rsp+1f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 01 00 00}
04bdh mov rax,[rsp+1f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 f0 01 00 00}
04c5h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
04c9h vmovdqu xmmword ptr [rsp+1e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 01 00 00}
04d2h vmovdqu xmm0,xmmword ptr [rsp+1e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 01 00 00}
04dbh vmovdqu xmmword ptr [rsp+1d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 01 00 00}
04e4h mov rdx,[rsp+1d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 d0 01 00 00}
04ech vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
04f0h vmovupd [rsp+1a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 01 00 00}
04f9h vmovupd ymm0,[rsp+1a0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 a0 01 00 00}
0502h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0506h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
050ah vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
050eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0511h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa d1 bd 5e}
0516h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0518h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
051bh jmp near ptr 076bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 4b 02 00 00}
0520h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0525h vmovdqu xmmword ptr [rsp+190h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 01 00 00}
052eh vmovdqu xmm0,xmmword ptr [rsp+190h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 01 00 00}
0537h vmovdqu xmmword ptr [rsp+180h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 01 00 00}
0540h mov rax,[rsp+180h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 80 01 00 00}
0548h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
054dh vmovdqu xmmword ptr [rsp+170h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 01 00 00}
0556h vmovdqu xmm0,xmmword ptr [rsp+170h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 01 00 00}
055fh vmovdqu xmmword ptr [rsp+160h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 01 00 00}
0568h mov rdx,[rsp+160h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 60 01 00 00}
0570h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0574h vmovdqu xmmword ptr [rsp+150h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 01 00 00}
057dh vmovdqu xmm0,xmmword ptr [rsp+150h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 01 00 00}
0586h vmovdqu xmmword ptr [rsp+140h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 01 00 00}
058fh mov rcx,[rsp+140h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 40 01 00 00}
0597h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
059bh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
059fh vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
05a3h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
05a7h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
05abh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
05afh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
05b2h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 d1 bd 5e}
05b7h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
05b9h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
05bch jmp near ptr 076bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 01 00 00}
05c1h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
05c6h vmovdqu xmmword ptr [rsp+130h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 01 00 00}
05cfh vmovdqu xmm0,xmmword ptr [rsp+130h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 01 00 00}
05d8h vmovdqu xmmword ptr [rsp+120h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 01 00 00}
05e1h mov rax,[rsp+120h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 20 01 00 00}
05e9h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
05eeh vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
05f7h vmovdqu xmm0,xmmword ptr [rsp+110h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 01 00 00}
0600h vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
0609h mov rdx,[rsp+100h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 01 00 00}
0611h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0615h vmovdqu xmmword ptr [rsp+0f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 00 00 00}
061eh vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
0627h vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
0630h mov rcx,[rsp+0e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 e0 00 00 00}
0638h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
063ch vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0640h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
0644h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0648h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
064bh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 d0 bd 5e}
0650h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0652h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0655h jmp near ptr 076bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 11 01 00 00}
065ah vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
065fh vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
0668h vmovdqu xmm0,xmmword ptr [rsp+0d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 00 00 00}
0671h vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
067ah mov rax,[rsp+0c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 c0 00 00 00}
0682h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
0687h vmovdqu xmmword ptr [rsp+0b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 00 00 00}
0690h vmovdqu xmm0,xmmword ptr [rsp+0b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 00 00 00}
0699h vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
06a2h mov rdx,[rsp+0a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 a0 00 00 00}
06aah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
06aeh vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
06b7h vmovdqu xmm0,xmmword ptr [rsp+90h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 00 00 00}
06c0h vmovdqu xmmword ptr [rsp+80h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 00 00 00}
06c9h mov rcx,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 80 00 00 00}
06d1h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
06d5h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
06d9h vpcmpeqw ymm2,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 d0}
06ddh vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
06e1h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
06e5h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
06e9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
06ech call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf cf bd 5e}
06f1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
06f3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
06f6h jmp near ptr 076bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 70 00 00 00}
06fbh vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0700h vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
0706h vmovdqu xmm0,xmmword ptr [rsp+70h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 70}
070ch vmovdqu xmmword ptr [rsp+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 60}
0712h mov rax,[rsp+60h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 60}
0717h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
071ch vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
0722h vmovdqu xmm0,xmmword ptr [rsp+50h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 50}
0728h vmovdqu xmmword ptr [rsp+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 40}
072eh mov rdx,[rsp+40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 40}
0733h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0737h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
073dh vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
0743h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0749h mov rcx,[rsp+20h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 4c 24 20}
074eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0752h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0756h vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
075ah vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
075eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0761h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a cf bd 5e}
0766h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0768h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
076bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
076eh add rsp,498h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 98 04 00 00}
0775h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0776h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0777h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0778h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0779h ret                                     ; RET || C3 || encoded[1]{c3}
077ah call 7ff7c77557b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 c8 0c ff}
077fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0780h call 7ff7c77557b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b c8 0c ff}
0785h int 3                                   ; INT3 || CC || encoded[1]{cc}
0786h mov rcx,7ff7c8046bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6b 04 c8 f7 7f 00 00}
0790h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b dd bd 5e}
0795h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0798h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
079ch mov rcx,7ff7c7718738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 71 c7 f7 7f 00 00}
07a6h call 7ff82720eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 60 b8 5e}
07abh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
07aeh mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
07b8h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 dd bd 5e}
07bdh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
07c0h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
07c5h mov rdx,7ff7c7b37c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 7c b3 c7 f7 7f 00 00}
07cfh call 7ff8273905b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 76 d0 5e}
07d4h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
07d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
07dah call 7ff7c7766410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 d4 0d ff}
07dfh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
07e1h call 7ff7c7763568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 a5 0d ff}
07e6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
07e9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
07ech mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
07efh call 7ff7c7744138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 b1 0b ff}
07f4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
07f7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
07fah call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 12 0e ff}
07ffh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0802h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 29 b5 5e}
0807h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> eval<uint>(BinaryBitLogicKind:byte kind, BitMatrix<uint> A, BitMatrix<uint> B, ref BitMatrix<uint> Z)
; eval_g[32u](BinaryBitLogicKind~8u,bm32x32u,bm32x32u,bm32x32u~ref)[2701] = {41 57 41 56 41 55 41 54 57 56 55 53 48 81 ec 98 05 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 60 b9 4a 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 49 8b c8 49 8b c1 48 8b b4 24 00 06 00 00 40 0f b6 d5 83 fa 0f 0f 87 14 0a 00 00 8b d2 4c 8d 05 fd 0a 00 00 45 8b 04 90 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 c7 84 24 88 05 00 00 ff ff ff ff 8b 8c 24 88 05 00 00 89 8c 24 90 05 00 00 48 8b cb 8b 94 24 90 05 00 00 e8 64 b5 ff ff 48 8b c3 e9 a7 09 00 00 48 8b cb e8 6c 5d fd ff 48 8b c3 e9 97 09 00 00 c5 fa 6f 01 c5 fa 7f 84 24 78 05 00 00 c5 fa 6f 84 24 78 05 00 00 c5 fa 7f 84 24 68 05 00 00 48 8b 94 24 68 05 00 00 c5 fa 6f 00 c5 fa 7f 84 24 58 05 00 00 c5 fa 6f 84 24 58 05 00 00 c5 fa 7f 84 24 48 05 00 00 48 8b 84 24 48 05 00 00 c5 fa 6f 06 c5 fa 7f 84 24 38 05 00 00 c5 fa 6f 84 24 38 05 00 00 c5 fa 7f 84 24 28 05 00 00 48 8b 8c 24 28 05 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd db c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c cf 48 8b fb e8 58 cc bd 5e 48 a5 48 8b c3 e9 d9 08 00 00 c5 fa 6f 01 c5 fa 7f 84 24 18 05 00 00 c5 fa 6f 84 24 18 05 00 00 c5 fa 7f 84 24 08 05 00 00 48 8b 94 24 08 05 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f8 04 00 00 c5 fa 6f 84 24 f8 04 00 00 c5 fa 7f 84 24 e8 04 00 00 48 8b 84 24 e8 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d8 04 00 00 c5 fa 6f 84 24 d8 04 00 00 c5 fa 7f 84 24 c8 04 00 00 48 8b 8c 24 c8 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd db c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb e8 92 cb bd 5e 48 a5 48 8b c3 e9 13 08 00 00 c5 fa 6f 01 c5 fa 7f 84 24 b8 04 00 00 c5 fa 6f 84 24 b8 04 00 00 c5 fa 7f 84 24 a8 04 00 00 48 8b 94 24 a8 04 00 00 c5 fa 6f 00 c5 fa 7f 84 24 98 04 00 00 c5 fa 6f 84 24 98 04 00 00 c5 fa 7f 84 24 88 04 00 00 48 8b 84 24 88 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 78 04 00 00 c5 fa 6f 84 24 78 04 00 00 c5 fa 7f 84 24 68 04 00 00 48 8b 8c 24 68 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c5 fc 57 c0 c5 fd 11 84 24 40 04 00 00 c5 fc 57 c0 c5 fd 11 84 24 20 04 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 40 04 00 00 c5 ff f0 07 c5 fd 11 84 24 20 04 00 00 c5 fd 10 84 24 40 04 00 00 c5 fd 10 8c 24 20 04 00 00 c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c 91 48 8b fb e8 96 ca bd 5e 48 a5 48 8b c3 e9 17 07 00 00 c5 fa 6f 01 c5 fa 7f 84 24 10 04 00 00 c5 fa 6f 84 24 10 04 00 00 c5 fa 7f 84 24 00 04 00 00 48 8b 94 24 00 04 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f0 03 00 00 c5 fa 6f 84 24 f0 03 00 00 c5 fa 7f 84 24 e0 03 00 00 48 8b 84 24 e0 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 03 00 00 c5 fa 6f 84 24 d0 03 00 00 c5 fa 7f 84 24 c0 03 00 00 48 8b 8c 24 c0 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c5 fc 57 c0 c5 fd 11 84 24 a0 03 00 00 c5 fc 57 c0 c5 fd 11 84 24 80 03 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 a0 03 00 00 c5 ff f0 07 c5 fd 11 84 24 80 03 00 00 c5 fd 10 84 24 a0 03 00 00 c5 fd 10 8c 24 80 03 00 00 c5 fd eb c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c 89 48 8b fb e8 92 c9 bd 5e 48 a5 48 8b c3 e9 13 06 00 00 c5 fa 6f 01 c5 fa 7f 84 24 70 03 00 00 c5 fa 6f 84 24 70 03 00 00 c5 fa 7f 84 24 60 03 00 00 48 8b 94 24 60 03 00 00 c5 fa 6f 00 c5 fa 7f 84 24 50 03 00 00 c5 fa 6f 84 24 50 03 00 00 c5 fa 7f 84 24 40 03 00 00 48 8b 84 24 40 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 30 03 00 00 c5 fa 6f 84 24 30 03 00 00 c5 fa 7f 84 24 20 03 00 00 48 8b 8c 24 20 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c cf 48 8b fb e8 d4 c8 bd 5e 48 a5 48 8b c3 e9 55 05 00 00 c5 fa 6f 01 c5 fa 7f 84 24 10 03 00 00 c5 fa 6f 84 24 10 03 00 00 c5 fa 7f 84 24 00 03 00 00 48 8b 94 24 00 03 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f0 02 00 00 c5 fa 6f 84 24 f0 02 00 00 c5 fa 7f 84 24 e0 02 00 00 48 8b 84 24 e0 02 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 02 00 00 c5 fa 6f 84 24 d0 02 00 00 c5 fa 7f 84 24 c0 02 00 00 48 8b 8c 24 c0 02 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd ef c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb e8 0e c8 bd 5e 48 a5 48 8b c3 e9 8f 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 02 00 00 c5 fa 6f 01 c5 fa 7f 84 24 b0 02 00 00 c5 fa 6f 84 24 b0 02 00 00 c5 fa 7f 84 24 a0 02 00 00 c5 fa 6f 84 24 90 02 00 00 c5 fa 7f 84 24 80 02 00 00 c5 fa 6f 84 24 80 02 00 00 c5 fa 7f 84 24 70 02 00 00 44 8b 84 24 a8 02 00 00 44 3b 84 24 78 02 00 00 0f 87 40 04 00 00 48 8b 8c 24 70 02 00 00 48 8b 94 24 a0 02 00 00 44 8b 84 24 a8 02 00 00 4d 63 c0 49 c1 e0 02 e8 3a f8 66 4e 48 8b fb e8 72 c7 bd 5e 48 a5 48 8b c3 e9 f3 03 00 00 c5 fa 6f 01 c5 fa 7f 84 24 60 02 00 00 c5 fa 6f 84 24 60 02 00 00 c5 fa 7f 84 24 50 02 00 00 48 8b 84 24 50 02 00 00 c5 fa 6f 06 c5 fa 7f 84 24 40 02 00 00 c5 fa 6f 84 24 40 02 00 00 c5 fa 7f 84 24 30 02 00 00 48 8b 94 24 30 02 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c 88 c5 fc 57 c0 c5 fd 11 84 24 00 02 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 00 02 00 00 c5 fd 10 84 24 00 02 00 00 c5 fd 76 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c 8a c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c b6 48 8b fb e8 c3 c6 bd 5e 48 a5 48 8b c3 e9 44 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 01 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f0 01 00 00 c5 fa 6f 84 24 f0 01 00 00 c5 fa 7f 84 24 e0 01 00 00 c5 fa 6f 84 24 d0 01 00 00 c5 fa 7f 84 24 c0 01 00 00 c5 fa 6f 84 24 c0 01 00 00 c5 fa 7f 84 24 b0 01 00 00 44 8b 84 24 e8 01 00 00 44 3b 84 24 b8 01 00 00 0f 87 fb 02 00 00 48 8b 8c 24 b0 01 00 00 48 8b 94 24 e0 01 00 00 44 8b 84 24 e8 01 00 00 4d 63 c0 49 c1 e0 02 e8 ef f6 66 4e 48 8b fb e8 27 c6 bd 5e 48 a5 48 8b c3 e9 a8 02 00 00 c5 fa 6f 00 c5 fa 7f 84 24 a0 01 00 00 c5 fa 6f 84 24 a0 01 00 00 c5 fa 7f 84 24 90 01 00 00 48 8b 84 24 90 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 80 01 00 00 c5 fa 6f 84 24 80 01 00 00 c5 fa 7f 84 24 70 01 00 00 48 8b 94 24 70 01 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c 88 c5 fc 57 c0 c5 fd 11 84 24 40 01 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 40 01 00 00 c5 fd 10 84 24 40 01 00 00 c5 fd 76 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c 8a c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c b6 48 8b fb e8 78 c5 bd 5e 48 a5 48 8b c3 e9 f9 01 00 00 c5 fa 6f 01 c5 fa 7f 84 24 30 01 00 00 c5 fa 6f 84 24 30 01 00 00 c5 fa 7f 84 24 20 01 00 00 48 8b 94 24 20 01 00 00 c5 fa 6f 00 c5 fa 7f 84 24 10 01 00 00 c5 fa 6f 84 24 10 01 00 00 c5 fa 7f 84 24 00 01 00 00 48 8b 84 24 00 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 f0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 e0 00 00 00 48 8b 8c 24 e0 00 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 f5 76 d1 c5 f5 ef ca c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb e8 b2 c4 bd 5e 48 a5 48 8b c3 e9 33 01 00 00 c5 fa 6f 01 c5 fa 7f 84 24 d0 00 00 00 c5 fa 6f 84 24 d0 00 00 00 c5 fa 7f 84 24 c0 00 00 00 48 8b bc 24 c0 00 00 00 c5 fa 6f 00 c5 fa 7f 84 24 b0 00 00 00 c5 fa 6f 84 24 b0 00 00 00 c5 fa 7f 84 24 a0 00 00 00 48 8b ac 24 a0 00 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 00 00 00 c5 fa 6f 84 24 90 00 00 00 c5 fa 7f 84 24 80 00 00 00 4c 8b b4 24 80 00 00 00 45 33 ff 45 33 e4 4d 63 ec 49 c1 e5 02 4a 8d 0c 2f 4a 8d 54 2d 00 c5 ff f0 01 c5 ff f0 0a c5 ec 57 d2 c5 fd 11 54 24 60 48 8d 4c 24 60 c5 fd 11 44 24 40 c5 fd 11 4c 24 20 48 8d 54 24 40 4c 8d 44 24 20 e8 eb c3 d7 ff 48 8d 4c 24 60 e8 41 a2 80 ff c5 fd 10 00 c5 fd 11 44 24 40 48 8d 4c 24 40 4b 8d 14 2e e8 99 41 fd ff 41 ff c7 41 83 c4 08 41 83 ff 04 7c 8f 48 8b fb e8 b4 c3 bd 5e 48 a5 48 8b c3 eb 38 48 8b d0 4c 8b c6 e8 62 e9 ff ff 48 8b f0 48 8b fb e8 97 c3 bd 5e 48 a5 48 8b c3 eb 1b 48 8b d0 4c 8b c6 e8 f5 e9 ff ff 48 8b f0 48 8b fb e8 7a c3 bd 5e 48 a5 48 8b c3 c5 f8 77 48 81 c4 98 05 00 00 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 79 bc 0c ff cc e8 73 bc 0c ff cc 48 b9 20 96 98 c7 f7 7f 00 00 e8 63 d1 bd 5e 48 8b f0 40 0f b6 cd e8 37 aa ff ff 48 8b d0 48 8b ce e8 0c 07 0e ff 48 8b ce e8 94 1d b5 5e cc}
; TermCode = CTC_INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,598h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 98 05 00 00}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0019h lea rdi,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 60}
001eh mov ecx,14ah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4a 01 00 00}
0023h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0025h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
002dh mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
002fh mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
0032h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0035h mov rsi,[rsp+600h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 00 06 00 00}
003dh movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0041h cmp edx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fa 0f}
0044h ja near ptr 0a5eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 14 0a 00 00}
004ah mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
004ch lea r8,[rip+0afdh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 fd 0a 00 00}
0053h mov r8d,[r8+rdx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 90}
0057h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
005eh add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0061h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0064h mov dword ptr [rsp+588h],0ffffffffh     ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 88 05 00 00 ff ff ff ff}
006fh mov ecx,[rsp+588h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 8c 24 88 05 00 00}
0076h mov [rsp+590h],ecx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 8c 24 90 05 00 00}
007dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0080h mov edx,[rsp+590h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 90 05 00 00}
0087h call 7ff7c86846d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 b5 ff ff}
008ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
008fh jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a7 09 00 00}
0094h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0097h call 7ff7c865eee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 5d fd ff}
009ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009fh jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 97 09 00 00}
00a4h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00a8h vmovdqu xmmword ptr [rsp+578h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 05 00 00}
00b1h vmovdqu xmm0,xmmword ptr [rsp+578h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 05 00 00}
00bah vmovdqu xmmword ptr [rsp+568h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 68 05 00 00}
00c3h mov rdx,[rsp+568h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 68 05 00 00}
00cbh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
00cfh vmovdqu xmmword ptr [rsp+558h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 58 05 00 00}
00d8h vmovdqu xmm0,xmmword ptr [rsp+558h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 58 05 00 00}
00e1h vmovdqu xmmword ptr [rsp+548h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 48 05 00 00}
00eah mov rax,[rsp+548h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 48 05 00 00}
00f2h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
00f6h vmovdqu xmmword ptr [rsp+538h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 38 05 00 00}
00ffh vmovdqu xmm0,xmmword ptr [rsp+538h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 38 05 00 00}
0108h vmovdqu xmmword ptr [rsp+528h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 28 05 00 00}
0111h mov rcx,[rsp+528h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 28 05 00 00}
0119h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
011ch xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
011fh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0122h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0126h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
012ah lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
012eh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0133h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
0137h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
013bh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
013eh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0143h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0146h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
014ah cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
014eh jl short 011fh                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0150h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0153h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 cc bd 5e}
0158h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
015ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
015dh jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d9 08 00 00}
0162h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0166h vmovdqu xmmword ptr [rsp+518h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 18 05 00 00}
016fh vmovdqu xmm0,xmmword ptr [rsp+518h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 18 05 00 00}
0178h vmovdqu xmmword ptr [rsp+508h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 05 00 00}
0181h mov rdx,[rsp+508h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 08 05 00 00}
0189h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
018dh vmovdqu xmmword ptr [rsp+4f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 04 00 00}
0196h vmovdqu xmm0,xmmword ptr [rsp+4f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 04 00 00}
019fh vmovdqu xmmword ptr [rsp+4e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 04 00 00}
01a8h mov rax,[rsp+4e8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e8 04 00 00}
01b0h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
01b4h vmovdqu xmmword ptr [rsp+4d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 04 00 00}
01bdh vmovdqu xmm0,xmmword ptr [rsp+4d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 04 00 00}
01c6h vmovdqu xmmword ptr [rsp+4c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 04 00 00}
01cfh mov rcx,[rsp+4c8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c8 04 00 00}
01d7h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
01dah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
01ddh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
01e0h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
01e4h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
01e8h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
01ech vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
01f1h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
01f5h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
01f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
01fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0201h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0204h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0209h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
020ch add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0210h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0214h jl short 01ddh                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
0216h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0219h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 cb bd 5e}
021eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0220h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0223h jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 13 08 00 00}
0228h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
022ch vmovdqu xmmword ptr [rsp+4b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 04 00 00}
0235h vmovdqu xmm0,xmmword ptr [rsp+4b8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b8 04 00 00}
023eh vmovdqu xmmword ptr [rsp+4a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 04 00 00}
0247h mov rdx,[rsp+4a8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 a8 04 00 00}
024fh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0253h vmovdqu xmmword ptr [rsp+498h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 04 00 00}
025ch vmovdqu xmm0,xmmword ptr [rsp+498h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 04 00 00}
0265h vmovdqu xmmword ptr [rsp+488h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 04 00 00}
026eh mov rax,[rsp+488h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 88 04 00 00}
0276h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
027ah vmovdqu xmmword ptr [rsp+478h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 04 00 00}
0283h vmovdqu xmm0,xmmword ptr [rsp+478h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 04 00 00}
028ch vmovdqu xmmword ptr [rsp+468h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 68 04 00 00}
0295h mov rcx,[rsp+468h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 68 04 00 00}
029dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
02a0h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
02a3h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
02a6h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
02aah lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
02aeh lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
02b2h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
02b6h vmovupd [rsp+440h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 04 00 00}
02bfh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
02c3h vmovupd [rsp+420h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 04 00 00}
02cch vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
02d1h vmovupd [rsp+440h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 04 00 00}
02dah vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
02deh vmovupd [rsp+420h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 04 00 00}
02e7h vmovupd ymm0,[rsp+440h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 04 00 00}
02f0h vmovupd ymm1,[rsp+420h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 20 04 00 00}
02f9h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
02fdh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0300h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0305h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0308h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
030ch cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0310h jl short 02a3h                          ; JL rel8 || 7C cb || encoded[2]{7c 91}
0312h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0315h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 ca bd 5e}
031ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
031ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
031fh jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 17 07 00 00}
0324h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0328h vmovdqu xmmword ptr [rsp+410h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 04 00 00}
0331h vmovdqu xmm0,xmmword ptr [rsp+410h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 04 00 00}
033ah vmovdqu xmmword ptr [rsp+400h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 04 00 00}
0343h mov rdx,[rsp+400h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 04 00 00}
034bh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
034fh vmovdqu xmmword ptr [rsp+3f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 03 00 00}
0358h vmovdqu xmm0,xmmword ptr [rsp+3f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 03 00 00}
0361h vmovdqu xmmword ptr [rsp+3e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 03 00 00}
036ah mov rax,[rsp+3e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e0 03 00 00}
0372h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0376h vmovdqu xmmword ptr [rsp+3d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 03 00 00}
037fh vmovdqu xmm0,xmmword ptr [rsp+3d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 03 00 00}
0388h vmovdqu xmmword ptr [rsp+3c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 03 00 00}
0391h mov rcx,[rsp+3c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c0 03 00 00}
0399h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
039ch xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
039fh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
03a2h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
03a6h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
03aah lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
03aeh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
03b2h vmovupd [rsp+3a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 03 00 00}
03bbh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
03bfh vmovupd [rsp+380h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 03 00 00}
03c8h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
03cdh vmovupd [rsp+3a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 03 00 00}
03d6h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
03dah vmovupd [rsp+380h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 03 00 00}
03e3h vmovupd ymm0,[rsp+3a0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 a0 03 00 00}
03ech vmovupd ymm1,[rsp+380h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 80 03 00 00}
03f5h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
03f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
03fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0401h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0404h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0409h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
040ch add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0410h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0414h jl short 039fh                          ; JL rel8 || 7C cb || encoded[2]{7c 89}
0416h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0419h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 c9 bd 5e}
041eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0420h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0423h jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 13 06 00 00}
0428h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
042ch vmovdqu xmmword ptr [rsp+370h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 03 00 00}
0435h vmovdqu xmm0,xmmword ptr [rsp+370h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 03 00 00}
043eh vmovdqu xmmword ptr [rsp+360h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 03 00 00}
0447h mov rdx,[rsp+360h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 60 03 00 00}
044fh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0453h vmovdqu xmmword ptr [rsp+350h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 03 00 00}
045ch vmovdqu xmm0,xmmword ptr [rsp+350h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 03 00 00}
0465h vmovdqu xmmword ptr [rsp+340h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 03 00 00}
046eh mov rax,[rsp+340h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 40 03 00 00}
0476h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
047ah vmovdqu xmmword ptr [rsp+330h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 03 00 00}
0483h vmovdqu xmm0,xmmword ptr [rsp+330h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 03 00 00}
048ch vmovdqu xmmword ptr [rsp+320h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 03 00 00}
0495h mov rcx,[rsp+320h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 20 03 00 00}
049dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
04a0h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
04a3h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
04a6h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
04aah lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
04aeh lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
04b2h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
04b7h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
04bbh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
04bfh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
04c2h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
04c7h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
04cah add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
04ceh cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
04d2h jl short 04a3h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
04d4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
04d7h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 c8 bd 5e}
04dch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
04deh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
04e1h jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 05 00 00}
04e6h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
04eah vmovdqu xmmword ptr [rsp+310h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 03 00 00}
04f3h vmovdqu xmm0,xmmword ptr [rsp+310h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 03 00 00}
04fch vmovdqu xmmword ptr [rsp+300h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 03 00 00}
0505h mov rdx,[rsp+300h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 03 00 00}
050dh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0511h vmovdqu xmmword ptr [rsp+2f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 02 00 00}
051ah vmovdqu xmm0,xmmword ptr [rsp+2f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 02 00 00}
0523h vmovdqu xmmword ptr [rsp+2e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 02 00 00}
052ch mov rax,[rsp+2e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e0 02 00 00}
0534h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0538h vmovdqu xmmword ptr [rsp+2d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 02 00 00}
0541h vmovdqu xmm0,xmmword ptr [rsp+2d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 02 00 00}
054ah vmovdqu xmmword ptr [rsp+2c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 02 00 00}
0553h mov rcx,[rsp+2c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c0 02 00 00}
055bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
055eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0561h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0564h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0568h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
056ch lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
0570h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0575h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
0579h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
057dh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0581h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0585h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0588h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
058dh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0590h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0594h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0598h jl short 0561h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
059ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
059dh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e c8 bd 5e}
05a2h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
05a4h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
05a7h jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8f 04 00 00}
05ach vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
05b0h vmovdqu xmmword ptr [rsp+290h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 02 00 00}
05b9h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
05bdh vmovdqu xmmword ptr [rsp+2b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 02 00 00}
05c6h vmovdqu xmm0,xmmword ptr [rsp+2b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 02 00 00}
05cfh vmovdqu xmmword ptr [rsp+2a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 02 00 00}
05d8h vmovdqu xmm0,xmmword ptr [rsp+290h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 02 00 00}
05e1h vmovdqu xmmword ptr [rsp+280h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 02 00 00}
05eah vmovdqu xmm0,xmmword ptr [rsp+280h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 02 00 00}
05f3h vmovdqu xmmword ptr [rsp+270h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 02 00 00}
05fch mov r8d,[rsp+2a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 a8 02 00 00}
0604h cmp r8d,[rsp+278h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 78 02 00 00}
060ch ja near ptr 0a52h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 40 04 00 00}
0612h mov rcx,[rsp+270h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 70 02 00 00}
061ah mov rdx,[rsp+2a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 a0 02 00 00}
0622h mov r8d,[rsp+2a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 a8 02 00 00}
062ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
062dh shl r8,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 02}
0631h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a f8 66 4e}
0636h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0639h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 c7 bd 5e}
063eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0640h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0643h jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f3 03 00 00}
0648h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
064ch vmovdqu xmmword ptr [rsp+260h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 02 00 00}
0655h vmovdqu xmm0,xmmword ptr [rsp+260h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 02 00 00}
065eh vmovdqu xmmword ptr [rsp+250h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 02 00 00}
0667h mov rax,[rsp+250h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 50 02 00 00}
066fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0673h vmovdqu xmmword ptr [rsp+240h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 02 00 00}
067ch vmovdqu xmm0,xmmword ptr [rsp+240h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 02 00 00}
0685h vmovdqu xmmword ptr [rsp+230h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 02 00 00}
068eh mov rdx,[rsp+230h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 30 02 00 00}
0696h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0698h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
069bh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
069eh lea r9,[rax+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 88}
06a2h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
06a6h vmovupd [rsp+200h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 02 00 00}
06afh vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
06b4h vmovupd [rsp+200h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 02 00 00}
06bdh vmovupd ymm0,[rsp+200h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 00 02 00 00}
06c6h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
06cah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
06ceh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
06d1h lea r9,[rdx+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 8a}
06d5h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
06dah inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
06dch add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
06e0h cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
06e3h jl short 069bh                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
06e5h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
06e8h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 c6 bd 5e}
06edh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
06efh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
06f2h jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 44 03 00 00}
06f7h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
06fbh vmovdqu xmmword ptr [rsp+1d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 01 00 00}
0704h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0708h vmovdqu xmmword ptr [rsp+1f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 01 00 00}
0711h vmovdqu xmm0,xmmword ptr [rsp+1f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 01 00 00}
071ah vmovdqu xmmword ptr [rsp+1e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 01 00 00}
0723h vmovdqu xmm0,xmmword ptr [rsp+1d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 01 00 00}
072ch vmovdqu xmmword ptr [rsp+1c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 01 00 00}
0735h vmovdqu xmm0,xmmword ptr [rsp+1c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 01 00 00}
073eh vmovdqu xmmword ptr [rsp+1b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 01 00 00}
0747h mov r8d,[rsp+1e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 e8 01 00 00}
074fh cmp r8d,[rsp+1b8h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 b8 01 00 00}
0757h ja near ptr 0a58h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 fb 02 00 00}
075dh mov rcx,[rsp+1b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 b0 01 00 00}
0765h mov rdx,[rsp+1e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 e0 01 00 00}
076dh mov r8d,[rsp+1e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 e8 01 00 00}
0775h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0778h shl r8,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 02}
077ch call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef f6 66 4e}
0781h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0784h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 c6 bd 5e}
0789h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
078bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
078eh jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a8 02 00 00}
0793h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0797h vmovdqu xmmword ptr [rsp+1a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 01 00 00}
07a0h vmovdqu xmm0,xmmword ptr [rsp+1a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 01 00 00}
07a9h vmovdqu xmmword ptr [rsp+190h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 01 00 00}
07b2h mov rax,[rsp+190h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 90 01 00 00}
07bah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
07beh vmovdqu xmmword ptr [rsp+180h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 01 00 00}
07c7h vmovdqu xmm0,xmmword ptr [rsp+180h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 01 00 00}
07d0h vmovdqu xmmword ptr [rsp+170h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 01 00 00}
07d9h mov rdx,[rsp+170h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 70 01 00 00}
07e1h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
07e3h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
07e6h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
07e9h lea r9,[rax+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 88}
07edh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
07f1h vmovupd [rsp+140h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 01 00 00}
07fah vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
07ffh vmovupd [rsp+140h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 01 00 00}
0808h vmovupd ymm0,[rsp+140h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 01 00 00}
0811h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0815h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0819h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
081ch lea r9,[rdx+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 8a}
0820h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0825h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0827h add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
082bh cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
082eh jl short 07e6h                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
0830h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0833h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 c5 bd 5e}
0838h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
083ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
083dh jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f9 01 00 00}
0842h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0846h vmovdqu xmmword ptr [rsp+130h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 01 00 00}
084fh vmovdqu xmm0,xmmword ptr [rsp+130h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 01 00 00}
0858h vmovdqu xmmword ptr [rsp+120h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 01 00 00}
0861h mov rdx,[rsp+120h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 20 01 00 00}
0869h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
086dh vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
0876h vmovdqu xmm0,xmmword ptr [rsp+110h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 01 00 00}
087fh vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
0888h mov rax,[rsp+100h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 00 01 00 00}
0890h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0894h vmovdqu xmmword ptr [rsp+0f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 00 00 00}
089dh vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
08a6h vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
08afh mov rcx,[rsp+0e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 e0 00 00 00}
08b7h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
08bah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
08bdh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
08c0h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
08c4h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
08c8h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
08cch vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
08d1h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
08d5h vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
08d9h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
08ddh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
08e1h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
08e4h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
08e9h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
08ech add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
08f0h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
08f4h jl short 08bdh                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
08f6h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
08f9h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 c4 bd 5e}
08feh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0900h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0903h jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0908h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
090ch vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
0915h vmovdqu xmm0,xmmword ptr [rsp+0d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 00 00 00}
091eh vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
0927h mov rdi,[rsp+0c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b bc 24 c0 00 00 00}
092fh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0933h vmovdqu xmmword ptr [rsp+0b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 00 00 00}
093ch vmovdqu xmm0,xmmword ptr [rsp+0b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 00 00 00}
0945h vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
094eh mov rbp,[rsp+0a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 a0 00 00 00}
0956h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
095ah vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
0963h vmovdqu xmm0,xmmword ptr [rsp+90h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 00 00 00}
096ch vmovdqu xmmword ptr [rsp+80h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 00 00 00}
0975h mov r14,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{4c 8b b4 24 80 00 00 00}
097dh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0980h xor r12d,r12d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 e4}
0983h movsxd r13,r12d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 ec}
0986h shl r13,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e5 02}
098ah lea rcx,[rdi+r13]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 0c 2f}
098eh lea rdx,[rbp+r13]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{4a 8d 54 2d 00}
0993h vlddqu ymm0,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 01}
0997h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
099bh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
099fh vmovupd [rsp+60h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 60}
09a5h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
09aah vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
09b0h vmovupd [rsp+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 4c 24 20}
09b6h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
09bbh lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
09c0h call 7ff7c8405e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb c3 d7 ff}
09c5h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
09cah call 7ff7c7e93cf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 a2 80 ff}
09cfh vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
09d3h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
09d9h lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
09deh lea rdx,[r14+r13]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 14 2e}
09e2h call 7ff7c865dc60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 41 fd ff}
09e7h inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
09eah add r12d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c4 08}
09eeh cmp r15d,4                              ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 ff 04}
09f2h jl short 0983h                          ; JL rel8 || 7C cb || encoded[2]{7c 8f}
09f4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
09f7h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 c3 bd 5e}
09fch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
09feh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0a01h jmp short 0a3bh                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0a03h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a06h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0a09h call 7ff7c8688450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 e9 ff ff}
0a0eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a11h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0a14h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 c3 bd 5e}
0a19h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0a1bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0a1eh jmp short 0a3bh                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0a20h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a23h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0a26h call 7ff7c8688500h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 e9 ff ff}
0a2bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a2eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0a31h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a c3 bd 5e}
0a36h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0a38h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0a3bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0a3eh add rsp,598h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 98 05 00 00}
0a45h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0a46h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0a47h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0a48h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0a49h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0a4bh pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0a4dh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0a4fh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0a51h ret                                     ; RET || C3 || encoded[1]{c3}
0a52h call 7ff7c77557b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 bc 0c ff}
0a57h int 3                                   ; INT3 || CC || encoded[1]{cc}
0a58h call 7ff7c77557b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 bc 0c ff}
0a5dh int 3                                   ; INT3 || CC || encoded[1]{cc}
0a5eh mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
0a68h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 d1 bd 5e}
0a6dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a70h movzx ecx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cd}
0a74h call 7ff7c8684590h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 aa ff ff}
0a79h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a7ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0a7fh call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 07 0e ff}
0a84h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0a87h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 1d b5 5e}
0a8ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitMatrix<ulong> A, BitMatrix<ulong> B, ref BitMatrix<ulong> Z)
; eval_g[64u](BinaryBitLogicKind~8u,bm64x64u,bm64x64u,bm64x64u~ref)[2704] = {41 57 41 56 41 55 41 54 57 56 55 53 48 81 ec 98 05 00 00 c5 f8 77 48 8b f1 48 8d bc 24 80 00 00 00 b9 42 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 49 8b c8 49 8b c1 48 8b b4 24 00 06 00 00 40 0f b6 d5 83 fa 0f 0f 87 14 0a 00 00 8b d2 4c 8d 05 fa 0a 00 00 45 8b 04 90 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 48 c7 84 24 88 05 00 00 ff ff ff ff 48 8b 8c 24 88 05 00 00 48 89 8c 24 90 05 00 00 48 8b cb 48 8b 94 24 90 05 00 00 e8 6d c5 ff ff 48 8b c3 e9 a3 09 00 00 48 8b cb e8 c5 51 fd ff 48 8b c3 e9 93 09 00 00 c5 fa 6f 01 c5 fa 7f 84 24 78 05 00 00 c5 fa 6f 84 24 78 05 00 00 c5 fa 7f 84 24 68 05 00 00 48 8b 94 24 68 05 00 00 c5 fa 6f 00 c5 fa 7f 84 24 58 05 00 00 c5 fa 6f 84 24 58 05 00 00 c5 fa 7f 84 24 48 05 00 00 48 8b 84 24 48 05 00 00 c5 fa 6f 06 c5 fa 7f 84 24 38 05 00 00 c5 fa 6f 84 24 38 05 00 00 c5 fa 7f 84 24 28 05 00 00 48 8b 8c 24 28 05 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd db c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c cf 48 8b fb e8 91 c0 bd 5e 48 a5 48 8b c3 e9 d5 08 00 00 c5 fa 6f 01 c5 fa 7f 84 24 18 05 00 00 c5 fa 6f 84 24 18 05 00 00 c5 fa 7f 84 24 08 05 00 00 48 8b 94 24 08 05 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f8 04 00 00 c5 fa 6f 84 24 f8 04 00 00 c5 fa 7f 84 24 e8 04 00 00 48 8b 84 24 e8 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d8 04 00 00 c5 fa 6f 84 24 d8 04 00 00 c5 fa 7f 84 24 c8 04 00 00 48 8b 8c 24 c8 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd db c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb e8 ca bf bd 5e 48 a5 48 8b c3 e9 0e 08 00 00 c5 fa 6f 01 c5 fa 7f 84 24 b8 04 00 00 c5 fa 6f 84 24 b8 04 00 00 c5 fa 7f 84 24 a8 04 00 00 48 8b 94 24 a8 04 00 00 c5 fa 6f 00 c5 fa 7f 84 24 98 04 00 00 c5 fa 6f 84 24 98 04 00 00 c5 fa 7f 84 24 88 04 00 00 48 8b 84 24 88 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 78 04 00 00 c5 fa 6f 84 24 78 04 00 00 c5 fa 7f 84 24 68 04 00 00 48 8b 8c 24 68 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c5 fc 57 c0 c5 fd 11 84 24 40 04 00 00 c5 fc 57 c0 c5 fd 11 84 24 20 04 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 40 04 00 00 c5 ff f0 07 c5 fd 11 84 24 20 04 00 00 c5 fd 10 84 24 40 04 00 00 c5 fd 10 8c 24 20 04 00 00 c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c 91 48 8b fb e8 ce be bd 5e 48 a5 48 8b c3 e9 12 07 00 00 c5 fa 6f 01 c5 fa 7f 84 24 10 04 00 00 c5 fa 6f 84 24 10 04 00 00 c5 fa 7f 84 24 00 04 00 00 48 8b 94 24 00 04 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f0 03 00 00 c5 fa 6f 84 24 f0 03 00 00 c5 fa 7f 84 24 e0 03 00 00 48 8b 84 24 e0 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 03 00 00 c5 fa 6f 84 24 d0 03 00 00 c5 fa 7f 84 24 c0 03 00 00 48 8b 8c 24 c0 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c5 fc 57 c0 c5 fd 11 84 24 a0 03 00 00 c5 fc 57 c0 c5 fd 11 84 24 80 03 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 a0 03 00 00 c5 ff f0 07 c5 fd 11 84 24 80 03 00 00 c5 fd 10 84 24 a0 03 00 00 c5 fd 10 8c 24 80 03 00 00 c5 fd eb c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c 88 48 8b fb e8 c9 bd bd 5e 48 a5 48 8b c3 e9 0d 06 00 00 c5 fa 6f 01 c5 fa 7f 84 24 70 03 00 00 c5 fa 6f 84 24 70 03 00 00 c5 fa 7f 84 24 60 03 00 00 48 8b 94 24 60 03 00 00 c5 fa 6f 00 c5 fa 7f 84 24 50 03 00 00 c5 fa 6f 84 24 50 03 00 00 c5 fa 7f 84 24 40 03 00 00 48 8b 84 24 40 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 30 03 00 00 c5 fa 6f 84 24 30 03 00 00 c5 fa 7f 84 24 20 03 00 00 48 8b 8c 24 20 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c cf 48 8b fb e8 0b bd bd 5e 48 a5 48 8b c3 e9 4f 05 00 00 c5 fa 6f 01 c5 fa 7f 84 24 10 03 00 00 c5 fa 6f 84 24 10 03 00 00 c5 fa 7f 84 24 00 03 00 00 48 8b 94 24 00 03 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f0 02 00 00 c5 fa 6f 84 24 f0 02 00 00 c5 fa 7f 84 24 e0 02 00 00 48 8b 84 24 e0 02 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 02 00 00 c5 fa 6f 84 24 d0 02 00 00 c5 fa 7f 84 24 c0 02 00 00 48 8b 8c 24 c0 02 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd ef c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb e8 44 bc bd 5e 48 a5 48 8b c3 e9 88 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 02 00 00 c5 fa 6f 01 c5 fa 7f 84 24 b0 02 00 00 c5 fa 6f 84 24 b0 02 00 00 c5 fa 7f 84 24 a0 02 00 00 c5 fa 6f 84 24 90 02 00 00 c5 fa 7f 84 24 80 02 00 00 c5 fa 6f 84 24 80 02 00 00 c5 fa 7f 84 24 70 02 00 00 44 8b 84 24 a8 02 00 00 44 3b 84 24 78 02 00 00 0f 87 39 04 00 00 48 8b 8c 24 70 02 00 00 48 8b 94 24 a0 02 00 00 44 8b 84 24 a8 02 00 00 4d 63 c0 49 c1 e0 03 e8 70 ec 66 4e 48 8b fb e8 a8 bb bd 5e 48 a5 48 8b c3 e9 ec 03 00 00 c5 fa 6f 01 c5 fa 7f 84 24 60 02 00 00 c5 fa 6f 84 24 60 02 00 00 c5 fa 7f 84 24 50 02 00 00 48 8b 84 24 50 02 00 00 c5 fa 6f 06 c5 fa 7f 84 24 40 02 00 00 c5 fa 6f 84 24 40 02 00 00 c5 fa 7f 84 24 30 02 00 00 48 8b 94 24 30 02 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c c8 c5 fc 57 c0 c5 fd 11 84 24 00 02 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 00 02 00 00 c5 fd 10 84 24 00 02 00 00 c4 e2 7d 29 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c b5 48 8b fb e8 f8 ba bd 5e 48 a5 48 8b c3 e9 3c 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 01 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f0 01 00 00 c5 fa 6f 84 24 f0 01 00 00 c5 fa 7f 84 24 e0 01 00 00 c5 fa 6f 84 24 d0 01 00 00 c5 fa 7f 84 24 c0 01 00 00 c5 fa 6f 84 24 c0 01 00 00 c5 fa 7f 84 24 b0 01 00 00 44 8b 84 24 e8 01 00 00 44 3b 84 24 b8 01 00 00 0f 87 f3 02 00 00 48 8b 8c 24 b0 01 00 00 48 8b 94 24 e0 01 00 00 44 8b 84 24 e8 01 00 00 4d 63 c0 49 c1 e0 03 e8 24 eb 66 4e 48 8b fb e8 5c ba bd 5e 48 a5 48 8b c3 e9 a0 02 00 00 c5 fa 6f 00 c5 fa 7f 84 24 a0 01 00 00 c5 fa 6f 84 24 a0 01 00 00 c5 fa 7f 84 24 90 01 00 00 48 8b 84 24 90 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 80 01 00 00 c5 fa 6f 84 24 80 01 00 00 c5 fa 7f 84 24 70 01 00 00 48 8b 94 24 70 01 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c c8 c5 fc 57 c0 c5 fd 11 84 24 40 01 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 40 01 00 00 c5 fd 10 84 24 40 01 00 00 c4 e2 7d 29 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c b5 48 8b fb e8 ac b9 bd 5e 48 a5 48 8b c3 e9 f0 01 00 00 c5 fa 6f 01 c5 fa 7f 84 24 30 01 00 00 c5 fa 6f 84 24 30 01 00 00 c5 fa 7f 84 24 20 01 00 00 48 8b 94 24 20 01 00 00 c5 fa 6f 00 c5 fa 7f 84 24 10 01 00 00 c5 fa 6f 84 24 10 01 00 00 c5 fa 7f 84 24 00 01 00 00 48 8b 84 24 00 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 f0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 e0 00 00 00 48 8b 8c 24 e0 00 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c4 e2 75 29 d1 c5 f5 ef ca c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb e8 e5 b8 bd 5e 48 a5 48 8b c3 e9 29 01 00 00 c5 fa 6f 01 c5 fa 7f 84 24 d0 00 00 00 c5 fa 6f 84 24 d0 00 00 00 c5 fa 7f 84 24 c0 00 00 00 48 8b bc 24 c0 00 00 00 c5 fa 6f 00 c5 fa 7f 84 24 b0 00 00 00 c5 fa 6f 84 24 b0 00 00 00 c5 fa 7f 84 24 a0 00 00 00 48 8b ac 24 a0 00 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 00 00 00 c5 fa 6f 84 24 90 00 00 00 c5 fa 7f 84 24 80 00 00 00 4c 8b b4 24 80 00 00 00 45 33 ff 45 33 e4 4d 63 ec 49 c1 e5 03 4a 8d 0c 2f 4a 8d 54 2d 00 c5 ff f0 01 c5 ff f0 0a 48 8d 4c 24 60 c5 fd 11 44 24 40 c5 fd 11 4c 24 20 48 8d 54 24 40 4c 8d 44 24 20 e8 10 2f da ff c5 fd 10 44 24 60 c5 fd 11 44 24 40 4b 8d 0c 2e e8 d3 b5 7f ff 48 8b d0 48 8d 4c 24 40 e8 fe 0a 7f ff 41 ff c7 41 83 c4 04 41 83 ff 10 7c 99 48 8b fb e8 f1 b7 bd 5e 48 a5 48 8b c3 eb 38 48 8b d0 4c 8b c6 e8 2f df ff ff 48 8b f0 48 8b fb e8 d4 b7 bd 5e 48 a5 48 8b c3 eb 1b 48 8b d0 4c 8b c6 e8 c2 df ff ff 48 8b f0 48 8b fb e8 b7 b7 bd 5e 48 a5 48 8b c3 c5 f8 77 48 81 c4 98 05 00 00 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 b6 b0 0c ff cc e8 b0 b0 0c ff cc 48 b9 20 96 98 c7 f7 7f 00 00 e8 a0 c5 bd 5e 48 8b f0 40 0f b6 cd e8 94 ad ff ff 48 8b d0 48 8b ce e8 49 fb 0d ff 48 8b ce e8 d1 11 b5 5e cc}
; TermCode = CTC_INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,598h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 98 05 00 00}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0019h lea rdi,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d bc 24 80 00 00 00}
0021h mov ecx,142h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 42 01 00 00}
0026h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0028h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0030h mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
0032h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
0035h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0038h mov rsi,[rsp+600h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 00 06 00 00}
0040h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0044h cmp edx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fa 0f}
0047h ja near ptr 0a61h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 14 0a 00 00}
004dh mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
004fh lea r8,[rip+0afah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 fa 0a 00 00}
0056h mov r8d,[r8+rdx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 90}
005ah lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0061h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0064h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0067h mov qword ptr [rsp+588h],0ffffffffffffffffh; MOV r/m64, imm32 || REX.W C7 /0 id || encoded[12]{48 c7 84 24 88 05 00 00 ff ff ff ff}
0073h mov rcx,[rsp+588h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 88 05 00 00}
007bh mov [rsp+590h],rcx                      ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{48 89 8c 24 90 05 00 00}
0083h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0086h mov rdx,[rsp+590h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 90 05 00 00}
008eh call 7ff7c86862a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d c5 ff ff}
0093h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0096h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a3 09 00 00}
009bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
009eh call 7ff7c865ef08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 51 fd ff}
00a3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00a6h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 93 09 00 00}
00abh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00afh vmovdqu xmmword ptr [rsp+578h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 05 00 00}
00b8h vmovdqu xmm0,xmmword ptr [rsp+578h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 05 00 00}
00c1h vmovdqu xmmword ptr [rsp+568h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 68 05 00 00}
00cah mov rdx,[rsp+568h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 68 05 00 00}
00d2h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
00d6h vmovdqu xmmword ptr [rsp+558h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 58 05 00 00}
00dfh vmovdqu xmm0,xmmword ptr [rsp+558h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 58 05 00 00}
00e8h vmovdqu xmmword ptr [rsp+548h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 48 05 00 00}
00f1h mov rax,[rsp+548h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 48 05 00 00}
00f9h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
00fdh vmovdqu xmmword ptr [rsp+538h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 38 05 00 00}
0106h vmovdqu xmm0,xmmword ptr [rsp+538h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 38 05 00 00}
010fh vmovdqu xmmword ptr [rsp+528h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 28 05 00 00}
0118h mov rcx,[rsp+528h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 28 05 00 00}
0120h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0123h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0126h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0129h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
012dh lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
0131h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
0135h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
013ah vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
013eh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0142h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0145h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
014ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
014dh add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0151h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0155h jl short 0126h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0157h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
015ah call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 c0 bd 5e}
015fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0161h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0164h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d5 08 00 00}
0169h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
016dh vmovdqu xmmword ptr [rsp+518h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 18 05 00 00}
0176h vmovdqu xmm0,xmmword ptr [rsp+518h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 18 05 00 00}
017fh vmovdqu xmmword ptr [rsp+508h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 05 00 00}
0188h mov rdx,[rsp+508h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 08 05 00 00}
0190h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0194h vmovdqu xmmword ptr [rsp+4f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 04 00 00}
019dh vmovdqu xmm0,xmmword ptr [rsp+4f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 04 00 00}
01a6h vmovdqu xmmword ptr [rsp+4e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 04 00 00}
01afh mov rax,[rsp+4e8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e8 04 00 00}
01b7h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
01bbh vmovdqu xmmword ptr [rsp+4d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 04 00 00}
01c4h vmovdqu xmm0,xmmword ptr [rsp+4d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 04 00 00}
01cdh vmovdqu xmmword ptr [rsp+4c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 04 00 00}
01d6h mov rcx,[rsp+4c8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c8 04 00 00}
01deh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
01e1h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
01e4h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
01e7h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
01ebh lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
01efh lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
01f3h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
01f8h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
01fch vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0200h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0205h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0209h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
020ch vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0211h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0214h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0218h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
021ch jl short 01e4h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
021eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0221h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca bf bd 5e}
0226h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0228h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
022bh jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0e 08 00 00}
0230h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0234h vmovdqu xmmword ptr [rsp+4b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 04 00 00}
023dh vmovdqu xmm0,xmmword ptr [rsp+4b8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b8 04 00 00}
0246h vmovdqu xmmword ptr [rsp+4a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 04 00 00}
024fh mov rdx,[rsp+4a8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 a8 04 00 00}
0257h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
025bh vmovdqu xmmword ptr [rsp+498h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 04 00 00}
0264h vmovdqu xmm0,xmmword ptr [rsp+498h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 04 00 00}
026dh vmovdqu xmmword ptr [rsp+488h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 04 00 00}
0276h mov rax,[rsp+488h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 88 04 00 00}
027eh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0282h vmovdqu xmmword ptr [rsp+478h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 04 00 00}
028bh vmovdqu xmm0,xmmword ptr [rsp+478h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 04 00 00}
0294h vmovdqu xmmword ptr [rsp+468h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 68 04 00 00}
029dh mov rcx,[rsp+468h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 68 04 00 00}
02a5h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
02a8h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
02abh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
02aeh shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
02b2h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
02b6h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
02bah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
02beh vmovupd [rsp+440h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 04 00 00}
02c7h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
02cbh vmovupd [rsp+420h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 04 00 00}
02d4h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
02d9h vmovupd [rsp+440h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 04 00 00}
02e2h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
02e6h vmovupd [rsp+420h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 04 00 00}
02efh vmovupd ymm0,[rsp+440h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 04 00 00}
02f8h vmovupd ymm1,[rsp+420h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 20 04 00 00}
0301h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0305h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0308h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
030dh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0310h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0314h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0318h jl short 02abh                          ; JL rel8 || 7C cb || encoded[2]{7c 91}
031ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
031dh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce be bd 5e}
0322h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0324h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0327h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 12 07 00 00}
032ch vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0330h vmovdqu xmmword ptr [rsp+410h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 04 00 00}
0339h vmovdqu xmm0,xmmword ptr [rsp+410h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 04 00 00}
0342h vmovdqu xmmword ptr [rsp+400h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 04 00 00}
034bh mov rdx,[rsp+400h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 04 00 00}
0353h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0357h vmovdqu xmmword ptr [rsp+3f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 03 00 00}
0360h vmovdqu xmm0,xmmword ptr [rsp+3f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 03 00 00}
0369h vmovdqu xmmword ptr [rsp+3e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 03 00 00}
0372h mov rax,[rsp+3e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e0 03 00 00}
037ah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
037eh vmovdqu xmmword ptr [rsp+3d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 03 00 00}
0387h vmovdqu xmm0,xmmword ptr [rsp+3d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 03 00 00}
0390h vmovdqu xmmword ptr [rsp+3c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 03 00 00}
0399h mov rcx,[rsp+3c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c0 03 00 00}
03a1h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
03a4h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
03a7h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
03aah shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
03aeh lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
03b2h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
03b6h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
03bah vmovupd [rsp+3a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 03 00 00}
03c3h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
03c7h vmovupd [rsp+380h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 03 00 00}
03d0h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
03d5h vmovupd [rsp+3a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 03 00 00}
03deh vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
03e2h vmovupd [rsp+380h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 03 00 00}
03ebh vmovupd ymm0,[rsp+3a0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 a0 03 00 00}
03f4h vmovupd ymm1,[rsp+380h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 80 03 00 00}
03fdh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0401h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0406h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
040ah add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
040dh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0412h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0415h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0419h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
041dh jl short 03a7h                          ; JL rel8 || 7C cb || encoded[2]{7c 88}
041fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0422h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 bd bd 5e}
0427h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0429h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
042ch jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0d 06 00 00}
0431h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0435h vmovdqu xmmword ptr [rsp+370h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 03 00 00}
043eh vmovdqu xmm0,xmmword ptr [rsp+370h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 03 00 00}
0447h vmovdqu xmmword ptr [rsp+360h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 03 00 00}
0450h mov rdx,[rsp+360h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 60 03 00 00}
0458h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
045ch vmovdqu xmmword ptr [rsp+350h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 03 00 00}
0465h vmovdqu xmm0,xmmword ptr [rsp+350h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 03 00 00}
046eh vmovdqu xmmword ptr [rsp+340h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 03 00 00}
0477h mov rax,[rsp+340h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 40 03 00 00}
047fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0483h vmovdqu xmmword ptr [rsp+330h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 03 00 00}
048ch vmovdqu xmm0,xmmword ptr [rsp+330h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 03 00 00}
0495h vmovdqu xmmword ptr [rsp+320h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 03 00 00}
049eh mov rcx,[rsp+320h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 20 03 00 00}
04a6h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
04a9h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
04ach movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
04afh shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
04b3h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
04b7h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
04bbh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
04c0h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
04c4h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
04c8h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
04cbh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
04d0h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
04d3h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
04d7h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
04dbh jl short 04ach                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
04ddh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
04e0h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b bd bd 5e}
04e5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
04e7h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
04eah jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 4f 05 00 00}
04efh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
04f3h vmovdqu xmmword ptr [rsp+310h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 03 00 00}
04fch vmovdqu xmm0,xmmword ptr [rsp+310h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 03 00 00}
0505h vmovdqu xmmword ptr [rsp+300h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 03 00 00}
050eh mov rdx,[rsp+300h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 03 00 00}
0516h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
051ah vmovdqu xmmword ptr [rsp+2f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 02 00 00}
0523h vmovdqu xmm0,xmmword ptr [rsp+2f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 02 00 00}
052ch vmovdqu xmmword ptr [rsp+2e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 02 00 00}
0535h mov rax,[rsp+2e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e0 02 00 00}
053dh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0541h vmovdqu xmmword ptr [rsp+2d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 02 00 00}
054ah vmovdqu xmm0,xmmword ptr [rsp+2d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 02 00 00}
0553h vmovdqu xmmword ptr [rsp+2c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 02 00 00}
055ch mov rcx,[rsp+2c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c0 02 00 00}
0564h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0567h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
056ah movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
056dh shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0571h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
0575h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
0579h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
057eh vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
0582h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0586h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
058bh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
058fh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0592h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0597h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
059ah add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
059eh cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
05a2h jl short 056ah                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
05a4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
05a7h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 bc bd 5e}
05ach movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
05aeh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
05b1h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 88 04 00 00}
05b6h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
05bah vmovdqu xmmword ptr [rsp+290h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 02 00 00}
05c3h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
05c7h vmovdqu xmmword ptr [rsp+2b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 02 00 00}
05d0h vmovdqu xmm0,xmmword ptr [rsp+2b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 02 00 00}
05d9h vmovdqu xmmword ptr [rsp+2a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 02 00 00}
05e2h vmovdqu xmm0,xmmword ptr [rsp+290h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 02 00 00}
05ebh vmovdqu xmmword ptr [rsp+280h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 02 00 00}
05f4h vmovdqu xmm0,xmmword ptr [rsp+280h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 02 00 00}
05fdh vmovdqu xmmword ptr [rsp+270h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 02 00 00}
0606h mov r8d,[rsp+2a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 a8 02 00 00}
060eh cmp r8d,[rsp+278h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 78 02 00 00}
0616h ja near ptr 0a55h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 39 04 00 00}
061ch mov rcx,[rsp+270h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 70 02 00 00}
0624h mov rdx,[rsp+2a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 a0 02 00 00}
062ch mov r8d,[rsp+2a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 a8 02 00 00}
0634h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0637h shl r8,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 03}
063bh call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 ec 66 4e}
0640h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0643h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 bb bd 5e}
0648h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
064ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
064dh jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ec 03 00 00}
0652h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0656h vmovdqu xmmword ptr [rsp+260h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 02 00 00}
065fh vmovdqu xmm0,xmmword ptr [rsp+260h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 02 00 00}
0668h vmovdqu xmmword ptr [rsp+250h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 02 00 00}
0671h mov rax,[rsp+250h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 50 02 00 00}
0679h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
067dh vmovdqu xmmword ptr [rsp+240h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 02 00 00}
0686h vmovdqu xmm0,xmmword ptr [rsp+240h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 02 00 00}
068fh vmovdqu xmmword ptr [rsp+230h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 02 00 00}
0698h mov rdx,[rsp+230h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 30 02 00 00}
06a0h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
06a2h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
06a5h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
06a8h lea r9,[rax+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c c8}
06ach vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
06b0h vmovupd [rsp+200h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 02 00 00}
06b9h vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
06beh vmovupd [rsp+200h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 02 00 00}
06c7h vmovupd ymm0,[rsp+200h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 00 02 00 00}
06d0h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
06d5h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
06d9h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
06dch lea r9,[rdx+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c ca}
06e0h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
06e5h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
06e7h add r8d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 04}
06ebh cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
06eeh jl short 06a5h                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
06f0h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
06f3h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 ba bd 5e}
06f8h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
06fah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
06fdh jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 3c 03 00 00}
0702h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0706h vmovdqu xmmword ptr [rsp+1d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 01 00 00}
070fh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0713h vmovdqu xmmword ptr [rsp+1f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 01 00 00}
071ch vmovdqu xmm0,xmmword ptr [rsp+1f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 01 00 00}
0725h vmovdqu xmmword ptr [rsp+1e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 01 00 00}
072eh vmovdqu xmm0,xmmword ptr [rsp+1d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 01 00 00}
0737h vmovdqu xmmword ptr [rsp+1c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 01 00 00}
0740h vmovdqu xmm0,xmmword ptr [rsp+1c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 01 00 00}
0749h vmovdqu xmmword ptr [rsp+1b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 01 00 00}
0752h mov r8d,[rsp+1e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 e8 01 00 00}
075ah cmp r8d,[rsp+1b8h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 b8 01 00 00}
0762h ja near ptr 0a5bh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 f3 02 00 00}
0768h mov rcx,[rsp+1b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 b0 01 00 00}
0770h mov rdx,[rsp+1e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 e0 01 00 00}
0778h mov r8d,[rsp+1e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 e8 01 00 00}
0780h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0783h shl r8,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 03}
0787h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 eb 66 4e}
078ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
078fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c ba bd 5e}
0794h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0796h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0799h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a0 02 00 00}
079eh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
07a2h vmovdqu xmmword ptr [rsp+1a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 01 00 00}
07abh vmovdqu xmm0,xmmword ptr [rsp+1a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 01 00 00}
07b4h vmovdqu xmmword ptr [rsp+190h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 01 00 00}
07bdh mov rax,[rsp+190h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 90 01 00 00}
07c5h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
07c9h vmovdqu xmmword ptr [rsp+180h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 01 00 00}
07d2h vmovdqu xmm0,xmmword ptr [rsp+180h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 01 00 00}
07dbh vmovdqu xmmword ptr [rsp+170h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 01 00 00}
07e4h mov rdx,[rsp+170h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 70 01 00 00}
07ech xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
07eeh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
07f1h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
07f4h lea r9,[rax+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c c8}
07f8h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
07fch vmovupd [rsp+140h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 01 00 00}
0805h vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
080ah vmovupd [rsp+140h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 01 00 00}
0813h vmovupd ymm0,[rsp+140h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 01 00 00}
081ch vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0821h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0825h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0828h lea r9,[rdx+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c ca}
082ch vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0831h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0833h add r8d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 04}
0837h cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
083ah jl short 07f1h                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
083ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
083fh call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac b9 bd 5e}
0844h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0846h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0849h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f0 01 00 00}
084eh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0852h vmovdqu xmmword ptr [rsp+130h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 01 00 00}
085bh vmovdqu xmm0,xmmword ptr [rsp+130h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 01 00 00}
0864h vmovdqu xmmword ptr [rsp+120h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 01 00 00}
086dh mov rdx,[rsp+120h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 20 01 00 00}
0875h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0879h vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
0882h vmovdqu xmm0,xmmword ptr [rsp+110h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 01 00 00}
088bh vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
0894h mov rax,[rsp+100h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 00 01 00 00}
089ch vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
08a0h vmovdqu xmmword ptr [rsp+0f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 00 00 00}
08a9h vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
08b2h vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
08bbh mov rcx,[rsp+0e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 e0 00 00 00}
08c3h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
08c6h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
08c9h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
08cch shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
08d0h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
08d4h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
08d8h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
08ddh vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
08e1h vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
08e6h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
08eah vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
08eeh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
08f1h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
08f6h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
08f9h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
08fdh cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0901h jl short 08c9h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
0903h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0906h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 b8 bd 5e}
090bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
090dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0910h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 29 01 00 00}
0915h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0919h vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
0922h vmovdqu xmm0,xmmword ptr [rsp+0d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 00 00 00}
092bh vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
0934h mov rdi,[rsp+0c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b bc 24 c0 00 00 00}
093ch vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0940h vmovdqu xmmword ptr [rsp+0b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 00 00 00}
0949h vmovdqu xmm0,xmmword ptr [rsp+0b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 00 00 00}
0952h vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
095bh mov rbp,[rsp+0a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 a0 00 00 00}
0963h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0967h vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
0970h vmovdqu xmm0,xmmword ptr [rsp+90h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 00 00 00}
0979h vmovdqu xmmword ptr [rsp+80h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 00 00 00}
0982h mov r14,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{4c 8b b4 24 80 00 00 00}
098ah xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
098dh xor r12d,r12d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 e4}
0990h movsxd r13,r12d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 ec}
0993h shl r13,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e5 03}
0997h lea rcx,[rdi+r13]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 0c 2f}
099bh lea rdx,[rbp+r13]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{4a 8d 54 2d 00}
09a0h vlddqu ymm0,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 01}
09a4h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
09a8h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
09adh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
09b3h vmovupd [rsp+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 4c 24 20}
09b9h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
09beh lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
09c3h call 7ff7c842d578h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 2f da ff}
09c8h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
09ceh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
09d4h lea rcx,[r14+r13]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 0c 2e}
09d8h call 7ff7c7e85c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 b5 7f ff}
09ddh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
09e0h lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
09e5h call 7ff7c7e7b188h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 0a 7f ff}
09eah inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
09edh add r12d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c4 04}
09f1h cmp r15d,10h                            ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 ff 10}
09f5h jl short 0990h                          ; JL rel8 || 7C cb || encoded[2]{7c 99}
09f7h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
09fah call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 b7 bd 5e}
09ffh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0a01h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0a04h jmp short 0a3eh                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0a06h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a09h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0a0ch call 7ff7c86885e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f df ff ff}
0a11h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a14h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0a17h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 b7 bd 5e}
0a1ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0a1eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0a21h jmp short 0a3eh                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0a23h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a26h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0a29h call 7ff7c8688690h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 df ff ff}
0a2eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a31h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0a34h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 b7 bd 5e}
0a39h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0a3bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0a3eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0a41h add rsp,598h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 98 05 00 00}
0a48h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0a49h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0a4ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0a4bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0a4ch pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0a4eh pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0a50h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0a52h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0a54h ret                                     ; RET || C3 || encoded[1]{c3}
0a55h call 7ff7c77557b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 b0 0c ff}
0a5ah int 3                                   ; INT3 || CC || encoded[1]{cc}
0a5bh call 7ff7c77557b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 b0 0c ff}
0a60h int 3                                   ; INT3 || CC || encoded[1]{cc}
0a61h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
0a6bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 c5 bd 5e}
0a70h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a73h movzx ecx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cd}
0a77h call 7ff7c86854b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 ad ff ff}
0a7ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a7fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0a82h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 fb 0d ff}
0a87h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0a8ah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 11 b5 5e}
0a8fh int 3                                   ; INT3 || CC || encoded[1]{cc}
