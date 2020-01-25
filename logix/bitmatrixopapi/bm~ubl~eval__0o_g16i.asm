; BitMatrix<Int16> eval<Int16>(UnaryBitLogicKind:byte kind, BitMatrix<Int16> A)
; bm~ubl~eval__0o_g16i[7ff7c6a33f10h, 7ff7c6a3400fh][255] = {57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 28 48 8b d9 8b ea 49 8b f0 40 80 fd 01 74 1c 40 80 fd 02 75 58 48 8b fb e8 52 1f 47 5f 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 e8 ad f8 ff ff 48 8b 0e 48 8d 54 24 28 48 8b 12 e8 ad f8 ff ff 48 8b fb 48 8d 74 24 28 e8 10 1f 47 5f 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3 48 b9 00 6a 88 c6 f7 7f 00 00 e8 13 2d 47 5f 48 8b f0 40 88 6e 08 48 b9 48 7f 34 c6 f7 7f 00 00 e8 3d b0 41 5f 48 8b c8 e8 c5 a7 fe ff 8b f8 48 b9 50 58 58 c6 f7 7f 00 00 e8 e4 2c 47 5f 48 8b d8 b9 68 04 00 00 48 ba 00 d2 5a c6 f7 7f 00 00 e8 cd c5 59 5f 48 8b e8 8b cf e8 a3 7f 96 ff 4c 8b c0 48 8b cd 48 8b d6 e8 3d 01 94 ff 48 8b d0 48 8b cb e8 0a ae 95 ff 48 8b cb e8 f2 78 3e 5f cc}
; Capture completion code, INTRx2
; 2020-01-24 02:54:43:747
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
0029h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 1f 47 5f}
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
004eh call 7ff7c6a33810h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad f8 ff ff}
0053h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0056h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
005bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
005eh call 7ff7c6a33820h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad f8 ff ff}
0063h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0066h lea rsi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 28}
006bh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 1f 47 5f}
0070h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0072h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0075h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0079h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
007bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007dh ret                                     ; RET || C3 || encoded[1]{c3}
007eh mov rcx,7ff7c6886a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 6a 88 c6 f7 7f 00 00}
0088h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 2d 47 5f}
008dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0090h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
0094h mov rcx,7ff7c6347f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 34 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d b0 41 5f}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6a1e780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 a7 fe ff}
00abh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
00adh mov rcx,7ff7c6585850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 58 58 c6 f7 7f 00 00}
00b7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 2c 47 5f}
00bch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bfh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00c4h mov rdx,7ff7c65ad200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 d2 5a c6 f7 7f 00 00}
00ceh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd c5 59 5f}
00d3h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00d6h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00d8h call 7ff7c639bf90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 7f 96 ff}
00ddh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e0h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00e3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00e6h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 01 94 ff}
00ebh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00eeh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f1h call 7ff7c638ee10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a ae 95 ff}
00f6h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f9h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 78 3e 5f}
00feh int 3                                   ; INT3 || CC || encoded[1]{cc}
