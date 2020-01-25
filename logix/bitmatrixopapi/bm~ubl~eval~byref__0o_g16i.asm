; BitMatrix<Int16> eval<Int16>(UnaryBitLogicKind:byte kind, BitMatrix<Int16> A, ref BitMatrix<Int16> Z)
; bm~ubl~eval~byref__0o_g16i[7ff7c6a34070h, 7ff7c6a3419ch][300] = {57 56 55 53 48 83 ec 48 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 28 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 5f 40 80 fd 02 0f 85 7c 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 00 c5 fa 7f 44 24 38 4c 8d 44 24 38 49 8b 10 45 8b 40 08 48 8d 4c 24 28 48 8b 01 8b 49 08 44 3b c1 77 45 48 8b c8 4d 63 c0 49 d1 e0 e8 72 4e 49 4f 48 8b fb e8 aa 1d 47 5f 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 49 8b 08 48 8b 16 e8 69 d7 ff ff 48 8b fb e8 89 1d 47 5f 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 e8 26 e9 96 ff cc 48 b9 e8 f9 91 c6 f7 7f 00 00 e8 86 2b 47 5f 48 8b f0 40 88 6e 08 48 b9 48 7f 36 c6 f7 7f 00 00 e8 b0 ae 41 5f 48 8b c8 e8 18 84 fe ff 8b f8 48 b9 38 2a 5b c6 f7 7f 00 00 e8 57 2b 47 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 40 c4 59 5f 48 8b e8 8b cf e8 de 7f fe ff 4c 8b c0 48 8b cd 48 8b d6 e8 b0 ff 95 ff 48 8b d0 48 8b cb e8 cd 96 97 ff 48 8b cb e8 65 77 3e 5f cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:37:199
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
0069h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 4e 49 4f}
006eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0071h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 1d 47 5f}
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
008ah call 7ff7c6a31868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 d7 ff ff}
008fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0092h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 1d 47 5f}
0097h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0099h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009ch add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
00a0h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a1h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a4h ret                                     ; RET || C3 || encoded[1]{c3}
00a5h call 7ff7c63a2a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 e9 96 ff}
00aah int 3                                   ; INT3 || CC || encoded[1]{cc}
00abh mov rcx,7ff7c691f9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f9 91 c6 f7 7f 00 00}
00b5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 2b 47 5f}
00bah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bdh mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00c1h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 ae 41 5f}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 84 fe ff}
00d8h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00dah mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
00e4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 2b 47 5f}
00e9h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00ech mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00f1h mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
00fbh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 c4 59 5f}
0100h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0103h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0105h call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 7f fe ff}
010ah mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0110h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0113h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 ff 95 ff}
0118h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
011bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011eh call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 96 97 ff}
0123h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0126h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 77 3e 5f}
012bh int 3                                   ; INT3 || CC || encoded[1]{cc}
