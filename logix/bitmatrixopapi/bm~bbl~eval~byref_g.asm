------------------------------------------------------------------------------------------------------------------------
; BitMatrix<byte> eval<byte>(BinaryBitLogicKind:byte kind, BitMatrix<byte> A, BitMatrix<byte> B, ref BitMatrix<byte> Z)
; bm~bbl~eval~byref_g0o_8u_8u_8u[902] = {57 56 55 53 48 83 ec 68 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 48 8b b4 24 b0 00 00 00 40 0f b6 cd 83 f9 0f 0f 87 cc 02 00 00 8b c9 48 8d 15 4e 03 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 b9 ff 00 00 00 88 4c 24 60 48 8b cb 0f b6 54 24 60 e8 a1 66 ff ff 48 8b c3 e9 81 02 00 00 48 8b cb e8 99 2b ff ff 48 8b c3 e9 71 02 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 23 c2 48 89 01 48 8b fb e8 e4 45 b8 5e 48 a5 48 8b c3 e9 4a 02 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 23 c2 48 f7 d0 48 89 01 48 8b fb e8 ba 45 b8 5e 48 a5 48 8b c3 e9 20 02 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 0b c2 48 89 01 48 8b fb e8 93 45 b8 5e 48 a5 48 8b c3 e9 f9 01 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 0b c2 48 f7 d0 48 89 01 48 8b fb e8 69 45 b8 5e 48 a5 48 8b c3 e9 cf 01 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 33 c2 48 89 01 48 8b fb e8 42 45 b8 5e 48 a5 48 8b c3 e9 a8 01 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 33 c2 48 f7 d0 48 89 01 48 8b fb e8 18 45 b8 5e 48 a5 48 8b c3 e9 7e 01 00 00 c5 fa 6f 06 c5 fa 7f 44 24 40 c4 c1 7a 6f 00 c5 fa 7f 44 24 50 48 8d 4c 24 50 48 8b 11 8b 49 08 4c 8d 44 24 40 49 8b 00 45 8b 40 08 41 3b c8 0f 87 52 01 00 00 4c 63 c1 48 8b c8 e8 8e 75 ba 4e 48 8b fb e8 c6 44 b8 5e 48 a5 48 8b c3 e9 2c 01 00 00 49 8b 00 48 8b 16 48 8b 00 48 f7 d0 48 89 02 48 8b fb e8 a5 44 b8 5e 48 a5 48 8b c3 e9 0b 01 00 00 c5 fa 6f 06 c5 fa 7f 44 24 20 c4 c1 7a 6f 01 c5 fa 7f 44 24 30 48 8d 4c 24 30 48 8b 11 8b 49 08 4c 8d 44 24 20 49 8b 00 45 8b 40 08 41 3b c8 0f 87 e5 00 00 00 4c 63 c1 48 8b c8 e8 1b 75 ba 4e 48 8b fb e8 53 44 b8 5e 48 a5 48 8b c3 e9 b9 00 00 00 49 8b 01 48 8b 16 48 8b 00 48 f7 d0 48 89 02 48 8b fb e8 32 44 b8 5e 48 a5 48 8b c3 e9 98 00 00 00 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 f7 d2 48 0b c2 48 89 01 48 8b fb e8 08 44 b8 5e 48 a5 48 8b c3 eb 71 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 c4 e2 f8 f2 c2 48 89 01 48 8b fb e8 e2 43 b8 5e 48 a5 48 8b c3 eb 4b 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 48 f7 d0 48 0b c2 48 89 01 48 8b fb e8 bb 43 b8 5e 48 a5 48 8b c3 eb 24 49 8b 00 49 8b 11 48 8b 0e 48 8b 00 48 8b 12 c4 e2 e8 f2 c0 48 89 01 48 8b fb e8 95 43 b8 5e 48 a5 48 8b c3 48 83 c4 68 5b 5d 5e 5f c3 e8 ba 0e 06 ff cc e8 b4 0e 06 ff cc 48 b9 70 d6 94 c6 f7 7f 00 00 e8 8c 51 b8 5e 48 8b f0 40 88 6e 08 48 b9 58 77 34 c6 f7 7f 00 00 e8 b6 d4 b2 5e 48 8b c8 e8 0e 10 43 ff 8b f8 48 b9 20 2c 68 c6 f7 7f 00 00 e8 5d 51 b8 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 46 ea ca 5e 48 8b e8 8b cf e8 9c 0a 07 ff 4c 8b c0 48 8b cd 48 8b d6 e8 b6 25 05 ff 48 8b d0 48 8b cb e8 3b 81 07 ff 48 8b cb e8 6b 9d af 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0013h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0018h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001ah rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001fh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0022h mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
0024h mov rsi,[rsp+0b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 b0 00 00 00}
002ch movzx ecx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cd}
0030h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0033h ja near ptr 0305h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 cc 02 00 00}
0039h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
003bh lea rdx,[rip+34eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 4e 03 00 00}
0042h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0045h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
004ch add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
004fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0051h mov ecx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff 00 00 00}
0056h mov [rsp+60h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 60}
005ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
005dh movzx edx,byte ptr [rsp+60h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 54 24 60}
0062h call 7ff7c7317f18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 66 ff ff}
0067h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
006ah jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 81 02 00 00}
006fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0072h call 7ff7c7314420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 2b ff ff}
0077h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
007ah jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 71 02 00 00}
007fh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0082h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0085h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0088h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
008bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
008eh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0091h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0094h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0097h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 45 b8 5e}
009ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
009eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00a1h jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4a 02 00 00}
00a6h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
00a9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00ach mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
00afh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
00b2h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
00b5h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
00b8h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00bbh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
00beh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00c1h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 45 b8 5e}
00c6h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00c8h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00cbh jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 02 00 00}
00d0h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
00d3h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00d6h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
00d9h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
00dch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
00dfh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
00e2h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
00e5h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00e8h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 45 b8 5e}
00edh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00efh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00f2h jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f9 01 00 00}
00f7h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
00fah mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00fdh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0100h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0103h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0106h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0109h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
010ch mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
010fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0112h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 45 b8 5e}
0117h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0119h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
011ch jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cf 01 00 00}
0121h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0124h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0127h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
012ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
012dh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0130h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0133h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0136h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0139h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 45 b8 5e}
013eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0140h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0143h jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a8 01 00 00}
0148h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
014bh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
014eh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0151h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0154h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0157h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
015ah not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
015dh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0160h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0163h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 45 b8 5e}
0168h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
016ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
016dh jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7e 01 00 00}
0172h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0176h vmovdqu xmmword ptr [rsp+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 40}
017ch vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0181h vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
0187h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
018ch mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
018fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0192h lea r8,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 40}
0197h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
019ah mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
019eh cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
01a1h ja near ptr 02f9h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 52 01 00 00}
01a7h movsxd r8,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c1}
01aah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01adh call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 75 ba 4e}
01b2h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01b5h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 44 b8 5e}
01bah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01bch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01bfh jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2c 01 00 00}
01c4h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
01c7h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
01cah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
01cdh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01d0h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
01d3h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01d6h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 44 b8 5e}
01dbh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01ddh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01e0h jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0b 01 00 00}
01e5h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
01e9h vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
01efh vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
01f4h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
01fah lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
01ffh mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
0202h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0205h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
020ah mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
020dh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0211h cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
0214h ja near ptr 02ffh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 e5 00 00 00}
021ah movsxd r8,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c1}
021dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0220h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 75 ba 4e}
0225h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0228h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 44 b8 5e}
022dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
022fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0232h jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b9 00 00 00}
0237h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
023ah mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
023dh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0240h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0243h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0246h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0249h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 44 b8 5e}
024eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0250h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0253h jmp near ptr 02f0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 98 00 00 00}
0258h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
025bh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
025eh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0261h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0264h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0267h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
026ah or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
026dh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0270h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0273h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 44 b8 5e}
0278h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
027ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
027dh jmp short 02f0h                         ; JMP rel8 || EB cb || encoded[2]{eb 71}
027fh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0282h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0285h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0288h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
028bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
028eh andn rax,rax,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f8 f2 c2}
0293h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0296h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0299h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 43 b8 5e}
029eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02a0h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02a3h jmp short 02f0h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
02a5h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
02a8h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
02abh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
02aeh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
02b1h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
02b4h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
02b7h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
02bah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
02bdh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
02c0h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 43 b8 5e}
02c5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02c7h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02cah jmp short 02f0h                         ; JMP rel8 || EB cb || encoded[2]{eb 24}
02cch mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
02cfh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
02d2h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
02d5h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
02d8h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
02dbh andn rax,rdx,rax                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 c0}
02e0h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
02e3h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
02e6h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 43 b8 5e}
02ebh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02edh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02f0h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
02f4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02f5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02f6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02f7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
02f8h ret                                     ; RET || C3 || encoded[1]{c3}
02f9h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 0e 06 ff}
02feh int 3                                   ; INT3 || CC || encoded[1]{cc}
02ffh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 0e 06 ff}
0304h int 3                                   ; INT3 || CC || encoded[1]{cc}
0305h mov rcx,7ff7c694d670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d6 94 c6 f7 7f 00 00}
030fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 51 b8 5e}
0314h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0317h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
031bh mov rcx,7ff7c6347758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 34 c6 f7 7f 00 00}
0325h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 d4 b2 5e}
032ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
032dh call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 10 43 ff}
0332h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0334h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
033eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 51 b8 5e}
0343h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0346h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
034bh mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
0355h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 ea ca 5e}
035ah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
035dh mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
035fh call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 0a 07 ff}
0364h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0367h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
036ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
036dh call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 25 05 ff}
0372h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0375h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0378h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 81 07 ff}
037dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0380h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 9d af 5e}
0385h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<sbyte> eval<sbyte>(BinaryBitLogicKind:byte kind, BitMatrix<sbyte> A, BitMatrix<sbyte> B, ref BitMatrix<sbyte> Z)
; bm~bbl~eval~byref_g0o_8i_8i_8i[793] = {57 56 55 53 48 83 ec 68 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 48 8b b4 24 b0 00 00 00 40 0f b6 cd 83 f9 0f 0f 87 5f 02 00 00 8b c9 48 8d 15 de 02 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 ba ff ff ff ff 48 8b cb e8 6a 8f ff ff 48 8b c3 e9 1d 02 00 00 48 8b cb e8 fa 34 ff ff 48 8b c3 e9 0d 02 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 84 8f ff ff 48 8b fb e8 04 42 b8 5e 48 a5 48 8b c3 e9 ed 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 84 8f ff ff 48 8b fb e8 e4 41 b8 5e 48 a5 48 8b c3 e9 cd 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 84 8f ff ff 48 8b fb e8 c4 41 b8 5e 48 a5 48 8b c3 e9 ad 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 84 8f ff ff 48 8b fb e8 a4 41 b8 5e 48 a5 48 8b c3 e9 8d 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 84 8f ff ff 48 8b fb e8 84 41 b8 5e 48 a5 48 8b c3 e9 6d 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 84 8f ff ff 48 8b fb e8 64 41 b8 5e 48 a5 48 8b c3 e9 4d 01 00 00 c5 fa 6f 06 c5 fa 7f 44 24 48 c4 c1 7a 6f 00 c5 fa 7f 44 24 58 48 8d 4c 24 58 48 8b 11 8b 49 08 4c 8d 44 24 48 49 8b 00 45 8b 40 08 41 3b c8 0f 87 21 01 00 00 4c 63 c1 48 8b c8 e8 da 71 ba 4e 48 8b fb e8 12 41 b8 5e 48 a5 48 8b c3 e9 fb 00 00 00 49 8b 08 48 8b 16 e8 e5 33 ff ff 48 8b fb e8 f5 40 b8 5e 48 a5 48 8b c3 e9 de 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 01 c5 fa 7f 44 24 38 48 8d 4c 24 38 48 8b 11 8b 49 08 4c 8d 44 24 28 49 8b 00 45 8b 40 08 41 3b c8 0f 87 b8 00 00 00 4c 63 c1 48 8b c8 e8 6b 71 ba 4e 48 8b fb e8 a3 40 b8 5e 48 a5 48 8b c3 e9 8c 00 00 00 49 8b 09 48 8b 16 e8 76 33 ff ff 48 8b fb e8 86 40 b8 5e 48 a5 48 8b c3 eb 72 49 8b 08 49 8b 11 4c 8b 06 e8 e9 8e ff ff 48 8b fb e8 69 40 b8 5e 48 a5 48 8b c3 eb 55 49 8b 08 49 8b 11 4c 8b 06 e8 ec 8e ff ff 48 8b fb e8 4c 40 b8 5e 48 a5 48 8b c3 eb 38 49 8b 08 49 8b 11 4c 8b 06 e8 ef 8e ff ff 48 8b fb e8 2f 40 b8 5e 48 a5 48 8b c3 eb 1b 49 8b 08 49 8b 11 4c 8b 06 e8 f2 8e ff ff 48 8b fb e8 12 40 b8 5e 48 a5 48 8b c3 48 83 c4 68 5b 5d 5e 5f c3 e8 37 0b 06 ff cc e8 31 0b 06 ff cc 48 b9 70 d6 94 c6 f7 7f 00 00 e8 09 4e b8 5e 48 8b f0 40 88 6e 08 48 b9 68 6f 34 c6 f7 7f 00 00 e8 33 d1 b2 5e 48 8b c8 e8 8b 0c 43 ff 8b f8 48 b9 20 2c 68 c6 f7 7f 00 00 e8 da 4d b8 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 c3 e6 ca 5e 48 8b e8 8b cf e8 19 07 07 ff 4c 8b c0 48 8b cd 48 8b d6 e8 33 22 05 ff 48 8b d0 48 8b cb e8 b8 7d 07 ff 48 8b cb e8 e8 99 af 5e cc}
; TermCode = INTRx2
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
003bh lea rdx,[rip+2deh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de 02 00 00}
0042h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0045h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
004ch add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
004fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0051h mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0056h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0059h call 7ff7c731abc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 8f ff ff}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1d 02 00 00}
0066h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0069h call 7ff7c7315168h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 34 ff ff}
006eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0071h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0d 02 00 00}
0076h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0079h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
007ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
007fh call 7ff7c731ac08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 8f ff ff}
0084h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0087h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 42 b8 5e}
008ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0091h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0096h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0099h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
009ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
009fh call 7ff7c731ac28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 8f ff ff}
00a4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00a7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 41 b8 5e}
00ach movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00aeh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00b1h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cd 01 00 00}
00b6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00b9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00bch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00bfh call 7ff7c731ac48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 8f ff ff}
00c4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00c7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 41 b8 5e}
00cch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00ceh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00d1h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ad 01 00 00}
00d6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00d9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00dch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00dfh call 7ff7c731ac68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 8f ff ff}
00e4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00e7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 41 b8 5e}
00ech movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00eeh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00f1h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8d 01 00 00}
00f6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00f9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00fch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00ffh call 7ff7c731ac88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 8f ff ff}
0104h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0107h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 41 b8 5e}
010ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
010eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0111h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6d 01 00 00}
0116h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0119h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
011ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
011fh call 7ff7c731aca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 8f ff ff}
0124h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0127h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 41 b8 5e}
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
0171h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 71 ba 4e}
0176h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0179h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 41 b8 5e}
017eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0180h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0183h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 00 00 00}
0188h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
018bh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
018eh call 7ff7c7315178h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 33 ff ff}
0193h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0196h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 40 b8 5e}
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
01e0h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 71 ba 4e}
01e5h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01e8h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 40 b8 5e}
01edh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01efh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01f2h jmp near ptr 0283h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8c 00 00 00}
01f7h mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
01fah mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
01fdh call 7ff7c7315178h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 33 ff ff}
0202h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0205h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 40 b8 5e}
020ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
020ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
020fh jmp short 0283h                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
0211h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0214h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0217h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
021ah call 7ff7c731ad08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 8e ff ff}
021fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0222h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 40 b8 5e}
0227h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0229h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
022ch jmp short 0283h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
022eh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0231h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0234h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0237h call 7ff7c731ad28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 8e ff ff}
023ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
023fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 40 b8 5e}
0244h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0246h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0249h jmp short 0283h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
024bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
024eh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0251h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0254h call 7ff7c731ad48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 8e ff ff}
0259h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
025ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 40 b8 5e}
0261h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0263h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0266h jmp short 0283h                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0268h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
026bh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
026eh mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0271h call 7ff7c731ad68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 8e ff ff}
0276h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0279h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 40 b8 5e}
027eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0280h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0283h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0287h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0288h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0289h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
028ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
028bh ret                                     ; RET || C3 || encoded[1]{c3}
028ch call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 0b 06 ff}
0291h int 3                                   ; INT3 || CC || encoded[1]{cc}
0292h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 0b 06 ff}
0297h int 3                                   ; INT3 || CC || encoded[1]{cc}
0298h mov rcx,7ff7c694d670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d6 94 c6 f7 7f 00 00}
02a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 4e b8 5e}
02a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02aah mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
02aeh mov rcx,7ff7c6346f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 34 c6 f7 7f 00 00}
02b8h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 d1 b2 5e}
02bdh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c0h call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 0c 43 ff}
02c5h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
02c7h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
02d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 4d b8 5e}
02d6h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
02d9h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
02deh mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
02e8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 e6 ca 5e}
02edh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
02f0h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
02f2h call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 07 07 ff}
02f7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
02fah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02fdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0300h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 22 05 ff}
0305h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0308h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
030bh call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 7d 07 ff}
0310h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0313h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 99 af 5e}
0318h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, BitMatrix<ushort> A, BitMatrix<ushort> B, ref BitMatrix<ushort> Z)
; bm~bbl~eval~byref_g0o_16u_16u_16u[2064] = {57 56 55 53 48 81 ec 98 04 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 20 b9 18 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 48 8b b4 24 e0 04 00 00 40 0f b6 cd 83 f9 0f 0f 87 53 07 00 00 8b c9 48 8d 15 73 08 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 b9 ff ff 00 00 66 89 8c 24 90 04 00 00 48 8b cb 0f b7 94 24 90 04 00 00 e8 57 90 ff ff 48 8b c3 e9 fb 06 00 00 48 8b cb e8 47 2e ff ff 48 8b c3 e9 eb 06 00 00 49 8b 00 49 8b 11 48 8b 0e c5 ff f0 00 c5 ff f0 0a c5 fd db c1 c5 fe 7f 01 48 8b fb e8 56 3a b8 5e 48 a5 48 8b c3 e9 c0 06 00 00 49 8b 00 49 8b 11 48 8b 0e c5 ff f0 00 c5 ff f0 0a c5 fd db c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb e8 23 3a b8 5e 48 a5 48 8b c3 e9 8d 06 00 00 49 8b 00 49 8b 11 48 8b 0e c5 ff f0 00 c5 fd 11 84 24 60 04 00 00 c5 ff f0 02 c5 fd 11 84 24 40 04 00 00 c5 fd 10 84 24 60 04 00 00 c5 fd 10 8c 24 40 04 00 00 c5 fd eb c1 c5 fe 7f 01 48 8b fb e8 d4 39 b8 5e 48 a5 48 8b c3 e9 3e 06 00 00 49 8b 00 49 8b 11 c5 fa 6f 06 c5 fa 7f 84 24 30 04 00 00 c5 fa 6f 84 24 30 04 00 00 c5 fa 7f 84 24 20 04 00 00 48 8b 8c 24 20 04 00 00 c5 ff f0 00 c5 fd 11 84 24 00 04 00 00 c5 ff f0 02 c5 fd 11 84 24 e0 03 00 00 c5 fd 10 84 24 00 04 00 00 c5 fd 10 8c 24 e0 03 00 00 c5 fd eb c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb e8 59 39 b8 5e 48 a5 48 8b c3 e9 c3 05 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 d0 03 00 00 c5 fa 6f 84 24 d0 03 00 00 c5 fa 7f 84 24 c0 03 00 00 48 8b 84 24 c0 03 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 b0 03 00 00 c5 fa 6f 84 24 b0 03 00 00 c5 fa 7f 84 24 a0 03 00 00 48 8b 94 24 a0 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 03 00 00 c5 fa 6f 84 24 90 03 00 00 c5 fa 7f 84 24 80 03 00 00 48 8b 8c 24 80 03 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd ef c1 c5 fe 7f 01 48 8b fb e8 c0 38 b8 5e 48 a5 48 8b c3 e9 2a 05 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 70 03 00 00 c5 fa 6f 84 24 70 03 00 00 c5 fa 7f 84 24 60 03 00 00 48 8b 84 24 60 03 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 50 03 00 00 c5 fa 6f 84 24 50 03 00 00 c5 fa 7f 84 24 40 03 00 00 48 8b 94 24 40 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 30 03 00 00 c5 fa 6f 84 24 30 03 00 00 c5 fa 7f 84 24 20 03 00 00 48 8b 8c 24 20 03 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd ef c1 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 01 48 8b fb e8 1f 38 b8 5e 48 a5 48 8b c3 e9 89 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 f0 02 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 10 03 00 00 c5 fa 6f 84 24 10 03 00 00 c5 fa 7f 84 24 00 03 00 00 c5 fa 6f 84 24 f0 02 00 00 c5 fa 7f 84 24 e0 02 00 00 c5 fa 6f 84 24 e0 02 00 00 c5 fa 7f 84 24 d0 02 00 00 44 8b 84 24 08 03 00 00 44 3b 84 24 d8 02 00 00 0f 87 31 04 00 00 48 8b 8c 24 d0 02 00 00 48 8b 94 24 00 03 00 00 44 8b 84 24 08 03 00 00 4d 63 c0 49 d1 e0 e8 4b 68 ba 4e 48 8b fb e8 83 37 b8 5e 48 a5 48 8b c3 e9 ed 03 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 c0 02 00 00 c5 fa 6f 84 24 c0 02 00 00 c5 fa 7f 84 24 b0 02 00 00 48 8b 84 24 b0 02 00 00 c5 fa 6f 06 c5 fa 7f 84 24 a0 02 00 00 c5 fa 6f 84 24 a0 02 00 00 c5 fa 7f 84 24 90 02 00 00 48 8b 94 24 90 02 00 00 c5 ff f0 00 c5 fd 11 84 24 60 02 00 00 c5 fd 10 84 24 60 02 00 00 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb e8 00 37 b8 5e 48 a5 48 8b c3 e9 6a 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 30 02 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 50 02 00 00 c5 fa 6f 84 24 50 02 00 00 c5 fa 7f 84 24 40 02 00 00 c5 fa 6f 84 24 30 02 00 00 c5 fa 7f 84 24 20 02 00 00 c5 fa 6f 84 24 20 02 00 00 c5 fa 7f 84 24 10 02 00 00 44 8b 84 24 48 02 00 00 44 3b 84 24 18 02 00 00 0f 87 18 03 00 00 48 8b 8c 24 10 02 00 00 48 8b 94 24 40 02 00 00 44 8b 84 24 48 02 00 00 4d 63 c0 49 d1 e0 e8 2c 67 ba 4e 48 8b fb e8 64 36 b8 5e 48 a5 48 8b c3 e9 ce 02 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 00 02 00 00 c5 fa 6f 84 24 00 02 00 00 c5 fa 7f 84 24 f0 01 00 00 48 8b 84 24 f0 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 e0 01 00 00 c5 fa 6f 84 24 e0 01 00 00 c5 fa 7f 84 24 d0 01 00 00 48 8b 94 24 d0 01 00 00 c5 ff f0 00 c5 fd 11 84 24 a0 01 00 00 c5 fd 10 84 24 a0 01 00 00 c5 fd 75 c8 c5 fd ef c1 c5 fe 7f 02 48 8b fb e8 e1 35 b8 5e 48 a5 48 8b c3 e9 4b 02 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 90 01 00 00 c5 fa 6f 84 24 90 01 00 00 c5 fa 7f 84 24 80 01 00 00 48 8b 84 24 80 01 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 70 01 00 00 c5 fa 6f 84 24 70 01 00 00 c5 fa 7f 84 24 60 01 00 00 48 8b 94 24 60 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 50 01 00 00 c5 fa 6f 84 24 50 01 00 00 c5 fa 7f 84 24 40 01 00 00 48 8b 8c 24 40 01 00 00 c5 ff f0 00 c5 ff f0 0a c5 f5 75 d1 c5 f5 ef ca c5 fd eb c1 c5 fe 7f 01 48 8b fb e8 40 35 b8 5e 48 a5 48 8b c3 e9 aa 01 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 30 01 00 00 c5 fa 6f 84 24 30 01 00 00 c5 fa 7f 84 24 20 01 00 00 48 8b 84 24 20 01 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 10 01 00 00 c5 fa 6f 84 24 10 01 00 00 c5 fa 7f 84 24 00 01 00 00 48 8b 94 24 00 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 f0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 e0 00 00 00 48 8b 8c 24 e0 00 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd df c1 c5 fe 7f 01 48 8b fb e8 a7 34 b8 5e 48 a5 48 8b c3 e9 11 01 00 00 c4 c1 7a 6f 00 c5 fa 7f 84 24 d0 00 00 00 c5 fa 6f 84 24 d0 00 00 00 c5 fa 7f 84 24 c0 00 00 00 48 8b 84 24 c0 00 00 00 c4 c1 7a 6f 01 c5 fa 7f 84 24 b0 00 00 00 c5 fa 6f 84 24 b0 00 00 00 c5 fa 7f 84 24 a0 00 00 00 48 8b 94 24 a0 00 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 00 00 00 c5 fa 6f 84 24 90 00 00 00 c5 fa 7f 84 24 80 00 00 00 48 8b 8c 24 80 00 00 00 c5 ff f0 00 c5 ff f0 0a c5 fd 75 d0 c5 fd ef c2 c5 fd eb c1 c5 fe 7f 01 48 8b fb e8 06 34 b8 5e 48 a5 48 8b c3 e9 70 00 00 00 c4 c1 7a 6f 00 c5 fa 7f 44 24 70 c5 fa 6f 44 24 70 c5 fa 7f 44 24 60 48 8b 44 24 60 c4 c1 7a 6f 01 c5 fa 7f 44 24 50 c5 fa 6f 44 24 50 c5 fa 7f 44 24 40 48 8b 54 24 40 c5 fa 6f 06 c5 fa 7f 44 24 30 c5 fa 6f 44 24 30 c5 fa 7f 44 24 20 48 8b 4c 24 20 c5 ff f0 00 c5 ff f0 0a c5 f5 df c0 c5 fe 7f 01 48 8b fb e8 91 33 b8 5e 48 a5 48 8b c3 c5 f8 77 48 81 c4 98 04 00 00 5b 5d 5e 5f c3 e8 b0 fe 05 ff cc e8 aa fe 05 ff cc 48 b9 70 d6 94 c6 f7 7f 00 00 e8 82 41 b8 5e 48 8b f0 40 88 6e 08 48 b9 38 87 34 c6 f7 7f 00 00 e8 ac c4 b2 5e 48 8b c8 e8 04 00 43 ff 8b f8 48 b9 20 2c 68 c6 f7 7f 00 00 e8 53 41 b8 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 3c da ca 5e 48 8b e8 8b cf e8 92 fa 06 ff 4c 8b c0 48 8b cd 48 8b d6 e8 ac 15 05 ff 48 8b d0 48 8b cb e8 31 71 07 ff 48 8b cb e8 61 8d af 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,498h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 98 04 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0011h lea rdi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 20}
0016h mov ecx,118h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 18 01 00 00}
001bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001dh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0022h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0025h mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
0027h mov rsi,[rsp+4e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 e0 04 00 00}
002fh movzx ecx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cd}
0033h cmp ecx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 0f}
0036h ja near ptr 078fh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 53 07 00 00}
003ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
003eh lea rdx,[rip+873h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 73 08 00 00}
0045h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0048h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
004fh add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
0052h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0054h mov ecx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 ff ff 00 00}
0059h mov [rsp+490h],cx                       ; MOV r/m16, r16 || o16 89 /r || encoded[8]{66 89 8c 24 90 04 00 00}
0061h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0064h movzx edx,word ptr [rsp+490h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[8]{0f b7 94 24 90 04 00 00}
006ch call 7ff7c731b458h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 90 ff ff}
0071h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0074h jmp near ptr 0774h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 06 00 00}
0079h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
007ch call 7ff7c7315258h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 2e ff ff}
0081h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0084h jmp near ptr 0774h                      ; JMP rel32 || E9 cd || encoded[5]{e9 eb 06 00 00}
0089h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
008ch mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
008fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0092h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0096h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
009ah vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
009eh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
00a2h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00a5h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 3a b8 5e}
00aah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00ach mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00afh jmp near ptr 0774h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c0 06 00 00}
00b4h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
00b7h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00bah mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
00bdh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
00c1h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
00c5h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
00c9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00cdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00d1h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
00d5h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00d8h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 3a b8 5e}
00ddh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00dfh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00e2h jmp near ptr 0774h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8d 06 00 00}
00e7h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
00eah mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00edh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
00f0h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
00f4h vmovupd [rsp+460h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 04 00 00}
00fdh vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0101h vmovupd [rsp+440h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 04 00 00}
010ah vmovupd ymm0,[rsp+460h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 60 04 00 00}
0113h vmovupd ymm1,[rsp+440h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 40 04 00 00}
011ch vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0120h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0124h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0127h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 39 b8 5e}
012ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
012eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0131h jmp near ptr 0774h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3e 06 00 00}
0136h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0139h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
013ch vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0140h vmovdqu xmmword ptr [rsp+430h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 04 00 00}
0149h vmovdqu xmm0,xmmword ptr [rsp+430h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 04 00 00}
0152h vmovdqu xmmword ptr [rsp+420h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 04 00 00}
015bh mov rcx,[rsp+420h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 20 04 00 00}
0163h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0167h vmovupd [rsp+400h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 04 00 00}
0170h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0174h vmovupd [rsp+3e0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 e0 03 00 00}
017dh vmovupd ymm0,[rsp+400h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 00 04 00 00}
0186h vmovupd ymm1,[rsp+3e0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 e0 03 00 00}
018fh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0193h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0197h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
019bh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
019fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01a2h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 39 b8 5e}
01a7h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01a9h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01ach jmp near ptr 0774h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c3 05 00 00}
01b1h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
01b6h vmovdqu xmmword ptr [rsp+3d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 03 00 00}
01bfh vmovdqu xmm0,xmmword ptr [rsp+3d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 03 00 00}
01c8h vmovdqu xmmword ptr [rsp+3c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 03 00 00}
01d1h mov rax,[rsp+3c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 c0 03 00 00}
01d9h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
01deh vmovdqu xmmword ptr [rsp+3b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 03 00 00}
01e7h vmovdqu xmm0,xmmword ptr [rsp+3b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 03 00 00}
01f0h vmovdqu xmmword ptr [rsp+3a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 03 00 00}
01f9h mov rdx,[rsp+3a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 a0 03 00 00}
0201h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0205h vmovdqu xmmword ptr [rsp+390h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 03 00 00}
020eh vmovdqu xmm0,xmmword ptr [rsp+390h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 03 00 00}
0217h vmovdqu xmmword ptr [rsp+380h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 03 00 00}
0220h mov rcx,[rsp+380h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 80 03 00 00}
0228h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
022ch vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0230h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0234h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0238h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
023bh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 38 b8 5e}
0240h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0242h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0245h jmp near ptr 0774h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2a 05 00 00}
024ah vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
024fh vmovdqu xmmword ptr [rsp+370h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 03 00 00}
0258h vmovdqu xmm0,xmmword ptr [rsp+370h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 03 00 00}
0261h vmovdqu xmmword ptr [rsp+360h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 03 00 00}
026ah mov rax,[rsp+360h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 60 03 00 00}
0272h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
0277h vmovdqu xmmword ptr [rsp+350h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 03 00 00}
0280h vmovdqu xmm0,xmmword ptr [rsp+350h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 03 00 00}
0289h vmovdqu xmmword ptr [rsp+340h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 03 00 00}
0292h mov rdx,[rsp+340h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 40 03 00 00}
029ah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
029eh vmovdqu xmmword ptr [rsp+330h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 03 00 00}
02a7h vmovdqu xmm0,xmmword ptr [rsp+330h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 03 00 00}
02b0h vmovdqu xmmword ptr [rsp+320h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 03 00 00}
02b9h mov rcx,[rsp+320h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 20 03 00 00}
02c1h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
02c5h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
02c9h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
02cdh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
02d1h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
02d5h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
02d9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
02dch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 38 b8 5e}
02e1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
02e3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
02e6h jmp near ptr 0774h                      ; JMP rel32 || E9 cd || encoded[5]{e9 89 04 00 00}
02ebh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
02efh vmovdqu xmmword ptr [rsp+2f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 02 00 00}
02f8h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
02fdh vmovdqu xmmword ptr [rsp+310h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 03 00 00}
0306h vmovdqu xmm0,xmmword ptr [rsp+310h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 03 00 00}
030fh vmovdqu xmmword ptr [rsp+300h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 03 00 00}
0318h vmovdqu xmm0,xmmword ptr [rsp+2f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 02 00 00}
0321h vmovdqu xmmword ptr [rsp+2e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 02 00 00}
032ah vmovdqu xmm0,xmmword ptr [rsp+2e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 02 00 00}
0333h vmovdqu xmmword ptr [rsp+2d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 02 00 00}
033ch mov r8d,[rsp+308h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 08 03 00 00}
0344h cmp r8d,[rsp+2d8h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 d8 02 00 00}
034ch ja near ptr 0783h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 31 04 00 00}
0352h mov rcx,[rsp+2d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 d0 02 00 00}
035ah mov rdx,[rsp+300h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 03 00 00}
0362h mov r8d,[rsp+308h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 08 03 00 00}
036ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
036dh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
0370h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 68 ba 4e}
0375h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0378h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 37 b8 5e}
037dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
037fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0382h jmp near ptr 0774h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 03 00 00}
0387h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
038ch vmovdqu xmmword ptr [rsp+2c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 02 00 00}
0395h vmovdqu xmm0,xmmword ptr [rsp+2c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 02 00 00}
039eh vmovdqu xmmword ptr [rsp+2b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 02 00 00}
03a7h mov rax,[rsp+2b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 b0 02 00 00}
03afh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
03b3h vmovdqu xmmword ptr [rsp+2a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 02 00 00}
03bch vmovdqu xmm0,xmmword ptr [rsp+2a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 02 00 00}
03c5h vmovdqu xmmword ptr [rsp+290h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 02 00 00}
03ceh mov rdx,[rsp+290h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 90 02 00 00}
03d6h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
03dah vmovupd [rsp+260h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 60 02 00 00}
03e3h vmovupd ymm0,[rsp+260h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 60 02 00 00}
03ech vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
03f0h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
03f4h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
03f8h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
03fbh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 37 b8 5e}
0400h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0402h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0405h jmp near ptr 0774h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6a 03 00 00}
040ah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
040eh vmovdqu xmmword ptr [rsp+230h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 02 00 00}
0417h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
041ch vmovdqu xmmword ptr [rsp+250h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 02 00 00}
0425h vmovdqu xmm0,xmmword ptr [rsp+250h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 02 00 00}
042eh vmovdqu xmmword ptr [rsp+240h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 02 00 00}
0437h vmovdqu xmm0,xmmword ptr [rsp+230h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 02 00 00}
0440h vmovdqu xmmword ptr [rsp+220h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 02 00 00}
0449h vmovdqu xmm0,xmmword ptr [rsp+220h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 20 02 00 00}
0452h vmovdqu xmmword ptr [rsp+210h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 02 00 00}
045bh mov r8d,[rsp+248h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 48 02 00 00}
0463h cmp r8d,[rsp+218h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 18 02 00 00}
046bh ja near ptr 0789h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 18 03 00 00}
0471h mov rcx,[rsp+210h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 10 02 00 00}
0479h mov rdx,[rsp+240h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 40 02 00 00}
0481h mov r8d,[rsp+248h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 48 02 00 00}
0489h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
048ch shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
048fh call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 67 ba 4e}
0494h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0497h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 36 b8 5e}
049ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
049eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
04a1h jmp near ptr 0774h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ce 02 00 00}
04a6h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
04abh vmovdqu xmmword ptr [rsp+200h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 02 00 00}
04b4h vmovdqu xmm0,xmmword ptr [rsp+200h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 00 02 00 00}
04bdh vmovdqu xmmword ptr [rsp+1f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 01 00 00}
04c6h mov rax,[rsp+1f0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 f0 01 00 00}
04ceh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
04d2h vmovdqu xmmword ptr [rsp+1e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 01 00 00}
04dbh vmovdqu xmm0,xmmword ptr [rsp+1e0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 e0 01 00 00}
04e4h vmovdqu xmmword ptr [rsp+1d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 01 00 00}
04edh mov rdx,[rsp+1d0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 d0 01 00 00}
04f5h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
04f9h vmovupd [rsp+1a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 01 00 00}
0502h vmovupd ymm0,[rsp+1a0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 a0 01 00 00}
050bh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
050fh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0513h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0517h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
051ah call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 35 b8 5e}
051fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0521h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0524h jmp near ptr 0774h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4b 02 00 00}
0529h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
052eh vmovdqu xmmword ptr [rsp+190h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 01 00 00}
0537h vmovdqu xmm0,xmmword ptr [rsp+190h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 01 00 00}
0540h vmovdqu xmmword ptr [rsp+180h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 01 00 00}
0549h mov rax,[rsp+180h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 80 01 00 00}
0551h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
0556h vmovdqu xmmword ptr [rsp+170h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 01 00 00}
055fh vmovdqu xmm0,xmmword ptr [rsp+170h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 01 00 00}
0568h vmovdqu xmmword ptr [rsp+160h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 01 00 00}
0571h mov rdx,[rsp+160h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 60 01 00 00}
0579h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
057dh vmovdqu xmmword ptr [rsp+150h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 01 00 00}
0586h vmovdqu xmm0,xmmword ptr [rsp+150h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 01 00 00}
058fh vmovdqu xmmword ptr [rsp+140h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 01 00 00}
0598h mov rcx,[rsp+140h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 40 01 00 00}
05a0h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
05a4h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
05a8h vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
05ach vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
05b0h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
05b4h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
05b8h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
05bbh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 35 b8 5e}
05c0h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
05c2h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
05c5h jmp near ptr 0774h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 01 00 00}
05cah vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
05cfh vmovdqu xmmword ptr [rsp+130h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 01 00 00}
05d8h vmovdqu xmm0,xmmword ptr [rsp+130h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 01 00 00}
05e1h vmovdqu xmmword ptr [rsp+120h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 01 00 00}
05eah mov rax,[rsp+120h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 20 01 00 00}
05f2h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
05f7h vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
0600h vmovdqu xmm0,xmmword ptr [rsp+110h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 01 00 00}
0609h vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
0612h mov rdx,[rsp+100h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 01 00 00}
061ah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
061eh vmovdqu xmmword ptr [rsp+0f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 00 00 00}
0627h vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
0630h vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
0639h mov rcx,[rsp+0e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 e0 00 00 00}
0641h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0645h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0649h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
064dh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0651h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0654h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 34 b8 5e}
0659h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
065bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
065eh jmp near ptr 0774h                      ; JMP rel32 || E9 cd || encoded[5]{e9 11 01 00 00}
0663h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0668h vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
0671h vmovdqu xmm0,xmmword ptr [rsp+0d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 00 00 00}
067ah vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
0683h mov rax,[rsp+0c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 c0 00 00 00}
068bh vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
0690h vmovdqu xmmword ptr [rsp+0b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 00 00 00}
0699h vmovdqu xmm0,xmmword ptr [rsp+0b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 00 00 00}
06a2h vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
06abh mov rdx,[rsp+0a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 a0 00 00 00}
06b3h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
06b7h vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
06c0h vmovdqu xmm0,xmmword ptr [rsp+90h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 00 00 00}
06c9h vmovdqu xmmword ptr [rsp+80h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 00 00 00}
06d2h mov rcx,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 80 00 00 00}
06dah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
06deh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
06e2h vpcmpeqw ymm2,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 d0}
06e6h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
06eah vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
06eeh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
06f2h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
06f5h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 34 b8 5e}
06fah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
06fch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
06ffh jmp near ptr 0774h                      ; JMP rel32 || E9 cd || encoded[5]{e9 70 00 00 00}
0704h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
0709h vmovdqu xmmword ptr [rsp+70h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 70}
070fh vmovdqu xmm0,xmmword ptr [rsp+70h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 70}
0715h vmovdqu xmmword ptr [rsp+60h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 60}
071bh mov rax,[rsp+60h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 60}
0720h vmovdqu xmm0,xmmword ptr [r9]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 01}
0725h vmovdqu xmmword ptr [rsp+50h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 50}
072bh vmovdqu xmm0,xmmword ptr [rsp+50h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 50}
0731h vmovdqu xmmword ptr [rsp+40h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 40}
0737h mov rdx,[rsp+40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 40}
073ch vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0740h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
0746h vmovdqu xmm0,xmmword ptr [rsp+30h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 30}
074ch vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0752h mov rcx,[rsp+20h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 4c 24 20}
0757h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
075bh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
075fh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
0763h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0767h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
076ah call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 33 b8 5e}
076fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0771h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0774h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0777h add rsp,498h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 98 04 00 00}
077eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
077fh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0780h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0781h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0782h ret                                     ; RET || C3 || encoded[1]{c3}
0783h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 fe 05 ff}
0788h int 3                                   ; INT3 || CC || encoded[1]{cc}
0789h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa fe 05 ff}
078eh int 3                                   ; INT3 || CC || encoded[1]{cc}
078fh mov rcx,7ff7c694d670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d6 94 c6 f7 7f 00 00}
0799h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 41 b8 5e}
079eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
07a1h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
07a5h mov rcx,7ff7c6348738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 34 c6 f7 7f 00 00}
07afh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac c4 b2 5e}
07b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
07b7h call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 00 43 ff}
07bch mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
07beh mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
07c8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 41 b8 5e}
07cdh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
07d0h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
07d5h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
07dfh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c da ca 5e}
07e4h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
07e7h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
07e9h call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 fa 06 ff}
07eeh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
07f1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
07f4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
07f7h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 15 05 ff}
07fch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
07ffh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0802h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 71 07 ff}
0807h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
080ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 8d af 5e}
080fh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<short> eval<short>(BinaryBitLogicKind:byte kind, BitMatrix<short> A, BitMatrix<short> B, ref BitMatrix<short> Z)
; bm~bbl~eval~byref_g0o_16i_16i_16i[799] = {57 56 55 53 48 83 ec 68 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 48 8b b4 24 b0 00 00 00 40 0f b6 cd 83 f9 0f 0f 87 65 02 00 00 8b c9 48 8d 15 e6 02 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 ba ff ff ff ff 48 8b cb e8 1a 90 ff ff 48 8b c3 e9 23 02 00 00 48 8b cb e8 62 2c ff ff 48 8b c3 e9 13 02 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 34 90 ff ff 48 8b fb e8 54 31 b8 5e 48 a5 48 8b c3 e9 f3 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 34 90 ff ff 48 8b fb e8 34 31 b8 5e 48 a5 48 8b c3 e9 d3 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 34 90 ff ff 48 8b fb e8 14 31 b8 5e 48 a5 48 8b c3 e9 b3 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 34 90 ff ff 48 8b fb e8 f4 30 b8 5e 48 a5 48 8b c3 e9 93 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 34 90 ff ff 48 8b fb e8 d4 30 b8 5e 48 a5 48 8b c3 e9 73 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 34 90 ff ff 48 8b fb e8 b4 30 b8 5e 48 a5 48 8b c3 e9 53 01 00 00 c5 fa 6f 06 c5 fa 7f 44 24 48 c4 c1 7a 6f 00 c5 fa 7f 44 24 58 4c 8d 44 24 58 49 8b 10 45 8b 40 08 48 8d 4c 24 48 48 8b 01 8b 49 08 44 3b c1 0f 87 27 01 00 00 48 8b c8 4d 63 c0 49 d1 e0 e8 27 61 ba 4e 48 8b fb e8 5f 30 b8 5e 48 a5 48 8b c3 e9 fe 00 00 00 49 8b 08 48 8b 16 e8 4a 2b ff ff 48 8b fb e8 42 30 b8 5e 48 a5 48 8b c3 e9 e1 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 01 c5 fa 7f 44 24 38 4c 8d 44 24 38 49 8b 10 45 8b 40 08 48 8d 4c 24 28 48 8b 01 8b 49 08 44 3b c1 0f 87 bb 00 00 00 48 8b c8 4d 63 c0 49 d1 e0 e8 b5 60 ba 4e 48 8b fb e8 ed 2f b8 5e 48 a5 48 8b c3 e9 8c 00 00 00 49 8b 09 48 8b 16 e8 d8 2a ff ff 48 8b fb e8 d0 2f b8 5e 48 a5 48 8b c3 eb 72 49 8b 08 49 8b 11 4c 8b 06 e8 4b 98 ff ff 48 8b fb e8 b3 2f b8 5e 48 a5 48 8b c3 eb 55 49 8b 08 49 8b 11 4c 8b 06 e8 4e 98 ff ff 48 8b fb e8 96 2f b8 5e 48 a5 48 8b c3 eb 38 49 8b 08 49 8b 11 4c 8b 06 e8 51 98 ff ff 48 8b fb e8 79 2f b8 5e 48 a5 48 8b c3 eb 1b 49 8b 08 49 8b 11 4c 8b 06 e8 54 98 ff ff 48 8b fb e8 5c 2f b8 5e 48 a5 48 8b c3 48 83 c4 68 5b 5d 5e 5f c3 e8 81 fa 05 ff cc e8 7b fa 05 ff cc 48 b9 70 d6 94 c6 f7 7f 00 00 e8 53 3d b8 5e 48 8b f0 40 88 6e 08 48 b9 48 7f 34 c6 f7 7f 00 00 e8 7d c0 b2 5e 48 8b c8 e8 d5 fb 42 ff 8b f8 48 b9 20 2c 68 c6 f7 7f 00 00 e8 24 3d b8 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 0d d6 ca 5e 48 8b e8 8b cf e8 63 f6 06 ff 4c 8b c0 48 8b cd 48 8b d6 e8 7d 11 05 ff 48 8b d0 48 8b cb e8 02 6d 07 ff 48 8b cb e8 32 89 af 5e cc}
; TermCode = INTRx2
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
003bh lea rdx,[rip+2e6h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e6 02 00 00}
0042h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0045h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
004ch add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
004fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0051h mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0056h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0059h call 7ff7c731bd28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 90 ff ff}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 23 02 00 00}
0066h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0069h call 7ff7c7315980h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 2c ff ff}
006eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0071h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 13 02 00 00}
0076h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0079h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
007ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
007fh call 7ff7c731bd68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 90 ff ff}
0084h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0087h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 31 b8 5e}
008ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0091h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f3 01 00 00}
0096h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0099h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
009ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
009fh call 7ff7c731bd88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 90 ff ff}
00a4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00a7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 31 b8 5e}
00ach movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00aeh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00b1h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d3 01 00 00}
00b6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00b9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00bch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00bfh call 7ff7c731bda8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 90 ff ff}
00c4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00c7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 31 b8 5e}
00cch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00ceh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00d1h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b3 01 00 00}
00d6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00d9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00dch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00dfh call 7ff7c731bdc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 90 ff ff}
00e4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00e7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 30 b8 5e}
00ech movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00eeh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00f1h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 93 01 00 00}
00f6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00f9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00fch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00ffh call 7ff7c731bde8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 90 ff ff}
0104h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0107h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 30 b8 5e}
010ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
010eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0111h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 73 01 00 00}
0116h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0119h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
011ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
011fh call 7ff7c731be08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 90 ff ff}
0124h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0127h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 30 b8 5e}
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
0174h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 61 ba 4e}
0179h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
017ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 30 b8 5e}
0181h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0183h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0186h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fe 00 00 00}
018bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
018eh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0191h call 7ff7c7315990h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 2b ff ff}
0196h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0199h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 30 b8 5e}
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
01e6h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 60 ba 4e}
01ebh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01eeh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 2f b8 5e}
01f3h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01f5h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01f8h jmp near ptr 0289h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8c 00 00 00}
01fdh mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
0200h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0203h call 7ff7c7315990h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 2a ff ff}
0208h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
020bh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 2f b8 5e}
0210h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0212h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0215h jmp short 0289h                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
0217h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
021ah mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
021dh mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0220h call 7ff7c731c720h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 98 ff ff}
0225h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0228h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 2f b8 5e}
022dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
022fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0232h jmp short 0289h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0234h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0237h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
023ah mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
023dh call 7ff7c731c740h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 98 ff ff}
0242h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0245h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 2f b8 5e}
024ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
024ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
024fh jmp short 0289h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0251h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0254h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0257h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
025ah call 7ff7c731c760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 98 ff ff}
025fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0262h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 2f b8 5e}
0267h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0269h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
026ch jmp short 0289h                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
026eh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0271h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0274h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0277h call 7ff7c731c780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 98 ff ff}
027ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
027fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 2f b8 5e}
0284h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0286h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0289h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
028dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
028eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
028fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0290h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0291h ret                                     ; RET || C3 || encoded[1]{c3}
0292h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 fa 05 ff}
0297h int 3                                   ; INT3 || CC || encoded[1]{cc}
0298h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b fa 05 ff}
029dh int 3                                   ; INT3 || CC || encoded[1]{cc}
029eh mov rcx,7ff7c694d670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d6 94 c6 f7 7f 00 00}
02a8h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 3d b8 5e}
02adh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b0h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
02b4h mov rcx,7ff7c6347f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 34 c6 f7 7f 00 00}
02beh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d c0 b2 5e}
02c3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c6h call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 fb 42 ff}
02cbh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
02cdh mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
02d7h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 3d b8 5e}
02dch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
02dfh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
02e4h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
02eeh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d d6 ca 5e}
02f3h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
02f6h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
02f8h call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 f6 06 ff}
02fdh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0300h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0303h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0306h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 11 05 ff}
030bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
030eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0311h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 6d 07 ff}
0316h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0319h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 89 af 5e}
031eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<uint> eval<uint>(BinaryBitLogicKind:byte kind, BitMatrix<uint> A, BitMatrix<uint> B, ref BitMatrix<uint> Z)
; bm~bbl~eval~byref_g0o_32u_32u_32u[2701] = {41 57 41 56 41 55 41 54 57 56 55 53 48 81 ec 98 05 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 60 b9 4a 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 49 8b c8 49 8b c1 48 8b b4 24 00 06 00 00 40 0f b6 d5 83 fa 0f 0f 87 14 0a 00 00 8b d2 4c 8d 05 fd 0a 00 00 45 8b 04 90 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 c7 84 24 88 05 00 00 ff ff ff ff 8b 8c 24 88 05 00 00 89 8c 24 90 05 00 00 48 8b cb 8b 94 24 90 05 00 00 e8 5c 95 ff ff 48 8b c3 e9 a7 09 00 00 48 8b cb e8 94 25 ff ff 48 8b c3 e9 97 09 00 00 c5 fa 6f 01 c5 fa 7f 84 24 78 05 00 00 c5 fa 6f 84 24 78 05 00 00 c5 fa 7f 84 24 68 05 00 00 48 8b 94 24 68 05 00 00 c5 fa 6f 00 c5 fa 7f 84 24 58 05 00 00 c5 fa 6f 84 24 58 05 00 00 c5 fa 7f 84 24 48 05 00 00 48 8b 84 24 48 05 00 00 c5 fa 6f 06 c5 fa 7f 84 24 38 05 00 00 c5 fa 6f 84 24 38 05 00 00 c5 fa 7f 84 24 28 05 00 00 48 8b 8c 24 28 05 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd db c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c cf 48 8b fb e8 f8 28 b8 5e 48 a5 48 8b c3 e9 d9 08 00 00 c5 fa 6f 01 c5 fa 7f 84 24 18 05 00 00 c5 fa 6f 84 24 18 05 00 00 c5 fa 7f 84 24 08 05 00 00 48 8b 94 24 08 05 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f8 04 00 00 c5 fa 6f 84 24 f8 04 00 00 c5 fa 7f 84 24 e8 04 00 00 48 8b 84 24 e8 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d8 04 00 00 c5 fa 6f 84 24 d8 04 00 00 c5 fa 7f 84 24 c8 04 00 00 48 8b 8c 24 c8 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd db c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb e8 32 28 b8 5e 48 a5 48 8b c3 e9 13 08 00 00 c5 fa 6f 01 c5 fa 7f 84 24 b8 04 00 00 c5 fa 6f 84 24 b8 04 00 00 c5 fa 7f 84 24 a8 04 00 00 48 8b 94 24 a8 04 00 00 c5 fa 6f 00 c5 fa 7f 84 24 98 04 00 00 c5 fa 6f 84 24 98 04 00 00 c5 fa 7f 84 24 88 04 00 00 48 8b 84 24 88 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 78 04 00 00 c5 fa 6f 84 24 78 04 00 00 c5 fa 7f 84 24 68 04 00 00 48 8b 8c 24 68 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c5 fc 57 c0 c5 fd 11 84 24 40 04 00 00 c5 fc 57 c0 c5 fd 11 84 24 20 04 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 40 04 00 00 c5 ff f0 07 c5 fd 11 84 24 20 04 00 00 c5 fd 10 84 24 40 04 00 00 c5 fd 10 8c 24 20 04 00 00 c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c 91 48 8b fb e8 36 27 b8 5e 48 a5 48 8b c3 e9 17 07 00 00 c5 fa 6f 01 c5 fa 7f 84 24 10 04 00 00 c5 fa 6f 84 24 10 04 00 00 c5 fa 7f 84 24 00 04 00 00 48 8b 94 24 00 04 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f0 03 00 00 c5 fa 6f 84 24 f0 03 00 00 c5 fa 7f 84 24 e0 03 00 00 48 8b 84 24 e0 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 03 00 00 c5 fa 6f 84 24 d0 03 00 00 c5 fa 7f 84 24 c0 03 00 00 48 8b 8c 24 c0 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c5 fc 57 c0 c5 fd 11 84 24 a0 03 00 00 c5 fc 57 c0 c5 fd 11 84 24 80 03 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 a0 03 00 00 c5 ff f0 07 c5 fd 11 84 24 80 03 00 00 c5 fd 10 84 24 a0 03 00 00 c5 fd 10 8c 24 80 03 00 00 c5 fd eb c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c 89 48 8b fb e8 32 26 b8 5e 48 a5 48 8b c3 e9 13 06 00 00 c5 fa 6f 01 c5 fa 7f 84 24 70 03 00 00 c5 fa 6f 84 24 70 03 00 00 c5 fa 7f 84 24 60 03 00 00 48 8b 94 24 60 03 00 00 c5 fa 6f 00 c5 fa 7f 84 24 50 03 00 00 c5 fa 6f 84 24 50 03 00 00 c5 fa 7f 84 24 40 03 00 00 48 8b 84 24 40 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 30 03 00 00 c5 fa 6f 84 24 30 03 00 00 c5 fa 7f 84 24 20 03 00 00 48 8b 8c 24 20 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c cf 48 8b fb e8 74 25 b8 5e 48 a5 48 8b c3 e9 55 05 00 00 c5 fa 6f 01 c5 fa 7f 84 24 10 03 00 00 c5 fa 6f 84 24 10 03 00 00 c5 fa 7f 84 24 00 03 00 00 48 8b 94 24 00 03 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f0 02 00 00 c5 fa 6f 84 24 f0 02 00 00 c5 fa 7f 84 24 e0 02 00 00 48 8b 84 24 e0 02 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 02 00 00 c5 fa 6f 84 24 d0 02 00 00 c5 fa 7f 84 24 c0 02 00 00 48 8b 8c 24 c0 02 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd ef c1 c5 fd 76 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb e8 ae 24 b8 5e 48 a5 48 8b c3 e9 8f 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 02 00 00 c5 fa 6f 01 c5 fa 7f 84 24 b0 02 00 00 c5 fa 6f 84 24 b0 02 00 00 c5 fa 7f 84 24 a0 02 00 00 c5 fa 6f 84 24 90 02 00 00 c5 fa 7f 84 24 80 02 00 00 c5 fa 6f 84 24 80 02 00 00 c5 fa 7f 84 24 70 02 00 00 44 8b 84 24 a8 02 00 00 44 3b 84 24 78 02 00 00 0f 87 40 04 00 00 48 8b 8c 24 70 02 00 00 48 8b 94 24 a0 02 00 00 44 8b 84 24 a8 02 00 00 4d 63 c0 49 c1 e0 02 e8 da 54 ba 4e 48 8b fb e8 12 24 b8 5e 48 a5 48 8b c3 e9 f3 03 00 00 c5 fa 6f 01 c5 fa 7f 84 24 60 02 00 00 c5 fa 6f 84 24 60 02 00 00 c5 fa 7f 84 24 50 02 00 00 48 8b 84 24 50 02 00 00 c5 fa 6f 06 c5 fa 7f 84 24 40 02 00 00 c5 fa 6f 84 24 40 02 00 00 c5 fa 7f 84 24 30 02 00 00 48 8b 94 24 30 02 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c 88 c5 fc 57 c0 c5 fd 11 84 24 00 02 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 00 02 00 00 c5 fd 10 84 24 00 02 00 00 c5 fd 76 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c 8a c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c b6 48 8b fb e8 63 23 b8 5e 48 a5 48 8b c3 e9 44 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 01 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f0 01 00 00 c5 fa 6f 84 24 f0 01 00 00 c5 fa 7f 84 24 e0 01 00 00 c5 fa 6f 84 24 d0 01 00 00 c5 fa 7f 84 24 c0 01 00 00 c5 fa 6f 84 24 c0 01 00 00 c5 fa 7f 84 24 b0 01 00 00 44 8b 84 24 e8 01 00 00 44 3b 84 24 b8 01 00 00 0f 87 fb 02 00 00 48 8b 8c 24 b0 01 00 00 48 8b 94 24 e0 01 00 00 44 8b 84 24 e8 01 00 00 4d 63 c0 49 c1 e0 02 e8 8f 53 ba 4e 48 8b fb e8 c7 22 b8 5e 48 a5 48 8b c3 e9 a8 02 00 00 c5 fa 6f 00 c5 fa 7f 84 24 a0 01 00 00 c5 fa 6f 84 24 a0 01 00 00 c5 fa 7f 84 24 90 01 00 00 48 8b 84 24 90 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 80 01 00 00 c5 fa 6f 84 24 80 01 00 00 c5 fa 7f 84 24 70 01 00 00 48 8b 94 24 70 01 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c 88 c5 fc 57 c0 c5 fd 11 84 24 40 01 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 40 01 00 00 c5 fd 10 84 24 40 01 00 00 c5 fd 76 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c 8a c4 c1 7e 7f 01 ff c1 41 83 c0 08 83 f9 04 7c b6 48 8b fb e8 18 22 b8 5e 48 a5 48 8b c3 e9 f9 01 00 00 c5 fa 6f 01 c5 fa 7f 84 24 30 01 00 00 c5 fa 6f 84 24 30 01 00 00 c5 fa 7f 84 24 20 01 00 00 48 8b 94 24 20 01 00 00 c5 fa 6f 00 c5 fa 7f 84 24 10 01 00 00 c5 fa 6f 84 24 10 01 00 00 c5 fa 7f 84 24 00 01 00 00 48 8b 84 24 00 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 f0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 e0 00 00 00 48 8b 8c 24 e0 00 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 02 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 f5 76 d1 c5 f5 ef ca c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 08 41 83 f8 04 7c c7 48 8b fb e8 52 21 b8 5e 48 a5 48 8b c3 e9 33 01 00 00 c5 fa 6f 01 c5 fa 7f 84 24 d0 00 00 00 c5 fa 6f 84 24 d0 00 00 00 c5 fa 7f 84 24 c0 00 00 00 48 8b bc 24 c0 00 00 00 c5 fa 6f 00 c5 fa 7f 84 24 b0 00 00 00 c5 fa 6f 84 24 b0 00 00 00 c5 fa 7f 84 24 a0 00 00 00 48 8b ac 24 a0 00 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 00 00 00 c5 fa 6f 84 24 90 00 00 00 c5 fa 7f 84 24 80 00 00 00 4c 8b b4 24 80 00 00 00 45 33 ff 45 33 e4 4d 63 ec 49 c1 e5 02 4a 8d 0c 2f 4a 8d 54 2d 00 c5 ff f0 01 c5 ff f0 0a c5 ec 57 d2 c5 fd 11 54 24 60 48 8d 4c 24 60 c5 fd 11 44 24 40 c5 fd 11 4c 24 20 48 8d 54 24 40 4c 8d 44 24 20 e8 4b 58 da ff 48 8d 4c 24 60 e8 01 36 d9 ff c5 fd 10 00 c5 fd 11 44 24 40 48 8d 4c 24 40 4b 8d 14 2e e8 d9 1c ff ff 41 ff c7 41 83 c4 08 41 83 ff 04 7c 8f 48 8b fb e8 54 20 b8 5e 48 a5 48 8b c3 eb 38 48 8b d0 4c 8b c6 e8 92 e4 ff ff 48 8b f0 48 8b fb e8 37 20 b8 5e 48 a5 48 8b c3 eb 1b 48 8b d0 4c 8b c6 e8 dd f1 ff ff 48 8b f0 48 8b fb e8 1a 20 b8 5e 48 a5 48 8b c3 c5 f8 77 48 81 c4 98 05 00 00 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 31 eb 05 ff cc e8 2b eb 05 ff cc 48 b9 20 2c 68 c6 f7 7f 00 00 e8 03 2e b8 5e 48 8b f0 40 0f b6 cd e8 e7 88 ff ff 48 8b d0 48 8b ce e8 04 5e 07 ff 48 8b ce e8 34 7a af 5e cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,598h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 98 05 00 00}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0019h lea rdi,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 60}
001eh mov ecx,14ah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4a 01 00 00}
0023h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0025h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0027h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
002dh mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
002fh mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
0032h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0035h mov rsi,[rsp+600h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 00 06 00 00}
003dh movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0041h cmp edx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fa 0f}
0044h ja near ptr 0a5eh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 14 0a 00 00}
004ah mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
004ch lea r8,[rip+0afdh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 fd 0a 00 00}
0053h mov r8d,[r8+rdx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 90}
0057h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
005eh add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0061h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0064h mov dword ptr [rsp+588h],0ffffffffh     ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[11]{c7 84 24 88 05 00 00 ff ff ff ff}
006fh mov ecx,[rsp+588h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 8c 24 88 05 00 00}
0076h mov [rsp+590h],ecx                      ; MOV r/m32, r32 || o32 89 /r || encoded[7]{89 8c 24 90 05 00 00}
007dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0080h mov edx,[rsp+590h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[7]{8b 94 24 90 05 00 00}
0087h call 7ff7c731ca28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 95 ff ff}
008ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
008fh jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a7 09 00 00}
0094h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0097h call 7ff7c7315a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 25 ff ff}
009ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
009fh jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 97 09 00 00}
00a4h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00a8h vmovdqu xmmword ptr [rsp+578h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 05 00 00}
00b1h vmovdqu xmm0,xmmword ptr [rsp+578h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 05 00 00}
00bah vmovdqu xmmword ptr [rsp+568h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 68 05 00 00}
00c3h mov rdx,[rsp+568h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 68 05 00 00}
00cbh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
00cfh vmovdqu xmmword ptr [rsp+558h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 58 05 00 00}
00d8h vmovdqu xmm0,xmmword ptr [rsp+558h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 58 05 00 00}
00e1h vmovdqu xmmword ptr [rsp+548h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 48 05 00 00}
00eah mov rax,[rsp+548h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 48 05 00 00}
00f2h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
00f6h vmovdqu xmmword ptr [rsp+538h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 38 05 00 00}
00ffh vmovdqu xmm0,xmmword ptr [rsp+538h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 38 05 00 00}
0108h vmovdqu xmmword ptr [rsp+528h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 28 05 00 00}
0111h mov rcx,[rsp+528h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 28 05 00 00}
0119h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
011ch xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
011fh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0122h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0126h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
012ah lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
012eh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0133h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
0137h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
013bh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
013eh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0143h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0146h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
014ah cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
014eh jl short 011fh                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0150h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0153h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 28 b8 5e}
0158h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
015ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
015dh jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d9 08 00 00}
0162h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0166h vmovdqu xmmword ptr [rsp+518h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 18 05 00 00}
016fh vmovdqu xmm0,xmmword ptr [rsp+518h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 18 05 00 00}
0178h vmovdqu xmmword ptr [rsp+508h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 05 00 00}
0181h mov rdx,[rsp+508h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 08 05 00 00}
0189h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
018dh vmovdqu xmmword ptr [rsp+4f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 04 00 00}
0196h vmovdqu xmm0,xmmword ptr [rsp+4f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 04 00 00}
019fh vmovdqu xmmword ptr [rsp+4e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 04 00 00}
01a8h mov rax,[rsp+4e8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e8 04 00 00}
01b0h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
01b4h vmovdqu xmmword ptr [rsp+4d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 04 00 00}
01bdh vmovdqu xmm0,xmmword ptr [rsp+4d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 04 00 00}
01c6h vmovdqu xmmword ptr [rsp+4c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 04 00 00}
01cfh mov rcx,[rsp+4c8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c8 04 00 00}
01d7h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
01dah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
01ddh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
01e0h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
01e4h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
01e8h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
01ech vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
01f1h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
01f5h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
01f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
01fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0201h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0204h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0209h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
020ch add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0210h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0214h jl short 01ddh                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
0216h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0219h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 28 b8 5e}
021eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0220h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0223h jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 13 08 00 00}
0228h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
022ch vmovdqu xmmword ptr [rsp+4b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 04 00 00}
0235h vmovdqu xmm0,xmmword ptr [rsp+4b8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b8 04 00 00}
023eh vmovdqu xmmword ptr [rsp+4a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 04 00 00}
0247h mov rdx,[rsp+4a8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 a8 04 00 00}
024fh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0253h vmovdqu xmmword ptr [rsp+498h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 04 00 00}
025ch vmovdqu xmm0,xmmword ptr [rsp+498h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 04 00 00}
0265h vmovdqu xmmword ptr [rsp+488h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 04 00 00}
026eh mov rax,[rsp+488h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 88 04 00 00}
0276h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
027ah vmovdqu xmmword ptr [rsp+478h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 04 00 00}
0283h vmovdqu xmm0,xmmword ptr [rsp+478h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 04 00 00}
028ch vmovdqu xmmword ptr [rsp+468h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 68 04 00 00}
0295h mov rcx,[rsp+468h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 68 04 00 00}
029dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
02a0h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
02a3h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
02a6h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
02aah lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
02aeh lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
02b2h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
02b6h vmovupd [rsp+440h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 04 00 00}
02bfh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
02c3h vmovupd [rsp+420h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 04 00 00}
02cch vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
02d1h vmovupd [rsp+440h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 04 00 00}
02dah vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
02deh vmovupd [rsp+420h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 04 00 00}
02e7h vmovupd ymm0,[rsp+440h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 04 00 00}
02f0h vmovupd ymm1,[rsp+420h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 20 04 00 00}
02f9h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
02fdh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0300h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0305h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0308h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
030ch cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0310h jl short 02a3h                          ; JL rel8 || 7C cb || encoded[2]{7c 91}
0312h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0315h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 27 b8 5e}
031ah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
031ch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
031fh jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 17 07 00 00}
0324h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0328h vmovdqu xmmword ptr [rsp+410h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 04 00 00}
0331h vmovdqu xmm0,xmmword ptr [rsp+410h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 04 00 00}
033ah vmovdqu xmmword ptr [rsp+400h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 04 00 00}
0343h mov rdx,[rsp+400h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 04 00 00}
034bh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
034fh vmovdqu xmmword ptr [rsp+3f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 03 00 00}
0358h vmovdqu xmm0,xmmword ptr [rsp+3f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 03 00 00}
0361h vmovdqu xmmword ptr [rsp+3e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 03 00 00}
036ah mov rax,[rsp+3e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e0 03 00 00}
0372h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0376h vmovdqu xmmword ptr [rsp+3d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 03 00 00}
037fh vmovdqu xmm0,xmmword ptr [rsp+3d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 03 00 00}
0388h vmovdqu xmmword ptr [rsp+3c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 03 00 00}
0391h mov rcx,[rsp+3c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c0 03 00 00}
0399h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
039ch xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
039fh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
03a2h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
03a6h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
03aah lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
03aeh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
03b2h vmovupd [rsp+3a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 03 00 00}
03bbh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
03bfh vmovupd [rsp+380h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 03 00 00}
03c8h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
03cdh vmovupd [rsp+3a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 03 00 00}
03d6h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
03dah vmovupd [rsp+380h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 03 00 00}
03e3h vmovupd ymm0,[rsp+3a0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 a0 03 00 00}
03ech vmovupd ymm1,[rsp+380h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 80 03 00 00}
03f5h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
03f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
03fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0401h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0404h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0409h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
040ch add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0410h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0414h jl short 039fh                          ; JL rel8 || 7C cb || encoded[2]{7c 89}
0416h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0419h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 26 b8 5e}
041eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0420h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0423h jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 13 06 00 00}
0428h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
042ch vmovdqu xmmword ptr [rsp+370h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 03 00 00}
0435h vmovdqu xmm0,xmmword ptr [rsp+370h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 03 00 00}
043eh vmovdqu xmmword ptr [rsp+360h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 03 00 00}
0447h mov rdx,[rsp+360h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 60 03 00 00}
044fh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0453h vmovdqu xmmword ptr [rsp+350h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 03 00 00}
045ch vmovdqu xmm0,xmmword ptr [rsp+350h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 03 00 00}
0465h vmovdqu xmmword ptr [rsp+340h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 03 00 00}
046eh mov rax,[rsp+340h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 40 03 00 00}
0476h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
047ah vmovdqu xmmword ptr [rsp+330h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 03 00 00}
0483h vmovdqu xmm0,xmmword ptr [rsp+330h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 03 00 00}
048ch vmovdqu xmmword ptr [rsp+320h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 03 00 00}
0495h mov rcx,[rsp+320h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 20 03 00 00}
049dh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
04a0h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
04a3h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
04a6h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
04aah lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
04aeh lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
04b2h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
04b7h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
04bbh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
04bfh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
04c2h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
04c7h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
04cah add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
04ceh cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
04d2h jl short 04a3h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
04d4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
04d7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 25 b8 5e}
04dch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
04deh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
04e1h jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 05 00 00}
04e6h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
04eah vmovdqu xmmword ptr [rsp+310h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 03 00 00}
04f3h vmovdqu xmm0,xmmword ptr [rsp+310h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 03 00 00}
04fch vmovdqu xmmword ptr [rsp+300h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 03 00 00}
0505h mov rdx,[rsp+300h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 03 00 00}
050dh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0511h vmovdqu xmmword ptr [rsp+2f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 02 00 00}
051ah vmovdqu xmm0,xmmword ptr [rsp+2f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 02 00 00}
0523h vmovdqu xmmword ptr [rsp+2e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 02 00 00}
052ch mov rax,[rsp+2e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e0 02 00 00}
0534h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0538h vmovdqu xmmword ptr [rsp+2d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 02 00 00}
0541h vmovdqu xmm0,xmmword ptr [rsp+2d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 02 00 00}
054ah vmovdqu xmmword ptr [rsp+2c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 02 00 00}
0553h mov rcx,[rsp+2c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c0 02 00 00}
055bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
055eh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0561h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0564h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
0568h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
056ch lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
0570h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
0575h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
0579h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
057dh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0581h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0585h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0588h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
058dh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0590h add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
0594h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0598h jl short 0561h                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
059ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
059dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 24 b8 5e}
05a2h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
05a4h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
05a7h jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8f 04 00 00}
05ach vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
05b0h vmovdqu xmmword ptr [rsp+290h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 02 00 00}
05b9h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
05bdh vmovdqu xmmword ptr [rsp+2b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 02 00 00}
05c6h vmovdqu xmm0,xmmword ptr [rsp+2b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 02 00 00}
05cfh vmovdqu xmmword ptr [rsp+2a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 02 00 00}
05d8h vmovdqu xmm0,xmmword ptr [rsp+290h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 02 00 00}
05e1h vmovdqu xmmword ptr [rsp+280h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 02 00 00}
05eah vmovdqu xmm0,xmmword ptr [rsp+280h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 02 00 00}
05f3h vmovdqu xmmword ptr [rsp+270h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 02 00 00}
05fch mov r8d,[rsp+2a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 a8 02 00 00}
0604h cmp r8d,[rsp+278h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 78 02 00 00}
060ch ja near ptr 0a52h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 40 04 00 00}
0612h mov rcx,[rsp+270h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 70 02 00 00}
061ah mov rdx,[rsp+2a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 a0 02 00 00}
0622h mov r8d,[rsp+2a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 a8 02 00 00}
062ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
062dh shl r8,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 02}
0631h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 54 ba 4e}
0636h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0639h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 24 b8 5e}
063eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0640h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0643h jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f3 03 00 00}
0648h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
064ch vmovdqu xmmword ptr [rsp+260h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 02 00 00}
0655h vmovdqu xmm0,xmmword ptr [rsp+260h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 02 00 00}
065eh vmovdqu xmmword ptr [rsp+250h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 02 00 00}
0667h mov rax,[rsp+250h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 50 02 00 00}
066fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0673h vmovdqu xmmword ptr [rsp+240h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 02 00 00}
067ch vmovdqu xmm0,xmmword ptr [rsp+240h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 02 00 00}
0685h vmovdqu xmmword ptr [rsp+230h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 02 00 00}
068eh mov rdx,[rsp+230h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 30 02 00 00}
0696h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0698h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
069bh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
069eh lea r9,[rax+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 88}
06a2h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
06a6h vmovupd [rsp+200h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 02 00 00}
06afh vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
06b4h vmovupd [rsp+200h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 02 00 00}
06bdh vmovupd ymm0,[rsp+200h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 00 02 00 00}
06c6h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
06cah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
06ceh movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
06d1h lea r9,[rdx+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 8a}
06d5h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
06dah inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
06dch add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
06e0h cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
06e3h jl short 069bh                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
06e5h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
06e8h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 23 b8 5e}
06edh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
06efh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
06f2h jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 44 03 00 00}
06f7h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
06fbh vmovdqu xmmword ptr [rsp+1d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 01 00 00}
0704h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0708h vmovdqu xmmword ptr [rsp+1f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 01 00 00}
0711h vmovdqu xmm0,xmmword ptr [rsp+1f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 01 00 00}
071ah vmovdqu xmmword ptr [rsp+1e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 01 00 00}
0723h vmovdqu xmm0,xmmword ptr [rsp+1d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 01 00 00}
072ch vmovdqu xmmword ptr [rsp+1c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 01 00 00}
0735h vmovdqu xmm0,xmmword ptr [rsp+1c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 01 00 00}
073eh vmovdqu xmmword ptr [rsp+1b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 01 00 00}
0747h mov r8d,[rsp+1e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 e8 01 00 00}
074fh cmp r8d,[rsp+1b8h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 b8 01 00 00}
0757h ja near ptr 0a58h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 fb 02 00 00}
075dh mov rcx,[rsp+1b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 b0 01 00 00}
0765h mov rdx,[rsp+1e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 e0 01 00 00}
076dh mov r8d,[rsp+1e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 e8 01 00 00}
0775h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0778h shl r8,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 02}
077ch call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 53 ba 4e}
0781h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0784h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 22 b8 5e}
0789h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
078bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
078eh jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a8 02 00 00}
0793h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0797h vmovdqu xmmword ptr [rsp+1a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 01 00 00}
07a0h vmovdqu xmm0,xmmword ptr [rsp+1a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 01 00 00}
07a9h vmovdqu xmmword ptr [rsp+190h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 01 00 00}
07b2h mov rax,[rsp+190h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 90 01 00 00}
07bah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
07beh vmovdqu xmmword ptr [rsp+180h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 01 00 00}
07c7h vmovdqu xmm0,xmmword ptr [rsp+180h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 01 00 00}
07d0h vmovdqu xmmword ptr [rsp+170h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 01 00 00}
07d9h mov rdx,[rsp+170h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 70 01 00 00}
07e1h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
07e3h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
07e6h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
07e9h lea r9,[rax+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 88}
07edh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
07f1h vmovupd [rsp+140h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 01 00 00}
07fah vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
07ffh vmovupd [rsp+140h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 01 00 00}
0808h vmovupd ymm0,[rsp+140h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 01 00 00}
0811h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0815h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0819h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
081ch lea r9,[rdx+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 8a}
0820h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0825h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0827h add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
082bh cmp ecx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 04}
082eh jl short 07e6h                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
0830h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0833h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 22 b8 5e}
0838h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
083ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
083dh jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f9 01 00 00}
0842h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0846h vmovdqu xmmword ptr [rsp+130h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 01 00 00}
084fh vmovdqu xmm0,xmmword ptr [rsp+130h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 01 00 00}
0858h vmovdqu xmmword ptr [rsp+120h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 01 00 00}
0861h mov rdx,[rsp+120h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 20 01 00 00}
0869h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
086dh vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
0876h vmovdqu xmm0,xmmword ptr [rsp+110h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 01 00 00}
087fh vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
0888h mov rax,[rsp+100h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 00 01 00 00}
0890h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0894h vmovdqu xmmword ptr [rsp+0f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 00 00 00}
089dh vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
08a6h vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
08afh mov rcx,[rsp+0e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 e0 00 00 00}
08b7h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
08bah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
08bdh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
08c0h shl r10,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 02}
08c4h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
08c8h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
08cch vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
08d1h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
08d5h vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
08d9h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
08ddh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
08e1h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
08e4h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
08e9h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
08ech add r9d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 08}
08f0h cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
08f4h jl short 08bdh                          ; JL rel8 || 7C cb || encoded[2]{7c c7}
08f6h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
08f9h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 21 b8 5e}
08feh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0900h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0903h jmp near ptr 0a3bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0908h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
090ch vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
0915h vmovdqu xmm0,xmmword ptr [rsp+0d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 00 00 00}
091eh vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
0927h mov rdi,[rsp+0c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b bc 24 c0 00 00 00}
092fh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0933h vmovdqu xmmword ptr [rsp+0b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 00 00 00}
093ch vmovdqu xmm0,xmmword ptr [rsp+0b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 00 00 00}
0945h vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
094eh mov rbp,[rsp+0a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 a0 00 00 00}
0956h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
095ah vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
0963h vmovdqu xmm0,xmmword ptr [rsp+90h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 00 00 00}
096ch vmovdqu xmmword ptr [rsp+80h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 00 00 00}
0975h mov r14,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{4c 8b b4 24 80 00 00 00}
097dh xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
0980h xor r12d,r12d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 e4}
0983h movsxd r13,r12d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 ec}
0986h shl r13,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e5 02}
098ah lea rcx,[rdi+r13]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 0c 2f}
098eh lea rdx,[rbp+r13]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{4a 8d 54 2d 00}
0993h vlddqu ymm0,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 01}
0997h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
099bh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
099fh vmovupd [rsp+60h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 60}
09a5h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
09aah vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
09b0h vmovupd [rsp+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 4c 24 20}
09b6h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
09bbh lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
09c0h call 7ff7c70c9650h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 58 da ff}
09c5h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
09cah call 7ff7c70b7410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 36 d9 ff}
09cfh vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
09d3h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
09d9h lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
09deh lea rdx,[r14+r13]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 14 2e}
09e2h call 7ff7c7315b00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 1c ff ff}
09e7h inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
09eah add r12d,8                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c4 08}
09eeh cmp r15d,4                              ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 ff 04}
09f2h jl short 0983h                          ; JL rel8 || 7C cb || encoded[2]{7c 8f}
09f4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
09f7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 20 b8 5e}
09fch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
09feh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0a01h jmp short 0a3bh                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0a03h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a06h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0a09h call 7ff7c73222e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 e4 ff ff}
0a0eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a11h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0a14h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 20 b8 5e}
0a19h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0a1bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0a1eh jmp short 0a3bh                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0a20h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a23h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0a26h call 7ff7c7323048h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd f1 ff ff}
0a2bh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a2eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0a31h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 20 b8 5e}
0a36h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0a38h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0a3bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0a3eh add rsp,598h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 98 05 00 00}
0a45h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0a46h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0a47h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0a48h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0a49h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0a4bh pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0a4dh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0a4fh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0a51h ret                                     ; RET || C3 || encoded[1]{c3}
0a52h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 eb 05 ff}
0a57h int 3                                   ; INT3 || CC || encoded[1]{cc}
0a58h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b eb 05 ff}
0a5dh int 3                                   ; INT3 || CC || encoded[1]{cc}
0a5eh mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
0a68h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 2e b8 5e}
0a6dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a70h movzx ecx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cd}
0a74h call 7ff7c731c7a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 88 ff ff}
0a79h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a7ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0a7fh call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 5e 07 ff}
0a84h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0a87h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 7a af 5e}
0a8ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<int> eval<int>(BinaryBitLogicKind:byte kind, BitMatrix<int> A, BitMatrix<int> B, ref BitMatrix<int> Z)
; bm~bbl~eval~byref_g0o_32i_32i_32i[801] = {57 56 55 53 48 83 ec 68 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 48 8b b4 24 b0 00 00 00 40 0f b6 cd 83 f9 0f 0f 87 67 02 00 00 8b c9 48 8d 15 e6 02 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 48 8b cb ba ff ff ff ff e8 d2 95 ff ff 48 8b c3 e9 25 02 00 00 48 8b cb e8 a2 1b ff ff 48 8b c3 e9 15 02 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 ec 95 ff ff 48 8b fb e8 04 1e b8 5e 48 a5 48 8b c3 e9 f5 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 ec 95 ff ff 48 8b fb e8 e4 1d b8 5e 48 a5 48 8b c3 e9 d5 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 ec 95 ff ff 48 8b fb e8 c4 1d b8 5e 48 a5 48 8b c3 e9 b5 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 ec 95 ff ff 48 8b fb e8 a4 1d b8 5e 48 a5 48 8b c3 e9 95 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 ec 95 ff ff 48 8b fb e8 84 1d b8 5e 48 a5 48 8b c3 e9 75 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 ec 95 ff ff 48 8b fb e8 64 1d b8 5e 48 a5 48 8b c3 e9 55 01 00 00 c5 fa 6f 06 c5 fa 7f 44 24 48 c4 c1 7a 6f 00 c5 fa 7f 44 24 58 4c 8d 44 24 58 49 8b 10 45 8b 40 08 48 8d 4c 24 48 48 8b 01 8b 49 08 44 3b c1 0f 87 29 01 00 00 48 8b c8 4d 63 c0 49 c1 e0 02 e8 d6 4d ba 4e 48 8b fb e8 0e 1d b8 5e 48 a5 48 8b c3 e9 ff 00 00 00 49 8b 08 48 8b 16 e8 89 1a ff ff 48 8b fb e8 f1 1c b8 5e 48 a5 48 8b c3 e9 e2 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 01 c5 fa 7f 44 24 38 4c 8d 44 24 38 49 8b 10 45 8b 40 08 48 8d 4c 24 28 48 8b 01 8b 49 08 44 3b c1 0f 87 bc 00 00 00 48 8b c8 4d 63 c0 49 c1 e0 02 e8 63 4d ba 4e 48 8b fb e8 9b 1c b8 5e 48 a5 48 8b c3 e9 8c 00 00 00 49 8b 09 48 8b 16 e8 16 1a ff ff 48 8b fb e8 7e 1c b8 5e 48 a5 48 8b c3 eb 72 49 8b 08 49 8b 11 4c 8b 06 e8 b1 a0 ff ff 48 8b fb e8 61 1c b8 5e 48 a5 48 8b c3 eb 55 49 8b 08 49 8b 11 4c 8b 06 e8 b4 a0 ff ff 48 8b fb e8 44 1c b8 5e 48 a5 48 8b c3 eb 38 49 8b 08 49 8b 11 4c 8b 06 e8 b7 a0 ff ff 48 8b fb e8 27 1c b8 5e 48 a5 48 8b c3 eb 1b 49 8b 08 49 8b 11 4c 8b 06 e8 ba a0 ff ff 48 8b fb e8 0a 1c b8 5e 48 a5 48 8b c3 48 83 c4 68 5b 5d 5e 5f c3 e8 2f e7 05 ff cc e8 29 e7 05 ff cc 48 b9 70 d6 94 c6 f7 7f 00 00 e8 01 2a b8 5e 48 8b f0 40 88 6e 08 48 b9 08 8f 34 c6 f7 7f 00 00 e8 2b ad b2 5e 48 8b c8 e8 83 e8 42 ff 8b f8 48 b9 20 2c 68 c6 f7 7f 00 00 e8 d2 29 b8 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 bb c2 ca 5e 48 8b e8 8b cf e8 11 e3 06 ff 4c 8b c0 48 8b cd 48 8b d6 e8 2b fe 04 ff 48 8b d0 48 8b cb e8 b0 59 07 ff 48 8b cb e8 e0 75 af 5e cc}
; TermCode = INTRx2
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
003bh lea rdx,[rip+2e6h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e6 02 00 00}
0042h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0045h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
004ch add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
004fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0051h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0054h mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0059h call 7ff7c731d630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 95 ff ff}
005eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0061h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 25 02 00 00}
0066h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0069h call 7ff7c7315c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 1b ff ff}
006eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0071h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 15 02 00 00}
0076h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0079h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
007ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
007fh call 7ff7c731d670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 95 ff ff}
0084h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0087h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 1e b8 5e}
008ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
008eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0091h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f5 01 00 00}
0096h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0099h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
009ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
009fh call 7ff7c731d690h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 95 ff ff}
00a4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00a7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 1d b8 5e}
00ach movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00aeh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00b1h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d5 01 00 00}
00b6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00b9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00bch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00bfh call 7ff7c731d6b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 95 ff ff}
00c4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00c7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 1d b8 5e}
00cch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00ceh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00d1h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b5 01 00 00}
00d6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00d9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00dch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00dfh call 7ff7c731d6d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 95 ff ff}
00e4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00e7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 1d b8 5e}
00ech movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00eeh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00f1h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 01 00 00}
00f6h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00f9h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00fch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00ffh call 7ff7c731d6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 95 ff ff}
0104h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0107h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 1d b8 5e}
010ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
010eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0111h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 01 00 00}
0116h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0119h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
011ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
011fh call 7ff7c731d710h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 95 ff ff}
0124h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0127h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 1d b8 5e}
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
0175h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 4d ba 4e}
017ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
017dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 1d b8 5e}
0182h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0184h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0187h jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ff 00 00 00}
018ch mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
018fh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0192h call 7ff7c7315c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 1a ff ff}
0197h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
019ah call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 1c b8 5e}
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
01e8h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 4d ba 4e}
01edh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01f0h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 1c b8 5e}
01f5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01f7h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01fah jmp near ptr 028bh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8c 00 00 00}
01ffh mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
0202h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0205h call 7ff7c7315c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 1a ff ff}
020ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
020dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 1c b8 5e}
0212h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0214h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0217h jmp short 028bh                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
0219h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
021ch mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
021fh mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0222h call 7ff7c731e2d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 a0 ff ff}
0227h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
022ah call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 1c b8 5e}
022fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0231h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0234h jmp short 028bh                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
0236h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0239h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
023ch mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
023fh call 7ff7c731e2f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 a0 ff ff}
0244h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0247h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 1c b8 5e}
024ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
024eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0251h jmp short 028bh                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0253h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0256h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0259h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
025ch call 7ff7c731e318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 a0 ff ff}
0261h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0264h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 1c b8 5e}
0269h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
026bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
026eh jmp short 028bh                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0270h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0273h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0276h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0279h call 7ff7c731e338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba a0 ff ff}
027eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0281h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 1c b8 5e}
0286h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0288h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
028bh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
028fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0290h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0291h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0292h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0293h ret                                     ; RET || C3 || encoded[1]{c3}
0294h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f e7 05 ff}
0299h int 3                                   ; INT3 || CC || encoded[1]{cc}
029ah call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 e7 05 ff}
029fh int 3                                   ; INT3 || CC || encoded[1]{cc}
02a0h mov rcx,7ff7c694d670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d6 94 c6 f7 7f 00 00}
02aah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 2a b8 5e}
02afh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b2h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
02b6h mov rcx,7ff7c6348f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 34 c6 f7 7f 00 00}
02c0h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b ad b2 5e}
02c5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c8h call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 e8 42 ff}
02cdh mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
02cfh mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
02d9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 29 b8 5e}
02deh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
02e1h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
02e6h mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
02f0h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb c2 ca 5e}
02f5h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
02f8h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
02fah call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 e3 06 ff}
02ffh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0302h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0305h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0308h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b fe 04 ff}
030dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0310h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0313h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 59 07 ff}
0318h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
031bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 75 af 5e}
0320h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitMatrix<ulong> A, BitMatrix<ulong> B, ref BitMatrix<ulong> Z)
; bm~bbl~eval~byref_g0o_64u_64u_64u[2704] = {41 57 41 56 41 55 41 54 57 56 55 53 48 81 ec 98 05 00 00 c5 f8 77 48 8b f1 48 8d bc 24 80 00 00 00 b9 42 01 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 49 8b c8 49 8b c1 48 8b b4 24 00 06 00 00 40 0f b6 d5 83 fa 0f 0f 87 14 0a 00 00 8b d2 4c 8d 05 fa 0a 00 00 45 8b 04 90 4c 8d 0d df ff ff ff 4d 03 c1 41 ff e0 48 c7 84 24 88 05 00 00 ff ff ff ff 48 8b 8c 24 88 05 00 00 48 89 8c 24 90 05 00 00 48 8b cb 48 8b 94 24 90 05 00 00 e8 bd 9d ff ff 48 8b c3 e9 a3 09 00 00 48 8b cb e8 5d 14 ff ff 48 8b c3 e9 93 09 00 00 c5 fa 6f 01 c5 fa 7f 84 24 78 05 00 00 c5 fa 6f 84 24 78 05 00 00 c5 fa 7f 84 24 68 05 00 00 48 8b 94 24 68 05 00 00 c5 fa 6f 00 c5 fa 7f 84 24 58 05 00 00 c5 fa 6f 84 24 58 05 00 00 c5 fa 7f 84 24 48 05 00 00 48 8b 84 24 48 05 00 00 c5 fa 6f 06 c5 fa 7f 84 24 38 05 00 00 c5 fa 6f 84 24 38 05 00 00 c5 fa 7f 84 24 28 05 00 00 48 8b 8c 24 28 05 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd db c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c cf 48 8b fb e8 a1 15 b8 5e 48 a5 48 8b c3 e9 d5 08 00 00 c5 fa 6f 01 c5 fa 7f 84 24 18 05 00 00 c5 fa 6f 84 24 18 05 00 00 c5 fa 7f 84 24 08 05 00 00 48 8b 94 24 08 05 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f8 04 00 00 c5 fa 6f 84 24 f8 04 00 00 c5 fa 7f 84 24 e8 04 00 00 48 8b 84 24 e8 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d8 04 00 00 c5 fa 6f 84 24 d8 04 00 00 c5 fa 7f 84 24 c8 04 00 00 48 8b 8c 24 c8 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd db c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb e8 da 14 b8 5e 48 a5 48 8b c3 e9 0e 08 00 00 c5 fa 6f 01 c5 fa 7f 84 24 b8 04 00 00 c5 fa 6f 84 24 b8 04 00 00 c5 fa 7f 84 24 a8 04 00 00 48 8b 94 24 a8 04 00 00 c5 fa 6f 00 c5 fa 7f 84 24 98 04 00 00 c5 fa 6f 84 24 98 04 00 00 c5 fa 7f 84 24 88 04 00 00 48 8b 84 24 88 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 78 04 00 00 c5 fa 6f 84 24 78 04 00 00 c5 fa 7f 84 24 68 04 00 00 48 8b 8c 24 68 04 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c5 fc 57 c0 c5 fd 11 84 24 40 04 00 00 c5 fc 57 c0 c5 fd 11 84 24 20 04 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 40 04 00 00 c5 ff f0 07 c5 fd 11 84 24 20 04 00 00 c5 fd 10 84 24 40 04 00 00 c5 fd 10 8c 24 20 04 00 00 c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c 91 48 8b fb e8 de 13 b8 5e 48 a5 48 8b c3 e9 12 07 00 00 c5 fa 6f 01 c5 fa 7f 84 24 10 04 00 00 c5 fa 6f 84 24 10 04 00 00 c5 fa 7f 84 24 00 04 00 00 48 8b 94 24 00 04 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f0 03 00 00 c5 fa 6f 84 24 f0 03 00 00 c5 fa 7f 84 24 e0 03 00 00 48 8b 84 24 e0 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 03 00 00 c5 fa 6f 84 24 d0 03 00 00 c5 fa 7f 84 24 c0 03 00 00 48 8b 8c 24 c0 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c5 fc 57 c0 c5 fd 11 84 24 a0 03 00 00 c5 fc 57 c0 c5 fd 11 84 24 80 03 00 00 c4 c1 7f f0 03 c5 fd 11 84 24 a0 03 00 00 c5 ff f0 07 c5 fd 11 84 24 80 03 00 00 c5 fd 10 84 24 a0 03 00 00 c5 fd 10 8c 24 80 03 00 00 c5 fd eb c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c 88 48 8b fb e8 d9 12 b8 5e 48 a5 48 8b c3 e9 0d 06 00 00 c5 fa 6f 01 c5 fa 7f 84 24 70 03 00 00 c5 fa 6f 84 24 70 03 00 00 c5 fa 7f 84 24 60 03 00 00 48 8b 94 24 60 03 00 00 c5 fa 6f 00 c5 fa 7f 84 24 50 03 00 00 c5 fa 6f 84 24 50 03 00 00 c5 fa 7f 84 24 40 03 00 00 48 8b 84 24 40 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 30 03 00 00 c5 fa 6f 84 24 30 03 00 00 c5 fa 7f 84 24 20 03 00 00 48 8b 8c 24 20 03 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c cf 48 8b fb e8 1b 12 b8 5e 48 a5 48 8b c3 e9 4f 05 00 00 c5 fa 6f 01 c5 fa 7f 84 24 10 03 00 00 c5 fa 6f 84 24 10 03 00 00 c5 fa 7f 84 24 00 03 00 00 48 8b 94 24 00 03 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f0 02 00 00 c5 fa 6f 84 24 f0 02 00 00 c5 fa 7f 84 24 e0 02 00 00 48 8b 84 24 e0 02 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 02 00 00 c5 fa 6f 84 24 d0 02 00 00 c5 fa 7f 84 24 c0 02 00 00 48 8b 8c 24 c0 02 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c5 fd ef c1 c4 e2 7d 29 c8 c5 fd ef c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb e8 54 11 b8 5e 48 a5 48 8b c3 e9 88 04 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 02 00 00 c5 fa 6f 01 c5 fa 7f 84 24 b0 02 00 00 c5 fa 6f 84 24 b0 02 00 00 c5 fa 7f 84 24 a0 02 00 00 c5 fa 6f 84 24 90 02 00 00 c5 fa 7f 84 24 80 02 00 00 c5 fa 6f 84 24 80 02 00 00 c5 fa 7f 84 24 70 02 00 00 44 8b 84 24 a8 02 00 00 44 3b 84 24 78 02 00 00 0f 87 39 04 00 00 48 8b 8c 24 70 02 00 00 48 8b 94 24 a0 02 00 00 44 8b 84 24 a8 02 00 00 4d 63 c0 49 c1 e0 03 e8 80 41 ba 4e 48 8b fb e8 b8 10 b8 5e 48 a5 48 8b c3 e9 ec 03 00 00 c5 fa 6f 01 c5 fa 7f 84 24 60 02 00 00 c5 fa 6f 84 24 60 02 00 00 c5 fa 7f 84 24 50 02 00 00 48 8b 84 24 50 02 00 00 c5 fa 6f 06 c5 fa 7f 84 24 40 02 00 00 c5 fa 6f 84 24 40 02 00 00 c5 fa 7f 84 24 30 02 00 00 48 8b 94 24 30 02 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c c8 c5 fc 57 c0 c5 fd 11 84 24 00 02 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 00 02 00 00 c5 fd 10 84 24 00 02 00 00 c4 e2 7d 29 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c b5 48 8b fb e8 08 10 b8 5e 48 a5 48 8b c3 e9 3c 03 00 00 c5 fa 6f 06 c5 fa 7f 84 24 d0 01 00 00 c5 fa 6f 00 c5 fa 7f 84 24 f0 01 00 00 c5 fa 6f 84 24 f0 01 00 00 c5 fa 7f 84 24 e0 01 00 00 c5 fa 6f 84 24 d0 01 00 00 c5 fa 7f 84 24 c0 01 00 00 c5 fa 6f 84 24 c0 01 00 00 c5 fa 7f 84 24 b0 01 00 00 44 8b 84 24 e8 01 00 00 44 3b 84 24 b8 01 00 00 0f 87 f3 02 00 00 48 8b 8c 24 b0 01 00 00 48 8b 94 24 e0 01 00 00 44 8b 84 24 e8 01 00 00 4d 63 c0 49 c1 e0 03 e8 34 40 ba 4e 48 8b fb e8 6c 0f b8 5e 48 a5 48 8b c3 e9 a0 02 00 00 c5 fa 6f 00 c5 fa 7f 84 24 a0 01 00 00 c5 fa 6f 84 24 a0 01 00 00 c5 fa 7f 84 24 90 01 00 00 48 8b 84 24 90 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 80 01 00 00 c5 fa 6f 84 24 80 01 00 00 c5 fa 7f 84 24 70 01 00 00 48 8b 94 24 70 01 00 00 33 c9 45 33 c0 4d 63 c8 4e 8d 0c c8 c5 fc 57 c0 c5 fd 11 84 24 40 01 00 00 c4 c1 7f f0 01 c5 fd 11 84 24 40 01 00 00 c5 fd 10 84 24 40 01 00 00 c4 e2 7d 29 c8 c5 fd ef c1 4d 63 c8 4e 8d 0c ca c4 c1 7e 7f 01 ff c1 41 83 c0 04 83 f9 10 7c b5 48 8b fb e8 bc 0e b8 5e 48 a5 48 8b c3 e9 f0 01 00 00 c5 fa 6f 01 c5 fa 7f 84 24 30 01 00 00 c5 fa 6f 84 24 30 01 00 00 c5 fa 7f 84 24 20 01 00 00 48 8b 94 24 20 01 00 00 c5 fa 6f 00 c5 fa 7f 84 24 10 01 00 00 c5 fa 6f 84 24 10 01 00 00 c5 fa 7f 84 24 00 01 00 00 48 8b 84 24 00 01 00 00 c5 fa 6f 06 c5 fa 7f 84 24 f0 00 00 00 c5 fa 6f 84 24 f0 00 00 00 c5 fa 7f 84 24 e0 00 00 00 48 8b 8c 24 e0 00 00 00 45 33 c0 45 33 c9 4d 63 d1 49 c1 e2 03 4e 8d 1c 12 4a 8d 3c 10 c4 c1 7f f0 03 c5 ff f0 0f c4 e2 75 29 d1 c5 f5 ef ca c5 fd eb c1 4c 03 d1 c4 c1 7e 7f 02 41 ff c0 41 83 c1 04 41 83 f8 10 7c c6 48 8b fb e8 f5 0d b8 5e 48 a5 48 8b c3 e9 29 01 00 00 c5 fa 6f 01 c5 fa 7f 84 24 d0 00 00 00 c5 fa 6f 84 24 d0 00 00 00 c5 fa 7f 84 24 c0 00 00 00 48 8b bc 24 c0 00 00 00 c5 fa 6f 00 c5 fa 7f 84 24 b0 00 00 00 c5 fa 6f 84 24 b0 00 00 00 c5 fa 7f 84 24 a0 00 00 00 48 8b ac 24 a0 00 00 00 c5 fa 6f 06 c5 fa 7f 84 24 90 00 00 00 c5 fa 6f 84 24 90 00 00 00 c5 fa 7f 84 24 80 00 00 00 4c 8b b4 24 80 00 00 00 45 33 ff 45 33 e4 4d 63 ec 49 c1 e5 03 4a 8d 0c 2f 4a 8d 54 2d 00 c5 ff f0 01 c5 ff f0 0a 48 8d 4c 24 60 c5 fd 11 44 24 40 c5 fd 11 4c 24 20 48 8d 54 24 40 4c 8d 44 24 20 e8 80 bd dc ff c5 fd 10 44 24 60 c5 fd 11 44 24 40 4b 8d 0c 2e e8 0b c2 a1 ff 48 8b d0 48 8d 4c 24 40 e8 2e df 41 ff 41 ff c7 41 83 c4 04 41 83 ff 10 7c 99 48 8b fb e8 01 0d b8 5e 48 a5 48 8b c3 eb 38 48 8b d0 4c 8b c6 e8 77 e1 ff ff 48 8b f0 48 8b fb e8 e4 0c b8 5e 48 a5 48 8b c3 eb 1b 48 8b d0 4c 8b c6 e8 0a e2 ff ff 48 8b f0 48 8b fb e8 c7 0c b8 5e 48 a5 48 8b c3 c5 f8 77 48 81 c4 98 05 00 00 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 de d7 05 ff cc e8 d8 d7 05 ff cc 48 b9 20 2c 68 c6 f7 7f 00 00 e8 b0 1a b8 5e 48 8b f0 40 0f b6 cd e8 4c 91 ff ff 48 8b d0 48 8b ce e8 b1 4a 07 ff 48 8b ce e8 e1 66 af 5e cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,598h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 98 05 00 00}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0019h lea rdi,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d bc 24 80 00 00 00}
0021h mov ecx,142h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 42 01 00 00}
0026h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0028h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
002ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002dh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0030h mov ebp,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ea}
0032h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
0035h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0038h mov rsi,[rsp+600h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b b4 24 00 06 00 00}
0040h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0044h cmp edx,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fa 0f}
0047h ja near ptr 0a61h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 14 0a 00 00}
004dh mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
004fh lea r8,[rip+0afah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 fa 0a 00 00}
0056h mov r8d,[r8+rdx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 04 90}
005ah lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
0061h add r8,r9                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c1}
0064h jmp r8                                  ; JMP r/m64 || FF /4 || encoded[3]{41 ff e0}
0067h mov qword ptr [rsp+588h],0ffffffffffffffffh; MOV r/m64, imm32 || REX.W C7 /0 id || encoded[12]{48 c7 84 24 88 05 00 00 ff ff ff ff}
0073h mov rcx,[rsp+588h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 88 05 00 00}
007bh mov [rsp+590h],rcx                      ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{48 89 8c 24 90 05 00 00}
0083h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0086h mov rdx,[rsp+590h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 90 05 00 00}
008eh call 7ff7c731e5e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 9d ff ff}
0093h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0096h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a3 09 00 00}
009bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
009eh call 7ff7c7315c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 14 ff ff}
00a3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00a6h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 93 09 00 00}
00abh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00afh vmovdqu xmmword ptr [rsp+578h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 05 00 00}
00b8h vmovdqu xmm0,xmmword ptr [rsp+578h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 05 00 00}
00c1h vmovdqu xmmword ptr [rsp+568h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 68 05 00 00}
00cah mov rdx,[rsp+568h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 68 05 00 00}
00d2h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
00d6h vmovdqu xmmword ptr [rsp+558h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 58 05 00 00}
00dfh vmovdqu xmm0,xmmword ptr [rsp+558h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 58 05 00 00}
00e8h vmovdqu xmmword ptr [rsp+548h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 48 05 00 00}
00f1h mov rax,[rsp+548h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 48 05 00 00}
00f9h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
00fdh vmovdqu xmmword ptr [rsp+538h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 38 05 00 00}
0106h vmovdqu xmm0,xmmword ptr [rsp+538h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 38 05 00 00}
010fh vmovdqu xmmword ptr [rsp+528h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 28 05 00 00}
0118h mov rcx,[rsp+528h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 28 05 00 00}
0120h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0123h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0126h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0129h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
012dh lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
0131h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
0135h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
013ah vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
013eh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0142h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0145h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
014ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
014dh add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0151h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0155h jl short 0126h                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
0157h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
015ah call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 15 b8 5e}
015fh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0161h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0164h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d5 08 00 00}
0169h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
016dh vmovdqu xmmword ptr [rsp+518h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 18 05 00 00}
0176h vmovdqu xmm0,xmmword ptr [rsp+518h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 18 05 00 00}
017fh vmovdqu xmmword ptr [rsp+508h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 08 05 00 00}
0188h mov rdx,[rsp+508h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 08 05 00 00}
0190h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0194h vmovdqu xmmword ptr [rsp+4f8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f8 04 00 00}
019dh vmovdqu xmm0,xmmword ptr [rsp+4f8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f8 04 00 00}
01a6h vmovdqu xmmword ptr [rsp+4e8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e8 04 00 00}
01afh mov rax,[rsp+4e8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e8 04 00 00}
01b7h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
01bbh vmovdqu xmmword ptr [rsp+4d8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d8 04 00 00}
01c4h vmovdqu xmm0,xmmword ptr [rsp+4d8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d8 04 00 00}
01cdh vmovdqu xmmword ptr [rsp+4c8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c8 04 00 00}
01d6h mov rcx,[rsp+4c8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c8 04 00 00}
01deh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
01e1h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
01e4h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
01e7h shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
01ebh lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
01efh lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
01f3h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
01f8h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
01fch vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0200h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0205h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0209h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
020ch vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0211h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0214h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0218h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
021ch jl short 01e4h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
021eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0221h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 14 b8 5e}
0226h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0228h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
022bh jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0e 08 00 00}
0230h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0234h vmovdqu xmmword ptr [rsp+4b8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b8 04 00 00}
023dh vmovdqu xmm0,xmmword ptr [rsp+4b8h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b8 04 00 00}
0246h vmovdqu xmmword ptr [rsp+4a8h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a8 04 00 00}
024fh mov rdx,[rsp+4a8h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 a8 04 00 00}
0257h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
025bh vmovdqu xmmword ptr [rsp+498h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 98 04 00 00}
0264h vmovdqu xmm0,xmmword ptr [rsp+498h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 98 04 00 00}
026dh vmovdqu xmmword ptr [rsp+488h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 88 04 00 00}
0276h mov rax,[rsp+488h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 88 04 00 00}
027eh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0282h vmovdqu xmmword ptr [rsp+478h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 78 04 00 00}
028bh vmovdqu xmm0,xmmword ptr [rsp+478h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 78 04 00 00}
0294h vmovdqu xmmword ptr [rsp+468h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 68 04 00 00}
029dh mov rcx,[rsp+468h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 68 04 00 00}
02a5h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
02a8h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
02abh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
02aeh shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
02b2h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
02b6h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
02bah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
02beh vmovupd [rsp+440h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 04 00 00}
02c7h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
02cbh vmovupd [rsp+420h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 04 00 00}
02d4h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
02d9h vmovupd [rsp+440h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 04 00 00}
02e2h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
02e6h vmovupd [rsp+420h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 20 04 00 00}
02efh vmovupd ymm0,[rsp+440h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 04 00 00}
02f8h vmovupd ymm1,[rsp+420h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 20 04 00 00}
0301h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0305h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0308h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
030dh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0310h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0314h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0318h jl short 02abh                          ; JL rel8 || 7C cb || encoded[2]{7c 91}
031ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
031dh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 13 b8 5e}
0322h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0324h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0327h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 12 07 00 00}
032ch vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0330h vmovdqu xmmword ptr [rsp+410h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 04 00 00}
0339h vmovdqu xmm0,xmmword ptr [rsp+410h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 04 00 00}
0342h vmovdqu xmmword ptr [rsp+400h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 04 00 00}
034bh mov rdx,[rsp+400h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 04 00 00}
0353h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0357h vmovdqu xmmword ptr [rsp+3f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 03 00 00}
0360h vmovdqu xmm0,xmmword ptr [rsp+3f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 03 00 00}
0369h vmovdqu xmmword ptr [rsp+3e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 03 00 00}
0372h mov rax,[rsp+3e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e0 03 00 00}
037ah vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
037eh vmovdqu xmmword ptr [rsp+3d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 03 00 00}
0387h vmovdqu xmm0,xmmword ptr [rsp+3d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 03 00 00}
0390h vmovdqu xmmword ptr [rsp+3c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 03 00 00}
0399h mov rcx,[rsp+3c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c0 03 00 00}
03a1h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
03a4h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
03a7h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
03aah shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
03aeh lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
03b2h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
03b6h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
03bah vmovupd [rsp+3a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 03 00 00}
03c3h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
03c7h vmovupd [rsp+380h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 03 00 00}
03d0h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
03d5h vmovupd [rsp+3a0h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 a0 03 00 00}
03deh vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
03e2h vmovupd [rsp+380h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 80 03 00 00}
03ebh vmovupd ymm0,[rsp+3a0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 a0 03 00 00}
03f4h vmovupd ymm1,[rsp+380h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 8c 24 80 03 00 00}
03fdh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0401h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0406h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
040ah add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
040dh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0412h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0415h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
0419h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
041dh jl short 03a7h                          ; JL rel8 || 7C cb || encoded[2]{7c 88}
041fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0422h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 12 b8 5e}
0427h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0429h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
042ch jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0d 06 00 00}
0431h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0435h vmovdqu xmmword ptr [rsp+370h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 03 00 00}
043eh vmovdqu xmm0,xmmword ptr [rsp+370h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 70 03 00 00}
0447h vmovdqu xmmword ptr [rsp+360h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 03 00 00}
0450h mov rdx,[rsp+360h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 60 03 00 00}
0458h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
045ch vmovdqu xmmword ptr [rsp+350h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 03 00 00}
0465h vmovdqu xmm0,xmmword ptr [rsp+350h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 50 03 00 00}
046eh vmovdqu xmmword ptr [rsp+340h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 03 00 00}
0477h mov rax,[rsp+340h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 40 03 00 00}
047fh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0483h vmovdqu xmmword ptr [rsp+330h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 03 00 00}
048ch vmovdqu xmm0,xmmword ptr [rsp+330h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 03 00 00}
0495h vmovdqu xmmword ptr [rsp+320h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 03 00 00}
049eh mov rcx,[rsp+320h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 20 03 00 00}
04a6h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
04a9h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
04ach movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
04afh shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
04b3h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
04b7h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
04bbh vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
04c0h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
04c4h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
04c8h add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
04cbh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
04d0h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
04d3h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
04d7h cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
04dbh jl short 04ach                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
04ddh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
04e0h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 12 b8 5e}
04e5h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
04e7h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
04eah jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 4f 05 00 00}
04efh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
04f3h vmovdqu xmmword ptr [rsp+310h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 03 00 00}
04fch vmovdqu xmm0,xmmword ptr [rsp+310h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 03 00 00}
0505h vmovdqu xmmword ptr [rsp+300h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 03 00 00}
050eh mov rdx,[rsp+300h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 00 03 00 00}
0516h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
051ah vmovdqu xmmword ptr [rsp+2f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 02 00 00}
0523h vmovdqu xmm0,xmmword ptr [rsp+2f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 02 00 00}
052ch vmovdqu xmmword ptr [rsp+2e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 02 00 00}
0535h mov rax,[rsp+2e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 e0 02 00 00}
053dh vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0541h vmovdqu xmmword ptr [rsp+2d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 02 00 00}
054ah vmovdqu xmm0,xmmword ptr [rsp+2d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 02 00 00}
0553h vmovdqu xmmword ptr [rsp+2c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 02 00 00}
055ch mov rcx,[rsp+2c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 c0 02 00 00}
0564h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0567h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
056ah movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
056dh shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
0571h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
0575h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
0579h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
057eh vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
0582h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0586h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
058bh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
058fh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
0592h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0597h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
059ah add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
059eh cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
05a2h jl short 056ah                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
05a4h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
05a7h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 11 b8 5e}
05ach movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
05aeh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
05b1h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 88 04 00 00}
05b6h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
05bah vmovdqu xmmword ptr [rsp+290h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 02 00 00}
05c3h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
05c7h vmovdqu xmmword ptr [rsp+2b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 02 00 00}
05d0h vmovdqu xmm0,xmmword ptr [rsp+2b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 02 00 00}
05d9h vmovdqu xmmword ptr [rsp+2a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 02 00 00}
05e2h vmovdqu xmm0,xmmword ptr [rsp+290h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 02 00 00}
05ebh vmovdqu xmmword ptr [rsp+280h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 02 00 00}
05f4h vmovdqu xmm0,xmmword ptr [rsp+280h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 02 00 00}
05fdh vmovdqu xmmword ptr [rsp+270h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 02 00 00}
0606h mov r8d,[rsp+2a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 a8 02 00 00}
060eh cmp r8d,[rsp+278h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 78 02 00 00}
0616h ja near ptr 0a55h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 39 04 00 00}
061ch mov rcx,[rsp+270h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 70 02 00 00}
0624h mov rdx,[rsp+2a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 a0 02 00 00}
062ch mov r8d,[rsp+2a8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 a8 02 00 00}
0634h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0637h shl r8,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 03}
063bh call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 41 ba 4e}
0640h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0643h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 10 b8 5e}
0648h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
064ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
064dh jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ec 03 00 00}
0652h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0656h vmovdqu xmmword ptr [rsp+260h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 60 02 00 00}
065fh vmovdqu xmm0,xmmword ptr [rsp+260h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 60 02 00 00}
0668h vmovdqu xmmword ptr [rsp+250h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 50 02 00 00}
0671h mov rax,[rsp+250h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 50 02 00 00}
0679h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
067dh vmovdqu xmmword ptr [rsp+240h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 40 02 00 00}
0686h vmovdqu xmm0,xmmword ptr [rsp+240h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 40 02 00 00}
068fh vmovdqu xmmword ptr [rsp+230h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 02 00 00}
0698h mov rdx,[rsp+230h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 30 02 00 00}
06a0h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
06a2h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
06a5h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
06a8h lea r9,[rax+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c c8}
06ach vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
06b0h vmovupd [rsp+200h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 02 00 00}
06b9h vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
06beh vmovupd [rsp+200h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 00 02 00 00}
06c7h vmovupd ymm0,[rsp+200h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 00 02 00 00}
06d0h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
06d5h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
06d9h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
06dch lea r9,[rdx+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c ca}
06e0h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
06e5h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
06e7h add r8d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 04}
06ebh cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
06eeh jl short 06a5h                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
06f0h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
06f3h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 10 b8 5e}
06f8h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
06fah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
06fdh jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 3c 03 00 00}
0702h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0706h vmovdqu xmmword ptr [rsp+1d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 01 00 00}
070fh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0713h vmovdqu xmmword ptr [rsp+1f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 01 00 00}
071ch vmovdqu xmm0,xmmword ptr [rsp+1f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 01 00 00}
0725h vmovdqu xmmword ptr [rsp+1e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 01 00 00}
072eh vmovdqu xmm0,xmmword ptr [rsp+1d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 01 00 00}
0737h vmovdqu xmmword ptr [rsp+1c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 01 00 00}
0740h vmovdqu xmm0,xmmword ptr [rsp+1c0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 c0 01 00 00}
0749h vmovdqu xmmword ptr [rsp+1b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 01 00 00}
0752h mov r8d,[rsp+1e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 e8 01 00 00}
075ah cmp r8d,[rsp+1b8h]                      ; CMP r32, r/m32 || o32 3B /r || encoded[8]{44 3b 84 24 b8 01 00 00}
0762h ja near ptr 0a5bh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 f3 02 00 00}
0768h mov rcx,[rsp+1b0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 b0 01 00 00}
0770h mov rdx,[rsp+1e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 e0 01 00 00}
0778h mov r8d,[rsp+1e8h]                      ; MOV r32, r/m32 || o32 8B /r || encoded[8]{44 8b 84 24 e8 01 00 00}
0780h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0783h shl r8,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 03}
0787h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 40 ba 4e}
078ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
078fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 0f b8 5e}
0794h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0796h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0799h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a0 02 00 00}
079eh vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
07a2h vmovdqu xmmword ptr [rsp+1a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 01 00 00}
07abh vmovdqu xmm0,xmmword ptr [rsp+1a0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 a0 01 00 00}
07b4h vmovdqu xmmword ptr [rsp+190h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 01 00 00}
07bdh mov rax,[rsp+190h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 90 01 00 00}
07c5h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
07c9h vmovdqu xmmword ptr [rsp+180h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 01 00 00}
07d2h vmovdqu xmm0,xmmword ptr [rsp+180h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 80 01 00 00}
07dbh vmovdqu xmmword ptr [rsp+170h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 70 01 00 00}
07e4h mov rdx,[rsp+170h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 70 01 00 00}
07ech xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
07eeh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
07f1h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
07f4h lea r9,[rax+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c c8}
07f8h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
07fch vmovupd [rsp+140h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 01 00 00}
0805h vlddqu ymm0,ymmword ptr [r9]            ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 01}
080ah vmovupd [rsp+140h],ymm0                 ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[9]{c5 fd 11 84 24 40 01 00 00}
0813h vmovupd ymm0,[rsp+140h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 40 01 00 00}
081ch vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0821h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0825h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0828h lea r9,[rdx+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c ca}
082ch vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0831h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0833h add r8d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 04}
0837h cmp ecx,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 10}
083ah jl short 07f1h                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
083ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
083fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 0e b8 5e}
0844h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0846h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0849h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f0 01 00 00}
084eh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0852h vmovdqu xmmword ptr [rsp+130h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 30 01 00 00}
085bh vmovdqu xmm0,xmmword ptr [rsp+130h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 30 01 00 00}
0864h vmovdqu xmmword ptr [rsp+120h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 20 01 00 00}
086dh mov rdx,[rsp+120h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 20 01 00 00}
0875h vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0879h vmovdqu xmmword ptr [rsp+110h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 10 01 00 00}
0882h vmovdqu xmm0,xmmword ptr [rsp+110h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 10 01 00 00}
088bh vmovdqu xmmword ptr [rsp+100h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 00 01 00 00}
0894h mov rax,[rsp+100h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 84 24 00 01 00 00}
089ch vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
08a0h vmovdqu xmmword ptr [rsp+0f0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 f0 00 00 00}
08a9h vmovdqu xmm0,xmmword ptr [rsp+0f0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 f0 00 00 00}
08b2h vmovdqu xmmword ptr [rsp+0e0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 e0 00 00 00}
08bbh mov rcx,[rsp+0e0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 8c 24 e0 00 00 00}
08c3h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
08c6h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
08c9h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
08cch shl r10,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e2 03}
08d0h lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
08d4h lea rdi,[rax+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 3c 10}
08d8h vlddqu ymm0,ymmword ptr [r11]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c4 c1 7f f0 03}
08ddh vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
08e1h vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
08e6h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
08eah vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
08eeh add r10,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d1}
08f1h vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
08f6h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
08f9h add r9d,4                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c1 04}
08fdh cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0901h jl short 08c9h                          ; JL rel8 || 7C cb || encoded[2]{7c c6}
0903h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0906h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 0d b8 5e}
090bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
090dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0910h jmp near ptr 0a3eh                      ; JMP rel32 || E9 cd || encoded[5]{e9 29 01 00 00}
0915h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0919h vmovdqu xmmword ptr [rsp+0d0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 d0 00 00 00}
0922h vmovdqu xmm0,xmmword ptr [rsp+0d0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 d0 00 00 00}
092bh vmovdqu xmmword ptr [rsp+0c0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 c0 00 00 00}
0934h mov rdi,[rsp+0c0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b bc 24 c0 00 00 00}
093ch vmovdqu xmm0,xmmword ptr [rax]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 00}
0940h vmovdqu xmmword ptr [rsp+0b0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 b0 00 00 00}
0949h vmovdqu xmm0,xmmword ptr [rsp+0b0h]     ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 b0 00 00 00}
0952h vmovdqu xmmword ptr [rsp+0a0h],xmm0     ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 a0 00 00 00}
095bh mov rbp,[rsp+0a0h]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 a0 00 00 00}
0963h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
0967h vmovdqu xmmword ptr [rsp+90h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 90 00 00 00}
0970h vmovdqu xmm0,xmmword ptr [rsp+90h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[9]{c5 fa 6f 84 24 90 00 00 00}
0979h vmovdqu xmmword ptr [rsp+80h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[9]{c5 fa 7f 84 24 80 00 00 00}
0982h mov r14,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{4c 8b b4 24 80 00 00 00}
098ah xor r15d,r15d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ff}
098dh xor r12d,r12d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 e4}
0990h movsxd r13,r12d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 ec}
0993h shl r13,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e5 03}
0997h lea rcx,[rdi+r13]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 0c 2f}
099bh lea rdx,[rbp+r13]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{4a 8d 54 2d 00}
09a0h vlddqu ymm0,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 01}
09a4h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
09a8h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
09adh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
09b3h vmovupd [rsp+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 4c 24 20}
09b9h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
09beh lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
09c3h call 7ff7c70f0ed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 bd dc ff}
09c8h vmovupd ymm0,[rsp+60h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 60}
09ceh vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
09d4h lea rcx,[r14+r13]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 0c 2e}
09d8h call 7ff7c6d41378h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b c2 a1 ff}
09ddh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
09e0h lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
09e5h call 7ff7c67430a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e df 41 ff}
09eah inc r15d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c7}
09edh add r12d,4                              ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c4 04}
09f1h cmp r15d,10h                            ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 ff 10}
09f5h jl short 0990h                          ; JL rel8 || 7C cb || encoded[2]{7c 99}
09f7h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
09fah call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 0d b8 5e}
09ffh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0a01h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0a04h jmp short 0a3eh                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0a06h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a09h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0a0ch call 7ff7c7323318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 e1 ff ff}
0a11h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a14h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0a17h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 0c b8 5e}
0a1ch movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0a1eh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0a21h jmp short 0a3eh                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0a23h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a26h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0a29h call 7ff7c73233c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a e2 ff ff}
0a2eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a31h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0a34h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 0c b8 5e}
0a39h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0a3bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0a3eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0a41h add rsp,598h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 98 05 00 00}
0a48h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0a49h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0a4ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0a4bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0a4ch pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0a4eh pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0a50h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0a52h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0a54h ret                                     ; RET || C3 || encoded[1]{c3}
0a55h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de d7 05 ff}
0a5ah int 3                                   ; INT3 || CC || encoded[1]{cc}
0a5bh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 d7 05 ff}
0a60h int 3                                   ; INT3 || CC || encoded[1]{cc}
0a61h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
0a6bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 1a b8 5e}
0a70h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0a73h movzx ecx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cd}
0a77h call 7ff7c731e358h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 91 ff ff}
0a7ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0a7fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0a82h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 4a 07 ff}
0a87h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0a8ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 66 af 5e}
0a8fh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitMatrix<long> eval<long>(BinaryBitLogicKind:byte kind, BitMatrix<long> A, BitMatrix<long> B, ref BitMatrix<long> Z)
; bm~bbl~eval~byref_g0o_64i_64i_64i[806] = {57 56 55 53 48 83 ec 68 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 8b ea 48 8b b4 24 b0 00 00 00 40 0f b6 cd 83 f9 0f 0f 87 6c 02 00 00 8b c9 48 8d 15 ee 02 00 00 8b 14 8a 48 8d 05 e0 ff ff ff 48 03 d0 ff e2 48 8b cb 48 ba ff ff ff ff ff ff ff ff e8 dd 9a ff ff 48 8b c3 e9 25 02 00 00 48 8b cb e8 ad 0f ff ff 48 8b c3 e9 15 02 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 f7 9a ff ff 48 8b fb e8 af 0a b8 5e 48 a5 48 8b c3 e9 f5 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 a7 a7 ff ff 48 8b fb e8 8f 0a b8 5e 48 a5 48 8b c3 e9 d5 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 a7 a7 ff ff 48 8b fb e8 6f 0a b8 5e 48 a5 48 8b c3 e9 b5 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 a7 a7 ff ff 48 8b fb e8 4f 0a b8 5e 48 a5 48 8b c3 e9 95 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 a7 a7 ff ff 48 8b fb e8 2f 0a b8 5e 48 a5 48 8b c3 e9 75 01 00 00 49 8b 08 49 8b 11 4c 8b 06 e8 a7 a7 ff ff 48 8b fb e8 0f 0a b8 5e 48 a5 48 8b c3 e9 55 01 00 00 c5 fa 6f 06 c5 fa 7f 44 24 48 c4 c1 7a 6f 00 c5 fa 7f 44 24 58 4c 8d 44 24 58 49 8b 10 45 8b 40 08 48 8d 4c 24 48 48 8b 01 8b 49 08 44 3b c1 0f 87 29 01 00 00 48 8b c8 4d 63 c0 49 c1 e0 03 e8 81 3a ba 4e 48 8b fb e8 b9 09 b8 5e 48 a5 48 8b c3 e9 ff 00 00 00 49 8b 08 48 8b 16 e8 94 0e ff ff 48 8b fb e8 9c 09 b8 5e 48 a5 48 8b c3 e9 e2 00 00 00 c5 fa 6f 06 c5 fa 7f 44 24 28 c4 c1 7a 6f 01 c5 fa 7f 44 24 38 4c 8d 44 24 38 49 8b 10 45 8b 40 08 48 8d 4c 24 28 48 8b 01 8b 49 08 44 3b c1 0f 87 bc 00 00 00 48 8b c8 4d 63 c0 49 c1 e0 03 e8 0e 3a ba 4e 48 8b fb e8 46 09 b8 5e 48 a5 48 8b c3 e9 8c 00 00 00 49 8b 09 48 8b 16 e8 21 0e ff ff 48 8b fb e8 29 09 b8 5e 48 a5 48 8b c3 eb 72 49 8b 08 49 8b 11 4c 8b 06 e8 04 a7 ff ff 48 8b fb e8 0c 09 b8 5e 48 a5 48 8b c3 eb 55 49 8b 08 49 8b 11 4c 8b 06 e8 07 a7 ff ff 48 8b fb e8 ef 08 b8 5e 48 a5 48 8b c3 eb 38 49 8b 08 49 8b 11 4c 8b 06 e8 0a a7 ff ff 48 8b fb e8 d2 08 b8 5e 48 a5 48 8b c3 eb 1b 49 8b 08 49 8b 11 4c 8b 06 e8 0d a7 ff ff 48 8b fb e8 b5 08 b8 5e 48 a5 48 8b c3 48 83 c4 68 5b 5d 5e 5f c3 e8 da d3 05 ff cc e8 d4 d3 05 ff cc 48 b9 70 d6 94 c6 f7 7f 00 00 e8 ac 16 b8 5e 48 8b f0 40 88 6e 08 48 b9 a8 9e 34 c6 f7 7f 00 00 e8 d6 99 b2 5e 48 8b c8 e8 2e d5 42 ff 8b f8 48 b9 20 2c 68 c6 f7 7f 00 00 e8 7d 16 b8 5e 48 8b d8 b9 68 04 00 00 48 ba 30 c0 54 c6 f7 7f 00 00 e8 66 af ca 5e 48 8b e8 8b cf e8 bc cf 06 ff 4c 8b c0 48 8b cd 48 8b d6 e8 d6 ea 04 ff 48 8b d0 48 8b cb e8 5b 46 07 ff 48 8b cb e8 8b 62 af 5e cc}
; TermCode = INTRx2
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
003bh lea rdx,[rip+2eeh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ee 02 00 00}
0042h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0045h lea rax,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 ff ff ff}
004ch add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
004fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0051h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0054h mov rdx,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff ff}
005eh call 7ff7c731ee90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 9a ff ff}
0063h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0066h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 25 02 00 00}
006bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
006eh call 7ff7c7316370h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 0f ff ff}
0073h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0076h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 15 02 00 00}
007bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
007eh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0081h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0084h call 7ff7c731eed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 9a ff ff}
0089h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
008ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 0a b8 5e}
0091h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0093h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0096h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f5 01 00 00}
009bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
009eh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00a1h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00a4h call 7ff7c731fba0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 a7 ff ff}
00a9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00ach call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 0a b8 5e}
00b1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00b3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00b6h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d5 01 00 00}
00bbh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00beh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00c1h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00c4h call 7ff7c731fbc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 a7 ff ff}
00c9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00cch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 0a b8 5e}
00d1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00d3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00d6h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b5 01 00 00}
00dbh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00deh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
00e1h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
00e4h call 7ff7c731fbe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 a7 ff ff}
00e9h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
00ech call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 0a b8 5e}
00f1h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
00f3h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
00f6h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 01 00 00}
00fbh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
00feh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0101h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0104h call 7ff7c731fc00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 a7 ff ff}
0109h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
010ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 0a b8 5e}
0111h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0113h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0116h jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 01 00 00}
011bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
011eh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0121h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0124h call 7ff7c731fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 a7 ff ff}
0129h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
012ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 0a b8 5e}
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
017ah call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 3a ba 4e}
017fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0182h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 09 b8 5e}
0187h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0189h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
018ch jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ff 00 00 00}
0191h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0194h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0197h call 7ff7c7316380h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 0e ff ff}
019ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
019fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 09 b8 5e}
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
01edh call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 3a ba 4e}
01f2h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
01f5h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 09 b8 5e}
01fah movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
01fch mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
01ffh jmp near ptr 0290h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8c 00 00 00}
0204h mov rcx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 09}
0207h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
020ah call 7ff7c7316380h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 0e ff ff}
020fh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0212h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 09 b8 5e}
0217h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0219h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
021ch jmp short 0290h                         ; JMP rel8 || EB cb || encoded[2]{eb 72}
021eh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0221h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0224h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0227h call 7ff7c731fc80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 a7 ff ff}
022ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
022fh call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 09 b8 5e}
0234h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0236h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0239h jmp short 0290h                         ; JMP rel8 || EB cb || encoded[2]{eb 55}
023bh mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
023eh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
0241h mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0244h call 7ff7c731fca0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 a7 ff ff}
0249h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
024ch call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 08 b8 5e}
0251h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0253h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0256h jmp short 0290h                         ; JMP rel8 || EB cb || encoded[2]{eb 38}
0258h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
025bh mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
025eh mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
0261h call 7ff7c731fcc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a a7 ff ff}
0266h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0269h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 08 b8 5e}
026eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0270h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0273h jmp short 0290h                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0275h mov rcx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 08}
0278h mov rdx,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 11}
027bh mov r8,[rsi]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 06}
027eh call 7ff7c731fce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d a7 ff ff}
0283h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0286h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 08 b8 5e}
028bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
028dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0290h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0294h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0295h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0296h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0297h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0298h ret                                     ; RET || C3 || encoded[1]{c3}
0299h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da d3 05 ff}
029eh int 3                                   ; INT3 || CC || encoded[1]{cc}
029fh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 d3 05 ff}
02a4h int 3                                   ; INT3 || CC || encoded[1]{cc}
02a5h mov rcx,7ff7c694d670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d6 94 c6 f7 7f 00 00}
02afh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 16 b8 5e}
02b4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02b7h mov [rsi+8],bpl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 6e 08}
02bbh mov rcx,7ff7c6349ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 34 c6 f7 7f 00 00}
02c5h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 99 b2 5e}
02cah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02cdh call 7ff7c6752b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e d5 42 ff}
02d2h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
02d4h mov rcx,7ff7c6682c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2c 68 c6 f7 7f 00 00}
02deh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 16 b8 5e}
02e3h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
02e6h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
02ebh mov rdx,7ff7c654c030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 30 c0 54 c6 f7 7f 00 00}
02f5h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 af ca 5e}
02fah mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
02fdh mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
02ffh call 7ff7c6392610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc cf 06 ff}
0304h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0307h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
030ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
030dh call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 ea 04 ff}
0312h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0315h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0318h call 7ff7c6399cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 46 07 ff}
031dh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0320h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 62 af 5e}
0325h int 3                                   ; INT3 || CC || encoded[1]{cc}
