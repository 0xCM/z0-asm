; Span<Char> bitchars<sbyte>(Span<sbyte> src, int maxlen)
; bitchars__g8i_32iChar[7ff7c6e7cbc0h, 7ff7c6e7cd01h][321] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 03 48 63 d2 48 b9 60 e0 4d c6 f7 7f 00 00 e8 d5 a1 02 5f 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e 85 00 00 00 48 b9 60 e0 4d c6 f7 7f 00 00 ba 08 00 00 00 e8 ae a1 02 5f 4d 63 c5 4e 0f be 04 07 48 8d 48 10 4d 0f be c0 45 0f b6 c0 41 c1 e0 04 4d 63 c0 48 ba ad 24 dc ed c8 01 00 00 4c 03 c2 c4 c1 7a 6f 00 c5 fa 7f 01 48 83 c0 10 41 b8 08 00 00 00 48 8b d0 41 8b cd c1 e1 03 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 b9 c2 04 4f 41 ff c5 44 3b eb 0f 8c 7b ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 4a 5d 51 ff cc e8 4c 5d 51 ff cc e8 6e 5e 51 ff cc e8 38 5d 51 ff cc}
; Capture completion code, INTRx2
; 2020-01-24 01:44:33:960
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
003ch mov rcx,7ff7c64de060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e0 4d c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 a1 02 5f}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 00e3h                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e 85 00 00 00}
005eh mov rcx,7ff7c64de060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e0 4d c6 f7 7f 00 00}
0068h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae a1 02 5f}
0072h movsxd r8,r13d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c5}
0075h movsx r8,byte ptr [rdi+r8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 04 07}
007ah lea rcx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 48 10}
007eh movsx r8,r8b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c0}
0082h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0086h shl r8d,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 04}
008ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
008dh mov rdx,1c8eddc24adh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ad 24 dc ed c8 01 00 00}
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
00d2h call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 c2 04 4f}
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
0129h call 7ff7c6392a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 5d 51 ff}
012eh int 3                                   ; INT3 || CC || encoded[1]{cc}
012fh call 7ff7c6392a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 5d 51 ff}
0134h int 3                                   ; INT3 || CC || encoded[1]{cc}
0135h call 7ff7c6392b68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 5e 51 ff}
013ah int 3                                   ; INT3 || CC || encoded[1]{cc}
013bh call 7ff7c6392a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 5d 51 ff}
0140h int 3                                   ; INT3 || CC || encoded[1]{cc}
