; BitMatrix<int> eval<int>(UnaryBitLogicKind:byte kind, BitMatrix<int> A, ref BitMatrix<int> Z)
; bm~ubl~eval~byref__0o_g32i[7ff7c6a36370h, 7ff7c6a3649dh][301] = {57 56 55 53 48 83 ec 48 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 28 48 8b d9 8b ea 49 8b f1 40 80 fd 01 74 60 40 80 fd 02 0f 85 7d 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 00 c5 fa 7f 44 24 38 4c 8d 44 24 38 49 8b 10 45 8b 40 08 48 8d 4c 24 28 48 8b 01 8b 49 08 44 3b c1 77 46 48 8b c8 4d 63 c0 49 c1 e0 02 e8 71 2b 49 4f 48 8b fb e8 a9 fa 46 5f 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 49 8b 08 48 8b 16 e8 80 dd ff ff 48 8b fb e8 88 fa 46 5f 48 a5 48 8b c3 48 83 c4 48 5b 5d 5e 5f c3 e8 25 c6 94 ff cc 48 b9 00 6a 88 c6 f7 7f 00 00 e8 85 08 47 5f 48 8b f0 40 88 6e 08 48 b9 08 8f 34 c6 f7 7f 00 00 e8 af 8b 41 5f 48 8b c8 e8 37 83 fe ff 8b f8 48 b9 50 58 58 c6 f7 7f 00 00 e8 56 08 47 5f 48 8b d8 b9 68 04 00 00 48 ba 00 d2 5a c6 f7 7f 00 00 e8 3f a1 59 5f 48 8b e8 8b cf e8 15 5b 96 ff 4c 8b c0 48 8b cd 48 8b d6 e8 af dc 93 ff 48 8b d0 48 8b cb e8 7c 89 95 ff 48 8b cb e8 64 54 3e 5f cc}
; Capture completion code, INTRx2
; 2020-01-24 02:54:43:779
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
006ah call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 2b 49 4f}
006fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0072h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 fa 46 5f}
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
008bh call 7ff7c6a34180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 dd ff ff}
0090h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0093h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 fa 46 5f}
0098h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
00a1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a5h ret                                     ; RET || C3 || encoded[1]{c3}
00a6h call 7ff7c6382a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c6 94 ff}
00abh int 3                                   ; INT3 || CC || encoded[1]{cc}
00ach mov rcx,7ff7c6886a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 6a 88 c6 f7 7f 00 00}
00b6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 08 47 5f}
00bbh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00beh mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
00c2h mov rcx,7ff7c6348f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 34 c6 f7 7f 00 00}
00cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 8b 41 5f}
00d1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d4h call 7ff7c6a1e780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 83 fe ff}
00d9h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00dbh mov rcx,7ff7c6585850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 58 58 c6 f7 7f 00 00}
00e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 08 47 5f}
00eah mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00edh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00f2h mov rdx,7ff7c65ad200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 d2 5a c6 f7 7f 00 00}
00fch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f a1 59 5f}
0101h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0104h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0106h call 7ff7c639bf90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 5b 96 ff}
010bh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
010eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0111h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0114h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af dc 93 ff}
0119h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
011ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011fh call 7ff7c638ee10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 89 95 ff}
0124h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0127h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 54 3e 5f}
012ch int 3                                   ; INT3 || CC || encoded[1]{cc}
