------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> eval<byte>(ComparisonKind:byte kind, Vector256<byte> a, Vector256<byte> b)
; cmp~eval__g0o_256x8u_256x8u[330] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 aa 00 00 00 8b c9 48 8d 15 30 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 74 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 24 80 00 00 00 4c 8d 44 24 24 c4 e2 7d 78 54 24 24 c5 fd ef c2 c5 f5 ef ca c5 f5 64 c0 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 20 80 00 00 00 48 8d 4c 24 20 c4 e2 7d 78 54 24 20 c5 fd ef c2 c5 f5 ef ca c5 fd 64 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 28 21 1b 5f 48 8b f8 40 88 77 08 48 b9 58 77 37 c6 f7 7f 00 00 e8 52 a4 15 5f 48 8b c8 e8 fa c8 d4 ff 8b f0 48 b9 38 2a 5c c6 f7 7f 00 00 e8 f9 20 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 e2 b9 2d 5f 48 8b e8 8b ce e8 48 69 6d ff 4c 8b c0 48 8b cd 48 8b d7 e8 52 f5 6a ff 48 8b d0 48 8b cb e8 07 94 6c ff 48 8b cb e8 07 6d 12 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0014h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0016h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0019h ja near ptr 00c9h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 aa 00 00 00}
001fh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0021h lea rdx,[rip+130h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 30 01 00 00}
0028h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002bh lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0032h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0035h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0037h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003ch vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0041h vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0045h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0049h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
0055h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
005fh mov dword ptr [rsp+24h],80h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 80 00 00 00}
0067h lea r8,[rsp+24h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 24}
006ch vpbroadcastb ymm2,byte ptr [rsp+24h]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 54 24 24}
0073h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0077h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
007bh vpcmpgtb ymm0,ymm1,ymm0                 ; VPCMPGTB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 64 /r || encoded[4]{c5 f5 64 c0}
007fh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0083h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0086h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
008ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
008ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008eh ret                                     ; RET || C3 || encoded[1]{c3}
008fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0094h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0099h mov dword ptr [rsp+20h],80h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 20 80 00 00 00}
00a1h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
00a6h vpbroadcastb ymm2,byte ptr [rsp+20h]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 54 24 20}
00adh vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
00b1h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
00b5h vpcmpgtb ymm0,ymm0,ymm1                 ; VPCMPGTB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 64 /r || encoded[4]{c5 fd 64 c1}
00b9h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
00bdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c0h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00c4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c8h ret                                     ; RET || C3 || encoded[1]{c3}
00c9h mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
00d3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 21 1b 5f}
00d8h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00dbh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00dfh mov rcx,7ff7c6377758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 37 c6 f7 7f 00 00}
00e9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 a4 15 5f}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa c8 d4 ff}
00f6h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00f8h mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
0102h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 20 1b 5f}
0107h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
010ah mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
010fh mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
0119h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b9 2d 5f}
011eh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0121h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0123h call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 69 6d ff}
0128h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
012bh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
012eh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0131h call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 f5 6a ff}
0136h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0139h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013ch call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 94 6c ff}
0141h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0144h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 6d 12 5f}
0149h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> eval<sbyte>(ComparisonKind:byte kind, Vector256<sbyte> a, Vector256<sbyte> b)
; cmp~eval__g0o_256x8i_256x8i[270] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 72 8b c9 48 8d 15 f4 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 74 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 64 c0 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 64 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 d4 1f 1b 5f 48 8b f8 40 88 77 08 48 b9 68 6f 37 c6 f7 7f 00 00 e8 fe a2 15 5f 48 8b c8 e8 a6 c7 d4 ff 8b f0 48 b9 38 2a 5c c6 f7 7f 00 00 e8 a5 1f 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 8e b8 2d 5f 48 8b e8 8b ce e8 f4 67 6d ff 4c 8b c0 48 8b cd 48 8b d7 e8 fe f3 6a ff 48 8b d0 48 8b cb e8 b3 92 6c ff 48 8b cb e8 b3 6b 12 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0014h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0016h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0019h ja short 008dh                          ; JA rel8 || 77 cb || encoded[2]{77 72}
001bh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001dh lea rdx,[rip+0f4h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 f4 00 00 00}
0024h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0027h lea r10,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e2 ff ff ff}
002eh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0031h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0033h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0038h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
003dh vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0041h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0045h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0048h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
0051h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0056h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
005bh vpcmpgtb ymm0,ymm1,ymm0                 ; VPCMPGTB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 64 /r || encoded[4]{c5 f5 64 c0}
005fh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0063h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0066h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006eh ret                                     ; RET || C3 || encoded[1]{c3}
006fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0074h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0079h vpcmpgtb ymm0,ymm0,ymm1                 ; VPCMPGTB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 64 /r || encoded[4]{c5 fd 64 c1}
007dh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0081h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0084h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
008dh mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
0097h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 1f 1b 5f}
009ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009fh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a3h mov rcx,7ff7c6376f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 37 c6 f7 7f 00 00}
00adh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe a2 15 5f}
00b2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b5h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 c7 d4 ff}
00bah mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00bch mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
00c6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 1f 1b 5f}
00cbh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00ceh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00d3h mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
00ddh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e b8 2d 5f}
00e2h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00e5h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00e7h call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 67 6d ff}
00ech mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00efh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00f2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f5h call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe f3 6a ff}
00fah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00fdh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0100h call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 92 6c ff}
0105h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0108h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 6b 12 5f}
010dh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> eval<ushort>(ComparisonKind:byte kind, Vector256<ushort> a, Vector256<ushort> b)
; cmp~eval__g0o_256x16u_256x16u[330] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 aa 00 00 00 8b c9 48 8d 15 30 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 75 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 24 00 80 00 00 4c 8d 44 24 24 c4 e2 7d 79 54 24 24 c5 fd ef c2 c5 f5 ef ca c5 f5 65 c0 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 20 00 80 00 00 48 8d 4c 24 20 c4 e2 7d 79 54 24 20 c5 fd ef c2 c5 f5 ef ca c5 fd 65 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 48 1a 1b 5f 48 8b f8 40 88 77 08 48 b9 38 87 37 c6 f7 7f 00 00 e8 72 9d 15 5f 48 8b c8 e8 1a c2 d4 ff 8b f0 48 b9 38 2a 5c c6 f7 7f 00 00 e8 19 1a 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 02 b3 2d 5f 48 8b e8 8b ce e8 68 62 6d ff 4c 8b c0 48 8b cd 48 8b d7 e8 72 ee 6a ff 48 8b d0 48 8b cb e8 27 8d 6c ff 48 8b cb e8 27 66 12 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0014h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0016h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0019h ja near ptr 00c9h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 aa 00 00 00}
001fh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0021h lea rdx,[rip+130h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 30 01 00 00}
0028h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002bh lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0032h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0035h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0037h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003ch vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0041h vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0045h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0049h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
0055h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
005fh mov dword ptr [rsp+24h],8000h           ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 00 80 00 00}
0067h lea r8,[rsp+24h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 24}
006ch vpbroadcastw ymm2,word ptr [rsp+24h]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 24}
0073h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0077h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
007bh vpcmpgtw ymm0,ymm1,ymm0                 ; VPCMPGTW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 65 /r || encoded[4]{c5 f5 65 c0}
007fh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0083h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0086h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
008ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
008ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008eh ret                                     ; RET || C3 || encoded[1]{c3}
008fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0094h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0099h mov dword ptr [rsp+20h],8000h           ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 20 00 80 00 00}
00a1h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
00a6h vpbroadcastw ymm2,word ptr [rsp+20h]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 20}
00adh vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
00b1h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
00b5h vpcmpgtw ymm0,ymm0,ymm1                 ; VPCMPGTW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 65 /r || encoded[4]{c5 fd 65 c1}
00b9h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
00bdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c0h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00c4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c8h ret                                     ; RET || C3 || encoded[1]{c3}
00c9h mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
00d3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 1a 1b 5f}
00d8h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00dbh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00dfh mov rcx,7ff7c6378738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 37 c6 f7 7f 00 00}
00e9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 9d 15 5f}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a c2 d4 ff}
00f6h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00f8h mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
0102h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 1a 1b 5f}
0107h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
010ah mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
010fh mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
0119h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 b3 2d 5f}
011eh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0121h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0123h call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 62 6d ff}
0128h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
012bh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
012eh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0131h call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 ee 6a ff}
0136h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0139h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013ch call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 8d 6c ff}
0141h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0144h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 66 12 5f}
0149h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<Int16> eval<Int16>(ComparisonKind:byte kind, Vector256<Int16> a, Vector256<Int16> b)
; cmp~eval__g0o_256x16i_256x16i[270] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 72 8b c9 48 8d 15 f4 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 75 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 65 c0 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 65 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 f4 18 1b 5f 48 8b f8 40 88 77 08 48 b9 48 7f 37 c6 f7 7f 00 00 e8 1e 9c 15 5f 48 8b c8 e8 c6 c0 d4 ff 8b f0 48 b9 38 2a 5c c6 f7 7f 00 00 e8 c5 18 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 ae b1 2d 5f 48 8b e8 8b ce e8 14 61 6d ff 4c 8b c0 48 8b cd 48 8b d7 e8 1e ed 6a ff 48 8b d0 48 8b cb e8 d3 8b 6c ff 48 8b cb e8 d3 64 12 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0014h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0016h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0019h ja short 008dh                          ; JA rel8 || 77 cb || encoded[2]{77 72}
001bh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001dh lea rdx,[rip+0f4h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 f4 00 00 00}
0024h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0027h lea r10,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e2 ff ff ff}
002eh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0031h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0033h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0038h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
003dh vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0041h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0045h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0048h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
0051h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0056h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
005bh vpcmpgtw ymm0,ymm1,ymm0                 ; VPCMPGTW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 65 /r || encoded[4]{c5 f5 65 c0}
005fh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0063h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0066h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006eh ret                                     ; RET || C3 || encoded[1]{c3}
006fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0074h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0079h vpcmpgtw ymm0,ymm0,ymm1                 ; VPCMPGTW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 65 /r || encoded[4]{c5 fd 65 c1}
007dh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0081h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0084h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
008dh mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
0097h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 18 1b 5f}
009ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009fh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a3h mov rcx,7ff7c6377f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 37 c6 f7 7f 00 00}
00adh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 9c 15 5f}
00b2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b5h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 c0 d4 ff}
00bah mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00bch mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
00c6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 18 1b 5f}
00cbh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00ceh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00d3h mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
00ddh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae b1 2d 5f}
00e2h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00e5h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00e7h call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 61 6d ff}
00ech mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00efh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00f2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f5h call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e ed 6a ff}
00fah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00fdh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0100h call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 8b 6c ff}
0105h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0108h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 64 12 5f}
010dh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> eval<uint>(ComparisonKind:byte kind, Vector256<uint> a, Vector256<uint> b)
; cmp~eval__g0o_256x32u_256x32u[330] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 aa 00 00 00 8b c9 48 8d 15 30 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 76 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 24 00 00 00 80 4c 8d 44 24 24 c4 e2 7d 58 54 24 24 c5 fd ef c2 c5 f5 ef ca c5 f5 66 c0 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 20 00 00 00 80 48 8d 4c 24 20 c4 e2 7d 58 54 24 20 c5 fd ef c2 c5 f5 ef ca c5 fd 66 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 68 17 1b 5f 48 8b f8 40 88 77 08 48 b9 d8 96 37 c6 f7 7f 00 00 e8 92 9a 15 5f 48 8b c8 e8 3a bf d4 ff 8b f0 48 b9 38 2a 5c c6 f7 7f 00 00 e8 39 17 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 22 b0 2d 5f 48 8b e8 8b ce e8 88 5f 6d ff 4c 8b c0 48 8b cd 48 8b d7 e8 92 eb 6a ff 48 8b d0 48 8b cb e8 47 8a 6c ff 48 8b cb e8 47 63 12 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0014h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0016h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0019h ja near ptr 00c9h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 aa 00 00 00}
001fh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0021h lea rdx,[rip+130h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 30 01 00 00}
0028h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002bh lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0032h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0035h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0037h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003ch vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0041h vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0045h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0049h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
0055h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
005fh mov dword ptr [rsp+24h],80000000h       ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 00 00 00 80}
0067h lea r8,[rsp+24h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 24}
006ch vpbroadcastd ymm2,dword ptr [rsp+24h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 24}
0073h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0077h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
007bh vpcmpgtd ymm0,ymm1,ymm0                 ; VPCMPGTD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 66 /r || encoded[4]{c5 f5 66 c0}
007fh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0083h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0086h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
008ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
008ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008eh ret                                     ; RET || C3 || encoded[1]{c3}
008fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0094h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0099h mov dword ptr [rsp+20h],80000000h       ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 20 00 00 00 80}
00a1h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
00a6h vpbroadcastd ymm2,dword ptr [rsp+20h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 20}
00adh vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
00b1h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
00b5h vpcmpgtd ymm0,ymm0,ymm1                 ; VPCMPGTD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 66 /r || encoded[4]{c5 fd 66 c1}
00b9h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
00bdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c0h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00c4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c5h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c8h ret                                     ; RET || C3 || encoded[1]{c3}
00c9h mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
00d3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 17 1b 5f}
00d8h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00dbh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00dfh mov rcx,7ff7c63796d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 37 c6 f7 7f 00 00}
00e9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 9a 15 5f}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a bf d4 ff}
00f6h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00f8h mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
0102h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 17 1b 5f}
0107h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
010ah mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
010fh mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
0119h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 b0 2d 5f}
011eh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0121h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0123h call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 5f 6d ff}
0128h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
012bh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
012eh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0131h call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 eb 6a ff}
0136h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0139h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013ch call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 8a 6c ff}
0141h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0144h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 63 12 5f}
0149h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> eval<int>(ComparisonKind:byte kind, Vector256<int> a, Vector256<int> b)
; cmp~eval__g0o_256x32i_256x32i[270] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 72 8b c9 48 8d 15 f4 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 76 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 66 c0 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 66 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 14 16 1b 5f 48 8b f8 40 88 77 08 48 b9 08 8f 37 c6 f7 7f 00 00 e8 3e 99 15 5f 48 8b c8 e8 e6 bd d4 ff 8b f0 48 b9 38 2a 5c c6 f7 7f 00 00 e8 e5 15 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 ce ae 2d 5f 48 8b e8 8b ce e8 34 5e 6d ff 4c 8b c0 48 8b cd 48 8b d7 e8 3e ea 6a ff 48 8b d0 48 8b cb e8 f3 88 6c ff 48 8b cb e8 f3 61 12 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0014h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0016h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0019h ja short 008dh                          ; JA rel8 || 77 cb || encoded[2]{77 72}
001bh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001dh lea rdx,[rip+0f4h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 f4 00 00 00}
0024h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0027h lea r10,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e2 ff ff ff}
002eh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0031h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0033h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0038h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
003dh vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0041h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0045h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0048h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
0051h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0056h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
005bh vpcmpgtd ymm0,ymm1,ymm0                 ; VPCMPGTD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 66 /r || encoded[4]{c5 f5 66 c0}
005fh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0063h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0066h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006eh ret                                     ; RET || C3 || encoded[1]{c3}
006fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0074h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0079h vpcmpgtd ymm0,ymm0,ymm1                 ; VPCMPGTD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 66 /r || encoded[4]{c5 fd 66 c1}
007dh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0081h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0084h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
008ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
008dh mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
0097h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 16 1b 5f}
009ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009fh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a3h mov rcx,7ff7c6378f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 37 c6 f7 7f 00 00}
00adh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 99 15 5f}
00b2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b5h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 bd d4 ff}
00bah mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00bch mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
00c6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 15 1b 5f}
00cbh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00ceh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00d3h mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
00ddh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce ae 2d 5f}
00e2h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00e5h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00e7h call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 5e 6d ff}
00ech mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00efh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00f2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f5h call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e ea 6a ff}
00fah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00fdh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0100h call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 88 6c ff}
0105h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0108h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 61 12 5f}
010dh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> eval<ulong>(ComparisonKind:byte kind, Vector256<ulong> a, Vector256<ulong> b)
; cmp~eval__g0o_256x64u_256x64u[86] = {57 56 55 53 48 83 ec 38 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 bb 00 00 00 8b c9 48 8d 15 40 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 7d 29 c1 c5 fd 11 00 c5 f8 77 48 83 c4 38 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0014h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0016h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0019h ja near ptr 00dah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bb 00 00 00}
001fh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0021h lea rdx,[rip+140h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 40 01 00 00}
0028h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002bh lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0032h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0035h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0037h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003ch vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0041h vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0046h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> eval<long>(ComparisonKind:byte kind, Vector256<long> a, Vector256<long> b)
; cmp~eval__g0o_256x64i_256x64i[273] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 75 8b c9 48 8d 15 f4 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 7d 29 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 75 37 c0 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 7d 37 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 21 0f 1b 5f 48 8b f8 40 88 77 08 48 b9 a8 9e 37 c6 f7 7f 00 00 e8 4b 92 15 5f 48 8b c8 e8 f3 b6 d4 ff 8b f0 48 b9 38 2a 5c c6 f7 7f 00 00 e8 f2 0e 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 db a7 2d 5f 48 8b e8 8b ce e8 41 57 6d ff 4c 8b c0 48 8b cd 48 8b d7 e8 4b e3 6a ff 48 8b d0 48 8b cb e8 00 82 6c ff 48 8b cb e8 00 5b 12 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000eh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0010h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0014h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0016h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0019h ja short 0090h                          ; JA rel8 || 77 cb || encoded[2]{77 75}
001bh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001dh lea rdx,[rip+0f4h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 f4 00 00 00}
0024h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0027h lea r10,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e2 ff ff ff}
002eh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0031h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0033h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0038h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
003dh vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0042h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0046h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0057h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
005ch vpcmpgtq ymm0,ymm1,ymm0                 ; VPCMPGTQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 37 /r || encoded[5]{c4 e2 75 37 c0}
0061h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0065h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0068h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
0071h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0076h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007bh vpcmpgtq ymm0,ymm0,ymm1                 ; VPCMPGTQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 37 /r || encoded[5]{c4 e2 7d 37 c1}
0080h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0084h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0087h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
008bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
008dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008fh ret                                     ; RET || C3 || encoded[1]{c3}
0090h mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
009ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 0f 1b 5f}
009fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a6h mov rcx,7ff7c6379ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 37 c6 f7 7f 00 00}
00b0h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 92 15 5f}
00b5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b8h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 b6 d4 ff}
00bdh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00bfh mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
00c9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 0e 1b 5f}
00ceh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d1h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00d6h mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
00e0h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db a7 2d 5f}
00e5h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00e8h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00eah call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 57 6d ff}
00efh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00f5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f8h call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b e3 6a ff}
00fdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0100h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0103h call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 82 6c ff}
0108h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
010bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 5b 12 5f}
0110h int 3                                   ; INT3 || CC || encoded[1]{cc}
