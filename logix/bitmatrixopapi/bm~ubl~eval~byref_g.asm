------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> eval<byte>(UnaryBitLogicKind:byte kind, BitMatrix<byte> A, ref BitMatrix<byte> Z)
; bm~ubl~eval~byref_g0o_8u_8u[301] = {57 56 55 53 48 83 ec 48 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 28 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 5c 40 80 fd 02 0f 85 7d 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 00 c5 fa 7f 44 24 38 48 8d 4c 24 38 48 8b 11 8b 49 08 4c 8d 44 24 28 49 8b 00 45 8b 40 08 41 3b c8 77 46 4c 63 c1 48 8b c8 e8 45 c2 a1 4f 48 8b fb e8 7d 91 bc 5e 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 49 8b 00 48 8b 16 48 8b 00 48 f7 d0 48 89 02 48 8b fb e8 58 91 bc 5e 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 e8 7d 5c 0a ff cc 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 55 9f bc 5e 48 8b f0 40 88 6e 08 48 b9 58 77 34 c6 f7 7f 00 00 e8 7f 22 b7 5e 48 8b c8 e8 27 f4 7b ff 8b f8 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 26 9f bc 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 0f 38 cf 5e 48 8b e8 8b cf e8 65 4f 0b ff 4c 8b c0 48 8b cd 48 8b d6 e8 7f 73 09 ff 48 8b d0 48 8b cb e8 dc cc 0b ff 48 8b cb e8 34 eb b3 5e cc}
; Capture completion code = INTRx2
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
0066h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 c2 a1 4f}
006bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 91 bc 5e}
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
0093h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 91 bc 5e}
0098h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
00a1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a5h ret                                     ; RET || C3 || encoded[1]{c3}
00a6h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 5c 0a ff}
00abh int 3                                   ; INT3 || CC || encoded[1]{cc}
00ach mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 9f bc 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00c2h mov rcx,7ff7c6347758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 34 c6 f7 7f 00 00}
00cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 22 b7 5e}
00d1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d4h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 f4 7b ff}
00d9h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00dbh mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
00e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 9f bc 5e}
00eah mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00edh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00f2h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00fch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 38 cf 5e}
0101h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0104h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0106h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 4f 0b ff}
010bh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0111h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0114h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 73 09 ff}
0119h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
011ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011fh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc cc 0b ff}
0124h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0127h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 eb b3 5e}
012ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<sbyte> eval<sbyte>(UnaryBitLogicKind:byte kind, BitMatrix<sbyte> A, ref BitMatrix<sbyte> Z)
; bm~ubl~eval~byref_g0o_8i_8i[297] = {57 56 55 53 48 83 ec 48 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 28 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 5c 40 80 fd 02 0f 85 79 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 00 c5 fa 7f 44 24 38 48 8d 4c 24 38 48 8b 11 8b 49 08 4c 8d 44 24 28 49 8b 00 45 8b 40 08 41 3b c8 77 42 4c 63 c1 48 8b c8 e8 e5 bc a1 4f 48 8b fb e8 1d 8c bc 5e 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 49 8b 08 48 8b 16 e8 5c df ff ff 48 8b fb e8 fc 8b bc 5e 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 e8 21 57 0a ff cc 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 f9 99 bc 5e 48 8b f0 40 88 6e 08 48 b9 68 6f 34 c6 f7 7f 00 00 e8 23 1d b7 5e 48 8b c8 e8 cb ee 7b ff 8b f8 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 ca 99 bc 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 b3 32 cf 5e 48 8b e8 8b cf e8 09 4a 0b ff 4c 8b c0 48 8b cd 48 8b d6 e8 23 6e 09 ff 48 8b d0 48 8b cb e8 80 c7 0b ff 48 8b cb e8 d8 e5 b3 5e cc}
; Capture completion code = INTRx2
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
0029h jne near ptr 00a8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 79 00 00 00}
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
005eh ja short 00a2h                          ; JA rel8 || 77 cb || encoded[2]{77 42}
0060h movsxd r8,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c1}
0063h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0066h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 bc a1 4f}
006bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 8c bc 5e}
0073h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0075h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0078h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
007ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0080h ret                                     ; RET || C3 || encoded[1]{c3}
0081h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0084h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0087h call 7ff7c72db1e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c df ff ff}
008ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
008fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 8b bc 5e}
0094h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0096h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0099h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
009dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a1h ret                                     ; RET || C3 || encoded[1]{c3}
00a2h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 57 0a ff}
00a7h int 3                                   ; INT3 || CC || encoded[1]{cc}
00a8h mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
00b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 99 bc 5e}
00b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bah mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00beh mov rcx,7ff7c6346f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 34 c6 f7 7f 00 00}
00c8h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 1d b7 5e}
00cdh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d0h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb ee 7b ff}
00d5h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00d7h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
00e1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 99 bc 5e}
00e6h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00e9h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00eeh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00f8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 32 cf 5e}
00fdh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0100h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0102h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 4a 0b ff}
0107h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010ah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
010dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0110h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 6e 09 ff}
0115h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0118h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011bh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 c7 0b ff}
0120h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0123h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 e5 b3 5e}
0128h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, BitMatrix<ushort> A, ref BitMatrix<ushort> Z)
; bm~ubl~eval~byref_g0o_16u_16u[339] = {57 56 55 53 48 83 ec 78 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 62 40 80 fd 02 0f 85 a3 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 20 c4 c1 7a 6f 00 c5 fa 7f 44 24 30 4c 8d 44 24 30 49 8b 10 45 8b 40 08 48 8d 4c 24 20 48 8b 01 8b 49 08 44 3b c1 77 6c 48 8b c8 4d 63 c0 49 d1 e0 e8 92 bb a1 4f 48 8b fb e8 ca 8a bc 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 49 8b 00 48 8b 16 c5 fc 57 c0 c5 fd 11 44 24 40 c5 ff f0 00 c5 fd 11 44 24 40 c5 fd 10 44 24 40 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb e8 85 8a bc 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 e8 a7 55 0a ff cc 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 7f 98 bc 5e 48 8b f0 40 88 6e 08 48 b9 38 87 34 c6 f7 7f 00 00 e8 a9 1b b7 5e 48 8b c8 e8 51 ed 7b ff 8b f8 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 50 98 bc 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 39 31 cf 5e 48 8b e8 8b cf e8 8f 48 0b ff 4c 8b c0 48 8b cd 48 8b d6 e8 a9 6c 09 ff 48 8b d0 48 8b cb e8 06 c6 0b ff 48 8b cb e8 5e e4 b3 5e cc}
; Capture completion code = INTRx2
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
0069h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 bb a1 4f}
006eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0071h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 8a bc 5e}
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
00b6h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 8a bc 5e}
00bbh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00bdh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00c0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c3h add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
00c7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00cah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00cbh ret                                     ; RET || C3 || encoded[1]{c3}
00cch call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 55 0a ff}
00d1h int 3                                   ; INT3 || CC || encoded[1]{cc}
00d2h mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 98 bc 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00e8h mov rcx,7ff7c6348738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 34 c6 f7 7f 00 00}
00f2h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 1b b7 5e}
00f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00fah call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 ed 7b ff}
00ffh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0101h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
010bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 98 bc 5e}
0110h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0113h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0118h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
0122h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 31 cf 5e}
0127h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
012ah mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
012ch call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 48 0b ff}
0131h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0134h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0137h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
013ah call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 6c 09 ff}
013fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0142h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0145h call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 c6 0b ff}
014ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
014dh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e e4 b3 5e}
0152h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<short> eval<short>(UnaryBitLogicKind:byte kind, BitMatrix<short> A, ref BitMatrix<short> Z)
; bm~ubl~eval~byref_g0o_16i_16i[300] = {57 56 55 53 48 83 ec 48 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 28 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 5f 40 80 fd 02 0f 85 7c 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 00 c5 fa 7f 44 24 38 4c 8d 44 24 38 49 8b 10 45 8b 40 08 48 8d 4c 24 28 48 8b 01 8b 49 08 44 3b c1 77 45 48 8b c8 4d 63 c0 49 d1 e0 e8 12 ba a1 4f 48 8b fb e8 4a 89 bc 5e 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 49 8b 08 48 8b 16 e8 a9 e4 ff ff 48 8b fb e8 29 89 bc 5e 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 e8 4e 54 0a ff cc 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 26 97 bc 5e 48 8b f0 40 88 6e 08 48 b9 48 7f 34 c6 f7 7f 00 00 e8 50 1a b7 5e 48 8b c8 e8 f8 eb 7b ff 8b f8 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 f7 96 bc 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 e0 2f cf 5e 48 8b e8 8b cf e8 36 47 0b ff 4c 8b c0 48 8b cd 48 8b d6 e8 50 6b 09 ff 48 8b d0 48 8b cb e8 ad c4 0b ff 48 8b cb e8 05 e3 b3 5e cc}
; Capture completion code = INTRx2
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
0023h je short 0084h                          ; JE rel8 || 74 cb || encoded[2]{74 5f}
0025h cmp bpl,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 02}
0029h jne near ptr 00abh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 7c 00 00 00}
002fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0033h vmovdqu xmmword ptr [rsp+28h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 28}
0039h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
003eh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0044h lea r8,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 38}
0049h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
004ch mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0050h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0055h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0058h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
005bh cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
005eh ja short 00a5h                          ; JA rel8 || 77 cb || encoded[2]{77 45}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0066h shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
0069h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 ba a1 4f}
006eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0071h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 89 bc 5e}
0076h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0078h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007bh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
007fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0080h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0087h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
008ah call 7ff7c72dba08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 e4 ff ff}
008fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0092h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 89 bc 5e}
0097h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0099h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009ch add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
00a0h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a1h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a4h ret                                     ; RET || C3 || encoded[1]{c3}
00a5h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 54 0a ff}
00aah int 3                                   ; INT3 || CC || encoded[1]{cc}
00abh mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
00b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 97 bc 5e}
00bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bdh mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00c1h mov rcx,7ff7c6347f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 34 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 1a b7 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 eb 7b ff}
00d8h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00dah mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
00e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 96 bc 5e}
00e9h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00ech mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00f1h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00fbh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 2f cf 5e}
0100h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0103h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0105h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 47 0b ff}
010ah mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0110h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0113h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 6b 09 ff}
0118h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
011bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011eh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad c4 0b ff}
0123h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0126h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 e3 b3 5e}
012bh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> eval<uint>(UnaryBitLogicKind:byte kind, BitMatrix<uint> A, ref BitMatrix<uint> Z)
; bm~ubl~eval~byref_g0o_32u_32u[376] = {57 56 55 53 48 83 ec 78 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 67 40 80 fd 02 0f 85 c8 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 20 c4 c1 7a 6f 00 c5 fa 7f 44 24 30 4c 8d 44 24 30 49 8b 10 45 8b 40 08 48 8d 4c 24 20 48 8b 01 8b 49 08 44 3b c1 0f 87 8d 00 00 00 48 8b c8 4d 63 c0 49 c1 e0 02 e8 bd b8 a1 4f 48 8b fb e8 f5 87 bc 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 49 8b 00 48 8b 16 33 c9 45 33 c0 4d 63 c8 49 c1 e1 02 4e 8d 14 08 c5 fc 57 c0 c5 fd 11 44 24 40 c4 c1 7f f0 02 c5 fd 11 44 24 40 c5 fd 10 44 24 40 c5 fd 76 c8 c5 fd ef c1 4c 03 ca c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c bf 48 8b fb e8 90 87 bc 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 e8 b2 52 0a ff cc 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 8a 95 bc 5e 48 8b f0 40 88 6e 08 48 b9 d8 96 34 c6 f7 7f 00 00 e8 b4 18 b7 5e 48 8b c8 e8 5c ea 7b ff 8b f8 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 5b 95 bc 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 44 2e cf 5e 48 8b e8 8b cf e8 9a 45 0b ff 4c 8b c0 48 8b cd 48 8b d6 e8 b4 69 09 ff 48 8b d0 48 8b cb e8 11 c3 0b ff 48 8b cb e8 69 e1 b3 5e cc}
; Capture completion code = INTRx2
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
006eh call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd b8 a1 4f}
0073h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0076h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 87 bc 5e}
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
00dbh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 87 bc 5e}
00e0h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00e2h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00e5h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00e8h add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
00ech pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00edh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00eeh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00efh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f0h ret                                     ; RET || C3 || encoded[1]{c3}
00f1h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 52 0a ff}
00f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
00f7h mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
0101h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 95 bc 5e}
0106h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0109h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
010dh mov rcx,7ff7c63496d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 34 c6 f7 7f 00 00}
0117h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 18 b7 5e}
011ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
011fh call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c ea 7b ff}
0124h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0126h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
0130h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 95 bc 5e}
0135h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0138h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
013dh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
0147h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 2e cf 5e}
014ch mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
014fh mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0151h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 45 0b ff}
0156h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0159h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
015ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
015fh call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 69 09 ff}
0164h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0167h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
016ah call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 c3 0b ff}
016fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0172h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 e1 b3 5e}
0177h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<int> eval<int>(UnaryBitLogicKind:byte kind, BitMatrix<int> A, ref BitMatrix<int> Z)
; bm~ubl~eval~byref_g0o_32i_32i[301] = {57 56 55 53 48 83 ec 48 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 28 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 60 40 80 fd 02 0f 85 7d 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 00 c5 fa 7f 44 24 38 4c 8d 44 24 38 49 8b 10 45 8b 40 08 48 8d 4c 24 28 48 8b 01 8b 49 08 44 3b c1 77 46 48 8b c8 4d 63 c0 49 c1 e0 02 e8 21 b7 a1 4f 48 8b fb e8 59 86 bc 5e 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 49 8b 08 48 8b 16 e8 48 e4 ff ff 48 8b fb e8 38 86 bc 5e 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 e8 5d 51 0a ff cc 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 35 94 bc 5e 48 8b f0 40 88 6e 08 48 b9 08 8f 34 c6 f7 7f 00 00 e8 5f 17 b7 5e 48 8b c8 e8 07 e9 7b ff 8b f8 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 06 94 bc 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 ef 2c cf 5e 48 8b e8 8b cf e8 45 44 0b ff 4c 8b c0 48 8b cd 48 8b d6 e8 5f 68 09 ff 48 8b d0 48 8b cb e8 bc c1 0b ff 48 8b cb e8 14 e0 b3 5e cc}
; Capture completion code = INTRx2
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
0023h je short 0085h                          ; JE rel8 || 74 cb || encoded[2]{74 60}
0025h cmp bpl,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 02}
0029h jne near ptr 00ach                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 7d 00 00 00}
002fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0033h vmovdqu xmmword ptr [rsp+28h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 28}
0039h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
003eh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0044h lea r8,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 38}
0049h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
004ch mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0050h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0055h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0058h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
005bh cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
005eh ja short 00a6h                          ; JA rel8 || 77 cb || encoded[2]{77 46}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0066h shl r8,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 02}
006ah call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 b7 a1 4f}
006fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0072h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 86 bc 5e}
0077h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0079h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007ch add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0080h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0081h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0082h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0083h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0084h ret                                     ; RET || C3 || encoded[1]{c3}
0085h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0088h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
008bh call 7ff7c72dbc98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 e4 ff ff}
0090h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0093h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 86 bc 5e}
0098h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
00a1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a5h ret                                     ; RET || C3 || encoded[1]{c3}
00a6h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 51 0a ff}
00abh int 3                                   ; INT3 || CC || encoded[1]{cc}
00ach mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 94 bc 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00c2h mov rcx,7ff7c6348f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 34 c6 f7 7f 00 00}
00cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 17 b7 5e}
00d1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d4h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 e9 7b ff}
00d9h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00dbh mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
00e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 94 bc 5e}
00eah mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00edh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00f2h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00fch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 2c cf 5e}
0101h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0104h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0106h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 44 0b ff}
010bh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0111h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0114h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 68 09 ff}
0119h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
011ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011fh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc c1 0b ff}
0124h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0127h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 e0 b3 5e}
012ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, BitMatrix<ulong> A, ref BitMatrix<ulong> Z)
; bm~ubl~eval~byref_g0o_64u_64u[377] = {57 56 55 53 48 83 ec 78 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 67 40 80 fd 02 0f 85 c9 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 20 c4 c1 7a 6f 00 c5 fa 7f 44 24 30 4c 8d 44 24 30 49 8b 10 45 8b 40 08 48 8d 4c 24 20 48 8b 01 8b 49 08 44 3b c1 0f 87 8e 00 00 00 48 8b c8 4d 63 c0 49 c1 e0 03 e8 cd b5 a1 4f 48 8b fb e8 05 85 bc 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 49 8b 00 48 8b 16 33 c9 45 33 c0 4d 63 c8 49 c1 e1 03 4e 8d 14 08 c5 fc 57 c0 c5 fd 11 44 24 40 c4 c1 7f f0 02 c5 fd 11 44 24 40 c5 fd 10 44 24 40 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c be 48 8b fb e8 9f 84 bc 5e 48 a5 48 8b c3 c5 f8 77 48 83 c4 78 5b 5d 5e 5f c3 e8 c1 4f 0a ff cc 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 99 92 bc 5e 48 8b f0 40 88 6e 08 48 b9 78 a6 34 c6 f7 7f 00 00 e8 c3 15 b7 5e 48 8b c8 e8 6b e7 7b ff 8b f8 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 6a 92 bc 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 53 2b cf 5e 48 8b e8 8b cf e8 a9 42 0b ff 4c 8b c0 48 8b cd 48 8b d6 e8 c3 66 09 ff 48 8b d0 48 8b cb e8 20 c0 0b ff 48 8b cb e8 78 de b3 5e cc}
; Capture completion code = INTRx2
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
006eh call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd b5 a1 4f}
0073h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0076h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 85 bc 5e}
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
00dch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 84 bc 5e}
00e1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00e3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00e6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00e9h add rsp,78h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 78}
00edh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00eeh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00efh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00f0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00f1h ret                                     ; RET || C3 || encoded[1]{c3}
00f2h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 4f 0a ff}
00f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
00f8h mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
0102h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 92 bc 5e}
0107h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
010ah mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
010eh mov rcx,7ff7c634a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 34 c6 f7 7f 00 00}
0118h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 15 b7 5e}
011dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0120h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b e7 7b ff}
0125h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0127h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
0131h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 92 bc 5e}
0136h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0139h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
013eh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
0148h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 2b cf 5e}
014dh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0150h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0152h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 42 0b ff}
0157h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
015ah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
015dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0160h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 66 09 ff}
0165h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0168h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
016bh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 c0 0b ff}
0170h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0173h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 de b3 5e}
0178h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<long> eval<long>(UnaryBitLogicKind:byte kind, BitMatrix<long> A, ref BitMatrix<long> Z)
; bm~ubl~eval~byref_g0o_64i_64i[301] = {57 56 55 53 48 83 ec 48 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 28 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 60 40 80 fd 02 0f 85 7d 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 00 c5 fa 7f 44 24 38 4c 8d 44 24 38 49 8b 10 45 8b 40 08 48 8d 4c 24 28 48 8b 01 8b 49 08 44 3b c1 77 46 48 8b c8 4d 63 c0 49 c1 e0 03 e8 31 b4 a1 4f 48 8b fb e8 69 83 bc 5e 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 49 8b 08 48 8b 16 e8 b0 e8 ff ff 48 8b fb e8 48 83 bc 5e 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 e8 6d 4e 0a ff cc 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 45 91 bc 5e 48 8b f0 40 88 6e 08 48 b9 a8 9e 34 c6 f7 7f 00 00 e8 6f 14 b7 5e 48 8b c8 e8 17 e6 7b ff 8b f8 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 16 91 bc 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 ff 29 cf 5e 48 8b e8 8b cf e8 55 41 0b ff 4c 8b c0 48 8b cd 48 8b d6 e8 6f 65 09 ff 48 8b d0 48 8b cb e8 cc be 0b ff 48 8b cb e8 24 dd b3 5e cc}
; Capture completion code = INTRx2
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
0023h je short 0085h                          ; JE rel8 || 74 cb || encoded[2]{74 60}
0025h cmp bpl,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fd 02}
0029h jne near ptr 00ach                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 7d 00 00 00}
002fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0033h vmovdqu xmmword ptr [rsp+28h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 28}
0039h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
003eh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0044h lea r8,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 38}
0049h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
004ch mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0050h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0055h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0058h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
005bh cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
005eh ja short 00a6h                          ; JA rel8 || 77 cb || encoded[2]{77 46}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0066h shl r8,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 03}
006ah call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 b4 a1 4f}
006fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0072h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 83 bc 5e}
0077h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0079h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007ch add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0080h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0081h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0082h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0083h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0084h ret                                     ; RET || C3 || encoded[1]{c3}
0085h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0088h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
008bh call 7ff7c72dc3f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 e8 ff ff}
0090h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0093h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 83 bc 5e}
0098h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
00a1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a5h ret                                     ; RET || C3 || encoded[1]{c3}
00a6h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 4e 0a ff}
00abh int 3                                   ; INT3 || CC || encoded[1]{cc}
00ach mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 91 bc 5e}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00c2h mov rcx,7ff7c6349ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 34 c6 f7 7f 00 00}
00cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 14 b7 5e}
00d1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d4h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 e6 7b ff}
00d9h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00dbh mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
00e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 91 bc 5e}
00eah mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00edh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00f2h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00fch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 29 cf 5e}
0101h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0104h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0106h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 41 0b ff}
010bh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0111h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0114h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 65 09 ff}
0119h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
011ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011fh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc be 0b ff}
0124h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0127h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 dd b3 5e}
012ch int 3                                   ; INT3 || CC || encoded[1]{cc}
