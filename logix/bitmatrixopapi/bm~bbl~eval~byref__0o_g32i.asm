; BitMatrix<int> eval<int>(BinaryBitLogicKind:byte kind, BitMatrix<int> A, BitMatrix<int> B, ref BitMatrix<int> Z)
; bm~bbl~eval~byref__0o_g32i[7ff7c6b59080h, 7ff7c6b593a1h][801] = {57 56 55 53 48 83 ec 68 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 48 8b b4 24 b0 00 00 00 40 0f b6 cd 83 f9 0f 0f 87 67 02 00 00 8b c9 48 8d 15 e6 02 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 48 8b cb ba ff ff ff ff e8 62 9d ff ff 48 8b c3 e9 25 02 00 00 48 8b cb e8 5a 96 ed ff 48 8b c3 e9 15 02 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 5c 9e ff ff 48 8b fb e8 84 cd 34 5f 48 a5 48 8b c3 e9 f5 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 5c 9e ff ff 48 8b fb e8 64 cd 34 5f 48 a5 48 8b c3 e9 d5 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 5c 9e ff ff 48 8b fb e8 44 cd 34 5f 48 a5 48 8b c3 e9 b5 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 5c 9e ff ff 48 8b fb e8 24 cd 34 5f 48 a5 48 8b c3 e9 95 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 5c 9e ff ff 48 8b fb e8 04 cd 34 5f 48 a5 48 8b c3 e9 75 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 5c 9e ff ff 48 8b fb e8 e4 cc 34 5f 48 a5 48 8b c3 e9 55 01 00 00 c5 fa 6f 06 c5 fa 7f 44 24 48 c4 c1 7a 6f 00 c5 fa 7f 44 24 58 4c 8d 44 24 58 49 8b 10 45 8b 40 08 48 8d 4c 24 48 48 8b 01 8b 49 08 44 3b c1 0f 87 29 01 00 00 48 8b c8 4d 63 c0 49 c1 e0 02 e8 56 fd 36 4f 48 8b fb e8 8e cc 34 5f 48 a5 48 8b c3 e9 ff 00 00 00 49 8b 08 48 8b 16 e8 41 95 ed ff 48 8b fb e8 71 cc 34 5f 48 a5 48 8b c3 e9 e2 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 01 c5 fa 7f 44 24 38 4c 8d 44 24 38 49 8b 10 45 8b 40 08 48 8d 4c 24 28 48 8b 01 8b 49 08 44 3b c1 0f 87 bc 00 00 00 48 8b c8 4d 63 c0 49 c1 e0 02 e8 e3 fc 36 4f 48 8b fb e8 1b cc 34 5f 48 a5 48 8b c3 e9 8c 00 00 00 49 8b 09 48 8b 16 e8 ce 94 ed ff 48 8b fb e8 fe cb 34 5f 48 a5 48 8b c3 eb 72 49 8b 08 49 8b 11 4c 8b 06 e8 b9 9d ff ff 48 8b fb e8 e1 cb 34 5f 48 a5 48 8b c3 eb 55 49 8b 08 49 8b 11 4c 8b 06 e8 cc 9d ff ff 48 8b fb e8 c4 cb 34 5f 48 a5 48 8b c3 eb 38 49 8b 08 49 8b 11 4c 8b 06 e8 cf 9d ff ff 48 8b fb e8 a7 cb 34 5f 48 a5 48 8b c3 eb 1b 49 8b 08 49 8b 11 4c 8b 06 e8 d2 9d ff ff 48 8b fb e8 8a cb 34 5f 48 a5 48 8b c3 48 83 c4 68 5b 5d 5e 5f c3 e8 27 97 84 ff cc e8 21 97 84 ff cc 48 b9 b0 c7 91 c6 f7 7f 00 00 e8 81 d9 34 5f 48 8b f0 40 88 6e 08 48 b9 08 8f 36 c6 f7 7f 00 00 e8 ab 5c 2f 5f 48 8b c8 e8 13 32 ec ff 8b f8 48 b9 38 2a 5b c6 f7 7f 00 00 e8 52 d9 34 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 3b 72 47 5f 48 8b e8 8b cf e8 d9 2d ec ff 4c 8b c0 48 8b cd 48 8b d6 e8 ab ad 83 ff 48 8b d0 48 8b cb e8 c8 44 85 ff 48 8b cb e8 60 25 2c 5f cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:37:375
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0013h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0018h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001ah rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001fh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0022h mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
0024h mov rsi,[rsp+0b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 b0 00 00 00}
002ch movzx ecx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cd}
0030h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0033h ja near ptr 02a0h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 67 02 00 00}
0039h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
003bh lea rdx,[7ff7c6b593a8h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e6 02 00 00}
0042h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0045h lea rax,[7ff7c6b590ach]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
004ch add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
004fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0051h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0054h mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0059h call 7ff7c6b52e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 9d ff ff}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 25 02 00 00}
0066h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0069h call 7ff7c6a32748h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 96 ed ff}
006eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0071h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 15 02 00 00}
0076h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0079h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
007ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
007fh call 7ff7c6b52f60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 9e ff ff}
0084h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0087h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 cd 34 5f}
008ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0091h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f5 01 00 00}
0096h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0099h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
009ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
009fh call 7ff7c6b52f80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 9e ff ff}
00a4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00a7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 cd 34 5f}
00ach movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00aeh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00b1h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d5 01 00 00}
00b6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00b9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00bch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00bfh call 7ff7c6b52fa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 9e ff ff}
00c4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00c7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 cd 34 5f}
00cch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00ceh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00d1h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b5 01 00 00}
00d6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00d9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00dch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00dfh call 7ff7c6b52fc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 9e ff ff}
00e4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00e7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 cd 34 5f}
00ech movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00eeh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00f1h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 01 00 00}
00f6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00f9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00fch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00ffh call 7ff7c6b52fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 9e ff ff}
0104h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0107h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 cd 34 5f}
010ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
010eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0111h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 01 00 00}
0116h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0119h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
011ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
011fh call 7ff7c6b53000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 9e ff ff}
0124h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0127h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 cc 34 5f}
012ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
012eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0131h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0136h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
013ah vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0140h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0145h vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
014bh lea r8,[rsp+58h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 58}
0150h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0153h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0157h lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
015ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
015fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0162h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0165h ja near ptr 0294h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 29 01 00 00}
016bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016eh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0171h shl r8,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 02}
0175h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 fd 36 4f}
017ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
017dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e cc 34 5f}
0182h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0184h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0187h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ff 00 00 00}
018ch mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
018fh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0192h call 7ff7c6a32758h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 95 ed ff}
0197h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
019ah call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 cc 34 5f}
019fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01a1h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01a4h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e2 00 00 00}
01a9h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
01adh vmovdqu xmmword ptr [rsp+28h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 28}
01b3h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
01b8h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
01beh lea r8,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 38}
01c3h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
01c6h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
01cah lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
01cfh mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
01d2h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
01d5h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
01d8h ja near ptr 029ah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bc 00 00 00}
01deh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01e1h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
01e4h shl r8,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 02}
01e8h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 fc 36 4f}
01edh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01f0h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b cc 34 5f}
01f5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01f7h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01fah jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8c 00 00 00}
01ffh mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
0202h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0205h call 7ff7c6a32758h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 94 ed ff}
020ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
020dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe cb 34 5f}
0212h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0214h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0217h jmp short 028bh                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
0219h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
021ch mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
021fh mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0222h call 7ff7c6b53060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 9d ff ff}
0227h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
022ah call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 cb 34 5f}
022fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0231h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0234h jmp short 028bh                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0236h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0239h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
023ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
023fh call 7ff7c6b53090h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 9d ff ff}
0244h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0247h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 cb 34 5f}
024ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
024eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0251h jmp short 028bh                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0253h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0256h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0259h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
025ch call 7ff7c6b530b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 9d ff ff}
0261h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0264h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 cb 34 5f}
0269h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
026bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
026eh jmp short 028bh                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0270h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0273h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0276h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0279h call 7ff7c6b530d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 9d ff ff}
027eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0281h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a cb 34 5f}
0286h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0288h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
028bh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
028fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0290h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0291h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0292h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0293h ret                                     ; RET || C3 || encoded[1]{c3}
0294h call 7ff7c63a2a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 97 84 ff}
0299h int 3                                   ; INT3 || CC || encoded[1]{cc}
029ah call 7ff7c63a2a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 97 84 ff}
029fh int 3                                   ; INT3 || CC || encoded[1]{cc}
02a0h mov rcx,7ff7c691c7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c7 91 c6 f7 7f 00 00}
02aah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 d9 34 5f}
02afh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b2h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
02b6h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
02c0h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 5c 2f 5f}
02c5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c8h call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 32 ec ff}
02cdh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
02cfh mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
02d9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 d9 34 5f}
02deh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
02e1h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
02e6h mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
02f0h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 72 47 5f}
02f5h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
02f8h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
02fah call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 2d ec ff}
02ffh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0302h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0305h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0308h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab ad 83 ff}
030dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0310h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0313h call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 44 85 ff}
0318h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
031bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 25 2c 5f}
0320h int 3                                   ; INT3 || CC || encoded[1]{cc}
