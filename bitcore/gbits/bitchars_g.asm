------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<byte>(Span<byte> src, int maxlen)
; bitchars_gspan0o_32i[313] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 03 48 63 d2 48 b9 d8 b6 64 c6 f7 7f 00 00 e8 25 c3 fd 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e 7d 00 00 00 48 b9 d8 b6 64 c6 f7 7f 00 00 ba 08 00 00 00 e8 fe c2 fd 5e 4d 63 c5 46 0f b6 04 07 48 8d 48 10 45 0f b6 c0 41 c1 e0 04 4d 63 c0 48 ba 05 1e 4e 3f d3 01 00 00 4c 03 c2 c4 c1 7a 6f 00 c5 fa 7f 01 48 83 c0 10 41 b8 08 00 00 00 48 8b d0 41 8b cd c1 e1 03 41 3b cc 77 6a 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 5f 4d 63 c0 49 d1 e0 e8 0d e4 ff 4e 41 ff c5 44 3b eb 7c 83 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 2a 7e 4b ff cc e8 2c 7e 4b ff cc e8 4e 7f 4b ff cc e8 18 7e 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c3 fd 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 00dbh                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e 7d 00 00 00}
005eh mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0068h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe c2 fd 5e}
0072h movsxd r8,r13d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c5}
0075h movzx r8d,byte ptr [rdi+r8]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 04 07}
007ah lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
007eh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0082h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
0086h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0089h mov rdx,1d33f4e1e05h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 05 1e 4e 3f d3 01 00 00}
0093h add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
0096h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
009bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
009fh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00a3h mov r8d,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 08 00 00 00}
00a9h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00ach mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00afh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
00b2h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00b5h ja short 0121h                          ; JA rel8 || 77 cb || encoded[2]{77 6a}
00b7h mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00bah sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00bch movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00bfh lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00c3h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00c6h ja short 0127h                          ; JA rel8 || 77 cb || encoded[2]{77 5f}
00c8h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00cbh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00ceh call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d e4 ff 4e}
00d3h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
00d6h cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
00d9h jl short 005eh                          ; JL rel8 || 7C cb || encoded[2]{7c 83}
00dbh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
00deh je short 00f1h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
00e0h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
00e3h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00e6h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00e9h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
00edh test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
00efh jne short 00f3h                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
00f1h jmp short 0106h                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
00f3h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
00f6h je short 012dh                          ; JE rel8 || 74 cb || encoded[2]{74 35}
00f8h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
00fbh mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
00feh cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0101h ja short 0133h                          ; JA rel8 || 77 cb || encoded[2]{77 30}
0103h mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
0106h mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
0109h mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
010dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0110h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0114h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0115h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0116h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0117h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0118h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
011ah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
011ch pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
011eh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0120h ret                                     ; RET || C3 || encoded[1]{c3}
0121h call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 7e 4b ff}
0126h int 3                                   ; INT3 || CC || encoded[1]{cc}
0127h call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 7e 4b ff}
012ch int 3                                   ; INT3 || CC || encoded[1]{cc}
012dh call 7ff7c6382af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 7f 4b ff}
0132h int 3                                   ; INT3 || CC || encoded[1]{cc}
0133h call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 7e 4b ff}
0138h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<sbyte>(Span<sbyte> src, int maxlen)
; bitchars_gspan0o_32i[321] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 03 48 63 d2 48 b9 d8 b6 64 c6 f7 7f 00 00 e8 c5 c1 fd 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e 85 00 00 00 48 b9 d8 b6 64 c6 f7 7f 00 00 ba 08 00 00 00 e8 9e c1 fd 5e 4d 63 c5 4e 0f be 04 07 48 8d 48 10 4d 0f be c0 45 0f b6 c0 41 c1 e0 04 4d 63 c0 48 ba 05 1e 4e 3f d3 01 00 00 4c 03 c2 c4 c1 7a 6f 00 c5 fa 7f 01 48 83 c0 10 41 b8 08 00 00 00 48 8b d0 41 8b cd c1 e1 03 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 a9 e2 ff 4e 41 ff c5 44 3b eb 0f 8c 7b ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 c2 7c 4b ff cc e8 c4 7c 4b ff cc e8 e6 7d 4b ff cc e8 b0 7c 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 c1 fd 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 00e3h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e 85 00 00 00}
005eh mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0068h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e c1 fd 5e}
0072h movsxd r8,r13d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c5}
0075h movsx r8,byte ptr [rdi+r8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 04 07}
007ah lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
007eh movsx r8,r8b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c0}
0082h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0086h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
008ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
008dh mov rdx,1d33f4e1e05h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 05 1e 4e 3f d3 01 00 00}
0097h add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
009ah vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
009fh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
00a3h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00a7h mov r8d,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 08 00 00 00}
00adh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00b0h mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00b3h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
00b6h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00b9h ja short 0129h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00bbh mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00beh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00c0h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00c3h lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00c7h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00cah ja short 012fh                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00cch movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00cfh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00d2h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 e2 ff 4e}
00d7h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
00dah cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
00ddh jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 7b ff ff ff}
00e3h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
00e6h je short 00f9h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
00e8h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
00ebh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
00eeh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00f1h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
00f5h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
00f7h jne short 00fbh                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
00f9h jmp short 010eh                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
00fbh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
00feh je short 0135h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
0100h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0103h mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0106h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0109h ja short 013bh                          ; JA rel8 || 77 cb || encoded[2]{77 30}
010bh mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
010eh mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
0111h mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0115h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0118h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
011ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
011dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
011eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
011fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0120h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0122h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0124h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0126h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0128h ret                                     ; RET || C3 || encoded[1]{c3}
0129h call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 7c 4b ff}
012eh int 3                                   ; INT3 || CC || encoded[1]{cc}
012fh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 7c 4b ff}
0134h int 3                                   ; INT3 || CC || encoded[1]{cc}
0135h call 7ff7c6382af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 7d 4b ff}
013ah int 3                                   ; INT3 || CC || encoded[1]{cc}
013bh call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 7c 4b ff}
0140h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<ushort>(Span<ushort> src, int maxlen)
; bitchars_gspan0o_32i[364] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 04 48 63 d2 48 b9 d8 b6 64 c6 f7 7f 00 00 e8 55 c0 fd 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e b0 00 00 00 48 b9 d8 b6 64 c6 f7 7f 00 00 ba 10 00 00 00 e8 2e c0 fd 5e 4d 63 c5 46 0f b7 04 47 48 8d 48 10 45 0f b7 c0 41 0f b6 d0 c1 e2 04 48 63 d2 49 b9 05 1e 4e 3f d3 01 00 00 49 03 d1 4c 8b c9 c5 fa 6f 02 c4 c1 7a 7f 01 41 c1 f8 08 45 0f b6 c0 41 c1 e0 04 4d 63 c0 48 ba 05 1e 4e 3f d3 01 00 00 4c 03 c2 48 83 c1 10 c4 c1 7a 6f 00 c5 fa 7f 01 48 83 c0 10 41 b8 10 00 00 00 48 8b d0 41 8b cd c1 e1 04 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 0e e1 ff 4e 41 ff c5 44 3b eb 0f 8c 50 ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 27 7b 4b ff cc e8 29 7b 4b ff cc e8 4b 7c 4b ff cc e8 15 7b 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 c0 fd 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 010eh                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e b0 00 00 00}
005eh mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0068h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e c0 fd 5e}
0072h movsxd r8,r13d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c5}
0075h movzx r8d,word ptr [rdi+r8*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 04 47}
007ah lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
007eh movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0082h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0086h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0089h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
008ch mov r9,1d33f4e1e05h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 05 1e 4e 3f d3 01 00 00}
0096h add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0099h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
009ch vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
00a0h vmovdqu xmmword ptr [r9],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 01}
00a5h sar r8d,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 08}
00a9h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00adh shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
00b1h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00b4h mov rdx,1d33f4e1e05h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 05 1e 4e 3f d3 01 00 00}
00beh add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
00c1h add rcx,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 10}
00c5h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
00cah vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
00ceh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00d2h mov r8d,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 10 00 00 00}
00d8h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00dbh mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00deh shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
00e1h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00e4h ja short 0154h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00e6h mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00e9h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00ebh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00eeh lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00f2h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00f5h ja short 015ah                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00f7h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00fah shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00fdh call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e e1 ff 4e}
0102h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
0105h cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
0108h jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 50 ff ff ff}
010eh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0111h je short 0124h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0113h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
0116h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0119h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
011ch movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0120h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0122h jne short 0126h                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0124h jmp short 0139h                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
0126h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0129h je short 0160h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
012bh mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
012eh mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0131h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0134h ja short 0166h                          ; JA rel8 || 77 cb || encoded[2]{77 30}
0136h mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
0139h mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
013ch mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0140h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0143h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0147h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0148h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0149h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
014ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
014bh pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
014dh pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
014fh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0151h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0153h ret                                     ; RET || C3 || encoded[1]{c3}
0154h call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 7b 4b ff}
0159h int 3                                   ; INT3 || CC || encoded[1]{cc}
015ah call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 7b 4b ff}
015fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0160h call 7ff7c6382af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 7c 4b ff}
0165h int 3                                   ; INT3 || CC || encoded[1]{cc}
0166h call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 7b 4b ff}
016bh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<short>(Span<short> src, int maxlen)
; bitchars_gspan0o_32i[368] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 04 48 63 d2 48 b9 d8 b6 64 c6 f7 7f 00 00 e8 b5 be fd 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e b4 00 00 00 48 b9 d8 b6 64 c6 f7 7f 00 00 ba 10 00 00 00 e8 8e be fd 5e 4d 63 c5 4e 0f bf 04 47 48 8d 48 10 4d 0f bf c0 45 0f b7 c0 41 0f b6 d0 c1 e2 04 48 63 d2 49 b9 05 1e 4e 3f d3 01 00 00 49 03 d1 4c 8b c9 c5 fa 6f 02 c4 c1 7a 7f 01 41 c1 f8 08 45 0f b6 c0 41 c1 e0 04 4d 63 c0 48 ba 05 1e 4e 3f d3 01 00 00 4c 03 c2 48 83 c1 10 c4 c1 7a 6f 00 c5 fa 7f 01 48 83 c0 10 41 b8 10 00 00 00 48 8b d0 41 8b cd c1 e1 04 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 6a df ff 4e 41 ff c5 44 3b eb 0f 8c 4c ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 83 79 4b ff cc e8 85 79 4b ff cc e8 a7 7a 4b ff cc e8 71 79 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 be fd 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 0112h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e b4 00 00 00}
005eh mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0068h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e be fd 5e}
0072h movsxd r8,r13d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c5}
0075h movsx r8,word ptr [rdi+r8*2]            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 04 47}
007ah lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
007eh movsx r8,r8w                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf c0}
0082h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0086h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
008ah shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
008dh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0090h mov r9,1d33f4e1e05h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 05 1e 4e 3f d3 01 00 00}
009ah add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
009dh mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
00a0h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
00a4h vmovdqu xmmword ptr [r9],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 01}
00a9h sar r8d,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 08}
00adh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00b1h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
00b5h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00b8h mov rdx,1d33f4e1e05h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 05 1e 4e 3f d3 01 00 00}
00c2h add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
00c5h add rcx,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 10}
00c9h vmovdqu xmm0,xmmword ptr [r8]           ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[5]{c4 c1 7a 6f 00}
00ceh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
00d2h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00d6h mov r8d,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 10 00 00 00}
00dch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00dfh mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00e2h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
00e5h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00e8h ja short 0158h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00eah mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00edh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00efh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00f2h lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00f6h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00f9h ja short 015eh                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00fbh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00feh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
0101h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a df ff 4e}
0106h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
0109h cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
010ch jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 4c ff ff ff}
0112h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0115h je short 0128h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0117h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
011ah setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
011dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0120h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0124h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0126h jne short 012ah                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0128h jmp short 013dh                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
012ah test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
012dh je short 0164h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
012fh mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0132h mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0135h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0138h ja short 016ah                          ; JA rel8 || 77 cb || encoded[2]{77 30}
013ah mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
013dh mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
0140h mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0144h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0147h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
014bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
014ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
014dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
014eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
014fh pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0151h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0153h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0155h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0157h ret                                     ; RET || C3 || encoded[1]{c3}
0158h call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 79 4b ff}
015dh int 3                                   ; INT3 || CC || encoded[1]{cc}
015eh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 79 4b ff}
0163h int 3                                   ; INT3 || CC || encoded[1]{cc}
0164h call 7ff7c6382af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 7a 4b ff}
0169h int 3                                   ; INT3 || CC || encoded[1]{cc}
016ah call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 79 4b ff}
016fh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<uint>(Span<uint> src, int maxlen)
; bitchars_gspan0o_32i[353] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 05 48 63 d2 48 b9 d8 b6 64 c6 f7 7f 00 00 e8 15 bd fd 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e a5 00 00 00 48 b9 d8 b6 64 c6 f7 7f 00 00 ba 20 00 00 00 e8 ee bc fd 5e 49 63 cd 44 8b 04 8f 48 8d 50 10 45 33 c9 41 8b c9 c1 e1 03 45 8b d0 41 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba 05 1e 4e 3f d3 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4e 8d 14 52 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c0 10 41 b8 20 00 00 00 48 8b d0 41 8b cd c1 e1 05 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 d9 dd ff 4e 41 ff c5 44 3b eb 0f 8c 5b ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 f2 77 4b ff cc e8 f4 77 4b ff cc e8 16 79 4b ff cc e8 e0 77 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 bd fd 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 0103h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e a5 00 00 00}
005eh mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0068h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee bc fd 5e}
0072h movsxd rcx,r13d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cd}
0075h mov r8d,[rdi+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 04 8f}
0079h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
007dh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0080h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0083h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0086h mov r10d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d0}
0089h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
008ch movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
0090h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0093h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0096h mov r10,1d33f4e1e05h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 05 1e 4e 3f d3 01 00 00}
00a0h add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
00a3h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
00a6h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
00aah movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
00adh lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
00b1h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00b5h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00bah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00bdh cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
00c1h jl short 0080h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00c3h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00c7h mov r8d,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 20 00 00 00}
00cdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00d0h mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00d3h shl ecx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 05}
00d6h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00d9h ja short 0149h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00dbh mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00deh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00e0h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00e3h lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00e7h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00eah ja short 014fh                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00ech movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00efh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00f2h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 dd ff 4e}
00f7h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
00fah cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
00fdh jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 5b ff ff ff}
0103h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0106h je short 0119h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0108h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
010bh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
010eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0111h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0115h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0117h jne short 011bh                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0119h jmp short 012eh                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
011bh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
011eh je short 0155h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
0120h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0123h mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0126h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0129h ja short 015bh                          ; JA rel8 || 77 cb || encoded[2]{77 30}
012bh mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
012eh mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
0131h mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0135h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0138h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
013dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
013eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0140h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0142h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0144h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0146h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0148h ret                                     ; RET || C3 || encoded[1]{c3}
0149h call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 77 4b ff}
014eh int 3                                   ; INT3 || CC || encoded[1]{cc}
014fh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 77 4b ff}
0154h int 3                                   ; INT3 || CC || encoded[1]{cc}
0155h call 7ff7c6382af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 79 4b ff}
015ah int 3                                   ; INT3 || CC || encoded[1]{cc}
015bh call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 77 4b ff}
0160h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<int>(Span<int> src, int maxlen)
; bitchars_gspan0o_32i[353] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 05 48 63 d2 48 b9 d8 b6 64 c6 f7 7f 00 00 e8 85 bb fd 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e a5 00 00 00 48 b9 d8 b6 64 c6 f7 7f 00 00 ba 20 00 00 00 e8 5e bb fd 5e 49 63 cd 44 8b 04 8f 48 8d 50 10 45 33 c9 41 8b c9 c1 e1 03 45 8b d0 41 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba 05 1e 4e 3f d3 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4e 8d 14 52 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c0 10 41 b8 20 00 00 00 48 8b d0 41 8b cd c1 e1 05 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 49 dc ff 4e 41 ff c5 44 3b eb 0f 8c 5b ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 62 76 4b ff cc e8 64 76 4b ff cc e8 86 77 4b ff cc e8 50 76 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 bb fd 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 0103h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e a5 00 00 00}
005eh mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0068h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e bb fd 5e}
0072h movsxd rcx,r13d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cd}
0075h mov r8d,[rdi+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 04 8f}
0079h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
007dh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0080h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0083h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0086h mov r10d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d0}
0089h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
008ch movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
0090h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0093h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0096h mov r10,1d33f4e1e05h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 05 1e 4e 3f d3 01 00 00}
00a0h add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
00a3h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
00a6h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
00aah movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
00adh lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
00b1h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00b5h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00bah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00bdh cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
00c1h jl short 0080h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00c3h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00c7h mov r8d,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 20 00 00 00}
00cdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00d0h mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00d3h shl ecx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 05}
00d6h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00d9h ja short 0149h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00dbh mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00deh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00e0h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00e3h lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00e7h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00eah ja short 014fh                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00ech movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00efh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00f2h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 dc ff 4e}
00f7h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
00fah cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
00fdh jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 5b ff ff ff}
0103h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0106h je short 0119h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0108h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
010bh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
010eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0111h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0115h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0117h jne short 011bh                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0119h jmp short 012eh                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
011bh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
011eh je short 0155h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
0120h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0123h mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0126h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0129h ja short 015bh                          ; JA rel8 || 77 cb || encoded[2]{77 30}
012bh mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
012eh mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
0131h mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0135h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0138h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
013dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
013eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0140h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0142h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0144h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0146h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0148h ret                                     ; RET || C3 || encoded[1]{c3}
0149h call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 76 4b ff}
014eh int 3                                   ; INT3 || CC || encoded[1]{cc}
014fh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 76 4b ff}
0154h int 3                                   ; INT3 || CC || encoded[1]{cc}
0155h call 7ff7c6382af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 77 4b ff}
015ah int 3                                   ; INT3 || CC || encoded[1]{cc}
015bh call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 76 4b ff}
0160h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<ulong>(Span<ulong> src, int maxlen)
; bitchars_gspan0o_32i[353] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 06 48 63 d2 48 b9 d8 b6 64 c6 f7 7f 00 00 e8 f5 b9 fd 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e a5 00 00 00 48 b9 d8 b6 64 c6 f7 7f 00 00 ba 40 00 00 00 e8 ce b9 fd 5e 49 63 cd 4c 8b 04 cf 48 8d 50 10 45 33 c9 41 8b c9 c1 e1 03 4d 8b d0 49 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba 05 1e 4e 3f d3 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4e 8d 14 52 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 08 7c bd 48 83 c0 10 41 b8 40 00 00 00 48 8b d0 41 8b cd c1 e1 06 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 b9 da ff 4e 41 ff c5 44 3b eb 0f 8c 5b ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 d2 74 4b ff cc e8 d4 74 4b ff cc e8 f6 75 4b ff cc e8 c0 74 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 06}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 b9 fd 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 0103h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e a5 00 00 00}
005eh mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0068h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce b9 fd 5e}
0072h movsxd rcx,r13d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cd}
0075h mov r8,[rdi+rcx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 04 cf}
0079h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
007dh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0080h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0083h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0086h mov r10,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d0}
0089h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
008ch movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
0090h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0093h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0096h mov r10,1d33f4e1e05h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 05 1e 4e 3f d3 01 00 00}
00a0h add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
00a3h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
00a6h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
00aah movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
00adh lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
00b1h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00b5h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00bah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00bdh cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
00c1h jl short 0080h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00c3h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00c7h mov r8d,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 40 00 00 00}
00cdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00d0h mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00d3h shl ecx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 06}
00d6h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00d9h ja short 0149h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00dbh mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00deh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00e0h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00e3h lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00e7h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00eah ja short 014fh                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00ech movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00efh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00f2h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 da ff 4e}
00f7h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
00fah cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
00fdh jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 5b ff ff ff}
0103h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0106h je short 0119h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0108h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
010bh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
010eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0111h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0115h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0117h jne short 011bh                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0119h jmp short 012eh                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
011bh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
011eh je short 0155h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
0120h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0123h mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0126h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0129h ja short 015bh                          ; JA rel8 || 77 cb || encoded[2]{77 30}
012bh mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
012eh mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
0131h mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0135h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0138h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
013dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
013eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0140h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0142h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0144h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0146h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0148h ret                                     ; RET || C3 || encoded[1]{c3}
0149h call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 74 4b ff}
014eh int 3                                   ; INT3 || CC || encoded[1]{cc}
014fh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 74 4b ff}
0154h int 3                                   ; INT3 || CC || encoded[1]{cc}
0155h call 7ff7c6382af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 75 4b ff}
015ah int 3                                   ; INT3 || CC || encoded[1]{cc}
015bh call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 74 4b ff}
0160h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<long>(Span<long> src, int maxlen)
; bitchars_gspan0o_32i[353] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 06 48 63 d2 48 b9 d8 b6 64 c6 f7 7f 00 00 e8 65 b8 fd 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e a5 00 00 00 48 b9 d8 b6 64 c6 f7 7f 00 00 ba 40 00 00 00 e8 3e b8 fd 5e 49 63 cd 4c 8b 04 cf 48 8d 50 10 45 33 c9 41 8b c9 c1 e1 03 4d 8b d0 49 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba 05 1e 4e 3f d3 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4e 8d 14 52 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 08 7c bd 48 83 c0 10 41 b8 40 00 00 00 48 8b d0 41 8b cd c1 e1 06 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 29 d9 ff 4e 41 ff c5 44 3b eb 0f 8c 5b ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 42 73 4b ff cc e8 44 73 4b ff cc e8 66 74 4b ff cc e8 30 73 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 06}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 b8 fd 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 0103h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e a5 00 00 00}
005eh mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0068h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e b8 fd 5e}
0072h movsxd rcx,r13d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cd}
0075h mov r8,[rdi+rcx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 04 cf}
0079h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
007dh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0080h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0083h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0086h mov r10,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d0}
0089h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
008ch movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
0090h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0093h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0096h mov r10,1d33f4e1e05h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 05 1e 4e 3f d3 01 00 00}
00a0h add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
00a3h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
00a6h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
00aah movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
00adh lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
00b1h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00b5h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00bah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00bdh cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
00c1h jl short 0080h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00c3h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00c7h mov r8d,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 40 00 00 00}
00cdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00d0h mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00d3h shl ecx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 06}
00d6h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00d9h ja short 0149h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00dbh mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00deh sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00e0h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00e3h lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00e7h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00eah ja short 014fh                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00ech movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00efh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00f2h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 d9 ff 4e}
00f7h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
00fah cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
00fdh jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 5b ff ff ff}
0103h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0106h je short 0119h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0108h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
010bh setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
010eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0111h movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0115h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0117h jne short 011bh                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0119h jmp short 012eh                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
011bh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
011eh je short 0155h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
0120h mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0123h mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0126h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0129h ja short 015bh                          ; JA rel8 || 77 cb || encoded[2]{77 30}
012bh mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
012eh mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
0131h mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0135h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0138h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
013dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
013eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
013fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0140h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0142h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0144h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0146h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0148h ret                                     ; RET || C3 || encoded[1]{c3}
0149h call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 73 4b ff}
014eh int 3                                   ; INT3 || CC || encoded[1]{cc}
014fh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 73 4b ff}
0154h int 3                                   ; INT3 || CC || encoded[1]{cc}
0155h call 7ff7c6382af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 74 4b ff}
015ah int 3                                   ; INT3 || CC || encoded[1]{cc}
015bh call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 73 4b ff}
0160h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<float>(Span<float> src, int maxlen)
; bitchars_gspan0o_32i[364] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 05 48 63 d2 48 b9 d8 b6 64 c6 f7 7f 00 00 e8 d5 b6 fd 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e b0 00 00 00 48 b9 d8 b6 64 c6 f7 7f 00 00 ba 20 00 00 00 e8 ae b6 fd 5e 49 63 cd c5 fa 10 04 8f 4c 8d 40 10 c5 fa 11 44 24 24 8b 54 24 24 45 33 c9 41 8b c9 c1 e1 03 44 8b d2 41 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba 05 1e 4e 3f d3 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4f 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c0 10 41 b8 20 00 00 00 48 8b d0 41 8b cd c1 e1 05 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 8e d7 ff 4e 41 ff c5 44 3b eb 0f 8c 50 ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 a7 71 4b ff cc e8 a9 71 4b ff cc e8 cb 72 4b ff cc e8 95 71 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 b6 fd 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 010eh                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e b0 00 00 00}
005eh mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0068h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae b6 fd 5e}
0072h movsxd rcx,r13d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cd}
0075h vmovss xmm0,dword ptr [rdi+rcx*4]       ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 04 8f}
007ah lea r8,[rax+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 10}
007eh vmovss dword ptr [rsp+24h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 24}
0084h mov edx,[rsp+24h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 24}
0088h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
008bh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
008eh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0091h mov r10d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d2}
0094h shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
0097h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
009bh shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
009eh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00a1h mov r10,1d33f4e1e05h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 05 1e 4e 3f d3 01 00 00}
00abh add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
00aeh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
00b1h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
00b5h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
00b8h lea r10,[r8+r10*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 50}
00bch vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00c0h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00c5h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00c8h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
00cch jl short 008bh                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00ceh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00d2h mov r8d,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 20 00 00 00}
00d8h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00dbh mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00deh shl ecx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 05}
00e1h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00e4h ja short 0154h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00e6h mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00e9h sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00ebh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00eeh lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00f2h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00f5h ja short 015ah                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00f7h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00fah shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00fdh call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e d7 ff 4e}
0102h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
0105h cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
0108h jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 50 ff ff ff}
010eh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0111h je short 0124h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0113h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
0116h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
0119h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
011ch movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0120h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0122h jne short 0126h                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0124h jmp short 0139h                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
0126h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0129h je short 0160h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
012bh mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
012eh mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0131h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0134h ja short 0166h                          ; JA rel8 || 77 cb || encoded[2]{77 30}
0136h mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
0139h mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
013ch mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0140h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0143h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0147h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0148h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0149h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
014ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
014bh pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
014dh pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
014fh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0151h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0153h ret                                     ; RET || C3 || encoded[1]{c3}
0154h call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 71 4b ff}
0159h int 3                                   ; INT3 || CC || encoded[1]{cc}
015ah call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 71 4b ff}
015fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0160h call 7ff7c6382af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 72 4b ff}
0165h int 3                                   ; INT3 || CC || encoded[1]{cc}
0166h call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 71 4b ff}
016bh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Span<char> bitchars<double>(Span<double> src, int maxlen)
; bitchars_gspan0o_32i[365] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 06 48 63 d2 48 b9 d8 b6 64 c6 f7 7f 00 00 e8 35 b1 fd 5e 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e b1 00 00 00 48 b9 d8 b6 64 c6 f7 7f 00 00 ba 40 00 00 00 e8 0e b1 fd 5e 49 63 cd c5 fb 10 04 cf 4c 8d 40 10 c5 fb 11 44 24 20 48 8b 54 24 20 45 33 c9 41 8b c9 c1 e1 03 4c 8b d2 49 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba 05 1e 4e 3f d3 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4f 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 08 7c bd 48 83 c0 10 41 b8 40 00 00 00 48 8b d0 41 8b cd c1 e1 06 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 ed d1 ff 4e 41 ff c5 44 3b eb 0f 8c 4f ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 06 6c 4b ff cc e8 08 6c 4b ff cc e8 2a 6d 4b ff cc e8 f4 6b 4b ff cc}
; TermCode = INTRx2
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0006h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0008h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0009h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000ah push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h mov [rsp+80h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 84 24 80 00 00 00}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh mov rdi,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 3a}
0021h mov ebx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5a 08}
0024h lea rdx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 94 24 80 00 00 00}
002ch movzx ebp,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 2a}
0030h mov r14d,[rdx+4]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 72 04}
0034h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0036h shl edx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 06}
0039h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003ch mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 b1 fd 5e}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 010fh                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e b1 00 00 00}
005eh mov rcx,7ff7c664b6d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b6 64 c6 f7 7f 00 00}
0068h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e b1 fd 5e}
0072h movsxd rcx,r13d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cd}
0075h vmovsd xmm0,qword ptr [rdi+rcx*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 cf}
007ah lea r8,[rax+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 10}
007eh vmovsd qword ptr [rsp+20h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 20}
0084h mov rdx,[rsp+20h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 20}
0089h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
008ch mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
008fh shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0092h mov r10,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d2}
0095h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0098h movzx ecx,r10b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 ca}
009ch shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
009fh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00a2h mov r10,1d33f4e1e05h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 05 1e 4e 3f d3 01 00 00}
00ach add rcx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 ca}
00afh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
00b2h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
00b6h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
00b9h lea r10,[r8+r10*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 50}
00bdh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
00c1h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
00c6h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
00c9h cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
00cdh jl short 008ch                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
00cfh add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
00d3h mov r8d,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 40 00 00 00}
00d9h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00dch mov ecx,r13d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cd}
00dfh shl ecx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 06}
00e2h cmp ecx,r12d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b cc}
00e5h ja short 0155h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
00e7h mov eax,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c4}
00eah sub eax,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c1}
00ech movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
00efh lea rcx,[r15+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 0c 4f}
00f3h cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
00f6h ja short 015bh                          ; JA rel8 || 77 cb || encoded[2]{77 63}
00f8h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00fbh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
00feh call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed d1 ff 4e}
0103h inc r13d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c5}
0106h cmp r13d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b eb}
0109h jl near ptr 005eh                       ; JL rel32 || 0F 8C cd || encoded[6]{0f 8c 4f ff ff ff}
010fh test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
0112h je short 0125h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0114h cmp r12d,r14d                           ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b e6}
0117h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
011ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
011dh movzx edx,bpl                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 d5}
0121h test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
0123h jne short 0127h                         ; JNE rel8 || 75 cb || encoded[2]{75 02}
0125h jmp short 013ah                         ; JMP rel8 || EB cb || encoded[2]{eb 13}
0127h test bpl,bpl                            ; TEST r/m8, r8 || 84 /r || encoded[3]{40 84 ed}
012ah je short 0161h                          ; JE rel8 || 74 cb || encoded[2]{74 35}
012ch mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
012fh mov edx,r12d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d4}
0132h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0135h ja short 0167h                          ; JA rel8 || 77 cb || encoded[2]{77 30}
0137h mov r12d,r14d                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b e6}
013ah mov [rsi],r15                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 3e}
013dh mov [rsi+8],r12d                        ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 66 08}
0141h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0144h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0148h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0149h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
014ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
014bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
014ch pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
014eh pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
0150h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0152h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0154h ret                                     ; RET || C3 || encoded[1]{c3}
0155h call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 6c 4b ff}
015ah int 3                                   ; INT3 || CC || encoded[1]{cc}
015bh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 6c 4b ff}
0160h int 3                                   ; INT3 || CC || encoded[1]{cc}
0161h call 7ff7c6382af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 6d 4b ff}
0166h int 3                                   ; INT3 || CC || encoded[1]{cc}
0167h call 7ff7c63829c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 6b 4b ff}
016ch int 3                                   ; INT3 || CC || encoded[1]{cc}
