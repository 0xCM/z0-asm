------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> eval<byte>(UnaryBitLogicKind:byte kind, BitMatrix<byte> A)
; bm~ubl~eval_g0o_8u[259] = {57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 28 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 1c 40 80 fd 02 75 5c 48 8b fb e8 22 0a b9 5e 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 e8 8d ef ff ff 48 8b 06 48 8d 54 24 28 48 8b 12 48 8b 00 48 f7 d0 48 89 02 48 8b fb 48 8d 74 24 28 e8 dc 09 b9 5e 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 b9 30 dd 94 c6 f7 7f 00 00 e8 df 17 b9 5e 48 8b f0 40 88 6e 08 48 b9 58 77 34 c6 f7 7f 00 00 e8 09 9b b3 5e 48 8b c8 e8 61 d6 43 ff 8b f8 48 b9 20 2c 68 c6 f7 7f 00 00 e8 b0 17 b9 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 99 b0 cb 5e 48 8b e8 8b cf e8 ef d0 07 ff 4c 8b c0 48 8b cd 48 8b d6 e8 09 ec 05 ff 48 8b d0 48 8b cb e8 8e 47 08 ff 48 8b cb e8 be 63 b0 5e cc}
; TermCode = INTRx2
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
0029h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 0a b9 5e}
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
004eh call 7ff7c7314420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d ef ff ff}
0053h mov rax,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 06}
0056h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
005eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0061h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0064h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0067h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006ah lea rsi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 28}
006fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 09 b9 5e}
0074h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0076h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0079h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
007dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0080h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0081h ret                                     ; RET || C3 || encoded[1]{c3}
0082h mov rcx,7ff7c694dd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 dd 94 c6 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 17 b9 5e}
0091h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0094h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
0098h mov rcx,7ff7c6347758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 34 c6 f7 7f 00 00}
00a2h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 9b b3 5e}
00a7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00aah call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 d6 43 ff}
00afh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00b1h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
00bbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 17 b9 5e}
00c0h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c3h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00c8h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
00d2h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 b0 cb 5e}
00d7h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00dah mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00dch call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef d0 07 ff}
00e1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e4h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00e7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00eah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 ec 05 ff}
00efh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f5h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 47 08 ff}
00fah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00fdh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 63 b0 5e}
0102h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<sbyte> eval<sbyte>(UnaryBitLogicKind:byte kind, BitMatrix<sbyte> A)
; bm~ubl~eval_g0o_8i[255] = {57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 28 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 1c 40 80 fd 02 75 58 48 8b fb e8 f2 08 b9 5e 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 e8 a5 fb ff ff 48 8b 0e 48 8d 54 24 28 48 8b 12 e8 a5 fb ff ff 48 8b fb 48 8d 74 24 28 e8 b0 08 b9 5e 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 b9 30 dd 94 c6 f7 7f 00 00 e8 b3 16 b9 5e 48 8b f0 40 88 6e 08 48 b9 68 6f 34 c6 f7 7f 00 00 e8 dd 99 b3 5e 48 8b c8 e8 35 d5 43 ff 8b f8 48 b9 20 2c 68 c6 f7 7f 00 00 e8 84 16 b9 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 6d af cb 5e 48 8b e8 8b cf e8 c3 cf 07 ff 4c 8b c0 48 8b cd 48 8b d6 e8 dd ea 05 ff 48 8b d0 48 8b cb e8 62 46 08 ff 48 8b cb e8 92 62 b0 5e cc}
; TermCode = INTRx2
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
0024h jne short 007eh                         ; JNE rel8 || 75 cb || encoded[2]{75 58}
0026h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0029h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 08 b9 5e}
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
004eh call 7ff7c7315168h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 fb ff ff}
0053h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0056h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
005eh call 7ff7c7315178h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 fb ff ff}
0063h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0066h lea rsi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 28}
006bh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 08 b9 5e}
0070h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0072h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0075h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0079h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007dh ret                                     ; RET || C3 || encoded[1]{c3}
007eh mov rcx,7ff7c694dd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 dd 94 c6 f7 7f 00 00}
0088h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 16 b9 5e}
008dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0090h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
0094h mov rcx,7ff7c6346f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 34 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 99 b3 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 d5 43 ff}
00abh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00adh mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 16 b9 5e}
00bch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bfh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00c4h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
00ceh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d af cb 5e}
00d3h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00d6h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00d8h call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 cf 07 ff}
00ddh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e0h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00e3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00e6h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd ea 05 ff}
00ebh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00eeh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f1h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 46 08 ff}
00f6h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f9h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 62 b0 5e}
00feh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, BitMatrix<ushort> A)
; bm~ubl~eval_g0o_16u[298] = {57 56 55 53 48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 48 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 23 40 80 fd 02 0f 85 7f 00 00 00 48 8b fb e8 ae 01 b9 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 8d 4c 24 48 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 48 e8 4e f5 ff ff 48 8b 06 48 8d 54 24 48 48 8b 12 c5 fc 57 c0 c5 fd 11 44 24 20 c5 ff f0 00 c5 fd 11 44 24 20 c5 fd 10 44 24 20 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb 48 8d 74 24 48 e8 48 01 b9 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 b9 30 dd 94 c6 f7 7f 00 00 e8 48 0f b9 5e 48 8b f0 40 88 6e 08 48 b9 38 87 34 c6 f7 7f 00 00 e8 72 92 b3 5e 48 8b c8 e8 ca cd 43 ff 8b f8 48 b9 20 2c 68 c6 f7 7f 00 00 e8 19 0f b9 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 02 a8 cb 5e 48 8b e8 8b cf e8 58 c8 07 ff 4c 8b c0 48 8b cd 48 8b d6 e8 72 e3 05 ff 48 8b d0 48 8b cb e8 f7 3e 08 ff 48 8b cb e8 27 5b b0 5e cc}
; TermCode = INTRx2
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
002dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 01 b9 5e}
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
0055h call 7ff7c7315258h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e f5 ff ff}
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
0093h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 01 b9 5e}
0098h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00a0h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00a4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h ret                                     ; RET || C3 || encoded[1]{c3}
00a9h mov rcx,7ff7c694dd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 dd 94 c6 f7 7f 00 00}
00b3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 0f b9 5e}
00b8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bbh mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00bfh mov rcx,7ff7c6348738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 34 c6 f7 7f 00 00}
00c9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 92 b3 5e}
00ceh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d1h call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca cd 43 ff}
00d6h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00d8h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
00e2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 0f b9 5e}
00e7h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00eah mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00efh mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
00f9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 a8 cb 5e}
00feh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0101h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0103h call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 c8 07 ff}
0108h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010bh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
010eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0111h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 e3 05 ff}
0116h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0119h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011ch call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 3e 08 ff}
0121h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0124h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 5b b0 5e}
0129h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<short> eval<short>(UnaryBitLogicKind:byte kind, BitMatrix<short> A)
; bm~ubl~eval_g0o_16i[255] = {57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 28 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 1c 40 80 fd 02 75 58 48 8b fb e8 62 00 b9 5e 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 e8 2d fb ff ff 48 8b 0e 48 8d 54 24 28 48 8b 12 e8 2d fb ff ff 48 8b fb 48 8d 74 24 28 e8 20 00 b9 5e 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 b9 30 dd 94 c6 f7 7f 00 00 e8 23 0e b9 5e 48 8b f0 40 88 6e 08 48 b9 48 7f 34 c6 f7 7f 00 00 e8 4d 91 b3 5e 48 8b c8 e8 a5 cc 43 ff 8b f8 48 b9 20 2c 68 c6 f7 7f 00 00 e8 f4 0d b9 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 dd a6 cb 5e 48 8b e8 8b cf e8 33 c7 07 ff 4c 8b c0 48 8b cd 48 8b d6 e8 4d e2 05 ff 48 8b d0 48 8b cb e8 d2 3d 08 ff 48 8b cb e8 02 5a b0 5e cc}
; TermCode = INTRx2
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
0024h jne short 007eh                         ; JNE rel8 || 75 cb || encoded[2]{75 58}
0026h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0029h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 00 b9 5e}
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
004eh call 7ff7c7315980h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d fb ff ff}
0053h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0056h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
005eh call 7ff7c7315990h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d fb ff ff}
0063h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0066h lea rsi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 28}
006bh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 00 b9 5e}
0070h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0072h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0075h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0079h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007dh ret                                     ; RET || C3 || encoded[1]{c3}
007eh mov rcx,7ff7c694dd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 dd 94 c6 f7 7f 00 00}
0088h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 0e b9 5e}
008dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0090h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
0094h mov rcx,7ff7c6347f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 34 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 91 b3 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 cc 43 ff}
00abh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00adh mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 0d b9 5e}
00bch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bfh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00c4h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
00ceh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd a6 cb 5e}
00d3h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00d6h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00d8h call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 c7 07 ff}
00ddh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e0h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00e3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00e6h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d e2 05 ff}
00ebh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00eeh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f1h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 3d 08 ff}
00f6h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f9h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 5a b0 5e}
00feh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> eval<uint>(UnaryBitLogicKind:byte kind, BitMatrix<uint> A)
; bm~ubl~eval_g0o_32u[330] = {57 56 55 53 48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 48 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 23 40 80 fd 02 0f 85 9f 00 00 00 48 8b fb e8 3e ff b8 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 8d 4c 24 48 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 48 e8 f6 fa ff ff 48 8b 06 48 8d 54 24 48 48 8b 12 33 c9 45 33 c0 4d 63 c8 49 c1 e1 02 4e 8d 14 08 c5 fc 57 c0 c5 fd 11 44 24 20 c4 c1 7f f0 02 c5 fd 11 44 24 20 c5 fd 10 44 24 20 c5 fd 76 c8 c5 fd ef c1 4c 03 ca c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c bf 48 8b fb 48 8d 74 24 48 e8 b8 fe b8 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 b9 30 dd 94 c6 f7 7f 00 00 e8 b8 0c b9 5e 48 8b f0 40 88 6e 08 48 b9 d8 96 34 c6 f7 7f 00 00 e8 e2 8f b3 5e 48 8b c8 e8 3a cb 43 ff 8b f8 48 b9 20 2c 68 c6 f7 7f 00 00 e8 89 0c b9 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 72 a5 cb 5e 48 8b e8 8b cf e8 c8 c5 07 ff 4c 8b c0 48 8b cd 48 8b d6 e8 e2 e0 05 ff 48 8b d0 48 8b cb e8 67 3c 08 ff 48 8b cb e8 97 58 b0 5e cc}
; TermCode = INTRx2
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
002dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e ff b8 5e}
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
0055h call 7ff7c7315a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 fa ff ff}
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
00b3h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 fe b8 5e}
00b8h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00bah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00bdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c0h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00c4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c8h ret                                     ; RET || C3 || encoded[1]{c3}
00c9h mov rcx,7ff7c694dd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 dd 94 c6 f7 7f 00 00}
00d3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 0c b9 5e}
00d8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00dbh mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00dfh mov rcx,7ff7c63496d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 34 c6 f7 7f 00 00}
00e9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 8f b3 5e}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a cb 43 ff}
00f6h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00f8h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
0102h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 0c b9 5e}
0107h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
010ah mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
010fh mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
0119h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 a5 cb 5e}
011eh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0121h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0123h call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 c5 07 ff}
0128h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
012bh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
012eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0131h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 e0 05 ff}
0136h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0139h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013ch call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 3c 08 ff}
0141h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0144h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 58 b0 5e}
0149h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<int> eval<int>(UnaryBitLogicKind:byte kind, BitMatrix<int> A)
; bm~ubl~eval_g0o_32i[255] = {57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 28 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 1c 40 80 fd 02 75 58 48 8b fb e8 d2 fd b8 5e 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 e8 2d fb ff ff 48 8b 0e 48 8d 54 24 28 48 8b 12 e8 2d fb ff ff 48 8b fb 48 8d 74 24 28 e8 90 fd b8 5e 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 b9 30 dd 94 c6 f7 7f 00 00 e8 93 0b b9 5e 48 8b f0 40 88 6e 08 48 b9 08 8f 34 c6 f7 7f 00 00 e8 bd 8e b3 5e 48 8b c8 e8 15 ca 43 ff 8b f8 48 b9 20 2c 68 c6 f7 7f 00 00 e8 64 0b b9 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 4d a4 cb 5e 48 8b e8 8b cf e8 a3 c4 07 ff 4c 8b c0 48 8b cd 48 8b d6 e8 bd df 05 ff 48 8b d0 48 8b cb e8 42 3b 08 ff 48 8b cb e8 72 57 b0 5e cc}
; TermCode = INTRx2
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
0024h jne short 007eh                         ; JNE rel8 || 75 cb || encoded[2]{75 58}
0026h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0029h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 fd b8 5e}
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
004eh call 7ff7c7315c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d fb ff ff}
0053h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0056h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
005eh call 7ff7c7315c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d fb ff ff}
0063h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0066h lea rsi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 28}
006bh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 fd b8 5e}
0070h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0072h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0075h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0079h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007dh ret                                     ; RET || C3 || encoded[1]{c3}
007eh mov rcx,7ff7c694dd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 dd 94 c6 f7 7f 00 00}
0088h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 0b b9 5e}
008dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0090h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
0094h mov rcx,7ff7c6348f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 34 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 8e b3 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 ca 43 ff}
00abh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00adh mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 0b b9 5e}
00bch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bfh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00c4h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
00ceh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d a4 cb 5e}
00d3h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00d6h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00d8h call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 c4 07 ff}
00ddh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e0h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00e3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00e6h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd df 05 ff}
00ebh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00eeh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f1h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 3b 08 ff}
00f6h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f9h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 57 b0 5e}
00feh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, BitMatrix<ulong> A)
; bm~ubl~eval_g0o_64u[331] = {57 56 55 53 48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 48 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 23 40 80 fd 02 0f 85 a0 00 00 00 48 8b fb e8 9e f8 b8 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 8d 4c 24 48 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 48 e8 76 f6 ff ff 48 8b 06 48 8d 54 24 48 48 8b 12 33 c9 45 33 c0 4d 63 c8 49 c1 e1 03 4e 8d 14 08 c5 fc 57 c0 c5 fd 11 44 24 20 c4 c1 7f f0 02 c5 fd 11 44 24 20 c5 fd 10 44 24 20 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c be 48 8b fb 48 8d 74 24 48 e8 17 f8 b8 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 58 5b 5d 5e 5f c3 48 b9 30 dd 94 c6 f7 7f 00 00 e8 17 06 b9 5e 48 8b f0 40 88 6e 08 48 b9 78 a6 34 c6 f7 7f 00 00 e8 41 89 b3 5e 48 8b c8 e8 99 c4 43 ff 8b f8 48 b9 20 2c 68 c6 f7 7f 00 00 e8 e8 05 b9 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 d1 9e cb 5e 48 8b e8 8b cf e8 27 bf 07 ff 4c 8b c0 48 8b cd 48 8b d6 e8 41 da 05 ff 48 8b d0 48 8b cb e8 c6 35 08 ff 48 8b cb e8 f6 51 b0 5e cc}
; TermCode = INTRx2
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
002dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e f8 b8 5e}
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
0055h call 7ff7c7315c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 f6 ff ff}
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
00b4h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 f8 b8 5e}
00b9h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00bbh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00beh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c1h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00c5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c6h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c9h ret                                     ; RET || C3 || encoded[1]{c3}
00cah mov rcx,7ff7c694dd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 dd 94 c6 f7 7f 00 00}
00d4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 06 b9 5e}
00d9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00dch mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00e0h mov rcx,7ff7c634a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 34 c6 f7 7f 00 00}
00eah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 89 b3 5e}
00efh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f2h call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 c4 43 ff}
00f7h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00f9h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
0103h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 05 b9 5e}
0108h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
010bh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0110h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
011ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 9e cb 5e}
011fh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0122h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0124h call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 bf 07 ff}
0129h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
012ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
012fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0132h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 da 05 ff}
0137h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
013ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013dh call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 35 08 ff}
0142h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0145h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 51 b0 5e}
014ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<long> eval<long>(UnaryBitLogicKind:byte kind, BitMatrix<long> A)
; bm~ubl~eval_g0o_64i[255] = {57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 28 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 1c 40 80 fd 02 75 58 48 8b fb e8 32 f7 b8 5e 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 e8 ed fb ff ff 48 8b 0e 48 8d 54 24 28 48 8b 12 e8 ed fb ff ff 48 8b fb 48 8d 74 24 28 e8 f0 f6 b8 5e 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 b9 30 dd 94 c6 f7 7f 00 00 e8 f3 04 b9 5e 48 8b f0 40 88 6e 08 48 b9 a8 9e 34 c6 f7 7f 00 00 e8 1d 88 b3 5e 48 8b c8 e8 75 c3 43 ff 8b f8 48 b9 20 2c 68 c6 f7 7f 00 00 e8 c4 04 b9 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 ad 9d cb 5e 48 8b e8 8b cf e8 03 be 07 ff 4c 8b c0 48 8b cd 48 8b d6 e8 1d d9 05 ff 48 8b d0 48 8b cb e8 a2 34 08 ff 48 8b cb e8 d2 50 b0 5e cc}
; TermCode = INTRx2
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
0024h jne short 007eh                         ; JNE rel8 || 75 cb || encoded[2]{75 58}
0026h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0029h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 f7 b8 5e}
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
004eh call 7ff7c7316370h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed fb ff ff}
0053h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0056h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
005eh call 7ff7c7316380h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed fb ff ff}
0063h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0066h lea rsi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 28}
006bh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 f6 b8 5e}
0070h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0072h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0075h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0079h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007dh ret                                     ; RET || C3 || encoded[1]{c3}
007eh mov rcx,7ff7c694dd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 dd 94 c6 f7 7f 00 00}
0088h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 04 b9 5e}
008dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0090h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
0094h mov rcx,7ff7c6349ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 34 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 88 b3 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 c3 43 ff}
00abh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00adh mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 04 b9 5e}
00bch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bfh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00c4h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
00ceh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 9d cb 5e}
00d3h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00d6h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00d8h call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 be 07 ff}
00ddh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e0h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00e3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00e6h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d d9 05 ff}
00ebh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00eeh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f1h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 34 08 ff}
00f6h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f9h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 50 b0 5e}
00feh int 3                                   ; INT3 || CC || encoded[1]{cc}
