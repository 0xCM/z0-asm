; Vector128<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, Vector128<ushort> a)
; ubl~eval__128x16u[7ff7c6cc6cd0h, 7ff7c6cc6dd8h][264] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6e 8b c9 48 8d 15 f6 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 e8 f9 91 c6 f7 7f 00 00 e8 4a ff 1d 5f 48 8b f8 40 88 77 08 48 b9 38 87 36 c6 f7 7f 00 00 e8 74 82 18 5f 48 8b c8 e8 dc 57 d5 ff 8b f0 48 b9 38 2a 5b c6 f7 7f 00 00 e8 1b ff 1d 5f 48 8b d8 b9 68 04 00 00 48 ba f0 17 81 c6 f7 7f 00 00 e8 04 98 30 5f 48 8b e8 8b ce e8 a2 53 d5 ff 4c 8b c0 48 8b cd 48 8b d7 e8 74 d3 6c ff 48 8b d0 48 8b cb e8 91 6a 6e ff 48 8b cb e8 29 4b 15 5f cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:43:999
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
0017h ja short 0087h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rdx,[7ff7c6cc6de8h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 f6 00 00 00}
0022h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0025h lea r9,[7ff7c6cc6ce0h]                  ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
002ch add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0036h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
003ah vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
003eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0042h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0046h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0047h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0048h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0049h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
004bh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0050h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0054h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0058h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0059h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ch ret                                     ; RET || C3 || encoded[1]{c3}
005dh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0061h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0065h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0069h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006dh ret                                     ; RET || C3 || encoded[1]{c3}
006eh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0072h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0076h vpcmpeqw xmm0,xmm0,xmm1                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c1}
007ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0082h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0083h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
0087h mov rcx,7ff7c691f9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f9 91 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a ff 1d 5f}
0096h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0099h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009dh mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
00a7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 82 18 5f}
00ach mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00afh call 7ff7c6a1c560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 57 d5 ff}
00b4h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b6h mov rcx,7ff7c65b2a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2a 5b c6 f7 7f 00 00}
00c0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b ff 1d 5f}
00c5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c8h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00cdh mov rdx,7ff7c68117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba f0 17 81 c6 f7 7f 00 00}
00d7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 98 30 5f}
00dch mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00dfh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00e1h call 7ff7c6a1c158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 53 d5 ff}
00e6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00ech mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00efh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 d3 6c ff}
00f4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00fah call 7ff7c63ad860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 6a 6e ff}
00ffh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0102h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 4b 15 5f}
0107h int 3                                   ; INT3 || CC || encoded[1]{cc}
