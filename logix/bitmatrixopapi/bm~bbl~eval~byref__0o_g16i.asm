; BitMatrix<Int16> eval<Int16>(BinaryBitLogicKind:byte kind, BitMatrix<Int16> A, BitMatrix<Int16> B, ref BitMatrix<Int16> Z)
; bm~bbl~eval~byref__0o_g16i[7ff7c6b57d30h, 7ff7c6b5804fh][799] = {57 56 55 53 48 83 ec 68 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 48 8b b4 24 b0 00 00 00 40 0f b6 cd 83 f9 0f 0f 87 65 02 00 00 8b c9 48 8d 15 e6 02 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 ba ff ff ff ff 48 8b cb e8 4a 86 ff ff 48 8b c3 e9 23 02 00 00 48 8b cb e8 ba 9a ed ff 48 8b c3 e9 13 02 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 54 92 ff ff 48 8b fb e8 d4 e0 34 5f 48 a5 48 8b c3 e9 f3 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 54 92 ff ff 48 8b fb e8 b4 e0 34 5f 48 a5 48 8b c3 e9 d3 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 54 92 ff ff 48 8b fb e8 94 e0 34 5f 48 a5 48 8b c3 e9 b3 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 54 92 ff ff 48 8b fb e8 74 e0 34 5f 48 a5 48 8b c3 e9 93 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 54 92 ff ff 48 8b fb e8 54 e0 34 5f 48 a5 48 8b c3 e9 73 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 54 92 ff ff 48 8b fb e8 34 e0 34 5f 48 a5 48 8b c3 e9 53 01 00 00 c5 fa 6f 06 c5 fa 7f 44 24 48 c4 c1 7a 6f 00 c5 fa 7f 44 24 58 4c 8d 44 24 58 49 8b 10 45 8b 40 08 48 8d 4c 24 48 48 8b 01 8b 49 08 44 3b c1 0f 87 27 01 00 00 48 8b c8 4d 63 c0 49 d1 e0 e8 a7 10 37 4f 48 8b fb e8 df df 34 5f 48 a5 48 8b c3 e9 fe 00 00 00 49 8b 08 48 8b 16 e8 a2 99 ed ff 48 8b fb e8 c2 df 34 5f 48 a5 48 8b c3 e9 e1 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 01 c5 fa 7f 44 24 38 4c 8d 44 24 38 49 8b 10 45 8b 40 08 48 8d 4c 24 28 48 8b 01 8b 49 08 44 3b c1 0f 87 bb 00 00 00 48 8b c8 4d 63 c0 49 d1 e0 e8 35 10 37 4f 48 8b fb e8 6d df 34 5f 48 a5 48 8b c3 e9 8c 00 00 00 49 8b 09 48 8b 16 e8 30 99 ed ff 48 8b fb e8 50 df 34 5f 48 a5 48 8b c3 eb 72 49 8b 08 49 8b 11 4c 8b 06 e8 b3 91 ff ff 48 8b fb e8 33 df 34 5f 48 a5 48 8b c3 eb 55 49 8b 08 49 8b 11 4c 8b 06 e8 b6 91 ff ff 48 8b fb e8 16 df 34 5f 48 a5 48 8b c3 eb 38 49 8b 08 49 8b 11 4c 8b 06 e8 b9 91 ff ff 48 8b fb e8 f9 de 34 5f 48 a5 48 8b c3 eb 1b 49 8b 08 49 8b 11 4c 8b 06 e8 bc 91 ff ff 48 8b fb e8 dc de 34 5f 48 a5 48 8b c3 48 83 c4 68 5b 5d 5e 5f c3 e8 79 aa 84 ff cc e8 73 aa 84 ff cc 48 b9 b0 c7 91 c6 f7 7f 00 00 e8 d3 ec 34 5f 48 8b f0 40 88 6e 08 48 b9 48 7f 36 c6 f7 7f 00 00 e8 fd 6f 2f 5f 48 8b c8 e8 65 45 ec ff 8b f8 48 b9 38 2a 5b c6 f7 7f 00 00 e8 a4 ec 34 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 8d 85 47 5f 48 8b e8 8b cf e8 2b 41 ec ff 4c 8b c0 48 8b cd 48 8b d6 e8 fd c0 83 ff 48 8b d0 48 8b cb e8 1a 58 85 ff 48 8b cb e8 b2 38 2c 5f cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:37:349
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
0033h ja near ptr 029eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 65 02 00 00}
0039h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
003bh lea rdx,[7ff7c6b58058h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e6 02 00 00}
0042h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0045h lea rax,[7ff7c6b57d5ch]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
004ch add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
004fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0051h mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0056h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0059h call 7ff7c6b503d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 86 ff ff}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 23 02 00 00}
0066h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0069h call 7ff7c6a31858h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 9a ed ff}
006eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0071h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 13 02 00 00}
0076h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0079h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
007ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
007fh call 7ff7c6b51008h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 92 ff ff}
0084h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0087h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 e0 34 5f}
008ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0091h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f3 01 00 00}
0096h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0099h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
009ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
009fh call 7ff7c6b51028h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 92 ff ff}
00a4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00a7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 e0 34 5f}
00ach movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00aeh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00b1h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d3 01 00 00}
00b6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00b9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00bch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00bfh call 7ff7c6b51048h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 92 ff ff}
00c4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00c7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 e0 34 5f}
00cch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00ceh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00d1h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b3 01 00 00}
00d6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00d9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00dch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00dfh call 7ff7c6b51068h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 92 ff ff}
00e4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00e7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 e0 34 5f}
00ech movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00eeh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00f1h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 93 01 00 00}
00f6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00f9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00fch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00ffh call 7ff7c6b51088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 92 ff ff}
0104h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0107h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 e0 34 5f}
010ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
010eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0111h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 73 01 00 00}
0116h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0119h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
011ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
011fh call 7ff7c6b510a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 92 ff ff}
0124h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0127h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 e0 34 5f}
012ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
012eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0131h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 53 01 00 00}
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
0165h ja near ptr 0292h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 27 01 00 00}
016bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016eh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0171h shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
0174h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 10 37 4f}
0179h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
017ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df df 34 5f}
0181h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0183h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0186h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fe 00 00 00}
018bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
018eh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0191h call 7ff7c6a31868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 99 ed ff}
0196h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0199h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 df 34 5f}
019eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01a0h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01a3h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 00 00 00}
01a8h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
01ach vmovdqu xmmword ptr [rsp+28h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 28}
01b2h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
01b7h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
01bdh lea r8,[rsp+38h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 38}
01c2h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
01c5h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
01c9h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
01ceh mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
01d1h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
01d4h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
01d7h ja near ptr 0298h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bb 00 00 00}
01ddh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01e0h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
01e3h shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
01e6h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 10 37 4f}
01ebh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01eeh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d df 34 5f}
01f3h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01f5h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01f8h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8c 00 00 00}
01fdh mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
0200h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0203h call 7ff7c6a31868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 99 ed ff}
0208h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
020bh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 df 34 5f}
0210h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0212h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0215h jmp short 0289h                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
0217h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
021ah mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
021dh mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0220h call 7ff7c6b51108h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 91 ff ff}
0225h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0228h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 df 34 5f}
022dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
022fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0232h jmp short 0289h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0234h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0237h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
023ah mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
023dh call 7ff7c6b51128h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 91 ff ff}
0242h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0245h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 df 34 5f}
024ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
024ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
024fh jmp short 0289h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0251h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0254h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0257h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
025ah call 7ff7c6b51148h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 91 ff ff}
025fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0262h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 de 34 5f}
0267h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0269h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
026ch jmp short 0289h                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
026eh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0271h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0274h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0277h call 7ff7c6b51168h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 91 ff ff}
027ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
027fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc de 34 5f}
0284h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0286h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0289h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
028dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
028eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
028fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0290h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0291h ret                                     ; RET || C3 || encoded[1]{c3}
0292h call 7ff7c63a2a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 aa 84 ff}
0297h int 3                                   ; INT3 || CC || encoded[1]{cc}
0298h call 7ff7c63a2a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 aa 84 ff}
029dh int 3                                   ; INT3 || CC || encoded[1]{cc}
029eh mov rcx,7ff7c691c7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 c7 91 c6 f7 7f 00 00}
02a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 ec 34 5f}
02adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b0h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
02b4h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
02beh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 6f 2f 5f}
02c3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c6h call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 45 ec ff}
02cbh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
02cdh mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
02d7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 ec 34 5f}
02dch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
02dfh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
02e4h mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
02eeh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 85 47 5f}
02f3h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
02f6h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
02f8h call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 41 ec ff}
02fdh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0300h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0303h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0306h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd c0 83 ff}
030bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
030eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0311h call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 58 85 ff}
0316h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0319h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 38 2c 5f}
031eh int 3                                   ; INT3 || CC || encoded[1]{cc}
