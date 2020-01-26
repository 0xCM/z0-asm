------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> eval<byte>(UnaryBitLogicKind:byte kind, Vector256<byte> a)
; ubl~eval__g0o_256x8u[280] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 7a 00 00 00 8b c9 48 8d 15 02 01 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 74 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d8 c5 96 c6 f7 7f 00 00 e8 ba 58 1a 5f 48 8b f8 40 88 77 08 48 b9 58 77 36 c6 f7 7f 00 00 e8 e4 db 14 5f 48 8b c8 e8 3c 00 d5 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 8b 58 1a 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 74 f1 2c 5f 48 8b e8 8b ce e8 da a0 6b ff 4c 8b c0 48 8b cd 48 8b d7 e8 e4 2c 69 ff 48 8b d0 48 8b cb e8 99 cb 6a ff 48 8b cb e8 99 a4 11 5f cc}
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
0014h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0017h ja near ptr 0097h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 7a 00 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rdx,[rip+102h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 02 01 00 00}
0026h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0029h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
0030h add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0033h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0035h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003ah vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
003eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0042h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0046h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0057h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
005bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0062h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0063h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0064h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0065h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
0067h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
006bh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
006fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0072h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
007bh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007fh vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0083h vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0087h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
008bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0092h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0093h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h ret                                     ; RET || C3 || encoded[1]{c3}
0097h mov rcx,7ff7c696c5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c5 96 c6 f7 7f 00 00}
00a1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 58 1a 5f}
00a6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a9h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00adh mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
00b7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 db 14 5f}
00bch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bfh call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 00 d5 ff}
00c4h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00c6h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
00d0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 58 1a 5f}
00d5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d8h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00ddh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00e7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 f1 2c 5f}
00ech mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00efh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00f1h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da a0 6b ff}
00f6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00fch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00ffh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 2c 69 ff}
0104h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0107h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
010ah call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 cb 6a ff}
010fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0112h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 a4 11 5f}
0117h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> eval<sbyte>(UnaryBitLogicKind:byte kind, Vector256<sbyte> a)
; ubl~eval__g0o_256x8i[280] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 7a 00 00 00 8b c9 48 8d 15 02 01 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 74 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d8 c5 96 c6 f7 7f 00 00 e8 5a 53 1a 5f 48 8b f8 40 88 77 08 48 b9 68 6f 36 c6 f7 7f 00 00 e8 84 d6 14 5f 48 8b c8 e8 dc fa d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 2b 53 1a 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 14 ec 2c 5f 48 8b e8 8b ce e8 7a 9b 6b ff 4c 8b c0 48 8b cd 48 8b d7 e8 84 27 69 ff 48 8b d0 48 8b cb e8 39 c6 6a ff 48 8b cb e8 39 9f 11 5f cc}
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
0014h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0017h ja near ptr 0097h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 7a 00 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rdx,[rip+102h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 02 01 00 00}
0026h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0029h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
0030h add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0033h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0035h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003ah vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
003eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0042h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0046h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0057h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
005bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0062h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0063h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0064h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0065h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
0067h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
006bh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
006fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0072h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
007bh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007fh vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0083h vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0087h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
008bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0092h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0093h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h ret                                     ; RET || C3 || encoded[1]{c3}
0097h mov rcx,7ff7c696c5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c5 96 c6 f7 7f 00 00}
00a1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 53 1a 5f}
00a6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a9h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00adh mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
00b7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 d6 14 5f}
00bch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bfh call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc fa d4 ff}
00c4h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00c6h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
00d0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 53 1a 5f}
00d5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d8h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00ddh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00e7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 ec 2c 5f}
00ech mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00efh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00f1h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 9b 6b ff}
00f6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00fch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00ffh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 27 69 ff}
0104h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0107h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
010ah call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 c6 6a ff}
010fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0112h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 9f 11 5f}
0117h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, Vector256<ushort> a)
; ubl~eval__g0o_256x16u[280] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 7a 00 00 00 8b c9 48 8d 15 02 01 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 75 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d8 c5 96 c6 f7 7f 00 00 e8 fa 4d 1a 5f 48 8b f8 40 88 77 08 48 b9 38 87 36 c6 f7 7f 00 00 e8 24 d1 14 5f 48 8b c8 e8 7c f5 d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 cb 4d 1a 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 b4 e6 2c 5f 48 8b e8 8b ce e8 1a 96 6b ff 4c 8b c0 48 8b cd 48 8b d7 e8 24 22 69 ff 48 8b d0 48 8b cb e8 d9 c0 6a ff 48 8b cb e8 d9 99 11 5f cc}
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
0014h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0017h ja near ptr 0097h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 7a 00 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rdx,[rip+102h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 02 01 00 00}
0026h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0029h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
0030h add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0033h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0035h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003ah vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
003eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0042h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0046h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0057h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
005bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0062h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0063h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0064h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0065h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
0067h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
006bh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
006fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0072h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
007bh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007fh vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0083h vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0087h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
008bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0092h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0093h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h ret                                     ; RET || C3 || encoded[1]{c3}
0097h mov rcx,7ff7c696c5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c5 96 c6 f7 7f 00 00}
00a1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 4d 1a 5f}
00a6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a9h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00adh mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
00b7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 d1 14 5f}
00bch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bfh call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c f5 d4 ff}
00c4h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00c6h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
00d0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 4d 1a 5f}
00d5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d8h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00ddh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00e7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 e6 2c 5f}
00ech mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00efh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00f1h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 96 6b ff}
00f6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00fch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00ffh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 22 69 ff}
0104h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0107h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
010ah call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 c0 6a ff}
010fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0112h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 99 11 5f}
0117h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> eval<short>(UnaryBitLogicKind:byte kind, Vector256<short> a)
; ubl~eval__g0o_256x16i[280] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 7a 00 00 00 8b c9 48 8d 15 02 01 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 75 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d8 c5 96 c6 f7 7f 00 00 e8 9a 4c 1a 5f 48 8b f8 40 88 77 08 48 b9 48 7f 36 c6 f7 7f 00 00 e8 c4 cf 14 5f 48 8b c8 e8 1c f4 d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 6b 4c 1a 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 54 e5 2c 5f 48 8b e8 8b ce e8 ba 94 6b ff 4c 8b c0 48 8b cd 48 8b d7 e8 c4 20 69 ff 48 8b d0 48 8b cb e8 79 bf 6a ff 48 8b cb e8 79 98 11 5f cc}
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
0014h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0017h ja near ptr 0097h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 7a 00 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rdx,[rip+102h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 02 01 00 00}
0026h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0029h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
0030h add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0033h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0035h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003ah vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
003eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0042h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0046h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0057h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
005bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0062h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0063h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0064h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0065h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
0067h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
006bh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
006fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0072h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
007bh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007fh vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0083h vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0087h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
008bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0092h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0093h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h ret                                     ; RET || C3 || encoded[1]{c3}
0097h mov rcx,7ff7c696c5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c5 96 c6 f7 7f 00 00}
00a1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 4c 1a 5f}
00a6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a9h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00adh mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
00b7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 cf 14 5f}
00bch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bfh call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c f4 d4 ff}
00c4h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00c6h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
00d0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 4c 1a 5f}
00d5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d8h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00ddh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00e7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 e5 2c 5f}
00ech mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00efh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00f1h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 94 6b ff}
00f6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00fch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00ffh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 20 69 ff}
0104h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0107h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
010ah call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 bf 6a ff}
010fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0112h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 98 11 5f}
0117h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> eval<uint>(UnaryBitLogicKind:byte kind, Vector256<uint> a)
; ubl~eval__g0o_256x32u[280] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 7a 00 00 00 8b c9 48 8d 15 02 01 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 76 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d8 c5 96 c6 f7 7f 00 00 e8 3a 4b 1a 5f 48 8b f8 40 88 77 08 48 b9 d8 96 36 c6 f7 7f 00 00 e8 64 ce 14 5f 48 8b c8 e8 bc f2 d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 0b 4b 1a 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 f4 e3 2c 5f 48 8b e8 8b ce e8 5a 93 6b ff 4c 8b c0 48 8b cd 48 8b d7 e8 64 1f 69 ff 48 8b d0 48 8b cb e8 19 be 6a ff 48 8b cb e8 19 97 11 5f cc}
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
0014h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0017h ja near ptr 0097h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 7a 00 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rdx,[rip+102h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 02 01 00 00}
0026h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0029h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
0030h add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0033h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0035h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003ah vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
003eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0042h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0046h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0057h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
005bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0062h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0063h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0064h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0065h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
0067h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
006bh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
006fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0072h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
007bh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007fh vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0083h vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0087h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
008bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0092h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0093h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h ret                                     ; RET || C3 || encoded[1]{c3}
0097h mov rcx,7ff7c696c5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c5 96 c6 f7 7f 00 00}
00a1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 4b 1a 5f}
00a6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a9h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00adh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
00b7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 ce 14 5f}
00bch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bfh call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc f2 d4 ff}
00c4h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00c6h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
00d0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 4b 1a 5f}
00d5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d8h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00ddh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00e7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 e3 2c 5f}
00ech mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00efh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00f1h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 93 6b ff}
00f6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00fch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00ffh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 1f 69 ff}
0104h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0107h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
010ah call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 be 6a ff}
010fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0112h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 97 11 5f}
0117h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> eval<int>(UnaryBitLogicKind:byte kind, Vector256<int> a)
; ubl~eval__g0o_256x32i[280] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 7a 00 00 00 8b c9 48 8d 15 02 01 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 76 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d8 c5 96 c6 f7 7f 00 00 e8 da 45 1a 5f 48 8b f8 40 88 77 08 48 b9 08 8f 36 c6 f7 7f 00 00 e8 04 c9 14 5f 48 8b c8 e8 5c ed d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 ab 45 1a 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 94 de 2c 5f 48 8b e8 8b ce e8 fa 8d 6b ff 4c 8b c0 48 8b cd 48 8b d7 e8 04 1a 69 ff 48 8b d0 48 8b cb e8 b9 b8 6a ff 48 8b cb e8 b9 91 11 5f cc}
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
0014h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0017h ja near ptr 0097h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 7a 00 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rdx,[rip+102h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 02 01 00 00}
0026h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0029h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
0030h add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0033h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0035h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003ah vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
003eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0042h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0046h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0049h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
0052h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0057h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
005bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0062h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0063h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0064h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0065h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
0067h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
006bh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
006fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0072h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0078h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0079h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007ah ret                                     ; RET || C3 || encoded[1]{c3}
007bh vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007fh vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0083h vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0087h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
008bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0092h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0093h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h ret                                     ; RET || C3 || encoded[1]{c3}
0097h mov rcx,7ff7c696c5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c5 96 c6 f7 7f 00 00}
00a1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 45 1a 5f}
00a6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a9h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00adh mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
00b7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 c9 14 5f}
00bch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bfh call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c ed d4 ff}
00c4h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00c6h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
00d0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 45 1a 5f}
00d5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d8h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00ddh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00e7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 de 2c 5f}
00ech mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00efh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00f1h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 8d 6b ff}
00f6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00fch mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00ffh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 1a 69 ff}
0104h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0107h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
010ah call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 b8 6a ff}
010fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0112h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 91 11 5f}
0117h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, Vector256<ulong> a)
; ubl~eval__g0o_256x64u[282] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 7c 00 00 00 8b c9 48 8d 15 02 01 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c4 e2 7d 29 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d8 c5 96 c6 f7 7f 00 00 e8 78 44 1a 5f 48 8b f8 40 88 77 08 48 b9 78 a6 36 c6 f7 7f 00 00 e8 a2 c7 14 5f 48 8b c8 e8 fa eb d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 49 44 1a 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 32 dd 2c 5f 48 8b e8 8b ce e8 98 8c 6b ff 4c 8b c0 48 8b cd 48 8b d7 e8 a2 18 69 ff 48 8b d0 48 8b cb e8 57 b7 6a ff 48 8b cb e8 57 90 11 5f cc}
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
0014h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0017h ja near ptr 0099h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 7c 00 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rdx,[rip+102h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 02 01 00 00}
0026h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0029h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
0030h add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0033h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0035h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003ah vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
003fh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0043h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004fh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
0053h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0058h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
005ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0063h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0064h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
0068h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
006ch vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0070h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0073h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0079h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007bh ret                                     ; RET || C3 || encoded[1]{c3}
007ch vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0080h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0084h vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0089h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
008dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0090h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0094h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0095h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
0099h mov rcx,7ff7c696c5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c5 96 c6 f7 7f 00 00}
00a3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 44 1a 5f}
00a8h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00abh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00afh mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
00b9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 c7 14 5f}
00beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c1h call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa eb d4 ff}
00c6h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00c8h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
00d2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 44 1a 5f}
00d7h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00dah mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00dfh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00e9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 dd 2c 5f}
00eeh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00f1h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00f3h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 8c 6b ff}
00f8h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00fbh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00feh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0101h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 18 69 ff}
0106h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0109h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
010ch call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 b7 6a ff}
0111h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0114h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 90 11 5f}
0119h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> eval<long>(UnaryBitLogicKind:byte kind, Vector256<long> a)
; ubl~eval__g0o_256x64i[282] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 7c 00 00 00 8b c9 48 8d 15 02 01 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c4 e2 7d 29 c1 c5 fd 11 00 c5 f8 77 48 83 c4 28 5b 5d 5e 5f c3 48 b9 d8 c5 96 c6 f7 7f 00 00 e8 18 43 1a 5f 48 8b f8 40 88 77 08 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 42 c6 14 5f 48 8b c8 e8 9a ea d4 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 e9 42 1a 5f 48 8b d8 b9 68 04 00 00 48 ba 28 aa 5e c6 f7 7f 00 00 e8 d2 db 2c 5f 48 8b e8 8b ce e8 38 8b 6b ff 4c 8b c0 48 8b cd 48 8b d7 e8 42 17 69 ff 48 8b d0 48 8b cb e8 f7 b5 6a ff 48 8b cb e8 f7 8e 11 5f cc}
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
0014h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0017h ja near ptr 0099h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 7c 00 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rdx,[rip+102h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 02 01 00 00}
0026h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0029h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
0030h add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0033h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0035h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003ah vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
003fh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0043h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
004eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004fh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
0053h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0058h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
005ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0063h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0064h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
0068h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
006ch vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0070h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0073h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0077h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0078h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0079h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007bh ret                                     ; RET || C3 || encoded[1]{c3}
007ch vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0080h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0084h vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0089h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
008dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0090h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0094h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0095h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0096h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0097h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0098h ret                                     ; RET || C3 || encoded[1]{c3}
0099h mov rcx,7ff7c696c5d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c5 96 c6 f7 7f 00 00}
00a3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 43 1a 5f}
00a8h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00abh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00afh mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
00b9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 c6 14 5f}
00beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c1h call 7ff7c6a51450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a ea d4 ff}
00c6h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00c8h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
00d2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 42 1a 5f}
00d7h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00dah mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00dfh mov rdx,7ff7c65eaa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 28 aa 5e c6 f7 7f 00 00}
00e9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 db 2c 5f}
00eeh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00f1h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00f3h call 7ff7c63bb520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 8b 6b ff}
00f8h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00fbh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00feh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0101h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 17 69 ff}
0106h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0109h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
010ch call 7ff7c63adff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b5 6a ff}
0111h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0114h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 8e 11 5f}
0119h int 3                                   ; INT3 || CC || encoded[1]{cc}
