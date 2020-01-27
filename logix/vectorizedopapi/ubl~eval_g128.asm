------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(UnaryBitLogicKind:byte kind, Vector128<byte> a)
; ubl~eval__g0o_128x8u[264] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6e 8b c9 48 8d 15 f6 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 da 08 b7 5e 48 8b f8 40 88 77 08 48 b9 58 77 34 c6 f7 7f 00 00 e8 04 8c b1 5e 48 8b c8 e8 ac 5d 76 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 ab 08 b7 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 94 a1 c9 5e 48 8b e8 8b ce e8 ea b8 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 04 dd 03 ff 48 8b d0 48 8b cb e8 61 36 06 ff 48 8b cb e8 b9 54 ae 5e cc}
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
0017h ja short 0087h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rdx,[rip+0f6h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 f6 00 00 00}
0022h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0025h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
002ch add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0036h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
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
0076h vpcmpeqb xmm0,xmm0,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c1}
007ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0082h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0083h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
0087h mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 08 b7 5e}
0096h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0099h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009dh mov rcx,7ff7c6347758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 34 c6 f7 7f 00 00}
00a7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 8c b1 5e}
00ach mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00afh call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 5d 76 ff}
00b4h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b6h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
00c0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 08 b7 5e}
00c5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c8h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00cdh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00d7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 a1 c9 5e}
00dch mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00dfh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00e1h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea b8 05 ff}
00e6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00ech mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00efh call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 dd 03 ff}
00f4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00fah call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 36 06 ff}
00ffh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0102h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 54 ae 5e}
0107h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(UnaryBitLogicKind:byte kind, Vector128<sbyte> a)
; ubl~eval__g0o_128x8i[264] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6e 8b c9 48 8d 15 f6 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 8a 07 b7 5e 48 8b f8 40 88 77 08 48 b9 68 6f 34 c6 f7 7f 00 00 e8 b4 8a b1 5e 48 8b c8 e8 5c 5c 76 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 5b 07 b7 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 44 a0 c9 5e 48 8b e8 8b ce e8 9a b7 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 b4 db 03 ff 48 8b d0 48 8b cb e8 11 35 06 ff 48 8b cb e8 69 53 ae 5e cc}
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
0017h ja short 0087h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rdx,[rip+0f6h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 f6 00 00 00}
0022h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0025h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
002ch add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0036h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
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
0076h vpcmpeqb xmm0,xmm0,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c1}
007ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0082h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0083h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
0087h mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 07 b7 5e}
0096h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0099h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009dh mov rcx,7ff7c6346f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 34 c6 f7 7f 00 00}
00a7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 8a b1 5e}
00ach mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00afh call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 5c 76 ff}
00b4h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b6h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
00c0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 07 b7 5e}
00c5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c8h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00cdh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00d7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 a0 c9 5e}
00dch mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00dfh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00e1h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a b7 05 ff}
00e6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00ech mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00efh call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 db 03 ff}
00f4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00fah call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 35 06 ff}
00ffh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0102h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 53 ae 5e}
0107h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, Vector128<ushort> a)
; ubl~eval__g0o_128x16u[264] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6e 8b c9 48 8d 15 f6 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 3a 06 b7 5e 48 8b f8 40 88 77 08 48 b9 38 87 34 c6 f7 7f 00 00 e8 64 89 b1 5e 48 8b c8 e8 0c 5b 76 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 0b 06 b7 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 f4 9e c9 5e 48 8b e8 8b ce e8 4a b6 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 64 da 03 ff 48 8b d0 48 8b cb e8 c1 33 06 ff 48 8b cb e8 19 52 ae 5e cc}
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
0017h ja short 0087h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rdx,[rip+0f6h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 f6 00 00 00}
0022h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0025h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
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
0087h mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 06 b7 5e}
0096h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0099h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009dh mov rcx,7ff7c6348738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 34 c6 f7 7f 00 00}
00a7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 89 b1 5e}
00ach mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00afh call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 5b 76 ff}
00b4h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b6h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
00c0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 06 b7 5e}
00c5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c8h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00cdh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00d7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 9e c9 5e}
00dch mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00dfh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00e1h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a b6 05 ff}
00e6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00ech mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00efh call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 da 03 ff}
00f4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00fah call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 33 06 ff}
00ffh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0102h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 52 ae 5e}
0107h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(UnaryBitLogicKind:byte kind, Vector128<short> a)
; ubl~eval__g0o_128x16i[264] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6e 8b c9 48 8d 15 f6 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 ea 04 b7 5e 48 8b f8 40 88 77 08 48 b9 48 7f 34 c6 f7 7f 00 00 e8 14 88 b1 5e 48 8b c8 e8 bc 59 76 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 bb 04 b7 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 a4 9d c9 5e 48 8b e8 8b ce e8 fa b4 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 14 d9 03 ff 48 8b d0 48 8b cb e8 71 32 06 ff 48 8b cb e8 c9 50 ae 5e cc}
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
0017h ja short 0087h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rdx,[rip+0f6h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 f6 00 00 00}
0022h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0025h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
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
0087h mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 04 b7 5e}
0096h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0099h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009dh mov rcx,7ff7c6347f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 34 c6 f7 7f 00 00}
00a7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 88 b1 5e}
00ach mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00afh call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 59 76 ff}
00b4h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b6h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
00c0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 04 b7 5e}
00c5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c8h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00cdh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00d7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 9d c9 5e}
00dch mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00dfh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00e1h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa b4 05 ff}
00e6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00ech mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00efh call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 d9 03 ff}
00f4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00fah call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 32 06 ff}
00ffh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0102h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 50 ae 5e}
0107h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(UnaryBitLogicKind:byte kind, Vector128<uint> a)
; ubl~eval__g0o_128x32u[264] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6e 8b c9 48 8d 15 f6 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 9a 03 b7 5e 48 8b f8 40 88 77 08 48 b9 d8 96 34 c6 f7 7f 00 00 e8 c4 86 b1 5e 48 8b c8 e8 6c 58 76 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 6b 03 b7 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 54 9c c9 5e 48 8b e8 8b ce e8 aa b3 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 c4 d7 03 ff 48 8b d0 48 8b cb e8 21 31 06 ff 48 8b cb e8 79 4f ae 5e cc}
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
0017h ja short 0087h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rdx,[rip+0f6h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 f6 00 00 00}
0022h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0025h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
002ch add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0036h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
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
0076h vpcmpeqd xmm0,xmm0,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c1}
007ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0082h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0083h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
0087h mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 03 b7 5e}
0096h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0099h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009dh mov rcx,7ff7c63496d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 34 c6 f7 7f 00 00}
00a7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 86 b1 5e}
00ach mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00afh call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 58 76 ff}
00b4h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b6h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
00c0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 03 b7 5e}
00c5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c8h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00cdh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00d7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 9c c9 5e}
00dch mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00dfh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00e1h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa b3 05 ff}
00e6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00ech mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00efh call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 d7 03 ff}
00f4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00fah call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 31 06 ff}
00ffh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0102h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 4f ae 5e}
0107h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(UnaryBitLogicKind:byte kind, Vector128<int> a)
; ubl~eval__g0o_128x32i[264] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6e 8b c9 48 8d 15 f6 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 4a fe b6 5e 48 8b f8 40 88 77 08 48 b9 08 8f 34 c6 f7 7f 00 00 e8 74 81 b1 5e 48 8b c8 e8 1c 53 76 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 1b fe b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 04 97 c9 5e 48 8b e8 8b ce e8 5a ae 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 74 d2 03 ff 48 8b d0 48 8b cb e8 d1 2b 06 ff 48 8b cb e8 29 4a ae 5e cc}
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
0017h ja short 0087h                          ; JA rel8 || 77 cb || encoded[2]{77 6e}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rdx,[rip+0f6h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 f6 00 00 00}
0022h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0025h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
002ch add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0036h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
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
0076h vpcmpeqd xmm0,xmm0,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c1}
007ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0082h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0083h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0084h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0085h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0086h ret                                     ; RET || C3 || encoded[1]{c3}
0087h mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
0091h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a fe b6 5e}
0096h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0099h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009dh mov rcx,7ff7c6348f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 34 c6 f7 7f 00 00}
00a7h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 81 b1 5e}
00ach mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00afh call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 53 76 ff}
00b4h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b6h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
00c0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b fe b6 5e}
00c5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c8h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00cdh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00d7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 97 c9 5e}
00dch mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00dfh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00e1h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a ae 05 ff}
00e6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e9h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00ech mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00efh call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 d2 03 ff}
00f4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f7h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00fah call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 2b 06 ff}
00ffh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0102h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 4a ae 5e}
0107h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, Vector128<ulong> a)
; ubl~eval__g0o_128x64u[265] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6f 8b c9 48 8d 15 f6 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 f9 fc b6 5e 48 8b f8 40 88 77 08 48 b9 78 a6 34 c6 f7 7f 00 00 e8 23 80 b1 5e 48 8b c8 e8 cb 51 76 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 ca fc b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 b3 95 c9 5e 48 8b e8 8b ce e8 09 ad 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 23 d1 03 ff 48 8b d0 48 8b cb e8 80 2a 06 ff 48 8b cb e8 d8 48 ae 5e cc}
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
0017h ja short 0088h                          ; JA rel8 || 77 cb || encoded[2]{77 6f}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rdx,[rip+0f6h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 f6 00 00 00}
0022h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0025h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
002ch add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0036h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
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
0076h vpcmpeqq xmm0,xmm0,xmm1                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 79 29 c1}
007bh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0085h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0086h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0087h ret                                     ; RET || C3 || encoded[1]{c3}
0088h mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
0092h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 fc b6 5e}
0097h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009eh mov rcx,7ff7c634a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 34 c6 f7 7f 00 00}
00a8h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 80 b1 5e}
00adh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b0h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 51 76 ff}
00b5h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b7h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
00c1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fc b6 5e}
00c6h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c9h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00ceh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00d8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 95 c9 5e}
00ddh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00e0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00e2h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 ad 05 ff}
00e7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00eah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00edh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f0h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 d1 03 ff}
00f5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00fbh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 2a 06 ff}
0100h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0103h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 48 ae 5e}
0108h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> eval<long>(UnaryBitLogicKind:byte kind, Vector128<long> a)
; ubl~eval__g0o_128x64i[265] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6f 8b c9 48 8d 15 f6 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 a8 cf a0 c6 f7 7f 00 00 e8 a9 fb b6 5e 48 8b f8 40 88 77 08 48 b9 a8 9e 34 c6 f7 7f 00 00 e8 d3 7e b1 5e 48 8b c8 e8 7b 50 76 ff 8b f0 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 7a fb b6 5e 48 8b d8 b9 68 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 63 94 c9 5e 48 8b e8 8b ce e8 b9 ab 05 ff 4c 8b c0 48 8b cd 48 8b d7 e8 d3 cf 03 ff 48 8b d0 48 8b cb e8 30 29 06 ff 48 8b cb e8 88 47 ae 5e cc}
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
0017h ja short 0088h                          ; JA rel8 || 77 cb || encoded[2]{77 6f}
0019h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001bh lea rdx,[rip+0f6h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 f6 00 00 00}
0022h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0025h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
002ch add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0036h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
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
0076h vpcmpeqq xmm0,xmm0,xmm1                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 79 29 c1}
007bh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007fh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0083h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0084h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0085h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0086h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0087h ret                                     ; RET || C3 || encoded[1]{c3}
0088h mov rcx,7ff7c6a0cfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cf a0 c6 f7 7f 00 00}
0092h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 fb b6 5e}
0097h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ah mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009eh mov rcx,7ff7c6349ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 34 c6 f7 7f 00 00}
00a8h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 7e b1 5e}
00adh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b0h call 7ff7c6a9c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 50 76 ff}
00b5h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b7h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
00c1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a fb b6 5e}
00c6h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c9h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00ceh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
00d8h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 94 c9 5e}
00ddh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00e0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00e2h call 7ff7c6391d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 ab 05 ff}
00e7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00eah mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00edh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f0h call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 cf 03 ff}
00f5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f8h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00fbh call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 29 06 ff}
0100h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0103h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 47 ae 5e}
0108h int 3                                   ; INT3 || CC || encoded[1]{cc}
