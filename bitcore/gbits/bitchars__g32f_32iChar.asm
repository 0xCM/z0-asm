; Span<Char> bitchars<float>(Span<float> src, int maxlen)
; bitchars__g32f_32iChar[7ff7c6e7d6b0h, 7ff7c6e7d81ch][364] = {41 57 41 56 41 55 41 54 57 56 55 53 48 83 ec 28 c5 f8 77 4c 89 84 24 80 00 00 00 48 8b f1 48 8b 3a 8b 5a 08 48 8d 94 24 80 00 00 00 40 0f b6 2a 44 8b 72 04 8b d3 c1 e2 05 48 63 d2 48 b9 60 e0 4d c6 f7 7f 00 00 e8 e5 96 02 5f 4c 8d 78 10 44 8b 60 08 45 33 ed 85 db 0f 8e b0 00 00 00 48 b9 60 e0 4d c6 f7 7f 00 00 ba 20 00 00 00 e8 be 96 02 5f 49 63 cd c5 fa 10 04 8f 4c 8d 40 10 c5 fa 11 44 24 24 8b 54 24 24 45 33 c9 41 8b c9 c1 e1 03 44 8b d2 41 d3 ea 41 0f b6 ca c1 e1 04 48 63 c9 49 ba ad 24 dc ed c8 01 00 00 49 03 ca 45 8b d1 41 c1 e2 03 4d 63 d2 4f 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c0 10 41 b8 20 00 00 00 48 8b d0 41 8b cd c1 e1 05 41 3b cc 77 6e 41 8b c4 2b c1 48 63 c9 49 8d 0c 4f 44 3b c0 77 63 4d 63 c0 49 d1 e0 e8 9e b7 04 4f 41 ff c5 44 3b eb 0f 8c 50 ff ff ff 40 84 ed 74 11 45 3b e6 0f 9d c0 0f b6 c0 40 0f b6 d5 85 c2 75 02 eb 13 40 84 ed 74 35 41 8b c6 41 8b d4 48 3b c2 77 30 45 8b e6 4c 89 3e 44 89 66 08 48 8b c6 48 83 c4 28 5b 5d 5e 5f 41 5c 41 5d 41 5e 41 5f c3 e8 2f 52 51 ff cc e8 31 52 51 ff cc e8 53 53 51 ff cc e8 1d 52 51 ff cc}
; Capture completion code, INTRx2
; 2020-01-24 01:44:33:986
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
003ch mov rcx,7ff7c64de060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e0 4d c6 f7 7f 00 00}
0046h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 96 02 5f}
004bh lea r15,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 78 10}
004fh mov r12d,[rax+8]                        ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 60 08}
0053h xor r13d,r13d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 ed}
0056h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0058h jle near ptr 010eh                      ; JLE rel32 || 0F 8E cd || encoded[6]{0f 8e b0 00 00 00}
005eh mov rcx,7ff7c64de060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e0 4d c6 f7 7f 00 00}
0068h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
006dh call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 96 02 5f}
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
00a1h mov r10,1c8eddc24adh                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba ad 24 dc ed c8 01 00 00}
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
00fdh call 7ff815ec8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e b7 04 4f}
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
0154h call 7ff7c6392a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 52 51 ff}
0159h int 3                                   ; INT3 || CC || encoded[1]{cc}
015ah call 7ff7c6392a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 52 51 ff}
015fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0160h call 7ff7c6392b68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 53 51 ff}
0165h int 3                                   ; INT3 || CC || encoded[1]{cc}
0166h call 7ff7c6392a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 52 51 ff}
016bh int 3                                   ; INT3 || CC || encoded[1]{cc}
