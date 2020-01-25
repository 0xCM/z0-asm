; BitMatrix<sbyte> eval<sbyte>(BinaryBitLogicKind:byte kind, BitMatrix<sbyte> A, BitMatrix<sbyte> B, ref BitMatrix<sbyte> Z)
; bm~bbl~eval~byref__0o_g8i[7ff7c6b57090h, 7ff7c6b573a9h][793] = {57 56 55 53 48 83 ec 68 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 48 8b b4 24 b0 00 00 00 40 0f b6 cd 83 f9 0f 0f 87 5f 02 00 00 8b c9 48 8d 15 de 02 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 ba ff ff ff ff 48 8b cb e8 c2 14 ee ff 48 8b c3 e9 1d 02 00 00 48 8b cb e8 8a 3b ed ff 48 8b c3 e9 0d 02 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 cc 15 ee ff 48 8b fb e8 74 ed 34 5f 48 a5 48 8b c3 e9 ed 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 cc 15 ee ff 48 8b fb e8 54 ed 34 5f 48 a5 48 8b c3 e9 cd 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 cc 15 ee ff 48 8b fb e8 34 ed 34 5f 48 a5 48 8b c3 e9 ad 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 cc 15 ee ff 48 8b fb e8 14 ed 34 5f 48 a5 48 8b c3 e9 8d 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 cc 15 ee ff 48 8b fb e8 f4 ec 34 5f 48 a5 48 8b c3 e9 6d 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 cc 15 ee ff 48 8b fb e8 d4 ec 34 5f 48 a5 48 8b c3 e9 4d 01 00 00 c5 fa 6f 06 c5 fa 7f 44 24 48 c4 c1 7a 6f 00 c5 fa 7f 44 24 58 48 8d 4c 24 58 48 8b 11 8b 49 08 4c 8d 44 24 48 49 8b 00 45 8b 40 08 41 3b c8 0f 87 21 01 00 00 4c 63 c1 48 8b c8 e8 4a 1d 37 4f 48 8b fb e8 82 ec 34 5f 48 a5 48 8b c3 e9 fb 00 00 00 49 8b 08 48 8b 16 e8 75 3a ed ff 48 8b fb e8 65 ec 34 5f 48 a5 48 8b c3 e9 de 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 01 c5 fa 7f 44 24 38 48 8d 4c 24 38 48 8b 11 8b 49 08 4c 8d 44 24 28 49 8b 00 45 8b 40 08 41 3b c8 0f 87 b8 00 00 00 4c 63 c1 48 8b c8 e8 db 1c 37 4f 48 8b fb e8 13 ec 34 5f 48 a5 48 8b c3 e9 8c 00 00 00 49 8b 09 48 8b 16 e8 06 3a ed ff 48 8b fb e8 f6 eb 34 5f 48 a5 48 8b c3 eb 72 49 8b 08 49 8b 11 4c 8b 06 e8 31 15 ee ff 48 8b fb e8 d9 eb 34 5f 48 a5 48 8b c3 eb 55 49 8b 08 49 8b 11 4c 8b 06 e8 34 15 ee ff 48 8b fb e8 bc eb 34 5f 48 a5 48 8b c3 eb 38 49 8b 08 49 8b 11 4c 8b 06 e8 37 15 ee ff 48 8b fb e8 9f eb 34 5f 48 a5 48 8b c3 eb 1b 49 8b 08 49 8b 11 4c 8b 06 e8 3a 15 ee ff 48 8b fb e8 82 eb 34 5f 48 a5 48 8b c3 48 83 c4 68 5b 5d 5e 5f c3 e8 1f b7 84 ff cc e8 19 b7 84 ff cc 48 b9 b0 c7 91 c6 f7 7f 00 00 e8 79 f9 34 5f 48 8b f0 40 88 6e 08 48 b9 68 6f 36 c6 f7 7f 00 00 e8 a3 7c 2f 5f 48 8b c8 e8 0b 52 ec ff 8b f8 48 b9 38 2a 5b c6 f7 7f 00 00 e8 4a f9 34 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 33 92 47 5f 48 8b e8 8b cf e8 d1 4d ec ff 4c 8b c0 48 8b cd 48 8b d6 e8 a3 cd 83 ff 48 8b d0 48 8b cb e8 c0 64 85 ff 48 8b cb e8 58 45 2c 5f cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:37:325
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
0033h ja near ptr 0298h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 5f 02 00 00}
0039h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
003bh lea rdx,[7ff7c6b573b0h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de 02 00 00}
0042h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0045h lea rax,[7ff7c6b570bch]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
004ch add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
004fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0051h mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0056h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0059h call 7ff7c6a385b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 14 ee ff}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1d 02 00 00}
0066h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0069h call 7ff7c6a2ac88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 3b ed ff}
006eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0071h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0d 02 00 00}
0076h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0079h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
007ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
007fh call 7ff7c6a386e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 15 ee ff}
0084h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0087h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 ed 34 5f}
008ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0091h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0096h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0099h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
009ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
009fh call 7ff7c6a38700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 15 ee ff}
00a4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00a7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 ed 34 5f}
00ach movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00aeh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00b1h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cd 01 00 00}
00b6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00b9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00bch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00bfh call 7ff7c6a38720h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 15 ee ff}
00c4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00c7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 ed 34 5f}
00cch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00ceh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00d1h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ad 01 00 00}
00d6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00d9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00dch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00dfh call 7ff7c6a38740h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 15 ee ff}
00e4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00e7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 ed 34 5f}
00ech movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00eeh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00f1h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8d 01 00 00}
00f6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00f9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00fch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00ffh call 7ff7c6a38760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 15 ee ff}
0104h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0107h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 ec 34 5f}
010ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
010eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0111h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6d 01 00 00}
0116h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0119h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
011ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
011fh call 7ff7c6a38780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 15 ee ff}
0124h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0127h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 ec 34 5f}
012ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
012eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0131h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4d 01 00 00}
0136h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
013ah vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0140h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0145h vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
014bh lea rcx,[rsp+58h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 58}
0150h mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
0153h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0156h lea r8,[rsp+48h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 48}
015bh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
015eh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0162h cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
0165h ja near ptr 028ch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 21 01 00 00}
016bh movsxd r8,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c1}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 1d 37 4f}
0176h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0179h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 ec 34 5f}
017eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0180h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0183h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 00 00 00}
0188h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
018bh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
018eh call 7ff7c6a2ac98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 3a ed ff}
0193h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0196h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 ec 34 5f}
019bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
019dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01a0h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 de 00 00 00}
01a5h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
01a9h vmovdqu xmmword ptr [rsp+28h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 28}
01afh vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
01b4h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
01bah lea rcx,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 38}
01bfh mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
01c2h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
01c5h lea r8,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 28}
01cah mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
01cdh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
01d1h cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
01d4h ja near ptr 0292h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b8 00 00 00}
01dah movsxd r8,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c1}
01ddh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01e0h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 1c 37 4f}
01e5h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01e8h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 ec 34 5f}
01edh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01efh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01f2h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8c 00 00 00}
01f7h mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
01fah mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
01fdh call 7ff7c6a2ac98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 3a ed ff}
0202h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0205h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 eb 34 5f}
020ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
020ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
020fh jmp short 0283h                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
0211h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0214h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0217h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
021ah call 7ff7c6a387e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 15 ee ff}
021fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0222h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 eb 34 5f}
0227h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0229h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
022ch jmp short 0283h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
022eh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0231h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0234h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0237h call 7ff7c6a38800h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 15 ee ff}
023ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
023fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc eb 34 5f}
0244h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0246h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0249h jmp short 0283h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
024bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
024eh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0251h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0254h call 7ff7c6a38820h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 15 ee ff}
0259h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
025ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f eb 34 5f}
0261h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0263h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0266h jmp short 0283h                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0268h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
026bh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
026eh mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0271h call 7ff7c6a38840h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 15 ee ff}
0276h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0279h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 eb 34 5f}
027eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0280h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0283h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0287h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0288h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0289h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
028ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
028bh ret                                     ; RET || C3 || encoded[1]{c3}
028ch call 7ff7c63a2a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f b7 84 ff}
0291h int 3                                   ; INT3 || CC || encoded[1]{cc}
0292h call 7ff7c63a2a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 b7 84 ff}
0297h int 3                                   ; INT3 || CC || encoded[1]{cc}
0298h mov rcx,7ff7c691c7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c7 91 c6 f7 7f 00 00}
02a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f9 34 5f}
02a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02aah mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
02aeh mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
02b8h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 7c 2f 5f}
02bdh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c0h call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 52 ec ff}
02c5h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
02c7h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
02d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a f9 34 5f}
02d6h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
02d9h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
02deh mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
02e8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 92 47 5f}
02edh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
02f0h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
02f2h call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 4d ec ff}
02f7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
02fah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0300h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 cd 83 ff}
0305h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0308h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
030bh call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 64 85 ff}
0310h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0313h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 45 2c 5f}
0318h int 3                                   ; INT3 || CC || encoded[1]{cc}
