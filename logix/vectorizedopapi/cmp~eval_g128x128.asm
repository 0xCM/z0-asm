------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(ComparisonKind:byte kind, Vector128<byte> a, Vector128<byte> b)
; cmp~eval__g0o_128x8u_128x8u[321] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 a1 00 00 00 8b c9 48 8d 15 28 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 74 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 24 80 00 00 00 4c 8d 44 24 24 c4 e2 79 78 54 24 24 c5 f9 ef c2 c5 f1 ef ca c5 f1 64 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 20 80 00 00 00 48 8d 4c 24 20 c4 e2 79 78 54 24 20 c5 f9 ef c2 c5 f1 ef ca c5 f9 64 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 21 4b 1b 5f 48 8b f8 40 88 77 08 48 b9 58 77 37 c6 f7 7f 00 00 e8 4b ce 15 5f 48 8b c8 e8 f3 f2 d4 ff 8b f0 48 b9 38 2a 5c c6 f7 7f 00 00 e8 f2 4a 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 db e3 2d 5f 48 8b e8 8b ce e8 41 93 6d ff 4c 8b c0 48 8b cd 48 8b d7 e8 4b 1f 6b ff 48 8b d0 48 8b cb e8 00 be 6c ff 48 8b cb e8 00 97 12 5f cc}
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
0019h ja near ptr 00c0h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a1 00 00 00}
001fh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0021h lea rdx,[rip+128h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 28 01 00 00}
0028h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002bh lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0032h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0035h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vpcmpeqb xmm0,xmm0,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c1}
0045h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0057h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
005ch mov dword ptr [rsp+24h],80h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 80 00 00 00}
0064h lea r8,[rsp+24h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 24}
0069h vpbroadcastb xmm2,byte ptr [rsp+24h]    ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 54 24 24}
0070h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
0074h vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0078h vpcmpgtb xmm0,xmm1,xmm0                 ; VPCMPGTB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 64 /r || encoded[4]{c5 f1 64 c0}
007ch vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0080h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0084h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0085h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0086h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0087h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0088h ret                                     ; RET || C3 || encoded[1]{c3}
0089h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
008eh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0093h mov dword ptr [rsp+20h],80h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 20 80 00 00 00}
009bh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
00a0h vpbroadcastb xmm2,byte ptr [rsp+20h]    ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 54 24 20}
00a7h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
00abh vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
00afh vpcmpgtb xmm0,xmm0,xmm1                 ; VPCMPGTB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 64 /r || encoded[4]{c5 f9 64 c1}
00b3h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
00b7h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bbh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bdh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00beh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bfh ret                                     ; RET || C3 || encoded[1]{c3}
00c0h mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
00cah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 4b 1b 5f}
00cfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d6h mov rcx,7ff7c6377758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 37 c6 f7 7f 00 00}
00e0h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b ce 15 5f}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f2 d4 ff}
00edh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00efh mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
00f9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 4a 1b 5f}
00feh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0101h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0106h mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
0110h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db e3 2d 5f}
0115h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0118h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
011ah call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 93 6d ff}
011fh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0122h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0125h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0128h call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 1f 6b ff}
012dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0130h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0133h call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 be 6c ff}
0138h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 97 12 5f}
0140h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(ComparisonKind:byte kind, Vector128<sbyte> a, Vector128<sbyte> b)
; cmp~eval__g0o_128x8i_128x8i[261] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 69 8b c9 48 8d 15 ec 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 74 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 64 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 64 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 9d 49 1b 5f 48 8b f8 40 88 77 08 48 b9 68 6f 37 c6 f7 7f 00 00 e8 c7 cc 15 5f 48 8b c8 e8 6f f1 d4 ff 8b f0 48 b9 38 2a 5c c6 f7 7f 00 00 e8 6e 49 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 57 e2 2d 5f 48 8b e8 8b ce e8 bd 91 6d ff 4c 8b c0 48 8b cd 48 8b d7 e8 c7 1d 6b ff 48 8b d0 48 8b cb e8 7c bc 6c ff 48 8b cb e8 7c 95 12 5f cc}
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
0019h ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 69}
001bh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001dh lea rdx,[rip+0ech]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ec 00 00 00}
0024h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0027h lea r10,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e2 ff ff ff}
002eh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0031h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0033h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0038h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003dh vpcmpeqb xmm0,xmm0,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c1}
0041h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0045h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0049h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004dh ret                                     ; RET || C3 || encoded[1]{c3}
004eh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0053h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0058h vpcmpgtb xmm0,xmm1,xmm0                 ; VPCMPGTB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 64 /r || encoded[4]{c5 f1 64 c0}
005ch vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0060h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0064h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0065h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0066h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0067h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0068h ret                                     ; RET || C3 || encoded[1]{c3}
0069h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
006eh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0073h vpcmpgtb xmm0,xmm0,xmm1                 ; VPCMPGTB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 64 /r || encoded[4]{c5 f9 64 c1}
0077h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
007fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0080h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
008eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 49 1b 5f}
0093h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0096h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009ah mov rcx,7ff7c6376f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 37 c6 f7 7f 00 00}
00a4h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 cc 15 5f}
00a9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ach call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f f1 d4 ff}
00b1h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b3h mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
00bdh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 49 1b 5f}
00c2h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c5h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00cah mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
00d4h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 e2 2d 5f}
00d9h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00dch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00deh call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 91 6d ff}
00e3h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e6h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00e9h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00ech call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 1d 6b ff}
00f1h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f4h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f7h call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c bc 6c ff}
00fch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00ffh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 95 12 5f}
0104h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(ComparisonKind:byte kind, Vector128<ushort> a, Vector128<ushort> b)
; cmp~eval__g0o_128x16u_128x16u[321] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 a1 00 00 00 8b c9 48 8d 15 28 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 75 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 24 00 80 00 00 4c 8d 44 24 24 c4 e2 79 79 54 24 24 c5 f9 ef c2 c5 f1 ef ca c5 f1 65 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 20 00 80 00 00 48 8d 4c 24 20 c4 e2 79 79 54 24 20 c5 f9 ef c2 c5 f1 ef ca c5 f9 65 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 11 44 1b 5f 48 8b f8 40 88 77 08 48 b9 38 87 37 c6 f7 7f 00 00 e8 3b c7 15 5f 48 8b c8 e8 e3 eb d4 ff 8b f0 48 b9 38 2a 5c c6 f7 7f 00 00 e8 e2 43 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 cb dc 2d 5f 48 8b e8 8b ce e8 31 8c 6d ff 4c 8b c0 48 8b cd 48 8b d7 e8 3b 18 6b ff 48 8b d0 48 8b cb e8 f0 b6 6c ff 48 8b cb e8 f0 8f 12 5f cc}
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
0019h ja near ptr 00c0h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a1 00 00 00}
001fh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0021h lea rdx,[rip+128h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 28 01 00 00}
0028h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002bh lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0032h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0035h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vpcmpeqw xmm0,xmm0,xmm1                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c1}
0045h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0057h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
005ch mov dword ptr [rsp+24h],8000h           ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 00 80 00 00}
0064h lea r8,[rsp+24h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 24}
0069h vpbroadcastw xmm2,word ptr [rsp+24h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 24}
0070h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
0074h vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0078h vpcmpgtw xmm0,xmm1,xmm0                 ; VPCMPGTW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 65 /r || encoded[4]{c5 f1 65 c0}
007ch vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0080h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0084h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0085h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0086h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0087h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0088h ret                                     ; RET || C3 || encoded[1]{c3}
0089h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
008eh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0093h mov dword ptr [rsp+20h],8000h           ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 20 00 80 00 00}
009bh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
00a0h vpbroadcastw xmm2,word ptr [rsp+20h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 20}
00a7h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
00abh vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
00afh vpcmpgtw xmm0,xmm0,xmm1                 ; VPCMPGTW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 65 /r || encoded[4]{c5 f9 65 c1}
00b3h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
00b7h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bbh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bdh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00beh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bfh ret                                     ; RET || C3 || encoded[1]{c3}
00c0h mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
00cah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 44 1b 5f}
00cfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d6h mov rcx,7ff7c6378738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 37 c6 f7 7f 00 00}
00e0h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b c7 15 5f}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 eb d4 ff}
00edh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00efh mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
00f9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 43 1b 5f}
00feh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0101h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0106h mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
0110h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb dc 2d 5f}
0115h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0118h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
011ah call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 8c 6d ff}
011fh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0122h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0125h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0128h call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 18 6b ff}
012dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0130h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0133h call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 b6 6c ff}
0138h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 8f 12 5f}
0140h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<Int16> eval<Int16>(ComparisonKind:byte kind, Vector128<Int16> a, Vector128<Int16> b)
; cmp~eval__g0o_128x16i_128x16i[261] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 69 8b c9 48 8d 15 ec 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 75 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 65 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 65 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 cd 42 1b 5f 48 8b f8 40 88 77 08 48 b9 48 7f 37 c6 f7 7f 00 00 e8 f7 c5 15 5f 48 8b c8 e8 9f ea d4 ff 8b f0 48 b9 38 2a 5c c6 f7 7f 00 00 e8 9e 42 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 87 db 2d 5f 48 8b e8 8b ce e8 ed 8a 6d ff 4c 8b c0 48 8b cd 48 8b d7 e8 f7 16 6b ff 48 8b d0 48 8b cb e8 ac b5 6c ff 48 8b cb e8 ac 8e 12 5f cc}
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
0019h ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 69}
001bh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001dh lea rdx,[rip+0ech]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ec 00 00 00}
0024h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0027h lea r10,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e2 ff ff ff}
002eh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0031h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0033h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0038h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003dh vpcmpeqw xmm0,xmm0,xmm1                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c1}
0041h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0045h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0049h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004dh ret                                     ; RET || C3 || encoded[1]{c3}
004eh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0053h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0058h vpcmpgtw xmm0,xmm1,xmm0                 ; VPCMPGTW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 65 /r || encoded[4]{c5 f1 65 c0}
005ch vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0060h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0064h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0065h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0066h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0067h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0068h ret                                     ; RET || C3 || encoded[1]{c3}
0069h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
006eh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0073h vpcmpgtw xmm0,xmm0,xmm1                 ; VPCMPGTW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 65 /r || encoded[4]{c5 f9 65 c1}
0077h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
007fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0080h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
008eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 42 1b 5f}
0093h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0096h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009ah mov rcx,7ff7c6377f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 37 c6 f7 7f 00 00}
00a4h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 c5 15 5f}
00a9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ach call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f ea d4 ff}
00b1h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b3h mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
00bdh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 42 1b 5f}
00c2h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c5h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00cah mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
00d4h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 db 2d 5f}
00d9h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00dch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00deh call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 8a 6d ff}
00e3h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e6h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00e9h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00ech call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 16 6b ff}
00f1h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f4h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f7h call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac b5 6c ff}
00fch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00ffh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 8e 12 5f}
0104h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(ComparisonKind:byte kind, Vector128<uint> a, Vector128<uint> b)
; cmp~eval__g0o_128x32u_128x32u[321] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 a1 00 00 00 8b c9 48 8d 15 28 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 24 00 00 00 80 4c 8d 44 24 24 c4 e2 79 58 54 24 24 c5 f9 ef c2 c5 f1 ef ca c5 f1 66 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 20 00 00 00 80 48 8d 4c 24 20 c4 e2 79 58 54 24 20 c5 f9 ef c2 c5 f1 ef ca c5 f9 66 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 51 41 1b 5f 48 8b f8 40 88 77 08 48 b9 d8 96 37 c6 f7 7f 00 00 e8 7b c4 15 5f 48 8b c8 e8 23 e9 d4 ff 8b f0 48 b9 38 2a 5c c6 f7 7f 00 00 e8 22 41 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 0b da 2d 5f 48 8b e8 8b ce e8 71 89 6d ff 4c 8b c0 48 8b cd 48 8b d7 e8 7b 15 6b ff 48 8b d0 48 8b cb e8 30 b4 6c ff 48 8b cb e8 30 8d 12 5f cc}
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
0019h ja near ptr 00c0h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a1 00 00 00}
001fh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0021h lea rdx,[rip+128h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 28 01 00 00}
0028h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002bh lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0032h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0035h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vpcmpeqd xmm0,xmm0,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c1}
0045h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0057h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
005ch mov dword ptr [rsp+24h],80000000h       ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 00 00 00 80}
0064h lea r8,[rsp+24h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 24}
0069h vpbroadcastd xmm2,dword ptr [rsp+24h]   ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 24}
0070h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
0074h vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0078h vpcmpgtd xmm0,xmm1,xmm0                 ; VPCMPGTD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 66 /r || encoded[4]{c5 f1 66 c0}
007ch vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0080h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0084h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0085h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0086h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0087h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0088h ret                                     ; RET || C3 || encoded[1]{c3}
0089h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
008eh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0093h mov dword ptr [rsp+20h],80000000h       ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 20 00 00 00 80}
009bh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
00a0h vpbroadcastd xmm2,dword ptr [rsp+20h]   ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 20}
00a7h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
00abh vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
00afh vpcmpgtd xmm0,xmm0,xmm1                 ; VPCMPGTD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 66 /r || encoded[4]{c5 f9 66 c1}
00b3h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
00b7h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00bbh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bdh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00beh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bfh ret                                     ; RET || C3 || encoded[1]{c3}
00c0h mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
00cah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 41 1b 5f}
00cfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d6h mov rcx,7ff7c63796d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 37 c6 f7 7f 00 00}
00e0h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b c4 15 5f}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 e9 d4 ff}
00edh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00efh mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
00f9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 41 1b 5f}
00feh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0101h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0106h mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
0110h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b da 2d 5f}
0115h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0118h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
011ah call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 89 6d ff}
011fh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0122h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0125h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0128h call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 15 6b ff}
012dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0130h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0133h call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 b4 6c ff}
0138h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 8d 12 5f}
0140h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(ComparisonKind:byte kind, Vector128<int> a, Vector128<int> b)
; cmp~eval__g0o_128x32i_128x32i[261] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 69 8b c9 48 8d 15 ec 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 66 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 66 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 0d 40 1b 5f 48 8b f8 40 88 77 08 48 b9 08 8f 37 c6 f7 7f 00 00 e8 37 c3 15 5f 48 8b c8 e8 df e7 d4 ff 8b f0 48 b9 38 2a 5c c6 f7 7f 00 00 e8 de 3f 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 c7 d8 2d 5f 48 8b e8 8b ce e8 2d 88 6d ff 4c 8b c0 48 8b cd 48 8b d7 e8 37 14 6b ff 48 8b d0 48 8b cb e8 ec b2 6c ff 48 8b cb e8 ec 8b 12 5f cc}
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
0019h ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 69}
001bh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001dh lea rdx,[rip+0ech]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ec 00 00 00}
0024h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0027h lea r10,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e2 ff ff ff}
002eh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0031h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0033h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0038h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003dh vpcmpeqd xmm0,xmm0,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c1}
0041h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0045h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0049h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004dh ret                                     ; RET || C3 || encoded[1]{c3}
004eh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0053h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0058h vpcmpgtd xmm0,xmm1,xmm0                 ; VPCMPGTD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 66 /r || encoded[4]{c5 f1 66 c0}
005ch vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0060h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0064h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0065h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0066h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0067h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0068h ret                                     ; RET || C3 || encoded[1]{c3}
0069h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
006eh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0073h vpcmpgtd xmm0,xmm0,xmm1                 ; VPCMPGTD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 66 /r || encoded[4]{c5 f9 66 c1}
0077h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
007fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0080h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
008eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 40 1b 5f}
0093h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0096h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009ah mov rcx,7ff7c6378f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 37 c6 f7 7f 00 00}
00a4h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 c3 15 5f}
00a9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ach call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df e7 d4 ff}
00b1h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b3h mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
00bdh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 3f 1b 5f}
00c2h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c5h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00cah mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
00d4h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 d8 2d 5f}
00d9h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00dch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00deh call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 88 6d ff}
00e3h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e6h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00e9h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00ech call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 14 6b ff}
00f1h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f4h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f7h call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec b2 6c ff}
00fch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00ffh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 8b 12 5f}
0104h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(ComparisonKind:byte kind, Vector128<ulong> a, Vector128<ulong> b)
; cmp~eval__g0o_128x64u_128x64u[86] = {57 56 55 53 48 83 ec 38 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 f1 00 00 00 8b c9 48 8d 15 78 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c4 e2 79 29 c1 c5 f9 11 00 c5 f8 77 48 83 c4 38 5b 5d 5e 5f c3}
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
0019h ja near ptr 0110h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 f1 00 00 00}
001fh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0021h lea rdx,[rip+178h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 78 01 00 00}
0028h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002bh lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0032h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0035h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vpcmpeqq xmm0,xmm0,xmm1                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 79 29 c1}
0046h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> eval<long>(ComparisonKind:byte kind, Vector128<long> a, Vector128<long> b)
; cmp~eval__g0o_128x64i_128x64i[331] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ab 00 00 00 8b c9 48 8d 15 30 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c4 e2 79 29 c1 c5 f9 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c4 e3 7d 46 c8 03 c4 e2 75 37 c0 c4 e3 7d 19 c0 00 c5 f9 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 ec 57 d2 c4 e3 6d 38 c0 00 c5 ec 57 d2 c4 e3 6d 38 c9 00 c4 e2 7d 37 c1 c4 e3 7d 19 c0 00 c5 f9 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 a7 38 1b 5f 48 8b f8 40 88 77 08 48 b9 a8 9e 37 c6 f7 7f 00 00 e8 d1 bb 15 5f 48 8b c8 e8 79 e0 d4 ff 8b f0 48 b9 38 2a 5c c6 f7 7f 00 00 e8 78 38 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 61 d1 2d 5f 48 8b e8 8b ce e8 c7 80 6d ff 4c 8b c0 48 8b cd 48 8b d7 e8 d1 0c 6b ff 48 8b d0 48 8b cb e8 86 ab 6c ff 48 8b cb e8 86 84 12 5f cc}
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
0019h ja near ptr 00cah                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ab 00 00 00}
001fh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0021h lea rdx,[rip+130h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 30 01 00 00}
0028h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002bh lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0032h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0035h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vpcmpeqq xmm0,xmm0,xmm1                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 79 29 c1}
0046h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
0056h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
005bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0060h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0064h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
006ah vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0070h vperm2i128 ymm1,ymm0,ymm0,3             ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 7d 46 c8 03}
0076h vpcmpgtq ymm0,ymm1,ymm0                 ; VPCMPGTQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 37 /r || encoded[5]{c4 e2 75 37 c0}
007bh vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
0081h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0085h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0088h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
008ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
008eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0090h ret                                     ; RET || C3 || encoded[1]{c3}
0091h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0096h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
009bh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
009fh vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
00a5h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
00a9h vinserti128 ymm1,ymm2,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c9 00}
00afh vpcmpgtq ymm0,ymm0,ymm1                 ; VPCMPGTQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 37 /r || encoded[5]{c4 e2 7d 37 c1}
00b4h vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
00bah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
00beh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c1h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00c5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c6h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c9h ret                                     ; RET || C3 || encoded[1]{c3}
00cah mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
00d4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 38 1b 5f}
00d9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00dch mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00e0h mov rcx,7ff7c6379ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 37 c6 f7 7f 00 00}
00eah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 bb 15 5f}
00efh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f2h call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 e0 d4 ff}
00f7h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00f9h mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
0103h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 38 1b 5f}
0108h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
010bh mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
0110h mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
011ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 d1 2d 5f}
011fh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0122h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0124h call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 80 6d ff}
0129h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
012ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
012fh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0132h call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 0c 6b ff}
0137h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
013ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
013dh call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 ab 6c ff}
0142h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0145h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 84 12 5f}
014ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> eval<float>(ComparisonKind:byte kind, Vector128<float> a, Vector128<float> b)
; cmp~eval__g0o_128x32f_128x32f[343] = {57 56 55 53 48 83 ec 68 c5 f8 77 48 8b f1 8b fa 40 0f b6 c7 ff c8 83 f8 03 0f 87 b7 00 00 00 8b c0 48 8d 0d 40 01 00 00 8b 0c 81 48 8d 15 de ff ff ff 48 03 ca ff e1 c4 c1 79 10 00 c4 c1 79 10 09 c5 f8 c2 c1 00 c5 f9 11 06 48 8b c6 48 83 c4 68 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 50 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 28 f6 ff ff c5 f9 28 44 24 50 c5 f9 11 06 48 8b c6 48 83 c4 68 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 40 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 18 f6 ff ff c5 f9 28 44 24 40 c5 f9 11 06 48 8b c6 48 83 c4 68 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 8b 29 1b 5f 48 8b f0 40 88 7e 08 48 b9 58 af 37 c6 f7 7f 00 00 e8 b5 ac 15 5f 48 8b c8 e8 5d d1 d4 ff 8b f8 48 b9 38 2a 5c c6 f7 7f 00 00 e8 5c 29 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 45 c2 2d 5f 48 8b e8 8b cf e8 ab 71 6d ff 4c 8b c0 48 8b cd 48 8b d6 e8 b5 fd 6a ff 48 8b d0 48 8b cb e8 6a 9c 6c ff 48 8b cb e8 6a 75 12 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0010h movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
0014h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0016h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0019h ja near ptr 00d6h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b7 00 00 00}
001fh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0021h lea rcx,[rip+140h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 40 01 00 00}
0028h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
002bh lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
0032h add rcx,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 ca}
0035h jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vcmpeqps xmm0,xmm0,xmm1                 ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[5]{c5 f8 c2 c1 00}
0046h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
0056h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
005bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0060h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
0065h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
006bh vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
0071h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
0076h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
007bh call 7ff7c6cf38e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 f6 ff ff}
0080h vmovapd xmm0,[rsp+50h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 50}
0086h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
008ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
008dh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0091h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0092h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0093h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0094h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0095h ret                                     ; RET || C3 || encoded[1]{c3}
0096h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
009bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00a0h lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
00a5h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
00abh vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
00b1h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
00b6h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
00bbh call 7ff7c6cf3918h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 f6 ff ff}
00c0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00c6h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
00cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00cdh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00d2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00d3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d5h ret                                     ; RET || C3 || encoded[1]{c3}
00d6h mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
00e0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 29 1b 5f}
00e5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e8h mov [rsi+8],dil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 7e 08}
00ech mov rcx,7ff7c637af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 37 c6 f7 7f 00 00}
00f6h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 ac 15 5f}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d d1 d4 ff}
0103h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0105h mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
010fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 29 1b 5f}
0114h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0117h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
011ch mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
0126h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 c2 2d 5f}
012bh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
012eh mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0130h call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 71 6d ff}
0135h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0138h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
013bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
013eh call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 fd 6a ff}
0143h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0146h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0149h call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 9c 6c ff}
014eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0151h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 75 12 5f}
0156h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> eval<double>(ComparisonKind:byte kind, Vector128<double> a, Vector128<double> b)
; cmp~eval__g0o_128x64f_128x64f[343] = {57 56 55 53 48 83 ec 68 c5 f8 77 48 8b f1 8b fa 40 0f b6 c7 ff c8 83 f8 03 0f 87 b7 00 00 00 8b c0 48 8d 0d 40 01 00 00 8b 0c 81 48 8d 15 de ff ff ff 48 03 ca ff e1 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 c2 c1 00 c5 f9 11 06 48 8b c6 48 83 c4 68 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 50 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 90 fb ff ff c5 f9 28 44 24 50 c5 f9 11 06 48 8b c6 48 83 c4 68 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 40 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 80 fb ff ff c5 f9 28 44 24 40 c5 f9 11 06 48 8b c6 48 83 c4 68 5b 5d 5e 5f c3 48 b9 28 57 99 c6 f7 7f 00 00 e8 bb 22 1b 5f 48 8b f0 40 88 7e 08 48 b9 38 b8 37 c6 f7 7f 00 00 e8 e5 a5 15 5f 48 8b c8 e8 8d ca d4 ff 8b f8 48 b9 38 2a 5c c6 f7 7f 00 00 e8 8c 22 1b 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5f c6 f7 7f 00 00 e8 75 bb 2d 5f 48 8b e8 8b cf e8 db 6a 6d ff 4c 8b c0 48 8b cd 48 8b d6 e8 e5 f6 6a ff 48 8b d0 48 8b cb e8 9a 95 6c ff 48 8b cb e8 9a 6e 12 5f cc}
; Capture completion code = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0010h movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
0014h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0016h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0019h ja near ptr 00d6h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b7 00 00 00}
001fh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0021h lea rcx,[rip+140h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 40 01 00 00}
0028h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
002bh lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
0032h add rcx,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 ca}
0035h jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0037h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ch vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0041h vcmpeqpd xmm0,xmm0,xmm1                 ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[5]{c5 f9 c2 c1 00}
0046h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
004ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004dh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
0056h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
005bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0060h lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
0065h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
006bh vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
0071h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
0076h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
007bh call 7ff7c6cf4520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 fb ff ff}
0080h vmovapd xmm0,[rsp+50h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 50}
0086h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
008ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
008dh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0091h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0092h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0093h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0094h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0095h ret                                     ; RET || C3 || encoded[1]{c3}
0096h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
009bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00a0h lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
00a5h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
00abh vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
00b1h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
00b6h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
00bbh call 7ff7c6cf4550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 fb ff ff}
00c0h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00c6h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
00cah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00cdh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
00d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00d2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00d3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d5h ret                                     ; RET || C3 || encoded[1]{c3}
00d6h mov rcx,7ff7c6995728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 57 99 c6 f7 7f 00 00}
00e0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 22 1b 5f}
00e5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e8h mov [rsi+8],dil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 7e 08}
00ech mov rcx,7ff7c637b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 37 c6 f7 7f 00 00}
00f6h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 a5 15 5f}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c6a414a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d ca d4 ff}
0103h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0105h mov rcx,7ff7c65c2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5c c6 f7 7f 00 00}
010fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 22 1b 5f}
0114h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0117h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
011ch mov rdx,7ff7c65faa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5f c6 f7 7f 00 00}
0126h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 bb 2d 5f}
012bh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
012eh mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0130h call 7ff7c63cb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 6a 6d ff}
0135h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0138h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
013bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
013eh call 7ff7c63a4138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 f6 6a ff}
0143h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0146h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0149h call 7ff7c63bdff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 95 6c ff}
014eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0151h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 6e 12 5f}
0156h int 3                                   ; INT3 || CC || encoded[1]{cc}
