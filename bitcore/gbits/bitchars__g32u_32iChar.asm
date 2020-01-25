; Span<Char> bitchars<uint>(Span<uint> src, int maxlen)
; bitchars__g32u_32iChar[7ff7c6e91a70h, 7ff7c6e91bd1h][353] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 05 48 63 d2 48 b9 d0 7f 4f c6 f7 7f 00 00 e8 25 53 01 5f 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e a5 00 00 00 48 b9 d0 7f 4f c6 f7 7f 00 00 ba 20 00 00 00 e8 fe 52 01 5f 49 63 cd 44 8b 04 8f 48 8d 50 10 45 33 c9 41 8b c9 c1 e1 03 45 8b d0 41 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba 51 1c 45 ba cf 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4e 8d 14 52 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c0 10 41 b8 20 00 00 00 48 8b d0 41 8b cd c1 e1 05 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 e9 73 03 4f 41 ff c5 44 3b eb 0f 8c 5b ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 7a 0e 51 ff cc e8 7c 0e 51 ff cc e8 9e 0f 51 ff cc e8 68 0e 51 ff cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:53:495
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
003ch mov rcx,7ff7c64f7fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 7f 4f c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 53 01 5f}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 0103h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e a5 00 00 00}
005eh mov rcx,7ff7c64f7fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 7f 4f c6 f7 7f 00 00}
0068h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 52 01 5f}
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
0096h mov r10,1cfba451c51h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 51 1c 45 ba cf 01 00 00}
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
00f2h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 73 03 4f}
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
0149h call 7ff7c63a2a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 0e 51 ff}
014eh int 3                                   ; INT3 || CC || encoded[1]{cc}
014fh call 7ff7c63a2a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 0e 51 ff}
0154h int 3                                   ; INT3 || CC || encoded[1]{cc}
0155h call 7ff7c63a2b68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 0f 51 ff}
015ah int 3                                   ; INT3 || CC || encoded[1]{cc}
015bh call 7ff7c63a2a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 0e 51 ff}
0160h int 3                                   ; INT3 || CC || encoded[1]{cc}
