; BitMatrix<long> eval<long>(BinaryBitLogicKind:byte kind, BitMatrix<long> A, BitMatrix<long> B, ref BitMatrix<long> Z)
; bm~bbl~eval~byref__0o_g64i[7ff7c6b5a3d0h, 7ff7c6b5a6f6h][806] = {57 56 55 53 48 83 ec 68 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 48 8b b4 24 b0 00 00 00 40 0f b6 cd 83 f9 0f 0f 87 6c 02 00 00 8b c9 48 8d 15 ee 02 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 48 8b cb 48 ba ff ff ff ff ff ff ff ff e8 ed 9b ff ff 48 8b c3 e9 25 02 00 00 48 8b cb e8 1d 8d ed ff 48 8b c3 e9 15 02 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 47 a8 ff ff 48 8b fb e8 2f ba 34 5f 48 a5 48 8b c3 e9 f5 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 47 a8 ff ff 48 8b fb e8 0f ba 34 5f 48 a5 48 8b c3 e9 d5 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 47 a8 ff ff 48 8b fb e8 ef b9 34 5f 48 a5 48 8b c3 e9 b5 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 47 a8 ff ff 48 8b fb e8 cf b9 34 5f 48 a5 48 8b c3 e9 95 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 47 a8 ff ff 48 8b fb e8 af b9 34 5f 48 a5 48 8b c3 e9 75 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 47 a8 ff ff 48 8b fb e8 8f b9 34 5f 48 a5 48 8b c3 e9 55 01 00 00 c5 fa 6f 06 c5 fa 7f 44 24 48 c4 c1 7a 6f 00 c5 fa 7f 44 24 58 4c 8d 44 24 58 49 8b 10 45 8b 40 08 48 8d 4c 24 48 48 8b 01 8b 49 08 44 3b c1 0f 87 29 01 00 00 48 8b c8 4d 63 c0 49 c1 e0 03 e8 01 ea 36 4f 48 8b fb e8 39 b9 34 5f 48 a5 48 8b c3 e9 ff 00 00 00 49 8b 08 48 8b 16 e8 04 8c ed ff 48 8b fb e8 1c b9 34 5f 48 a5 48 8b c3 e9 e2 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 01 c5 fa 7f 44 24 38 4c 8d 44 24 38 49 8b 10 45 8b 40 08 48 8d 4c 24 28 48 8b 01 8b 49 08 44 3b c1 0f 87 bc 00 00 00 48 8b c8 4d 63 c0 49 c1 e0 03 e8 8e e9 36 4f 48 8b fb e8 c6 b8 34 5f 48 a5 48 8b c3 e9 8c 00 00 00 49 8b 09 48 8b 16 e8 91 8b ed ff 48 8b fb e8 a9 b8 34 5f 48 a5 48 8b c3 eb 72 49 8b 08 49 8b 11 4c 8b 06 e8 a4 a7 ff ff 48 8b fb e8 8c b8 34 5f 48 a5 48 8b c3 eb 55 49 8b 08 49 8b 11 4c 8b 06 e8 a7 a7 ff ff 48 8b fb e8 6f b8 34 5f 48 a5 48 8b c3 eb 38 49 8b 08 49 8b 11 4c 8b 06 e8 aa a7 ff ff 48 8b fb e8 52 b8 34 5f 48 a5 48 8b c3 eb 1b 49 8b 08 49 8b 11 4c 8b 06 e8 ad a7 ff ff 48 8b fb e8 35 b8 34 5f 48 a5 48 8b c3 48 83 c4 68 5b 5d 5e 5f c3 e8 d2 83 84 ff cc e8 cc 83 84 ff cc 48 b9 b0 c7 91 c6 f7 7f 00 00 e8 2c c6 34 5f 48 8b f0 40 88 6e 08 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 56 49 2f 5f 48 8b c8 e8 be 1e ec ff 8b f8 48 b9 38 2a 5b c6 f7 7f 00 00 e8 fd c5 34 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 e6 5e 47 5f 48 8b e8 8b cf e8 84 1a ec ff 4c 8b c0 48 8b cd 48 8b d6 e8 56 9a 83 ff 48 8b d0 48 8b cb e8 73 31 85 ff 48 8b cb e8 0b 12 2c 5f cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:37:399
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
0033h ja near ptr 02a5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 6c 02 00 00}
0039h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
003bh lea rdx,[7ff7c6b5a700h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ee 02 00 00}
0042h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0045h lea rax,[7ff7c6b5a3fch]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
004ch add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
004fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0051h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0054h mov rdx,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff ff}
005eh call 7ff7c6b54020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 9b ff ff}
0063h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0066h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 25 02 00 00}
006bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
006eh call 7ff7c6a33160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 8d ed ff}
0073h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0076h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 15 02 00 00}
007bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
007eh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0081h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0084h call 7ff7c6b54ca0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a8 ff ff}
0089h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
008ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f ba 34 5f}
0091h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0093h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0096h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f5 01 00 00}
009bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
009eh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00a1h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00a4h call 7ff7c6b54cc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a8 ff ff}
00a9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00ach call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f ba 34 5f}
00b1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00b3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00b6h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d5 01 00 00}
00bbh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00beh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00c1h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00c4h call 7ff7c6b54ce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a8 ff ff}
00c9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00cch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef b9 34 5f}
00d1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00d3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00d6h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b5 01 00 00}
00dbh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00deh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00e1h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00e4h call 7ff7c6b54d00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a8 ff ff}
00e9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00ech call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf b9 34 5f}
00f1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00f3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00f6h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 01 00 00}
00fbh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00feh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0101h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0104h call 7ff7c6b54d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a8 ff ff}
0109h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
010ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af b9 34 5f}
0111h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0113h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0116h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 01 00 00}
011bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
011eh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0121h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0124h call 7ff7c6b54d40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 a8 ff ff}
0129h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
012ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f b9 34 5f}
0131h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0133h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0136h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
013bh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
013fh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0145h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
014ah vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
0150h lea r8,[rsp+58h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 58}
0155h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0158h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
015ch lea rcx,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 48}
0161h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0164h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0167h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
016ah ja near ptr 0299h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 29 01 00 00}
0170h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0173h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0176h shl r8,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 03}
017ah call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 ea 36 4f}
017fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0182h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 b9 34 5f}
0187h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0189h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
018ch jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ff 00 00 00}
0191h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0194h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0197h call 7ff7c6a33170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 8c ed ff}
019ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
019fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c b9 34 5f}
01a4h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01a6h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01a9h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e2 00 00 00}
01aeh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
01b2h vmovdqu xmmword ptr [rsp+28h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 28}
01b8h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
01bdh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
01c3h lea r8,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 38}
01c8h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
01cbh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
01cfh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
01d4h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
01d7h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
01dah cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
01ddh ja near ptr 029fh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bc 00 00 00}
01e3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01e6h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
01e9h shl r8,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 03}
01edh call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e e9 36 4f}
01f2h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01f5h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 b8 34 5f}
01fah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01fch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01ffh jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8c 00 00 00}
0204h mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
0207h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
020ah call 7ff7c6a33170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 8b ed ff}
020fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0212h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 b8 34 5f}
0217h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0219h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
021ch jmp short 0290h                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
021eh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0221h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0224h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0227h call 7ff7c6b54da0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 a7 ff ff}
022ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
022fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c b8 34 5f}
0234h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0236h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0239h jmp short 0290h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
023bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
023eh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0241h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0244h call 7ff7c6b54dc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 a7 ff ff}
0249h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
024ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f b8 34 5f}
0251h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0253h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0256h jmp short 0290h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0258h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
025bh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
025eh mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0261h call 7ff7c6b54de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa a7 ff ff}
0266h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0269h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 b8 34 5f}
026eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0270h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0273h jmp short 0290h                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0275h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0278h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
027bh mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
027eh call 7ff7c6b54e00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad a7 ff ff}
0283h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0286h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 b8 34 5f}
028bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
028dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0290h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0294h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0295h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0296h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0297h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0298h ret                                     ; RET || C3 || encoded[1]{c3}
0299h call 7ff7c63a2a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 83 84 ff}
029eh int 3                                   ; INT3 || CC || encoded[1]{cc}
029fh call 7ff7c63a2a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 83 84 ff}
02a4h int 3                                   ; INT3 || CC || encoded[1]{cc}
02a5h mov rcx,7ff7c691c7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c7 91 c6 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c c6 34 5f}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
02bbh mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
02c5h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 49 2f 5f}
02cah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02cdh call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 1e ec ff}
02d2h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
02d4h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
02deh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd c5 34 5f}
02e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
02e6h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
02ebh mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
02f5h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 5e 47 5f}
02fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
02fdh mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
02ffh call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 1a ec ff}
0304h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0307h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
030ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
030dh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 9a 83 ff}
0312h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0315h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0318h call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 31 85 ff}
031dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0320h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 12 2c 5f}
0325h int 3                                   ; INT3 || CC || encoded[1]{cc}
