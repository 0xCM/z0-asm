; Span<Char> bitchars<Int16>(Span<Int16> src, int maxlen)
; bitchars__g16i_32iChar[7ff7c6e918d0h, 7ff7c6e91a40h][368] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 04 48 63 d2 48 b9 d0 7f 4f c6 f7 7f 00 00 e8 c5 54 01 5f 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e b4 00 00 00 48 b9 d0 7f 4f c6 f7 7f 00 00 ba 10 00 00 00 e8 9e 54 01 5f 4d 63 c5 4e 0f bf 04 47 48 8d 48 10 4d 0f bf c0 45 0f b7 c0 41 0f b6 d0 c1 e2 04 48 63 d2 49 b9 51 1c 45 ba cf 01 00 00 49 03 d1 4c 8b c9 c5 fa 6f 02 c4 c1 7a 7f 01 41 c1 f8 08 45 0f b6 c0 41 c1 e0 04 4d 63 c0 48 ba 51 1c 45 ba cf 01 00 00 4c 03 c2 48 83 c1 10 c4 c1 7a 6f 00 c5 fa 7f 01 48 83 c0 10 41 b8 10 00 00 00 48 8b d0 41 8b cd c1 e1 04 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 7a 75 03 4f 41 ff c5 44 3b eb 0f 8c 4c ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 0b 10 51 ff cc e8 0d 10 51 ff cc e8 2f 11 51 ff cc e8 f9 0f 51 ff cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:53:488
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
003ch mov rcx,7ff7c64f7fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 7f 4f c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 54 01 5f}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 0112h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e b4 00 00 00}
005eh mov rcx,7ff7c64f7fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 7f 4f c6 f7 7f 00 00}
0068h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 54 01 5f}
0072h movsxd r8,r13d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c5}
0075h movsx r8,word ptr [rdi+r8*2]            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 04 47}
007ah lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
007eh movsx r8,r8w                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf c0}
0082h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0086h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
008ah shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
008dh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0090h mov r9,1cfba451c51h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 51 1c 45 ba cf 01 00 00}
009ah add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
009dh mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
00a0h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
00a4h vmovdqu xmmword ptr [r9],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 01}
00a9h sar r8d,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 08}
00adh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00b1h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
00b5h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
00b8h mov rdx,1cfba451c51h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 51 1c 45 ba cf 01 00 00}
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
0101h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 75 03 4f}
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
0158h call 7ff7c63a2a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 10 51 ff}
015dh int 3                                   ; INT3 || CC || encoded[1]{cc}
015eh call 7ff7c63a2a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 10 51 ff}
0163h int 3                                   ; INT3 || CC || encoded[1]{cc}
0164h call 7ff7c63a2b68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 11 51 ff}
0169h int 3                                   ; INT3 || CC || encoded[1]{cc}
016ah call 7ff7c63a2a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 0f 51 ff}
016fh int 3                                   ; INT3 || CC || encoded[1]{cc}
