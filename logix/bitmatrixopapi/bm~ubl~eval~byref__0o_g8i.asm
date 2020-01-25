; BitMatrix<sbyte> eval<sbyte>(UnaryBitLogicKind:byte kind, BitMatrix<sbyte> A, ref BitMatrix<sbyte> Z)
; bm~ubl~eval~byref__0o_g8i[7ff7c6a35c90h, 7ff7c6a35db9h][297] = {57 56 55 53 48 83 ec 48 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 28 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 5c 40 80 fd 02 0f 85 79 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 00 c5 fa 7f 44 24 38 48 8d 4c 24 38 48 8b 11 8b 49 08 4c 8d 44 24 28 49 8b 00 45 8b 40 08 41 3b c8 77 42 4c 63 c1 48 8b c8 e8 55 32 49 4f 48 8b fb e8 8d 01 47 5f 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 49 8b 08 48 8b 16 e8 9c 76 ff ff 48 8b fb e8 6c 01 47 5f 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 e8 09 cd 94 ff cc 48 b9 00 6a 88 c6 f7 7f 00 00 e8 69 0f 47 5f 48 8b f0 40 88 6e 08 48 b9 68 6f 34 c6 f7 7f 00 00 e8 93 92 41 5f 48 8b c8 e8 1b 8a fe ff 8b f8 48 b9 50 58 58 c6 f7 7f 00 00 e8 3a 0f 47 5f 48 8b d8 b9 68 04 00 00 48 ba 00 d2 5a c6 f7 7f 00 00 e8 23 a8 59 5f 48 8b e8 8b cf e8 f9 61 96 ff 4c 8b c0 48 8b cd 48 8b d6 e8 93 e3 93 ff 48 8b d0 48 8b cb e8 60 90 95 ff 48 8b cb e8 48 5b 3e 5f cc}
; Capture completion code, INTRx2
; 2020-01-24 02:54:43:766
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
0066h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 32 49 4f}
006bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
006eh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 01 47 5f}
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
0087h call 7ff7c6a2d3b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 76 ff ff}
008ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
008fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 01 47 5f}
0094h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0096h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0099h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
009dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a1h ret                                     ; RET || C3 || encoded[1]{c3}
00a2h call 7ff7c6382a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 cd 94 ff}
00a7h int 3                                   ; INT3 || CC || encoded[1]{cc}
00a8h mov rcx,7ff7c6886a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 6a 88 c6 f7 7f 00 00}
00b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 0f 47 5f}
00b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bah mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00beh mov rcx,7ff7c6346f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 34 c6 f7 7f 00 00}
00c8h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 92 41 5f}
00cdh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d0h call 7ff7c6a1e780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 8a fe ff}
00d5h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00d7h mov rcx,7ff7c6585850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 58 58 c6 f7 7f 00 00}
00e1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 0f 47 5f}
00e6h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00e9h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00eeh mov rdx,7ff7c65ad200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 d2 5a c6 f7 7f 00 00}
00f8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 a8 59 5f}
00fdh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0100h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0102h call 7ff7c639bf90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 61 96 ff}
0107h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010ah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
010dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0110h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 e3 93 ff}
0115h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0118h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011bh call 7ff7c638ee10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 90 95 ff}
0120h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0123h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 5b 3e 5f}
0128h int 3                                   ; INT3 || CC || encoded[1]{cc}
