------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(UnaryBitLogicKind:byte kind, Vector128<byte> a)
; eval_g8u_v128x8u[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 8f 08 b1 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 79 08 b1 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 62 a1 c3 5e 48 8b d8 48 b9 58 77 36 c6 f7 7f 00 00 e8 90 8b ab 5e 48 8b c8 e8 c8 32 72 ff 8b c8 e8 01 5e 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 bb dc ff fe 48 8b d0 48 8b ce e8 e0 8f 02 ff 48 8b ce e8 70 54 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 6a}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rdx,[rip+0efh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ef 00 00 00}
0021h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0024h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
002bh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
002eh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0030h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0035h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
0039h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
003dh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
0049h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
004eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0052h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0056h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0057h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0058h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0059h ret                                     ; RET || C3 || encoded[1]{c3}
005ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
005eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0062h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0066h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0067h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0068h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
006ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
006eh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0072h vpcmpeqb xmm0,xmm0,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c1}
0076h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
007eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0080h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0081h ret                                     ; RET || C3 || encoded[1]{c3}
0082h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 08 b1 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 08 b1 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 a1 c3 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 8b ab 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 32 72 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 5e 01 ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb dc ff fe}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 8f 02 ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 54 a8 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(UnaryBitLogicKind:byte kind, Vector128<sbyte> a)
; eval_g8u_v128x8i[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 4f 07 b1 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 39 07 b1 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 22 a0 c3 5e 48 8b d8 48 b9 68 6f 36 c6 f7 7f 00 00 e8 50 8a ab 5e 48 8b c8 e8 88 31 72 ff 8b c8 e8 c1 5c 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 7b db ff fe 48 8b d0 48 8b ce e8 a0 8e 02 ff 48 8b ce e8 30 53 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 6a}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rdx,[rip+0efh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ef 00 00 00}
0021h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0024h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
002bh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
002eh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0030h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0035h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
0039h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
003dh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
0049h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
004eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0052h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0056h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0057h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0058h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0059h ret                                     ; RET || C3 || encoded[1]{c3}
005ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
005eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0062h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0066h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0067h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0068h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
006ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
006eh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0072h vpcmpeqb xmm0,xmm0,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c1}
0076h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
007eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0080h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0081h ret                                     ; RET || C3 || encoded[1]{c3}
0082h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 07 b1 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 07 b1 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 a0 c3 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 8a ab 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 31 72 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 5c 01 ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b db ff fe}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 8e 02 ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 53 a8 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, Vector128<ushort> a)
; eval_g8u_v128x16u[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 0f 06 b1 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 f9 05 b1 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 e2 9e c3 5e 48 8b d8 48 b9 38 87 36 c6 f7 7f 00 00 e8 10 89 ab 5e 48 8b c8 e8 48 30 72 ff 8b c8 e8 81 5b 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 3b da ff fe 48 8b d0 48 8b ce e8 60 8d 02 ff 48 8b ce e8 f0 51 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 6a}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rdx,[rip+0efh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ef 00 00 00}
0021h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0024h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
002bh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
002eh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0030h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0035h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
0039h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
003dh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
0049h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
004eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0052h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0056h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0057h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0058h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0059h ret                                     ; RET || C3 || encoded[1]{c3}
005ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
005eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0062h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0066h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0067h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0068h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
006ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
006eh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0072h vpcmpeqw xmm0,xmm0,xmm1                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c1}
0076h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
007eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0080h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0081h ret                                     ; RET || C3 || encoded[1]{c3}
0082h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 06 b1 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 05 b1 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 9e c3 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 89 ab 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 30 72 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 5b 01 ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b da ff fe}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 8d 02 ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 51 a8 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(UnaryBitLogicKind:byte kind, Vector128<short> a)
; eval_g8u_v128x16i[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 cf 04 b1 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 b9 04 b1 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 a2 9d c3 5e 48 8b d8 48 b9 48 7f 36 c6 f7 7f 00 00 e8 d0 87 ab 5e 48 8b c8 e8 08 2f 72 ff 8b c8 e8 41 5a 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 fb d8 ff fe 48 8b d0 48 8b ce e8 20 8c 02 ff 48 8b ce e8 b0 50 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 6a}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rdx,[rip+0efh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ef 00 00 00}
0021h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0024h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
002bh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
002eh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0030h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0035h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
0039h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
003dh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
0049h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
004eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0052h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0056h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0057h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0058h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0059h ret                                     ; RET || C3 || encoded[1]{c3}
005ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
005eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0062h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0066h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0067h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0068h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
006ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
006eh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0072h vpcmpeqw xmm0,xmm0,xmm1                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c1}
0076h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
007eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0080h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0081h ret                                     ; RET || C3 || encoded[1]{c3}
0082h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 04 b1 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 04 b1 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 9d c3 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 87 ab 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 2f 72 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 5a 01 ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb d8 ff fe}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 8c 02 ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 50 a8 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(UnaryBitLogicKind:byte kind, Vector128<uint> a)
; eval_g8u_v128x32u[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 8f 03 b1 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 79 03 b1 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 62 9c c3 5e 48 8b d8 48 b9 d8 96 36 c6 f7 7f 00 00 e8 90 86 ab 5e 48 8b c8 e8 c8 2d 72 ff 8b c8 e8 01 59 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 bb d7 ff fe 48 8b d0 48 8b ce e8 e0 8a 02 ff 48 8b ce e8 70 4f a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 6a}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rdx,[rip+0efh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ef 00 00 00}
0021h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0024h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
002bh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
002eh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0030h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0035h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0039h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
003dh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
0049h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
004eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0052h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0056h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0057h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0058h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0059h ret                                     ; RET || C3 || encoded[1]{c3}
005ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
005eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0062h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0066h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0067h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0068h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
006ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
006eh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0072h vpcmpeqd xmm0,xmm0,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c1}
0076h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
007eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0080h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0081h ret                                     ; RET || C3 || encoded[1]{c3}
0082h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 03 b1 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 03 b1 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 9c c3 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 86 ab 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 2d 72 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 59 01 ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb d7 ff fe}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 8a 02 ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 4f a8 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(UnaryBitLogicKind:byte kind, Vector128<int> a)
; eval_g8u_v128x32i[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 4f fe b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 39 fe b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 22 97 c3 5e 48 8b d8 48 b9 08 8f 36 c6 f7 7f 00 00 e8 50 81 ab 5e 48 8b c8 e8 88 28 72 ff 8b c8 e8 c1 53 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 7b d2 ff fe 48 8b d0 48 8b ce e8 a0 85 02 ff 48 8b ce e8 30 4a a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja short 0082h                          ; JA rel8 || 77 cb || encoded[2]{77 6a}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rdx,[rip+0efh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ef 00 00 00}
0021h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0024h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
002bh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
002eh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0030h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0035h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0039h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
003dh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
0049h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
004eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0052h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0056h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0057h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0058h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0059h ret                                     ; RET || C3 || encoded[1]{c3}
005ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
005eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0062h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0066h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0067h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0068h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
006ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
006eh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0072h vpcmpeqd xmm0,xmm0,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c1}
0076h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
007eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0080h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0081h ret                                     ; RET || C3 || encoded[1]{c3}
0082h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f fe b0 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 fe b0 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 97 c3 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 81 ab 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 28 72 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 53 01 ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b d2 ff fe}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 85 02 ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 4a a8 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, Vector128<ulong> a)
; eval_g8u_v128x64u[258] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6b 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 0e fd b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 f8 fc b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 e1 95 c3 5e 48 8b d8 48 b9 78 a6 36 c6 f7 7f 00 00 e8 0f 80 ab 5e 48 8b c8 e8 47 27 72 ff 8b c8 e8 80 52 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 3a d1 ff fe 48 8b d0 48 8b ce e8 5f 84 02 ff 48 8b ce e8 ef 48 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja short 0083h                          ; JA rel8 || 77 cb || encoded[2]{77 6b}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rdx,[rip+0efh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ef 00 00 00}
0021h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0024h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
002bh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
002eh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0030h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0035h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0039h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
003dh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
0049h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
004eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0052h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0056h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0057h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0058h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0059h ret                                     ; RET || C3 || encoded[1]{c3}
005ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
005eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0062h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0066h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0067h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0068h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
006ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
006eh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0072h vpcmpeqq xmm0,xmm0,xmm1                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 79 29 c1}
0077h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007bh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
007fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0080h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0081h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
0083h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
008dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e fd b0 5e}
0092h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0095h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0099h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00a3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 fc b0 5e}
00a8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00abh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b0h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00bah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 95 c3 5e}
00bfh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c2h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
00cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 80 ab 5e}
00d1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d4h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 27 72 ff}
00d9h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dbh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 52 01 ff}
00e0h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e6h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e9h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a d1 ff fe}
00eeh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f1h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f4h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 84 02 ff}
00f9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 48 a8 5e}
0101h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> eval<long>(UnaryBitLogicKind:byte kind, Vector128<long> a)
; eval_g8u_v128x64i[258] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6b 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 ce fb b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 b8 fb b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 a1 94 c3 5e 48 8b d8 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 cf 7e ab 5e 48 8b c8 e8 07 26 72 ff 8b c8 e8 40 51 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 fa cf ff fe 48 8b d0 48 8b ce e8 1f 83 02 ff 48 8b ce e8 af 47 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja short 0083h                          ; JA rel8 || 77 cb || encoded[2]{77 6b}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rdx,[rip+0efh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ef 00 00 00}
0021h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0024h lea r9,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e4 ff ff ff}
002bh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
002eh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0030h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0035h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0039h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
003dh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0041h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0045h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
0049h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
004eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0052h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0056h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0057h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0058h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0059h ret                                     ; RET || C3 || encoded[1]{c3}
005ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
005eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0062h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0066h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0067h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0068h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
006ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
006eh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0072h vpcmpeqq xmm0,xmm0,xmm1                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 79 29 c1}
0077h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007bh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
007fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0080h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0081h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
0083h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
008dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce fb b0 5e}
0092h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0095h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0099h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00a3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 fb b0 5e}
00a8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00abh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b0h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00bah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 94 c3 5e}
00bfh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c2h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
00cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 7e ab 5e}
00d1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d4h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 26 72 ff}
00d9h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dbh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 51 01 ff}
00e0h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e6h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e9h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa cf ff fe}
00eeh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f1h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f4h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 83 02 ff}
00f9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 47 a8 5e}
0101h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> eval<byte>(UnaryBitLogicKind:byte kind, Vector256<byte> a)
; eval_g8u_v256x8u[273] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 76 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 74 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 7f fa b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 69 fa b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 52 93 c3 5e 48 8b d8 48 b9 58 77 36 c6 f7 7f 00 00 e8 80 7d ab 5e 48 8b c8 e8 b8 24 72 ff 8b c8 e8 f1 4f 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 ab ce ff fe 48 8b d0 48 8b ce e8 d0 81 02 ff 48 8b ce e8 60 46 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja near ptr 0092h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 76 00 00 00}
001ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001eh lea rdx,[rip+0fbh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 fb 00 00 00}
0025h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0028h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002fh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0032h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0034h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0039h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
003dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0041h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0045h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0048h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
0050h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0055h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0059h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0060h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
0064h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0068h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
006ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0073h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007bh vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
007fh vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0083h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0087h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
008eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0090h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0091h ret                                     ; RET || C3 || encoded[1]{c3}
0092h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
009ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f fa b0 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a8h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 fa b0 5e}
00b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00bfh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00c9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 93 c3 5e}
00ceh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d1h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
00dbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 7d ab 5e}
00e0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e3h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 24 72 ff}
00e8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00eah call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 4f 01 ff}
00efh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f8h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab ce ff fe}
00fdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0100h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0103h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 81 02 ff}
0108h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 46 a8 5e}
0110h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> eval<sbyte>(UnaryBitLogicKind:byte kind, Vector256<sbyte> a)
; eval_g8u_v256x8i[273] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 76 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 74 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 2f f9 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 19 f9 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 02 92 c3 5e 48 8b d8 48 b9 68 6f 36 c6 f7 7f 00 00 e8 30 7c ab 5e 48 8b c8 e8 68 23 72 ff 8b c8 e8 a1 4e 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 5b cd ff fe 48 8b d0 48 8b ce e8 80 80 02 ff 48 8b ce e8 10 45 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja near ptr 0092h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 76 00 00 00}
001ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001eh lea rdx,[rip+0fbh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 fb 00 00 00}
0025h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0028h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002fh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0032h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0034h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0039h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
003dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0041h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0045h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0048h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
0050h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0055h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0059h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0060h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
0064h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0068h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
006ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0073h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007bh vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
007fh vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0083h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0087h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
008eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0090h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0091h ret                                     ; RET || C3 || encoded[1]{c3}
0092h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
009ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f f9 b0 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a8h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f9 b0 5e}
00b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00bfh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00c9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 92 c3 5e}
00ceh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d1h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
00dbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 7c ab 5e}
00e0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e3h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 23 72 ff}
00e8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00eah call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 4e 01 ff}
00efh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f8h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b cd ff fe}
00fdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0100h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0103h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 80 02 ff}
0108h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 45 a8 5e}
0110h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, Vector256<ushort> a)
; eval_g8u_v256x16u[273] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 76 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 75 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 df f7 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 c9 f7 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 b2 90 c3 5e 48 8b d8 48 b9 38 87 36 c6 f7 7f 00 00 e8 e0 7a ab 5e 48 8b c8 e8 18 22 72 ff 8b c8 e8 51 4d 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 0b cc ff fe 48 8b d0 48 8b ce e8 30 7f 02 ff 48 8b ce e8 c0 43 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja near ptr 0092h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 76 00 00 00}
001ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001eh lea rdx,[rip+0fbh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 fb 00 00 00}
0025h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0028h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002fh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0032h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0034h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0039h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
003dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0041h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0045h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0048h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
0050h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0055h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0059h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0060h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
0064h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0068h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
006ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0073h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007bh vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
007fh vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0083h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0087h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
008eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0090h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0091h ret                                     ; RET || C3 || encoded[1]{c3}
0092h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
009ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f7 b0 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a8h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f7 b0 5e}
00b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00bfh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00c9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 90 c3 5e}
00ceh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d1h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
00dbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 7a ab 5e}
00e0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e3h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 22 72 ff}
00e8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00eah call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 4d 01 ff}
00efh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f8h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b cc ff fe}
00fdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0100h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0103h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 7f 02 ff}
0108h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 43 a8 5e}
0110h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> eval<short>(UnaryBitLogicKind:byte kind, Vector256<short> a)
; eval_g8u_v256x16i[273] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 76 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 75 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 8f f6 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 79 f6 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 62 8f c3 5e 48 8b d8 48 b9 48 7f 36 c6 f7 7f 00 00 e8 90 79 ab 5e 48 8b c8 e8 c8 20 72 ff 8b c8 e8 01 4c 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 bb ca ff fe 48 8b d0 48 8b ce e8 e0 7d 02 ff 48 8b ce e8 70 42 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja near ptr 0092h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 76 00 00 00}
001ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001eh lea rdx,[rip+0fbh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 fb 00 00 00}
0025h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0028h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002fh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0032h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0034h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0039h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
003dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0041h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0045h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0048h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
0050h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0055h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0059h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0060h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
0064h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0068h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
006ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0073h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007bh vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
007fh vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0083h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0087h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
008eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0090h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0091h ret                                     ; RET || C3 || encoded[1]{c3}
0092h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
009ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f f6 b0 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a8h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f6 b0 5e}
00b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00bfh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00c9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 8f c3 5e}
00ceh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d1h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
00dbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 79 ab 5e}
00e0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e3h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 20 72 ff}
00e8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00eah call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 4c 01 ff}
00efh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f8h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb ca ff fe}
00fdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0100h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0103h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 7d 02 ff}
0108h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 42 a8 5e}
0110h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> eval<uint>(UnaryBitLogicKind:byte kind, Vector256<uint> a)
; eval_g8u_v256x32u[273] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 76 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 76 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 3f f5 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 29 f5 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 12 8e c3 5e 48 8b d8 48 b9 d8 96 36 c6 f7 7f 00 00 e8 40 78 ab 5e 48 8b c8 e8 78 1f 72 ff 8b c8 e8 b1 4a 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 6b c9 ff fe 48 8b d0 48 8b ce e8 90 7c 02 ff 48 8b ce e8 20 41 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja near ptr 0092h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 76 00 00 00}
001ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001eh lea rdx,[rip+0fbh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 fb 00 00 00}
0025h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0028h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002fh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0032h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0034h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0039h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
003dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0041h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0045h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0048h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
0050h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0055h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0059h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0060h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
0064h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0068h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
006ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0073h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007bh vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
007fh vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0083h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0087h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
008eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0090h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0091h ret                                     ; RET || C3 || encoded[1]{c3}
0092h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
009ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f f5 b0 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a8h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 f5 b0 5e}
00b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00bfh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00c9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 8e c3 5e}
00ceh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d1h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
00dbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 78 ab 5e}
00e0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e3h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 1f 72 ff}
00e8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00eah call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 4a 01 ff}
00efh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f8h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b c9 ff fe}
00fdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0100h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0103h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 7c 02 ff}
0108h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 41 a8 5e}
0110h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> eval<int>(UnaryBitLogicKind:byte kind, Vector256<int> a)
; eval_g8u_v256x32i[273] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 76 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 76 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 ef f3 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 d9 f3 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 c2 8c c3 5e 48 8b d8 48 b9 08 8f 36 c6 f7 7f 00 00 e8 f0 76 ab 5e 48 8b c8 e8 28 1e 72 ff 8b c8 e8 61 49 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 1b c8 ff fe 48 8b d0 48 8b ce e8 40 7b 02 ff 48 8b ce e8 d0 3f a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja near ptr 0092h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 76 00 00 00}
001ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001eh lea rdx,[rip+0fbh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 fb 00 00 00}
0025h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0028h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002fh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0032h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0034h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0039h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
003dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0041h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0045h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0048h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
0050h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0055h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0059h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0060h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
0064h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0068h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
006ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0073h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007bh vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
007fh vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0083h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0087h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
008eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0090h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0091h ret                                     ; RET || C3 || encoded[1]{c3}
0092h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
009ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef f3 b0 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a8h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f3 b0 5e}
00b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00bfh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00c9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 8c c3 5e}
00ceh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d1h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
00dbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 76 ab 5e}
00e0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e3h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 1e 72 ff}
00e8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00eah call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 49 01 ff}
00efh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f8h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b c8 ff fe}
00fdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0100h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0103h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 7b 02 ff}
0108h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 3f a8 5e}
0110h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, Vector256<ulong> a)
; eval_g8u_v256x64u[275] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 78 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c4 e2 7d 29 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 9d ee b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 87 ee b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 70 87 c3 5e 48 8b d8 48 b9 78 a6 36 c6 f7 7f 00 00 e8 9e 71 ab 5e 48 8b c8 e8 d6 18 72 ff 8b c8 e8 0f 44 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 c9 c2 ff fe 48 8b d0 48 8b ce e8 ee 75 02 ff 48 8b ce e8 7e 3a a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja near ptr 0094h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 78 00 00 00}
001ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001eh lea rdx,[rip+0fbh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 fb 00 00 00}
0025h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0028h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002fh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0032h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0034h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0039h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
003eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0042h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0046h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0049h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
0051h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0056h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0061h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0062h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0063h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0064h ret                                     ; RET || C3 || encoded[1]{c3}
0065h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0069h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
006dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0070h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0074h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
0078h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007ch vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0080h vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0085h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0089h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0090h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0091h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0092h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0093h ret                                     ; RET || C3 || encoded[1]{c3}
0094h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
009eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d ee b0 5e}
00a3h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a6h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00aah mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 ee b0 5e}
00b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bch mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00c1h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00cbh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 87 c3 5e}
00d0h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d3h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
00ddh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 71 ab 5e}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 18 72 ff}
00eah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00ech call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 44 01 ff}
00f1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f4h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00fah call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 c2 ff fe}
00ffh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0102h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0105h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 75 02 ff}
010ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010dh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 3a a8 5e}
0112h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> eval<long>(UnaryBitLogicKind:byte kind, Vector256<long> a)
; eval_g8u_v256x64i[275] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 78 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c4 e2 7d 29 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 18 d9 a2 c6 f7 7f 00 00 e8 4d ed b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 37 ed b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 20 86 c3 5e 48 8b d8 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 4e 70 ab 5e 48 8b c8 e8 86 17 72 ff 8b c8 e8 bf 42 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 79 c1 ff fe 48 8b d0 48 8b ce e8 9e 74 02 ff 48 8b ce e8 2e 39 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0016h ja near ptr 0094h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 78 00 00 00}
001ch mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001eh lea rdx,[rip+0fbh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 fb 00 00 00}
0025h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0028h lea r9,[rip-20h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d e0 ff ff ff}
002fh add rdx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d1}
0032h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0034h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0039h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
003eh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0042h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0046h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0049h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
0051h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0056h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0061h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0062h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0063h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0064h ret                                     ; RET || C3 || encoded[1]{c3}
0065h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0069h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
006dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0070h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0074h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
0078h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
007ch vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0080h vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0085h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0089h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0090h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0091h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0092h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0093h ret                                     ; RET || C3 || encoded[1]{c3}
0094h mov rcx,7ff7c6a2d918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d9 a2 c6 f7 7f 00 00}
009eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d ed b0 5e}
00a3h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a6h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00aah mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 ed b0 5e}
00b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bch mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00c1h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00cbh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 86 c3 5e}
00d0h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d3h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
00ddh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 70 ab 5e}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 17 72 ff}
00eah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00ech call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 42 01 ff}
00f1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f4h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00fah call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 c1 ff fe}
00ffh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0102h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0105h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 74 02 ff}
010ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010dh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 39 a8 5e}
0112h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(ComparisonKind:byte kind, Vector128<byte> a, Vector128<byte> b)
; eval_g8u_v128x8u_v128x8u[315] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 9e 00 00 00 8b c9 48 8d 15 21 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 74 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 2c 80 00 00 00 4c 8d 44 24 2c c4 e2 79 78 54 24 2c c5 f9 ef c2 c5 f1 ef ca c5 f1 64 c0 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 28 80 00 00 00 48 8d 4c 24 28 c4 e2 79 78 54 24 28 c5 f9 ef c2 c5 f1 ef ca c5 f9 64 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 d5 eb b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 bf eb b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 a8 84 c3 5e 48 8b d8 48 b9 58 77 36 c6 f7 7f 00 00 e8 d6 6e ab 5e 48 8b c8 e8 0e 16 72 ff 8b c8 e8 47 41 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 01 c0 ff fe 48 8b d0 48 8b ce e8 26 73 02 ff 48 8b ce e8 b6 37 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja near ptr 00bch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 9e 00 00 00}
001eh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0020h lea rdx,[rip+121h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 21 01 00 00}
0027h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002ah lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0031h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0034h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0036h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0040h vpcmpeqb xmm0,xmm0,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c1}
0044h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0048h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
0050h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0055h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
005ah mov dword ptr [rsp+2ch],80h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c 80 00 00 00}
0062h lea r8,[rsp+2ch]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 2c}
0067h vpbroadcastb xmm2,byte ptr [rsp+2ch]    ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 54 24 2c}
006eh vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
0072h vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0076h vpcmpgtb xmm0,xmm1,xmm0                 ; VPCMPGTB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 64 /r || encoded[4]{c5 f1 64 c0}
007ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007eh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0082h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0083h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0084h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0085h ret                                     ; RET || C3 || encoded[1]{c3}
0086h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
008bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0090h mov dword ptr [rsp+28h],80h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 80 00 00 00}
0098h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
009dh vpbroadcastb xmm2,byte ptr [rsp+28h]    ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 54 24 28}
00a4h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
00a8h vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
00ach vpcmpgtb xmm0,xmm0,xmm1                 ; VPCMPGTB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 64 /r || encoded[4]{c5 f9 64 c1}
00b0h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
00b4h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
00b8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bbh ret                                     ; RET || C3 || encoded[1]{c3}
00bch mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
00c6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 eb b0 5e}
00cbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00ceh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d2h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf eb b0 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00e9h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00f3h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 84 c3 5e}
00f8h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00fbh mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
0105h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 6e ab 5e}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 16 72 ff}
0112h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0114h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 41 01 ff}
0119h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
011ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011fh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0122h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 c0 ff fe}
0127h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
012ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
012dh call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 73 02 ff}
0132h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0135h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 37 a8 5e}
013ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(ComparisonKind:byte kind, Vector128<sbyte> a, Vector128<sbyte> b)
; eval_g8u_v128x8i_v128x8i[255] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 66 8b c9 48 8d 15 e5 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 74 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 64 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 64 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 a1 ea b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 8b ea b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 74 83 c3 5e 48 8b d8 48 b9 68 6f 36 c6 f7 7f 00 00 e8 a2 6d ab 5e 48 8b c8 e8 da 14 72 ff 8b c8 e8 13 40 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 cd be ff fe 48 8b d0 48 8b ce e8 f2 71 02 ff 48 8b ce e8 82 36 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja short 0080h                          ; JA rel8 || 77 cb || encoded[2]{77 66}
001ah mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ch lea rdx,[rip+0e5h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e5 00 00 00}
0023h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0026h lea r10,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e2 ff ff ff}
002dh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0030h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0032h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0037h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003ch vpcmpeqb xmm0,xmm0,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c1}
0040h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0044h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0048h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
004ch vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0051h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0056h vpcmpgtb xmm0,xmm1,xmm0                 ; VPCMPGTB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 64 /r || encoded[4]{c5 f1 64 c0}
005ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
005eh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0062h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0063h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0064h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0065h ret                                     ; RET || C3 || encoded[1]{c3}
0066h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
006bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0070h vpcmpgtb xmm0,xmm0,xmm1                 ; VPCMPGTB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 64 /r || encoded[4]{c5 f9 64 c1}
0074h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0078h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
007ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007fh ret                                     ; RET || C3 || encoded[1]{c3}
0080h mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
008ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 ea b0 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0096h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00a0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b ea b0 5e}
00a5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00a8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00adh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00b7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 83 c3 5e}
00bch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bfh mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
00c9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 6d ab 5e}
00ceh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d1h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 14 72 ff}
00d6h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d8h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 40 01 ff}
00ddh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e3h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e6h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd be ff fe}
00ebh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00eeh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f1h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 71 02 ff}
00f6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f9h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 36 a8 5e}
00feh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(ComparisonKind:byte kind, Vector128<ushort> a, Vector128<ushort> b)
; eval_g8u_v128x16u_v128x16u[315] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 9e 00 00 00 8b c9 48 8d 15 21 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 75 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 2c 00 80 00 00 4c 8d 44 24 2c c4 e2 79 79 54 24 2c c5 f9 ef c2 c5 f1 ef ca c5 f1 65 c0 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 28 00 80 00 00 48 8d 4c 24 28 c4 e2 79 79 54 24 28 c5 f9 ef c2 c5 f1 ef ca c5 f9 65 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 35 e9 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 1f e9 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 08 82 c3 5e 48 8b d8 48 b9 38 87 36 c6 f7 7f 00 00 e8 36 6c ab 5e 48 8b c8 e8 6e 13 72 ff 8b c8 e8 a7 3e 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 61 bd ff fe 48 8b d0 48 8b ce e8 86 70 02 ff 48 8b ce e8 16 35 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja near ptr 00bch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 9e 00 00 00}
001eh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0020h lea rdx,[rip+121h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 21 01 00 00}
0027h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002ah lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0031h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0034h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0036h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0040h vpcmpeqw xmm0,xmm0,xmm1                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c1}
0044h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0048h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
0050h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0055h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
005ah mov dword ptr [rsp+2ch],8000h           ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c 00 80 00 00}
0062h lea r8,[rsp+2ch]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 2c}
0067h vpbroadcastw xmm2,word ptr [rsp+2ch]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 2c}
006eh vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
0072h vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0076h vpcmpgtw xmm0,xmm1,xmm0                 ; VPCMPGTW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 65 /r || encoded[4]{c5 f1 65 c0}
007ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007eh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0082h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0083h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0084h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0085h ret                                     ; RET || C3 || encoded[1]{c3}
0086h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
008bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0090h mov dword ptr [rsp+28h],8000h           ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 00 80 00 00}
0098h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
009dh vpbroadcastw xmm2,word ptr [rsp+28h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 28}
00a4h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
00a8h vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
00ach vpcmpgtw xmm0,xmm0,xmm1                 ; VPCMPGTW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 65 /r || encoded[4]{c5 f9 65 c1}
00b0h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
00b4h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
00b8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bbh ret                                     ; RET || C3 || encoded[1]{c3}
00bch mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
00c6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 e9 b0 5e}
00cbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00ceh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d2h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f e9 b0 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00e9h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00f3h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 82 c3 5e}
00f8h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00fbh mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
0105h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 6c ab 5e}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 13 72 ff}
0112h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0114h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 3e 01 ff}
0119h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
011ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011fh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0122h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 bd ff fe}
0127h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
012ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
012dh call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 70 02 ff}
0132h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0135h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 35 a8 5e}
013ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(ComparisonKind:byte kind, Vector128<short> a, Vector128<short> b)
; eval_g8u_v128x16i_v128x16i[255] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 66 8b c9 48 8d 15 e5 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 75 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 65 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 65 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 01 e8 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 eb e7 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 d4 80 c3 5e 48 8b d8 48 b9 48 7f 36 c6 f7 7f 00 00 e8 02 6b ab 5e 48 8b c8 e8 3a 12 72 ff 8b c8 e8 73 3d 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 2d bc ff fe 48 8b d0 48 8b ce e8 52 6f 02 ff 48 8b ce e8 e2 33 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja short 0080h                          ; JA rel8 || 77 cb || encoded[2]{77 66}
001ah mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ch lea rdx,[rip+0e5h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e5 00 00 00}
0023h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0026h lea r10,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e2 ff ff ff}
002dh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0030h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0032h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0037h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003ch vpcmpeqw xmm0,xmm0,xmm1                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c1}
0040h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0044h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0048h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
004ch vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0051h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0056h vpcmpgtw xmm0,xmm1,xmm0                 ; VPCMPGTW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 65 /r || encoded[4]{c5 f1 65 c0}
005ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
005eh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0062h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0063h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0064h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0065h ret                                     ; RET || C3 || encoded[1]{c3}
0066h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
006bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0070h vpcmpgtw xmm0,xmm0,xmm1                 ; VPCMPGTW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 65 /r || encoded[4]{c5 f9 65 c1}
0074h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0078h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
007ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007fh ret                                     ; RET || C3 || encoded[1]{c3}
0080h mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
008ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 e8 b0 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0096h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00a0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb e7 b0 5e}
00a5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00a8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00adh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00b7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 80 c3 5e}
00bch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bfh mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
00c9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 6b ab 5e}
00ceh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d1h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 12 72 ff}
00d6h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d8h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 3d 01 ff}
00ddh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e3h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e6h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d bc ff fe}
00ebh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00eeh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f1h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 6f 02 ff}
00f6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f9h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 33 a8 5e}
00feh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(ComparisonKind:byte kind, Vector128<uint> a, Vector128<uint> b)
; eval_g8u_v128x32u_v128x32u[315] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 9e 00 00 00 8b c9 48 8d 15 21 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 2c 00 00 00 80 4c 8d 44 24 2c c4 e2 79 58 54 24 2c c5 f9 ef c2 c5 f1 ef ca c5 f1 66 c0 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 28 00 00 00 80 48 8d 4c 24 28 c4 e2 79 58 54 24 28 c5 f9 ef c2 c5 f1 ef ca c5 f9 66 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 95 e6 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 7f e6 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 68 7f c3 5e 48 8b d8 48 b9 d8 96 36 c6 f7 7f 00 00 e8 96 69 ab 5e 48 8b c8 e8 ce 10 72 ff 8b c8 e8 07 3c 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 c1 ba ff fe 48 8b d0 48 8b ce e8 e6 6d 02 ff 48 8b ce e8 76 32 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja near ptr 00bch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 9e 00 00 00}
001eh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0020h lea rdx,[rip+121h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 21 01 00 00}
0027h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002ah lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0031h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0034h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0036h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0040h vpcmpeqd xmm0,xmm0,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c1}
0044h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0048h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
0050h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0055h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
005ah mov dword ptr [rsp+2ch],80000000h       ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c 00 00 00 80}
0062h lea r8,[rsp+2ch]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 2c}
0067h vpbroadcastd xmm2,dword ptr [rsp+2ch]   ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 2c}
006eh vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
0072h vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0076h vpcmpgtd xmm0,xmm1,xmm0                 ; VPCMPGTD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 66 /r || encoded[4]{c5 f1 66 c0}
007ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
007eh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0082h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0083h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0084h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0085h ret                                     ; RET || C3 || encoded[1]{c3}
0086h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
008bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0090h mov dword ptr [rsp+28h],80000000h       ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 00 00 00 80}
0098h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
009dh vpbroadcastd xmm2,dword ptr [rsp+28h]   ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 28}
00a4h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
00a8h vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
00ach vpcmpgtd xmm0,xmm0,xmm1                 ; VPCMPGTD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 66 /r || encoded[4]{c5 f9 66 c1}
00b0h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
00b4h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
00b8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bbh ret                                     ; RET || C3 || encoded[1]{c3}
00bch mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
00c6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 e6 b0 5e}
00cbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00ceh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d2h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f e6 b0 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00e9h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00f3h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 7f c3 5e}
00f8h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00fbh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0105h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 69 ab 5e}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 10 72 ff}
0112h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0114h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 3c 01 ff}
0119h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
011ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011fh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0122h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 ba ff fe}
0127h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
012ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
012dh call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 6d 02 ff}
0132h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0135h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 32 a8 5e}
013ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(ComparisonKind:byte kind, Vector128<int> a, Vector128<int> b)
; eval_g8u_v128x32i_v128x32i[255] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 66 8b c9 48 8d 15 e5 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 66 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 66 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 61 e5 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 4b e5 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 34 7e c3 5e 48 8b d8 48 b9 08 8f 36 c6 f7 7f 00 00 e8 62 68 ab 5e 48 8b c8 e8 9a 0f 72 ff 8b c8 e8 d3 3a 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 8d b9 ff fe 48 8b d0 48 8b ce e8 b2 6c 02 ff 48 8b ce e8 42 31 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja short 0080h                          ; JA rel8 || 77 cb || encoded[2]{77 66}
001ah mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ch lea rdx,[rip+0e5h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e5 00 00 00}
0023h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0026h lea r10,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e2 ff ff ff}
002dh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0030h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0032h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0037h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003ch vpcmpeqd xmm0,xmm0,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c1}
0040h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0044h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0048h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
004ch vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0051h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0056h vpcmpgtd xmm0,xmm1,xmm0                 ; VPCMPGTD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 66 /r || encoded[4]{c5 f1 66 c0}
005ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
005eh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0062h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0063h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0064h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0065h ret                                     ; RET || C3 || encoded[1]{c3}
0066h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
006bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0070h vpcmpgtd xmm0,xmm0,xmm1                 ; VPCMPGTD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 66 /r || encoded[4]{c5 f9 66 c1}
0074h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0078h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
007ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
007dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
007eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
007fh ret                                     ; RET || C3 || encoded[1]{c3}
0080h mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
008ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 e5 b0 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0096h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00a0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b e5 b0 5e}
00a5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00a8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00adh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00b7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 7e c3 5e}
00bch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bfh mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
00c9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 68 ab 5e}
00ceh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d1h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 0f 72 ff}
00d6h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d8h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 3a 01 ff}
00ddh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e3h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e6h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d b9 ff fe}
00ebh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00eeh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f1h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 6c 02 ff}
00f6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f9h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 31 a8 5e}
00feh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(ComparisonKind:byte kind, Vector128<ulong> a, Vector128<ulong> b)
; eval_g8u_v128x64u_v128x64u[84] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ee 00 00 00 8b c9 48 8d 15 71 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c4 e2 79 29 c1 c5 f9 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja near ptr 010ch                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ee 00 00 00}
001eh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0020h lea rdx,[rip+171h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 71 01 00 00}
0027h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002ah lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0031h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0034h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0036h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0040h vpcmpeqq xmm0,xmm0,xmm1                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 79 29 c1}
0045h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0049h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> eval<long>(ComparisonKind:byte kind, Vector128<long> a, Vector128<long> b)
; eval_g8u_v128x64i_v128x64i[325] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 a8 00 00 00 8b c9 48 8d 15 29 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c4 e2 79 29 c1 c5 f9 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c4 e3 7d 46 c8 03 c4 e2 75 37 c0 c4 e3 7d 19 c0 00 c5 f9 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 ec 57 d2 c4 e3 6d 38 c0 00 c5 ec 57 d2 c4 e3 6d 38 c9 00 c4 e2 7d 37 c1 c4 e3 7d 19 c0 00 c5 f9 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 2b e2 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 15 e2 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 fe 7a c3 5e 48 8b d8 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 2c 65 ab 5e 48 8b c8 e8 64 0c 72 ff 8b c8 e8 9d 37 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 57 b6 ff fe 48 8b d0 48 8b ce e8 7c 69 02 ff 48 8b ce e8 0c 2e a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja near ptr 00c6h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a8 00 00 00}
001eh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0020h lea rdx,[rip+129h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 29 01 00 00}
0027h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002ah lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0031h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0034h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0036h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0040h vpcmpeqq xmm0,xmm0,xmm1                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 79 29 c1}
0045h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0049h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
0054h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0059h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
005eh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0062h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
0068h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
006eh vperm2i128 ymm1,ymm0,ymm0,3             ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 7d 46 c8 03}
0074h vpcmpgtq ymm0,ymm1,ymm0                 ; VPCMPGTQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 37 /r || encoded[5]{c4 e2 75 37 c0}
0079h vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
007fh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0083h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0086h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
008ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
008bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008dh ret                                     ; RET || C3 || encoded[1]{c3}
008eh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0093h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0098h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
009ch vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
00a2h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
00a6h vinserti128 ymm1,ymm2,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c9 00}
00ach vpcmpgtq ymm0,ymm0,ymm1                 ; VPCMPGTQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 37 /r || encoded[5]{c4 e2 7d 37 c1}
00b1h vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
00b7h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
00bbh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00beh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
00c2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c3h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c4h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c5h ret                                     ; RET || C3 || encoded[1]{c3}
00c6h mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
00d0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b e2 b0 5e}
00d5h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d8h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00dch mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00e6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 e2 b0 5e}
00ebh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00eeh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00f3h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00fdh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 7a c3 5e}
0102h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0105h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
010fh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 65 ab 5e}
0114h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0117h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 0c 72 ff}
011ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
011eh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 37 01 ff}
0123h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0126h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0129h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
012ch call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 b6 ff fe}
0131h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0134h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0137h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 69 02 ff}
013ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
013fh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 2e a8 5e}
0144h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> eval<float>(ComparisonKind:byte kind, Vector128<float> a, Vector128<float> b)
; eval_g8u_v128x32f_v128x32f[337] = {57 56 53 48 83 ec 60 c5 f8 77 48 8b f1 8b fa 40 0f b6 c7 ff c8 83 f8 03 0f 87 b4 00 00 00 8b c0 48 8d 0d 39 01 00 00 8b 0c 81 48 8d 15 de ff ff ff 48 03 ca ff e1 c4 c1 79 10 00 c4 c1 79 10 09 c5 f8 c2 c1 00 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 50 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 aa fb ff ff c5 f9 28 44 24 50 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 40 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 9b fb ff ff c5 f9 28 44 24 40 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 9f dc b0 5e 48 8b f0 40 88 7e 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 89 dc b0 5e 48 8b f8 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 72 75 c3 5e 48 8b d8 48 b9 58 af 36 c6 f7 7f 00 00 e8 a0 5f ab 5e 48 8b c8 e8 d8 06 72 ff 8b c8 e8 11 32 01 ff 4c 8b c0 48 8b cb 48 8b d6 e8 cb b0 ff fe 48 8b d0 48 8b cf e8 f0 63 02 ff 48 8b cf e8 80 28 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,60h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 60}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000fh movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
0013h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0015h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0018h ja near ptr 00d2h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b4 00 00 00}
001eh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0020h lea rcx,[rip+139h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 39 01 00 00}
0027h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
002ah lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
0031h add rcx,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 ca}
0034h jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0036h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0040h vcmpeqps xmm0,xmm0,xmm1                 ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[5]{c5 f8 c2 c1 00}
0045h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
0049h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004ch add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
0054h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0059h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
005eh lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
0063h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0069h vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
006fh lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
0074h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0079h call 7ff7c7398b58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa fb ff ff}
007eh vmovapd xmm0,[rsp+50h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 50}
0084h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
0088h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
008bh add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
008fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
0093h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0098h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
009dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
00a2h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
00a8h vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
00aeh lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
00b3h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
00b8h call 7ff7c7398b88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b fb ff ff}
00bdh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00c3h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
00c7h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00cah add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
00ceh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00cfh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d1h ret                                     ; RET || C3 || encoded[1]{c3}
00d2h mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f dc b0 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov [rsi+8],dil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 7e 08}
00e8h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 dc b0 5e}
00f7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00fah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00ffh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0109h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 75 c3 5e}
010eh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0111h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
011bh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 5f ab 5e}
0120h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0123h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 06 72 ff}
0128h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
012ah call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 32 01 ff}
012fh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0132h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0135h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0138h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb b0 ff fe}
013dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0140h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0143h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 63 02 ff}
0148h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
014bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 28 a8 5e}
0150h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> eval<double>(ComparisonKind:byte kind, Vector128<double> a, Vector128<double> b)
; eval_g8u_v128x64f_v128x64f[337] = {57 56 53 48 83 ec 60 c5 f8 77 48 8b f1 8b fa 40 0f b6 c7 ff c8 83 f8 03 0f 87 b4 00 00 00 8b c0 48 8d 0d 39 01 00 00 8b 0c 81 48 8d 15 de ff ff ff 48 03 ca ff e1 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 c2 c1 00 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 50 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 ba fa ff ff c5 f9 28 44 24 50 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 40 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 ab fa ff ff c5 f9 28 44 24 40 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 0f db b0 5e 48 8b f0 40 88 7e 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 f9 da b0 5e 48 8b f8 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 e2 73 c3 5e 48 8b d8 48 b9 38 b8 36 c6 f7 7f 00 00 e8 10 5e ab 5e 48 8b c8 e8 48 05 72 ff 8b c8 e8 81 30 01 ff 4c 8b c0 48 8b cb 48 8b d6 e8 3b af ff fe 48 8b d0 48 8b cf e8 60 62 02 ff 48 8b cf e8 f0 26 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,60h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 60}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
000fh movzx eax,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c7}
0013h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0015h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0018h ja near ptr 00d2h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b4 00 00 00}
001eh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0020h lea rcx,[rip+139h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 39 01 00 00}
0027h mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
002ah lea rdx,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 de ff ff ff}
0031h add rcx,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 ca}
0034h jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0036h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0040h vcmpeqpd xmm0,xmm0,xmm1                 ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[5]{c5 f9 c2 c1 00}
0045h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
0049h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
004ch add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
0054h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0059h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
005eh lea rcx,[rsp+50h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 50}
0063h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0069h vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
006fh lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
0074h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0079h call 7ff7c7398bf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fa ff ff}
007eh vmovapd xmm0,[rsp+50h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 50}
0084h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
0088h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
008bh add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
008fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0090h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0091h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0092h ret                                     ; RET || C3 || encoded[1]{c3}
0093h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0098h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
009dh lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
00a2h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
00a8h vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
00aeh lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
00b3h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
00b8h call 7ff7c7398c28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab fa ff ff}
00bdh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00c3h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
00c7h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00cah add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
00ceh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00cfh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d1h ret                                     ; RET || C3 || encoded[1]{c3}
00d2h mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f db b0 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov [rsi+8],dil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 7e 08}
00e8h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 da b0 5e}
00f7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00fah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00ffh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0109h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 73 c3 5e}
010eh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0111h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
011bh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 5e ab 5e}
0120h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0123h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 05 72 ff}
0128h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
012ah call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 30 01 ff}
012fh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0132h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0135h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0138h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b af ff fe}
013dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0140h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0143h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 62 02 ff}
0148h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
014bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 26 a8 5e}
0150h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> eval<byte>(ComparisonKind:byte kind, Vector256<byte> a, Vector256<byte> b)
; eval_g8u_v256x8u_v256x8u[324] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 a7 00 00 00 8b c9 48 8d 15 29 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 74 c1 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 2c 80 00 00 00 4c 8d 44 24 2c c4 e2 7d 78 54 24 2c c5 fd ef c2 c5 f5 ef ca c5 f5 64 c0 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 28 80 00 00 00 48 8d 4c 24 28 c4 e2 7d 78 54 24 28 c5 fd ef c2 c5 f5 ef ca c5 fd 64 c1 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 8c d9 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 76 d9 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 5f 72 c3 5e 48 8b d8 48 b9 58 77 36 c6 f7 7f 00 00 e8 8d 5c ab 5e 48 8b c8 e8 c5 03 72 ff 8b c8 e8 fe 2e 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 b8 ad ff fe 48 8b d0 48 8b ce e8 dd 60 02 ff 48 8b ce e8 6d 25 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja near ptr 00c5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a7 00 00 00}
001eh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0020h lea rdx,[rip+129h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 29 01 00 00}
0027h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002ah lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0031h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0034h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0036h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003bh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0040h vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0044h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0048h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
004fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
0053h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0058h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
005dh mov dword ptr [rsp+2ch],80h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c 80 00 00 00}
0065h lea r8,[rsp+2ch]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 2c}
006ah vpbroadcastb ymm2,byte ptr [rsp+2ch]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 54 24 2c}
0071h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0075h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0079h vpcmpgtb ymm0,ymm1,ymm0                 ; VPCMPGTB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 64 /r || encoded[4]{c5 f5 64 c0}
007dh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0081h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0084h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
008ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0091h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0096h mov dword ptr [rsp+28h],80h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 80 00 00 00}
009eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
00a3h vpbroadcastb ymm2,byte ptr [rsp+28h]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 54 24 28}
00aah vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
00aeh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
00b2h vpcmpgtb ymm0,ymm0,ymm1                 ; VPCMPGTB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 64 /r || encoded[4]{c5 fd 64 c1}
00b6h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
00bah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00bdh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
00c1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c4h ret                                     ; RET || C3 || encoded[1]{c3}
00c5h mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
00cfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c d9 b0 5e}
00d4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d7h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00dbh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 d9 b0 5e}
00eah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00edh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00f2h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00fch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 72 c3 5e}
0101h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0104h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
010eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 5c ab 5e}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 03 72 ff}
011bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
011dh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 2e 01 ff}
0122h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0125h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0128h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
012bh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 ad ff fe}
0130h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0133h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0136h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 60 02 ff}
013bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
013eh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 25 a8 5e}
0143h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> eval<sbyte>(ComparisonKind:byte kind, Vector256<sbyte> a, Vector256<sbyte> b)
; eval_g8u_v256x8i_v256x8i[264] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 6f 8b c9 48 8d 15 ed 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 74 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 64 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 64 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 48 d8 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 32 d8 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 1b 71 c3 5e 48 8b d8 48 b9 68 6f 36 c6 f7 7f 00 00 e8 49 5b ab 5e 48 8b c8 e8 81 02 72 ff 8b c8 e8 ba 2d 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 74 ac ff fe 48 8b d0 48 8b ce e8 99 5f 02 ff 48 8b ce e8 29 24 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja short 0089h                          ; JA rel8 || 77 cb || encoded[2]{77 6f}
001ah mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ch lea rdx,[rip+0edh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ed 00 00 00}
0023h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0026h lea r10,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e2 ff ff ff}
002dh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0030h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0032h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0037h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
003ch vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0040h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0044h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0047h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
004fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0054h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0059h vpcmpgtb ymm0,ymm1,ymm0                 ; VPCMPGTB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 64 /r || encoded[4]{c5 f5 64 c0}
005dh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0061h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0064h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
006ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0071h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0076h vpcmpgtb ymm0,ymm0,ymm1                 ; VPCMPGTB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 64 /r || encoded[4]{c5 fd 64 c1}
007ah vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
007eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0081h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0085h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0086h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0087h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0088h ret                                     ; RET || C3 || encoded[1]{c3}
0089h mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
0093h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 d8 b0 5e}
0098h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009bh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009fh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 d8 b0 5e}
00aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00b1h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b6h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00c0h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 71 c3 5e}
00c5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c8h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
00d2h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 5b ab 5e}
00d7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dah call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 02 72 ff}
00dfh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00e1h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 2d 01 ff}
00e6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e9h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00ech mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00efh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 ac ff fe}
00f4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fah call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 5f 02 ff}
00ffh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0102h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 24 a8 5e}
0107h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> eval<ushort>(ComparisonKind:byte kind, Vector256<ushort> a, Vector256<ushort> b)
; eval_g8u_v256x16u_v256x16u[324] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 a7 00 00 00 8b c9 48 8d 15 29 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 75 c1 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 2c 00 80 00 00 4c 8d 44 24 2c c4 e2 7d 79 54 24 2c c5 fd ef c2 c5 f5 ef ca c5 f5 65 c0 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 28 00 80 00 00 48 8d 4c 24 28 c4 e2 7d 79 54 24 28 c5 fd ef c2 c5 f5 ef ca c5 fd 65 c1 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 cc d6 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 b6 d6 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 9f 6f c3 5e 48 8b d8 48 b9 38 87 36 c6 f7 7f 00 00 e8 cd 59 ab 5e 48 8b c8 e8 05 01 72 ff 8b c8 e8 3e 2c 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 f8 aa ff fe 48 8b d0 48 8b ce e8 1d 5e 02 ff 48 8b ce e8 ad 22 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja near ptr 00c5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a7 00 00 00}
001eh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0020h lea rdx,[rip+129h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 29 01 00 00}
0027h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002ah lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0031h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0034h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0036h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003bh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0040h vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0044h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0048h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
004fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
0053h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0058h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
005dh mov dword ptr [rsp+2ch],8000h           ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c 00 80 00 00}
0065h lea r8,[rsp+2ch]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 2c}
006ah vpbroadcastw ymm2,word ptr [rsp+2ch]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 2c}
0071h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0075h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0079h vpcmpgtw ymm0,ymm1,ymm0                 ; VPCMPGTW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 65 /r || encoded[4]{c5 f5 65 c0}
007dh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0081h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0084h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
008ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0091h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0096h mov dword ptr [rsp+28h],8000h           ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 00 80 00 00}
009eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
00a3h vpbroadcastw ymm2,word ptr [rsp+28h]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 28}
00aah vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
00aeh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
00b2h vpcmpgtw ymm0,ymm0,ymm1                 ; VPCMPGTW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 65 /r || encoded[4]{c5 fd 65 c1}
00b6h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
00bah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00bdh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
00c1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c4h ret                                     ; RET || C3 || encoded[1]{c3}
00c5h mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
00cfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc d6 b0 5e}
00d4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d7h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00dbh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 d6 b0 5e}
00eah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00edh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00f2h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00fch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 6f c3 5e}
0101h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0104h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
010eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 59 ab 5e}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 01 72 ff}
011bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
011dh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 2c 01 ff}
0122h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0125h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0128h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
012bh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 aa ff fe}
0130h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0133h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0136h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 5e 02 ff}
013bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
013eh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 22 a8 5e}
0143h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> eval<short>(ComparisonKind:byte kind, Vector256<short> a, Vector256<short> b)
; eval_g8u_v256x16i_v256x16i[264] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 6f 8b c9 48 8d 15 ed 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 75 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 65 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 65 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 88 d5 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 72 d5 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 5b 6e c3 5e 48 8b d8 48 b9 48 7f 36 c6 f7 7f 00 00 e8 89 58 ab 5e 48 8b c8 e8 c1 ff 71 ff 8b c8 e8 fa 2a 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 b4 a9 ff fe 48 8b d0 48 8b ce e8 d9 5c 02 ff 48 8b ce e8 69 21 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja short 0089h                          ; JA rel8 || 77 cb || encoded[2]{77 6f}
001ah mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ch lea rdx,[rip+0edh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ed 00 00 00}
0023h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0026h lea r10,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e2 ff ff ff}
002dh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0030h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0032h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0037h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
003ch vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0040h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0044h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0047h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
004fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0054h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0059h vpcmpgtw ymm0,ymm1,ymm0                 ; VPCMPGTW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 65 /r || encoded[4]{c5 f5 65 c0}
005dh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0061h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0064h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
006ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0071h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0076h vpcmpgtw ymm0,ymm0,ymm1                 ; VPCMPGTW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 65 /r || encoded[4]{c5 fd 65 c1}
007ah vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
007eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0081h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0085h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0086h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0087h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0088h ret                                     ; RET || C3 || encoded[1]{c3}
0089h mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
0093h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 d5 b0 5e}
0098h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009bh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009fh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 d5 b0 5e}
00aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00b1h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b6h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00c0h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 6e c3 5e}
00c5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c8h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
00d2h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 58 ab 5e}
00d7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dah call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 ff 71 ff}
00dfh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00e1h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 2a 01 ff}
00e6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e9h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00ech mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00efh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 a9 ff fe}
00f4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fah call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 5c 02 ff}
00ffh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0102h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 21 a8 5e}
0107h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> eval<uint>(ComparisonKind:byte kind, Vector256<uint> a, Vector256<uint> b)
; eval_g8u_v256x32u_v256x32u[324] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 a7 00 00 00 8b c9 48 8d 15 29 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 76 c1 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 2c 00 00 00 80 4c 8d 44 24 2c c4 e2 7d 58 54 24 2c c5 fd ef c2 c5 f5 ef ca c5 f5 66 c0 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 28 00 00 00 80 48 8d 4c 24 28 c4 e2 7d 58 54 24 28 c5 fd ef c2 c5 f5 ef ca c5 fd 66 c1 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 0c d4 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 f6 d3 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 df 6c c3 5e 48 8b d8 48 b9 d8 96 36 c6 f7 7f 00 00 e8 0d 57 ab 5e 48 8b c8 e8 45 fe 71 ff 8b c8 e8 7e 29 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 38 a8 ff fe 48 8b d0 48 8b ce e8 5d 5b 02 ff 48 8b ce e8 ed 1f a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja near ptr 00c5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 a7 00 00 00}
001eh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0020h lea rdx,[rip+129h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 29 01 00 00}
0027h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002ah lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0031h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0034h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0036h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003bh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0040h vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0044h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0048h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004bh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
004fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
0053h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0058h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
005dh mov dword ptr [rsp+2ch],80000000h       ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c 00 00 00 80}
0065h lea r8,[rsp+2ch]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 2c}
006ah vpbroadcastd ymm2,dword ptr [rsp+2ch]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 2c}
0071h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
0075h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0079h vpcmpgtd ymm0,ymm1,ymm0                 ; VPCMPGTD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 66 /r || encoded[4]{c5 f5 66 c0}
007dh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0081h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0084h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
008ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0091h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0096h mov dword ptr [rsp+28h],80000000h       ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 00 00 00 80}
009eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
00a3h vpbroadcastd ymm2,dword ptr [rsp+28h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 28}
00aah vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
00aeh vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
00b2h vpcmpgtd ymm0,ymm0,ymm1                 ; VPCMPGTD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 66 /r || encoded[4]{c5 fd 66 c1}
00b6h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
00bah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00bdh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
00c1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00c2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00c3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00c4h ret                                     ; RET || C3 || encoded[1]{c3}
00c5h mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
00cfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c d4 b0 5e}
00d4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d7h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00dbh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 d3 b0 5e}
00eah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00edh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00f2h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00fch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 6c c3 5e}
0101h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0104h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
010eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 57 ab 5e}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 fe 71 ff}
011bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
011dh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 29 01 ff}
0122h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0125h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0128h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
012bh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 a8 ff fe}
0130h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0133h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0136h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 5b 02 ff}
013bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
013eh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 1f a8 5e}
0143h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> eval<int>(ComparisonKind:byte kind, Vector256<int> a, Vector256<int> b)
; eval_g8u_v256x32i_v256x32i[264] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 6f 8b c9 48 8d 15 ed 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 76 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 66 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 66 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 c8 d2 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 b2 d2 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 9b 6b c3 5e 48 8b d8 48 b9 08 8f 36 c6 f7 7f 00 00 e8 c9 55 ab 5e 48 8b c8 e8 01 fd 71 ff 8b c8 e8 3a 28 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 f4 a6 ff fe 48 8b d0 48 8b ce e8 19 5a 02 ff 48 8b ce e8 a9 1e a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja short 0089h                          ; JA rel8 || 77 cb || encoded[2]{77 6f}
001ah mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ch lea rdx,[rip+0edh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ed 00 00 00}
0023h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0026h lea r10,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e2 ff ff ff}
002dh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0030h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0032h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0037h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
003ch vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0040h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0044h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0047h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
004fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0054h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0059h vpcmpgtd ymm0,ymm1,ymm0                 ; VPCMPGTD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 66 /r || encoded[4]{c5 f5 66 c0}
005dh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0061h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0064h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
006ch vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0071h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0076h vpcmpgtd ymm0,ymm0,ymm1                 ; VPCMPGTD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 66 /r || encoded[4]{c5 fd 66 c1}
007ah vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
007eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0081h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0085h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0086h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0087h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0088h ret                                     ; RET || C3 || encoded[1]{c3}
0089h mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
0093h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 d2 b0 5e}
0098h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009bh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009fh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 d2 b0 5e}
00aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00b1h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b6h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00c0h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 6b c3 5e}
00c5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c8h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
00d2h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 55 ab 5e}
00d7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dah call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 fd 71 ff}
00dfh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00e1h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 28 01 ff}
00e6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e9h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00ech mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00efh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 a6 ff fe}
00f4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fah call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 5a 02 ff}
00ffh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0102h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 1e a8 5e}
0107h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> eval<ulong>(ComparisonKind:byte kind, Vector256<ulong> a, Vector256<ulong> b)
; eval_g8u_v256x64u_v256x64u[84] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 b8 00 00 00 8b c9 48 8d 15 39 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 7d 29 c1 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja near ptr 00d6h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b8 00 00 00}
001eh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0020h lea rdx,[rip+139h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 39 01 00 00}
0027h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
002ah lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
0031h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0034h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0036h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003bh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0040h vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0045h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0049h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ch add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> eval<long>(ComparisonKind:byte kind, Vector256<long> a, Vector256<long> b)
; eval_g8u_v256x64i_v256x64i[267] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 72 8b c9 48 8d 15 ed 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 7d 29 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 75 37 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 7d 37 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 18 cf a2 c6 f7 7f 00 00 e8 f5 cb b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 df cb b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 c8 64 c3 5e 48 8b d8 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 f6 4e ab 5e 48 8b c8 e8 2e f6 71 ff 8b c8 e8 67 21 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 21 a0 ff fe 48 8b d0 48 8b ce e8 46 53 02 ff 48 8b ce e8 d6 17 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0013h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0015h cmp ecx,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 03}
0018h ja short 008ch                          ; JA rel8 || 77 cb || encoded[2]{77 72}
001ah mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ch lea rdx,[rip+0edh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ed 00 00 00}
0023h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0026h lea r10,[rip-1eh]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e2 ff ff ff}
002dh add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0030h jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0032h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0037h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
003ch vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0041h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0045h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0048h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
0050h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0055h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
005ah vpcmpgtq ymm0,ymm1,ymm0                 ; VPCMPGTQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 37 /r || encoded[5]{c4 e2 75 37 c0}
005fh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0063h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0066h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006dh ret                                     ; RET || C3 || encoded[1]{c3}
006eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0073h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0078h vpcmpgtq ymm0,ymm0,ymm1                 ; VPCMPGTQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 37 /r || encoded[5]{c4 e2 7d 37 c1}
007dh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0081h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0084h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0088h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0089h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
008ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
008ch mov rcx,7ff7c6a2cf18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cf a2 c6 f7 7f 00 00}
0096h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 cb b0 5e}
009bh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009eh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a2h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
00ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df cb b0 5e}
00b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00b4h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b9h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
00c3h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 64 c3 5e}
00c8h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00cbh mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
00d5h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 4e ab 5e}
00dah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ddh call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e f6 71 ff}
00e2h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00e4h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 21 01 ff}
00e9h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00ech mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00efh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f2h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 a0 ff fe}
00f7h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00fah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fdh call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 53 02 ff}
0102h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0105h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 17 a8 5e}
010ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(BinaryBitLogicKind:byte kind, Vector128<byte> a, Vector128<byte> b)
; eval_g8u_v128x8u_v128x8u[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 74 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 74 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 71 c9 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 5b c9 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 44 62 c3 5e 48 8b d8 48 b9 58 77 36 c6 f7 7f 00 00 e8 72 4c ab 5e 48 8b c8 e8 aa f3 71 ff 8b c8 e8 e3 1e 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 9d 9d ff fe 48 8b d0 48 8b ce e8 c2 50 02 ff 48 8b ce e8 52 15 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01d0h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b7 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0035h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0039h vpcmpeqb xmm0,xmm0,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c1}
003dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
0049h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
0059h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
005eh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0063h vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0067h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
006bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006eh jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0073h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0078h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
007dh vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0081h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
0085h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0089h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
008dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0090h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0095h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
009ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
009fh vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00a3h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00a7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00aah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00afh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00b4h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00b9h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00bdh vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00c1h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00c5h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00c9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cch jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d1h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00d6h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00dbh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00dfh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00e3h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e6h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ebh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00f0h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00f5h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00f9h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00fdh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0101h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0105h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0108h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010dh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0112h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0116h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0119h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011eh vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
0123h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0127h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012ah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
012fh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0134h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
0138h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
013ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0140h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0143h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0148h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
014dh vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
0151h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0155h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0159h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015ch jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015eh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0163h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0168h vpcmpeqb xmm2,xmm1,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f1 74 d1}
016ch vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0170h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0174h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0178h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017bh jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017dh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0182h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0187h vpandn xmm0,xmm0,xmm1                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f9 df c1}
018bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
018fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0192h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0194h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0199h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
019eh vpcmpeqb xmm2,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 d0}
01a2h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
01a6h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
01aah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01aeh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b1h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b3h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
01b8h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
01bdh vpandn xmm0,xmm1,xmm0                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f1 df c0}
01c1h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01c5h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c8h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01cch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01cdh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01ceh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01cfh ret                                     ; RET || C3 || encoded[1]{c3}
01d0h mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 c9 b0 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b c9 b0 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 62 c3 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 4c ab 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa f3 71 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 1e 01 ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 9d ff fe}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 50 02 ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 15 a8 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(BinaryBitLogicKind:byte kind, Vector128<sbyte> a, Vector128<sbyte> b)
; eval_g8u_v128x8i_v128x8i[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 74 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 74 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 91 c2 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 7b c2 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 64 5b c3 5e 48 8b d8 48 b9 68 6f 36 c6 f7 7f 00 00 e8 92 45 ab 5e 48 8b c8 e8 ca ec 71 ff 8b c8 e8 03 18 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 bd 96 ff fe 48 8b d0 48 8b ce e8 e2 49 02 ff 48 8b ce e8 72 0e a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01d0h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b7 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0035h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0039h vpcmpeqb xmm0,xmm0,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c1}
003dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
0049h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
0059h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
005eh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0063h vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0067h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
006bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006eh jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0073h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0078h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
007dh vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0081h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
0085h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0089h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
008dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0090h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0095h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
009ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
009fh vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00a3h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00a7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00aah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00afh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00b4h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00b9h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00bdh vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00c1h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00c5h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00c9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cch jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d1h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00d6h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00dbh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00dfh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00e3h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e6h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ebh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00f0h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00f5h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00f9h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00fdh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0101h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0105h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0108h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010dh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0112h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0116h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0119h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011eh vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
0123h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0127h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012ah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
012fh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0134h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
0138h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
013ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0140h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0143h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0148h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
014dh vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
0151h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0155h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0159h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015ch jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015eh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0163h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0168h vpcmpeqb xmm2,xmm1,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f1 74 d1}
016ch vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0170h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0174h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0178h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017bh jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017dh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0182h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0187h vpandn xmm0,xmm0,xmm1                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f9 df c1}
018bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
018fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0192h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0194h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0199h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
019eh vpcmpeqb xmm2,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 d0}
01a2h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
01a6h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
01aah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01aeh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b1h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b3h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
01b8h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
01bdh vpandn xmm0,xmm1,xmm0                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f1 df c0}
01c1h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01c5h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c8h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01cch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01cdh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01ceh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01cfh ret                                     ; RET || C3 || encoded[1]{c3}
01d0h mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 c2 b0 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b c2 b0 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 5b c3 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 45 ab 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca ec 71 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 18 01 ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 96 ff fe}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 49 02 ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 0e a8 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, Vector128<ushort> a, Vector128<ushort> b)
; eval_g8u_v128x16u_v128x16u[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 75 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 75 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 b1 bf b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 9b bf b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 84 58 c3 5e 48 8b d8 48 b9 38 87 36 c6 f7 7f 00 00 e8 b2 42 ab 5e 48 8b c8 e8 ea e9 71 ff 8b c8 e8 23 15 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 dd 93 ff fe 48 8b d0 48 8b ce e8 02 47 02 ff 48 8b ce e8 92 0b a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01d0h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b7 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0035h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0039h vpcmpeqw xmm0,xmm0,xmm1                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c1}
003dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
0049h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
0059h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
005eh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0063h vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0067h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
006bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006eh jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0073h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0078h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
007dh vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0081h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
0085h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0089h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
008dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0090h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0095h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
009ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
009fh vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00a3h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00a7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00aah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00afh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00b4h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00b9h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00bdh vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00c1h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00c5h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00c9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cch jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d1h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00d6h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00dbh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00dfh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00e3h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e6h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ebh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00f0h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00f5h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00f9h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00fdh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0101h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0105h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0108h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010dh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0112h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0116h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0119h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011eh vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
0123h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0127h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012ah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
012fh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0134h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
0138h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
013ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0140h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0143h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0148h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
014dh vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
0151h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0155h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0159h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015ch jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015eh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0163h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0168h vpcmpeqw xmm2,xmm1,xmm1                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f1 75 d1}
016ch vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0170h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0174h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0178h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017bh jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017dh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0182h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0187h vpandn xmm0,xmm0,xmm1                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f9 df c1}
018bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
018fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0192h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0194h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0199h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
019eh vpcmpeqw xmm2,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 d0}
01a2h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
01a6h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
01aah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01aeh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b1h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b3h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
01b8h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
01bdh vpandn xmm0,xmm1,xmm0                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f1 df c0}
01c1h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01c5h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c8h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01cch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01cdh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01ceh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01cfh ret                                     ; RET || C3 || encoded[1]{c3}
01d0h mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 bf b0 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b bf b0 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 58 c3 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 42 ab 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea e9 71 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 15 01 ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 93 ff fe}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 47 02 ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 0b a8 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(BinaryBitLogicKind:byte kind, Vector128<short> a, Vector128<short> b)
; eval_g8u_v128x16i_v128x16i[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 75 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 75 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 d1 bc b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 bb bc b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 a4 55 c3 5e 48 8b d8 48 b9 48 7f 36 c6 f7 7f 00 00 e8 d2 3f ab 5e 48 8b c8 e8 0a e7 71 ff 8b c8 e8 43 12 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 fd 90 ff fe 48 8b d0 48 8b ce e8 22 44 02 ff 48 8b ce e8 b2 08 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01d0h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b7 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0035h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0039h vpcmpeqw xmm0,xmm0,xmm1                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c1}
003dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
0049h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
0059h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
005eh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0063h vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0067h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
006bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006eh jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0073h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0078h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
007dh vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0081h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
0085h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0089h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
008dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0090h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0095h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
009ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
009fh vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00a3h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00a7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00aah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00afh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00b4h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00b9h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00bdh vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00c1h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00c5h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00c9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cch jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d1h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00d6h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00dbh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00dfh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00e3h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e6h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ebh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00f0h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00f5h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00f9h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00fdh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0101h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0105h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0108h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010dh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0112h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0116h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0119h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011eh vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
0123h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0127h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012ah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
012fh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0134h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
0138h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
013ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0140h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0143h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0148h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
014dh vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
0151h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0155h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0159h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015ch jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015eh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0163h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0168h vpcmpeqw xmm2,xmm1,xmm1                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f1 75 d1}
016ch vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0170h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0174h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0178h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017bh jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017dh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0182h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0187h vpandn xmm0,xmm0,xmm1                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f9 df c1}
018bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
018fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0192h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0194h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0199h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
019eh vpcmpeqw xmm2,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 d0}
01a2h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
01a6h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
01aah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01aeh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b1h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b3h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
01b8h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
01bdh vpandn xmm0,xmm1,xmm0                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f1 df c0}
01c1h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01c5h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c8h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01cch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01cdh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01ceh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01cfh ret                                     ; RET || C3 || encoded[1]{c3}
01d0h mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 bc b0 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb bc b0 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 55 c3 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 3f ab 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a e7 71 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 12 01 ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 90 ff fe}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 44 02 ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 08 a8 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(BinaryBitLogicKind:byte kind, Vector128<uint> a, Vector128<uint> b)
; eval_g8u_v128x32u_v128x32u[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 f1 b5 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 db b5 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 c4 4e c3 5e 48 8b d8 48 b9 d8 96 36 c6 f7 7f 00 00 e8 f2 38 ab 5e 48 8b c8 e8 2a e0 71 ff 8b c8 e8 63 0b 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 1d 8a ff fe 48 8b d0 48 8b ce e8 42 3d 02 ff 48 8b ce e8 d2 01 a8 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01d0h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b7 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0035h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0039h vpcmpeqd xmm0,xmm0,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c1}
003dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
0049h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
0059h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
005eh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0063h vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0067h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
006bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006eh jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0073h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0078h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
007dh vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0081h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0085h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0089h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
008dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0090h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0095h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
009ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
009fh vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00a3h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00a7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00aah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00afh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00b4h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00b9h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00bdh vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00c1h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00c5h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00c9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cch jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d1h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00d6h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00dbh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00dfh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00e3h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e6h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ebh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00f0h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00f5h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00f9h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00fdh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0101h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0105h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0108h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010dh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0112h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0116h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0119h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011eh vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
0123h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0127h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012ah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
012fh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0134h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0138h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
013ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0140h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0143h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0148h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
014dh vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0151h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0155h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0159h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015ch jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015eh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0163h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0168h vpcmpeqd xmm2,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 d1}
016ch vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0170h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0174h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0178h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017bh jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017dh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0182h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0187h vpandn xmm0,xmm0,xmm1                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f9 df c1}
018bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
018fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0192h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0194h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0199h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
019eh vpcmpeqd xmm2,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 d0}
01a2h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
01a6h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
01aah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01aeh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b1h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b3h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
01b8h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
01bdh vpandn xmm0,xmm1,xmm0                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f1 df c0}
01c1h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01c5h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c8h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01cch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01cdh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01ceh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01cfh ret                                     ; RET || C3 || encoded[1]{c3}
01d0h mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 b5 b0 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db b5 b0 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 4e c3 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 38 ab 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a e0 71 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 0b 01 ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 8a ff fe}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 3d 02 ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 01 a8 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(BinaryBitLogicKind:byte kind, Vector128<int> a, Vector128<int> b)
; eval_g8u_v128x32i_v128x32i[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 11 b3 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 fb b2 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 e4 4b c3 5e 48 8b d8 48 b9 08 8f 36 c6 f7 7f 00 00 e8 12 36 ab 5e 48 8b c8 e8 4a dd 71 ff 8b c8 e8 83 08 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 3d 87 ff fe 48 8b d0 48 8b ce e8 62 3a 02 ff 48 8b ce e8 f2 fe a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01d0h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b7 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0035h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0039h vpcmpeqd xmm0,xmm0,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c1}
003dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
0049h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
0059h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
005eh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0063h vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0067h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
006bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006eh jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0073h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0078h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
007dh vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0081h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0085h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0089h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
008dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0090h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0095h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
009ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
009fh vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00a3h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00a7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00aah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00afh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00b4h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00b9h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00bdh vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00c1h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00c5h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00c9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cch jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d1h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00d6h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00dbh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00dfh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00e3h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e6h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ebh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00f0h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00f5h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00f9h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00fdh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0101h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0105h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0108h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010dh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0112h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0116h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0119h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011eh vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
0123h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0127h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012ah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
012fh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0134h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0138h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
013ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0140h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0143h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0148h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
014dh vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0151h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0155h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0159h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015ch jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015eh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0163h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0168h vpcmpeqd xmm2,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 d1}
016ch vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0170h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0174h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0178h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017bh jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017dh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0182h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0187h vpandn xmm0,xmm0,xmm1                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f9 df c1}
018bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
018fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0192h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0194h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0199h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
019eh vpcmpeqd xmm2,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 d0}
01a2h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
01a6h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
01aah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01aeh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b1h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b3h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
01b8h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
01bdh vpandn xmm0,xmm1,xmm0                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f1 df c0}
01c1h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01c5h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c8h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01cch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01cdh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01ceh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01cfh ret                                     ; RET || C3 || encoded[1]{c3}
01d0h mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 b3 b0 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb b2 b0 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 4b c3 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 36 ab 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a dd 71 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 08 01 ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 87 ff fe}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 3a 02 ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 fe a7 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, Vector128<ulong> a, Vector128<ulong> b)
; eval_g8u_v128x64u_v128x64u[592] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b8 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 30 b0 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 1a b0 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 03 49 c3 5e 48 8b d8 48 b9 78 a6 36 c6 f7 7f 00 00 e8 31 33 ab 5e 48 8b c8 e8 69 da 71 ff 8b c8 e8 a2 05 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 5c 84 ff fe 48 8b d0 48 8b ce e8 81 37 02 ff 48 8b ce e8 11 fc a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01d1h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b8 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0035h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0039h vpcmpeqq xmm0,xmm0,xmm1                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 79 29 c1}
003eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0042h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0045h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
004ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0052h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0055h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
005ah vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
005fh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0064h vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0068h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
006ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006fh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0074h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0079h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
007eh vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0082h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0086h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
008ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
008eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0091h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0096h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
009bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00a0h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00a4h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00a8h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00abh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00b0h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00b5h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00bah vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00beh vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00c2h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00c6h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00cah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cdh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d2h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00d7h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00dch vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00e0h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00e4h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e7h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ech vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00f1h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00f6h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00fah vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00feh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0102h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0106h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0109h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010eh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0113h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0117h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
011ah jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011fh vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
0124h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0128h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012bh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
0130h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0135h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0139h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
013dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0141h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0144h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0149h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
014eh vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0152h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0156h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
015ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015dh jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015fh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0164h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0169h vpcmpeqd xmm2,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 d1}
016dh vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0171h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0175h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0179h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017ch jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017eh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0183h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0188h vpandn xmm0,xmm0,xmm1                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f9 df c1}
018ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0190h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0193h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0195h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
019ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
019fh vpcmpeqd xmm2,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 d0}
01a3h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
01a7h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
01abh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01afh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b2h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b4h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
01b9h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
01beh vpandn xmm0,xmm1,xmm0                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f1 df c0}
01c2h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01c6h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c9h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01cdh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01ceh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01cfh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d0h ret                                     ; RET || C3 || encoded[1]{c3}
01d1h mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01dbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 b0 b0 5e}
01e0h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e3h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e7h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a b0 b0 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01feh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0208h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 49 c3 5e}
020dh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0210h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
021ah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 33 ab 5e}
021fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0222h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 da 71 ff}
0227h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0229h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 05 01 ff}
022eh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0231h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0234h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0237h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 84 ff fe}
023ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0242h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 37 02 ff}
0247h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 fc a7 5e}
024fh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> eval<long>(BinaryBitLogicKind:byte kind, Vector128<long> a, Vector128<long> b)
; eval_g8u_v128x64i_v128x64i[592] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b8 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 50 ad b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 3a ad b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 23 46 c3 5e 48 8b d8 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 51 30 ab 5e 48 8b c8 e8 89 d7 71 ff 8b c8 e8 c2 02 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 7c 81 ff fe 48 8b d0 48 8b ce e8 a1 34 02 ff 48 8b ce e8 31 f9 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01d1h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b8 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0035h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0039h vpcmpeqq xmm0,xmm0,xmm1                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 79 29 c1}
003eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0042h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0045h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
004ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0052h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0055h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
005ah vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
005fh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0064h vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0068h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
006ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006fh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0074h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0079h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
007eh vpand xmm0,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c1}
0082h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0086h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
008ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
008eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0091h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0096h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
009bh vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00a0h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00a4h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00a8h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00abh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00b0h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00b5h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00bah vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
00beh vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00c2h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00c6h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00cah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cdh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d2h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00d7h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00dch vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00e0h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00e4h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e7h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ech vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
00f1h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
00f6h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00fah vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00feh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0102h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0106h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0109h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010eh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0113h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0117h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
011ah jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011fh vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
0124h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0128h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012bh jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
0130h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0135h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0139h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
013dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0141h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0144h jmp near ptr 01c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0149h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
014eh vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
0152h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0156h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
015ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015dh jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015fh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0164h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0169h vpcmpeqd xmm2,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 d1}
016dh vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
0171h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0175h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0179h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017ch jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017eh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0183h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0188h vpandn xmm0,xmm0,xmm1                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f9 df c1}
018ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0190h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0193h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0195h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
019ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
019fh vpcmpeqd xmm2,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 d0}
01a3h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
01a7h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
01abh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01afh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b2h jmp short 01c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b4h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
01b9h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
01beh vpandn xmm0,xmm1,xmm0                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[4]{c5 f1 df c0}
01c2h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
01c6h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c9h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01cdh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01ceh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01cfh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d0h ret                                     ; RET || C3 || encoded[1]{c3}
01d1h mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01dbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 ad b0 5e}
01e0h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e3h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e7h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a ad b0 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01feh mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0208h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 46 c3 5e}
020dh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0210h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
021ah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 30 ab 5e}
021fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0222h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 d7 71 ff}
0227h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0229h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 02 01 ff}
022eh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0231h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0234h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0237h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 81 ff fe}
023ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0242h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 34 02 ff}
0247h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 f9 a7 5e}
024fh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> eval<byte>(BinaryBitLogicKind:byte kind, Vector256<byte> a, Vector256<byte> b)
; eval_g8u_v256x8u_v256x8u[594] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 ba 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 74 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 74 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 74 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 6e a6 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 58 a6 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 41 3f c3 5e 48 8b d8 48 b9 58 77 36 c6 f7 7f 00 00 e8 6f 29 ab 5e 48 8b c8 e8 a7 d0 71 ff 8b c8 e8 e0 fb 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 9a 7a ff fe 48 8b d0 48 8b ce e8 bf 2d 02 ff 48 8b ce e8 4f f2 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01d3h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ba 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0035h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0039h vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
003dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
0049h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
0059h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005eh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0063h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0067h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006eh jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0073h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0078h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007dh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0081h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0085h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0089h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0090h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0095h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
009fh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a3h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00aah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00afh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b4h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00b9h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00bdh vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00c1h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c5h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00c9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cch jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d1h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00d6h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00dbh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00dfh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e3h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e6h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ebh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f0h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f5h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00f9h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0105h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0108h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010dh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0112h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0116h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0119h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011eh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0123h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0127h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012ah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
012fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0134h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0138h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
013ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0140h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0143h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0148h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
014dh vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0151h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0155h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0159h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015ch jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0163h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0168h vpcmpeqb ymm2,ymm1,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 f5 74 d1}
016ch vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0170h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0174h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0178h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017bh jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017dh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0182h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0187h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
018bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
018fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0192h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0194h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0199h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
019eh vpcmpeqb ymm2,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 d0}
01a2h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01a6h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01aah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01aeh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b1h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b3h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01b8h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01bdh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01c1h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01c5h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01cbh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01cfh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d2h ret                                     ; RET || C3 || encoded[1]{c3}
01d3h mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01ddh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e a6 b0 5e}
01e2h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e5h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e9h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 a6 b0 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0200h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
020ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 3f c3 5e}
020fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0212h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
021ch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 29 ab 5e}
0221h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0224h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 d0 71 ff}
0229h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
022bh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 fb 00 ff}
0230h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0233h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0236h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0239h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 7a ff fe}
023eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0241h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0244h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 2d 02 ff}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f f2 a7 5e}
0251h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> eval<sbyte>(BinaryBitLogicKind:byte kind, Vector256<sbyte> a, Vector256<sbyte> b)
; eval_g8u_v256x8i_v256x8i[594] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 ba 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 74 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 74 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 74 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 8e a3 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 78 a3 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 61 3c c3 5e 48 8b d8 48 b9 68 6f 36 c6 f7 7f 00 00 e8 8f 26 ab 5e 48 8b c8 e8 c7 cd 71 ff 8b c8 e8 00 f9 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 ba 77 ff fe 48 8b d0 48 8b ce e8 df 2a 02 ff 48 8b ce e8 6f ef a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01d3h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ba 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0035h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0039h vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
003dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
0049h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
0059h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005eh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0063h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0067h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006eh jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0073h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0078h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007dh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0081h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0085h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0089h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0090h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0095h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
009fh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a3h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00aah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00afh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b4h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00b9h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00bdh vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00c1h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c5h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00c9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cch jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d1h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00d6h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00dbh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00dfh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e3h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e6h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ebh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f0h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f5h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00f9h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0105h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0108h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010dh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0112h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0116h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0119h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011eh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0123h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0127h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012ah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
012fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0134h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0138h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
013ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0140h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0143h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0148h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
014dh vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0151h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0155h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0159h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015ch jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0163h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0168h vpcmpeqb ymm2,ymm1,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 f5 74 d1}
016ch vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0170h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0174h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0178h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017bh jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017dh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0182h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0187h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
018bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
018fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0192h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0194h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0199h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
019eh vpcmpeqb ymm2,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 d0}
01a2h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01a6h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01aah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01aeh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b1h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b3h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01b8h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01bdh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01c1h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01c5h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01cbh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01cfh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d2h ret                                     ; RET || C3 || encoded[1]{c3}
01d3h mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01ddh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e a3 b0 5e}
01e2h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e5h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e9h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 a3 b0 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0200h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
020ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 3c c3 5e}
020fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0212h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
021ch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 26 ab 5e}
0221h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0224h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 cd 71 ff}
0229h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
022bh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 f9 00 ff}
0230h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0233h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0236h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0239h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 77 ff fe}
023eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0241h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0244h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 2a 02 ff}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f ef a7 5e}
0251h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, Vector256<ushort> a, Vector256<ushort> b)
; eval_g8u_v256x16u_v256x16u[594] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 ba 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 75 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 75 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 75 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 ae 9c b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 98 9c b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 81 35 c3 5e 48 8b d8 48 b9 38 87 36 c6 f7 7f 00 00 e8 af 1f ab 5e 48 8b c8 e8 e7 c6 71 ff 8b c8 e8 20 f2 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 da 70 ff fe 48 8b d0 48 8b ce e8 ff 23 02 ff 48 8b ce e8 8f e8 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01d3h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ba 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0035h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0039h vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
003dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
0049h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
0059h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005eh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0063h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0067h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006eh jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0073h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0078h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007dh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0081h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0085h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0089h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0090h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0095h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
009fh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a3h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00aah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00afh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b4h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00b9h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00bdh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00c1h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c5h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00c9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cch jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d1h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00d6h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00dbh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00dfh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e3h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e6h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ebh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f0h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f5h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00f9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0105h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0108h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010dh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0112h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0116h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0119h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011eh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0123h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0127h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012ah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
012fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0134h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0138h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
013ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0140h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0143h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0148h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
014dh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0151h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0155h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0159h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015ch jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0163h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0168h vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
016ch vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0170h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0174h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0178h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017bh jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017dh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0182h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0187h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
018bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
018fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0192h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0194h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0199h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
019eh vpcmpeqw ymm2,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 d0}
01a2h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01a6h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01aah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01aeh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b1h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b3h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01b8h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01bdh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01c1h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01c5h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01cbh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01cfh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d2h ret                                     ; RET || C3 || encoded[1]{c3}
01d3h mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01ddh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 9c b0 5e}
01e2h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e5h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e9h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 9c b0 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0200h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
020ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 35 c3 5e}
020fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0212h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
021ch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 1f ab 5e}
0221h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0224h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 c6 71 ff}
0229h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
022bh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 f2 00 ff}
0230h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0233h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0236h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0239h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 70 ff fe}
023eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0241h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0244h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 23 02 ff}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f e8 a7 5e}
0251h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> eval<short>(BinaryBitLogicKind:byte kind, Vector256<short> a, Vector256<short> b)
; eval_g8u_v256x16i_v256x16i[594] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 ba 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 75 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 75 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 75 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 ce 99 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 b8 99 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 a1 32 c3 5e 48 8b d8 48 b9 48 7f 36 c6 f7 7f 00 00 e8 cf 1c ab 5e 48 8b c8 e8 07 c4 71 ff 8b c8 e8 40 ef 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 fa 6d ff fe 48 8b d0 48 8b ce e8 1f 21 02 ff 48 8b ce e8 af e5 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01d3h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ba 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0035h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0039h vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
003dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
0049h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
0059h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005eh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0063h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0067h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006eh jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0073h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0078h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007dh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0081h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0085h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0089h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0090h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0095h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
009fh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a3h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00aah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00afh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b4h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00b9h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00bdh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00c1h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c5h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00c9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cch jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d1h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00d6h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00dbh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00dfh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e3h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e6h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ebh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f0h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f5h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00f9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0105h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0108h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010dh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0112h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0116h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0119h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011eh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0123h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0127h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012ah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
012fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0134h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0138h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
013ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0140h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0143h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0148h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
014dh vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0151h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0155h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0159h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015ch jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0163h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0168h vpcmpeqw ymm2,ymm1,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 d1}
016ch vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0170h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0174h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0178h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017bh jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017dh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0182h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0187h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
018bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
018fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0192h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0194h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0199h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
019eh vpcmpeqw ymm2,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 d0}
01a2h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01a6h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01aah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01aeh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b1h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b3h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01b8h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01bdh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01c1h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01c5h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01cbh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01cfh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d2h ret                                     ; RET || C3 || encoded[1]{c3}
01d3h mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01ddh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 99 b0 5e}
01e2h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e5h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e9h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 99 b0 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0200h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
020ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 32 c3 5e}
020fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0212h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
021ch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 1c ab 5e}
0221h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0224h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 c4 71 ff}
0229h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
022bh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 ef 00 ff}
0230h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0233h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0236h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0239h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 6d ff fe}
023eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0241h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0244h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 21 02 ff}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af e5 a7 5e}
0251h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> eval<uint>(BinaryBitLogicKind:byte kind, Vector256<uint> a, Vector256<uint> b)
; eval_g8u_v256x32u_v256x32u[594] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 ba 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 76 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 76 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 76 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 ee 96 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 d8 96 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 c1 2f c3 5e 48 8b d8 48 b9 d8 96 36 c6 f7 7f 00 00 e8 ef 19 ab 5e 48 8b c8 e8 27 c1 71 ff 8b c8 e8 60 ec 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 1a 6b ff fe 48 8b d0 48 8b ce e8 3f 1e 02 ff 48 8b ce e8 cf e2 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01d3h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ba 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0035h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0039h vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
003dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
0049h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
0059h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005eh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0063h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0067h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006eh jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0073h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0078h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007dh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0081h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0085h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0089h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0090h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0095h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
009fh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a3h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00aah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00afh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b4h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00b9h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00bdh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00c1h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c5h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00c9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cch jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d1h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00d6h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00dbh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00dfh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e3h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e6h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ebh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f0h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f5h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0105h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0108h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010dh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0112h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0116h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0119h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011eh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0123h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0127h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012ah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
012fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0134h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0138h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
013ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0140h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0143h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0148h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
014dh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0151h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0155h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0159h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015ch jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0163h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0168h vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
016ch vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0170h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0174h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0178h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017bh jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017dh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0182h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0187h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
018bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
018fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0192h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0194h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0199h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
019eh vpcmpeqd ymm2,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 d0}
01a2h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01a6h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01aah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01aeh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b1h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b3h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01b8h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01bdh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01c1h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01c5h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01cbh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01cfh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d2h ret                                     ; RET || C3 || encoded[1]{c3}
01d3h mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01ddh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 96 b0 5e}
01e2h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e5h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e9h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 96 b0 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0200h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
020ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 2f c3 5e}
020fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0212h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
021ch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 19 ab 5e}
0221h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0224h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 c1 71 ff}
0229h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
022bh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 ec 00 ff}
0230h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0233h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0236h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0239h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 6b ff fe}
023eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0241h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0244h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 1e 02 ff}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf e2 a7 5e}
0251h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> eval<int>(BinaryBitLogicKind:byte kind, Vector256<int> a, Vector256<int> b)
; eval_g8u_v256x32i_v256x32i[594] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 ba 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 76 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 76 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 76 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 0e 90 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 f8 8f b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 e1 28 c3 5e 48 8b d8 48 b9 08 8f 36 c6 f7 7f 00 00 e8 0f 13 ab 5e 48 8b c8 e8 47 ba 71 ff 8b c8 e8 80 e5 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 3a 64 ff fe 48 8b d0 48 8b ce e8 5f 17 02 ff 48 8b ce e8 ef db a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01d3h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 ba 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0035h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0039h vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
003dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 01 00 00}
0049h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 01 00 00}
0059h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005eh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0063h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0067h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006eh jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 01 00 00}
0073h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0078h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007dh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0081h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0085h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0089h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0090h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0095h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009ah vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
009fh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a3h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a7h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00aah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 01 00 00}
00afh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b4h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00b9h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00bdh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00c1h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c5h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00c9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cch jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f7 00 00 00}
00d1h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00d6h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00dbh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00dfh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e3h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e6h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
00ebh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f0h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f5h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0105h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0108h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 00 00 00}
010dh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0112h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0116h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0119h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 00 00 00}
011eh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0123h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0127h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012ah jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
012fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0134h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0138h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
013ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0140h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0143h jmp near ptr 01c8h                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 00 00 00}
0148h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
014dh vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0151h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0155h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0159h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
015ch jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
015eh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0163h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0168h vpcmpeqd ymm2,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 d1}
016ch vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0170h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0174h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0178h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017bh jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 4b}
017dh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0182h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0187h vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
018bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
018fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0192h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
0194h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0199h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
019eh vpcmpeqd ymm2,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 d0}
01a2h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01a6h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01aah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01aeh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b1h jmp short 01c8h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01b3h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01b8h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01bdh vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01c1h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01c5h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01c8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01cbh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01cfh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d2h ret                                     ; RET || C3 || encoded[1]{c3}
01d3h mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01ddh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 90 b0 5e}
01e2h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e5h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e9h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 8f b0 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0200h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
020ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 28 c3 5e}
020fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0212h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
021ch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 13 ab 5e}
0221h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0224h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 ba 71 ff}
0229h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
022bh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 e5 00 ff}
0230h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0233h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0236h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0239h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 64 ff fe}
023eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0241h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0244h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 17 02 ff}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef db a7 5e}
0251h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, Vector256<ulong> a, Vector256<ulong> b)
; eval_g8u_v256x64u_v256x64u[602] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 c2 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c4 e2 7d 29 c1 c5 fd 11 01 48 8b c1 e9 86 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 76 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 5c 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 39 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 1f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 fc 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 e2 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bf 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 ae 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 9d 00 00 00 c4 c1 7d 10 00 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 83 00 00 00 c4 c1 7d 10 01 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6c c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 75 29 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 35 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 7d 29 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 26 8d b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 10 8d b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 f9 25 c3 5e 48 8b d8 48 b9 78 a6 36 c6 f7 7f 00 00 e8 27 10 ab 5e 48 8b c8 e8 5f b7 71 ff 8b c8 e8 98 e2 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 52 61 ff fe 48 8b d0 48 8b ce e8 77 14 02 ff 48 8b ce e8 07 d9 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01dbh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 c2 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0035h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0039h vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
003eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0042h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0045h jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 86 01 00 00}
004ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0055h jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 76 01 00 00}
005ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0064h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0068h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006fh jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5c 01 00 00}
0074h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0079h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007eh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0082h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0087h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
008bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0092h jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 39 01 00 00}
0097h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009ch vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00a1h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a5h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00ach jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1f 01 00 00}
00b1h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b6h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00bbh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00bfh vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00c4h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c8h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00cch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cfh jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fc 00 00 00}
00d4h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00d9h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00deh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00e2h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e6h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e9h jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e2 00 00 00}
00eeh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f3h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f8h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00fch vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0101h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0105h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0109h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
010ch jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bf 00 00 00}
0111h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0116h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
011ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
011dh jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 00 00 00}
0122h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0127h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
012bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012eh jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9d 00 00 00}
0133h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0138h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
013dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0141h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0145h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0148h jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
014dh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0152h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0157h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
015bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
015fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0162h jmp short 01d0h                         ; JMP rel8 || EB cb || encoded[2]{eb 6c}
0164h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0169h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
016eh vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
0173h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0177h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
017bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
017fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0182h jmp short 01d0h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0184h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0189h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
018eh vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
0192h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0196h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0199h jmp short 01d0h                         ; JMP rel8 || EB cb || encoded[2]{eb 35}
019bh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01a0h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01a5h vpcmpeqq ymm2,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 d0}
01aah vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01aeh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01b2h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01b6h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b9h jmp short 01d0h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01bbh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01c0h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01c5h vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01c9h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01cdh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01d0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d3h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01d7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dah ret                                     ; RET || C3 || encoded[1]{c3}
01dbh mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 8d b0 5e}
01eah mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01edh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01f1h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01fbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 8d b0 5e}
0200h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0203h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0208h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0212h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 25 c3 5e}
0217h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
021ah mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0224h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 10 ab 5e}
0229h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
022ch call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f b7 71 ff}
0231h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0233h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 e2 00 ff}
0238h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
023bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
023eh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0241h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 61 ff fe}
0246h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 14 02 ff}
0251h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0254h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 d9 a7 5e}
0259h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> eval<long>(BinaryBitLogicKind:byte kind, Vector256<long> a, Vector256<long> b)
; eval_g8u_v256x64i_v256x64i[602] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 c2 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c4 e2 7d 29 c1 c5 fd 11 01 48 8b c1 e9 86 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 76 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 5c 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 39 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 1f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 fc 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 e2 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bf 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 ae 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 9d 00 00 00 c4 c1 7d 10 00 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 83 00 00 00 c4 c1 7d 10 01 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6c c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 75 29 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 35 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 7d 29 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 78 cc a2 c6 f7 7f 00 00 e8 46 8a b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 30 8a b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 19 23 c3 5e 48 8b d8 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 47 0d ab 5e 48 8b c8 e8 7f b4 71 ff 8b c8 e8 b8 df 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 72 5e ff fe 48 8b d0 48 8b ce e8 97 11 02 ff 48 8b ce e8 27 d6 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ch movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
0010h cmp eax,0fh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 0f}
0013h ja near ptr 01dbh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 c2 01 00 00}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh lea rdx,[rip+25eh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 5e 02 00 00}
0022h mov edx,[rdx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 82}
0025h lea r10,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e0 ff ff ff}
002ch add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
002fh jmp rdx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e2}
0031h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0035h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
0039h vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
003eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0042h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0045h jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 86 01 00 00}
004ah vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0055h jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 76 01 00 00}
005ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
005fh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0064h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0068h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006fh jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5c 01 00 00}
0074h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0079h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
007eh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0082h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0087h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
008bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
008fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0092h jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 39 01 00 00}
0097h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
009ch vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00a1h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00a5h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00ach jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1f 01 00 00}
00b1h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00b6h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00bbh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
00bfh vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00c4h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00c8h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00cch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00cfh jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fc 00 00 00}
00d4h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00d9h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00deh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00e2h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00e6h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e9h jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e2 00 00 00}
00eeh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
00f3h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
00f8h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00fch vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0101h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0105h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0109h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
010ch jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bf 00 00 00}
0111h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0116h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
011ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
011dh jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 00 00 00}
0122h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0127h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
012bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
012eh jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9d 00 00 00}
0133h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0138h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
013dh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0141h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0145h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0148h jmp near ptr 01d0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
014dh vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
0152h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
0157h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
015bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
015fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0162h jmp short 01d0h                         ; JMP rel8 || EB cb || encoded[2]{eb 6c}
0164h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0169h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
016eh vpcmpeqq ymm2,ymm1,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 d1}
0173h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
0177h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
017bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
017fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0182h jmp short 01d0h                         ; JMP rel8 || EB cb || encoded[2]{eb 4c}
0184h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0189h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
018eh vpandn ymm0,ymm0,ymm1                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 fd df c1}
0192h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0196h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0199h jmp short 01d0h                         ; JMP rel8 || EB cb || encoded[2]{eb 35}
019bh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01a0h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01a5h vpcmpeqq ymm2,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 d0}
01aah vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
01aeh vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
01b2h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01b6h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01b9h jmp short 01d0h                         ; JMP rel8 || EB cb || encoded[2]{eb 15}
01bbh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
01c0h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
01c5h vpandn ymm0,ymm1,ymm0                   ; VPANDN ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DF /r || encoded[4]{c5 f5 df c0}
01c9h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01cdh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01d0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d3h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01d7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dah ret                                     ; RET || C3 || encoded[1]{c3}
01dbh mov rcx,7ff7c6a2cc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cc a2 c6 f7 7f 00 00}
01e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 8a b0 5e}
01eah mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01edh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01f1h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
01fbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 8a b0 5e}
0200h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0203h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0208h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0212h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 23 c3 5e}
0217h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
021ah mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0224h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 0d ab 5e}
0229h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
022ch call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f b4 71 ff}
0231h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0233h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 df 00 ff}
0238h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
023bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
023eh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0241h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 5e ff fe}
0246h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 11 02 ff}
0251h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0254h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 d6 a7 5e}
0259h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(TernaryBitLogicKind:byte kind, Vector128<byte> x, Vector128<byte> y, Vector128<byte> z)
; eval_g8u_v128x8u_v128x8u_v128x8u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 02 f6 ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739d998h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 f6 ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(TernaryBitLogicKind:byte kind, Vector128<sbyte> x, Vector128<sbyte> y, Vector128<sbyte> z)
; eval_g8u_v128x8i_v128x8i_v128x8i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 02 f6 ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739da18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 f6 ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(TernaryBitLogicKind:byte kind, Vector128<ushort> x, Vector128<ushort> y, Vector128<ushort> z)
; eval_g8u_v128x16u_v128x16u_v128x16u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 ca f5 ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739da60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca f5 ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(TernaryBitLogicKind:byte kind, Vector128<short> x, Vector128<short> y, Vector128<short> z)
; eval_g8u_v128x16i_v128x16i_v128x16i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 92 f1 ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739daa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 f1 ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(TernaryBitLogicKind:byte kind, Vector128<uint> x, Vector128<uint> y, Vector128<uint> z)
; eval_g8u_v128x32u_v128x32u_v128x32u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 7a fb ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739e510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a fb ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(TernaryBitLogicKind:byte kind, Vector128<int> x, Vector128<int> y, Vector128<int> z)
; eval_g8u_v128x32i_v128x32i_v128x32i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 42 fb ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739e558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 fb ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(TernaryBitLogicKind:byte kind, Vector128<ulong> x, Vector128<ulong> y, Vector128<ulong> z)
; eval_g8u_v128x64u_v128x64u_v128x64u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 0a fb ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739e5a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a fb ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> eval<long>(TernaryBitLogicKind:byte kind, Vector128<long> x, Vector128<long> y, Vector128<long> z)
; eval_g8u_v128x64i_v128x64i_v128x64i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 d2 fa ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739e5e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 fa ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> eval<byte>(TernaryBitLogicKind:byte kind, Vector256<byte> x, Vector256<byte> y, Vector256<byte> z)
; eval_g8u_v256x8u_v256x8u_v256x8u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 1a fb ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739e6b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a fb ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> eval<sbyte>(TernaryBitLogicKind:byte kind, Vector256<sbyte> x, Vector256<sbyte> y, Vector256<sbyte> z)
; eval_g8u_v256x8i_v256x8i_v256x8i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 1a fb ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739e730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a fb ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> eval<ushort>(TernaryBitLogicKind:byte kind, Vector256<ushort> x, Vector256<ushort> y, Vector256<ushort> z)
; eval_g8u_v256x16u_v256x16u_v256x16u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 e2 fa ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739e778h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fa ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> eval<short>(TernaryBitLogicKind:byte kind, Vector256<short> x, Vector256<short> y, Vector256<short> z)
; eval_g8u_v256x16i_v256x16i_v256x16i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 aa fa ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739e7c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa fa ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> eval<uint>(TernaryBitLogicKind:byte kind, Vector256<uint> x, Vector256<uint> y, Vector256<uint> z)
; eval_g8u_v256x32u_v256x32u_v256x32u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 72 fa ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739e808h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 fa ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> eval<int>(TernaryBitLogicKind:byte kind, Vector256<int> x, Vector256<int> y, Vector256<int> z)
; eval_g8u_v256x32i_v256x32i_v256x32i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 3a fa ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739e850h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a fa ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> eval<ulong>(TernaryBitLogicKind:byte kind, Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> z)
; eval_g8u_v256x64u_v256x64u_v256x64u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 02 fa ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739e898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 fa ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> eval<long>(TernaryBitLogicKind:byte kind, Vector256<long> x, Vector256<long> y, Vector256<long> z)
; eval_g8u_v256x64i_v256x64i_v256x64i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 d2 fb ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000bh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000eh mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
0011h mov rbp,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b ac 24 80 00 00 00}
0019h mov byte ptr [rsp+28h],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 28 00}
001eh movsx rcx,byte ptr [rsp+28h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 28}
0024h mov [rsp+30h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 30}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movsx rcx,byte ptr [rsp+30h]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 4c 24 30}
0031h call 7ff7c739eee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 fb ff ff}
0036h mov [rsp+20h],rbp                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 6c 24 20}
003bh mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
003fh mov rdx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d3}
0042h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0045h mov r9,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b cf}
0048h call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
004bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
004eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0052h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0053h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(BinaryArithmeticKind:byte kind, Vector128<byte> x, Vector128<byte> y)
; eval_g8u_v128x8u_v128x8u[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f8 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fc c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 f2 78 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 dc 78 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 c5 11 c3 5e 48 8b d8 48 b9 58 77 36 c6 f7 7f 00 00 e8 f3 fb aa 5e 48 8b c8 e8 2b a3 71 ff 8b c8 e8 64 ce 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 1e 4d ff fe 48 8b d0 48 8b ce e8 43 00 02 ff 48 8b ce e8 d3 c4 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0035h                          ; JE rel8 || 74 cb || encoded[2]{74 20}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 004fh                         ; JNE rel8 || 75 cb || encoded[2]{75 34}
001bh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0020h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0025h vpsubb xmm0,xmm0,xmm1                   ; VPSUBB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F8 /r || encoded[4]{c5 f9 f8 c1}
0029h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0031h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0032h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0033h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
0035h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003fh vpaddb xmm0,xmm0,xmm1                   ; VPADDB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FC /r || encoded[4]{c5 f9 fc c1}
0043h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0047h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
004fh mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 78 b0 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 78 b0 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 11 c3 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 fb aa 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b a3 71 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 ce 00 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 4d ff fe}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 00 02 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 c4 a7 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(BinaryArithmeticKind:byte kind, Vector128<sbyte> x, Vector128<sbyte> y)
; eval_g8u_v128x8i_v128x8i[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f8 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fc c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 02 78 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 ec 77 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 d5 10 c3 5e 48 8b d8 48 b9 68 6f 36 c6 f7 7f 00 00 e8 03 fb aa 5e 48 8b c8 e8 3b a2 71 ff 8b c8 e8 74 cd 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 2e 4c ff fe 48 8b d0 48 8b ce e8 53 ff 01 ff 48 8b ce e8 e3 c3 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0035h                          ; JE rel8 || 74 cb || encoded[2]{74 20}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 004fh                         ; JNE rel8 || 75 cb || encoded[2]{75 34}
001bh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0020h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0025h vpsubb xmm0,xmm0,xmm1                   ; VPSUBB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F8 /r || encoded[4]{c5 f9 f8 c1}
0029h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0031h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0032h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0033h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
0035h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003fh vpaddb xmm0,xmm0,xmm1                   ; VPADDB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FC /r || encoded[4]{c5 f9 fc c1}
0043h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0047h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
004fh mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 78 b0 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 77 b0 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 10 c3 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 fb aa 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b a2 71 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 cd 00 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 4c ff fe}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 ff 01 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 c3 a7 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(BinaryArithmeticKind:byte kind, Vector128<ushort> x, Vector128<ushort> y)
; eval_g8u_v128x16u_v128x16u[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f9 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fd c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 12 77 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 fc 76 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 e5 0f c3 5e 48 8b d8 48 b9 38 87 36 c6 f7 7f 00 00 e8 13 fa aa 5e 48 8b c8 e8 4b a1 71 ff 8b c8 e8 84 cc 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 3e 4b ff fe 48 8b d0 48 8b ce e8 63 fe 01 ff 48 8b ce e8 f3 c2 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0035h                          ; JE rel8 || 74 cb || encoded[2]{74 20}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 004fh                         ; JNE rel8 || 75 cb || encoded[2]{75 34}
001bh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0020h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0025h vpsubw xmm0,xmm0,xmm1                   ; VPSUBW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F9 /r || encoded[4]{c5 f9 f9 c1}
0029h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0031h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0032h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0033h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
0035h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003fh vpaddw xmm0,xmm0,xmm1                   ; VPADDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FD /r || encoded[4]{c5 f9 fd c1}
0043h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0047h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
004fh mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 77 b0 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 76 b0 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 0f c3 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 fa aa 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b a1 71 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 cc 00 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 4b ff fe}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 fe 01 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 c2 a7 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(BinaryArithmeticKind:byte kind, Vector128<short> x, Vector128<short> y)
; eval_g8u_v128x16i_v128x16i[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f9 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fd c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 22 76 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 0c 76 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 f5 0e c3 5e 48 8b d8 48 b9 48 7f 36 c6 f7 7f 00 00 e8 23 f9 aa 5e 48 8b c8 e8 5b a0 71 ff 8b c8 e8 94 cb 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 4e 4a ff fe 48 8b d0 48 8b ce e8 73 fd 01 ff 48 8b ce e8 03 c2 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0035h                          ; JE rel8 || 74 cb || encoded[2]{74 20}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 004fh                         ; JNE rel8 || 75 cb || encoded[2]{75 34}
001bh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0020h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0025h vpsubw xmm0,xmm0,xmm1                   ; VPSUBW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F9 /r || encoded[4]{c5 f9 f9 c1}
0029h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0031h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0032h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0033h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
0035h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003fh vpaddw xmm0,xmm0,xmm1                   ; VPADDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FD /r || encoded[4]{c5 f9 fd c1}
0043h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0047h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
004fh mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 76 b0 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 76 b0 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 0e c3 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 f9 aa 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b a0 71 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 cb 00 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 4a ff fe}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 fd 01 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 c2 a7 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(BinaryArithmeticKind:byte kind, Vector128<uint> x, Vector128<uint> y)
; eval_g8u_v128x32u_v128x32u[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fa c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fe c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 32 75 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 1c 75 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 05 0e c3 5e 48 8b d8 48 b9 d8 96 36 c6 f7 7f 00 00 e8 33 f8 aa 5e 48 8b c8 e8 6b 9f 71 ff 8b c8 e8 a4 ca 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 5e 49 ff fe 48 8b d0 48 8b ce e8 83 fc 01 ff 48 8b ce e8 13 c1 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0035h                          ; JE rel8 || 74 cb || encoded[2]{74 20}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 004fh                         ; JNE rel8 || 75 cb || encoded[2]{75 34}
001bh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0020h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0025h vpsubd xmm0,xmm0,xmm1                   ; VPSUBD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FA /r || encoded[4]{c5 f9 fa c1}
0029h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0031h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0032h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0033h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
0035h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003fh vpaddd xmm0,xmm0,xmm1                   ; VPADDD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FE /r || encoded[4]{c5 f9 fe c1}
0043h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0047h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
004fh mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 75 b0 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 75 b0 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 0e c3 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 f8 aa 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 9f 71 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 ca 00 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 49 ff fe}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 fc 01 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 c1 a7 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(BinaryArithmeticKind:byte kind, Vector128<int> x, Vector128<int> y)
; eval_g8u_v128x32i_v128x32i[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fa c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fe c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 42 74 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 2c 74 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 15 0d c3 5e 48 8b d8 48 b9 08 8f 36 c6 f7 7f 00 00 e8 43 f7 aa 5e 48 8b c8 e8 7b 9e 71 ff 8b c8 e8 b4 c9 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 6e 48 ff fe 48 8b d0 48 8b ce e8 93 fb 01 ff 48 8b ce e8 23 c0 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0035h                          ; JE rel8 || 74 cb || encoded[2]{74 20}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 004fh                         ; JNE rel8 || 75 cb || encoded[2]{75 34}
001bh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0020h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0025h vpsubd xmm0,xmm0,xmm1                   ; VPSUBD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FA /r || encoded[4]{c5 f9 fa c1}
0029h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0031h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0032h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0033h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
0035h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003fh vpaddd xmm0,xmm0,xmm1                   ; VPADDD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FE /r || encoded[4]{c5 f9 fe c1}
0043h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0047h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
004fh mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 74 b0 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 74 b0 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 0d c3 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 f7 aa 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 9e 71 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 c9 00 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 48 ff fe}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 fb 01 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 c0 a7 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(BinaryArithmeticKind:byte kind, Vector128<ulong> x, Vector128<ulong> y)
; eval_g8u_v128x64u_v128x64u[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fb c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 d4 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 52 73 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 3c 73 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 25 0c c3 5e 48 8b d8 48 b9 78 a6 36 c6 f7 7f 00 00 e8 53 f6 aa 5e 48 8b c8 e8 8b 9d 71 ff 8b c8 e8 c4 c8 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 7e 47 ff fe 48 8b d0 48 8b ce e8 a3 fa 01 ff 48 8b ce e8 33 bf a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0035h                          ; JE rel8 || 74 cb || encoded[2]{74 20}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 004fh                         ; JNE rel8 || 75 cb || encoded[2]{75 34}
001bh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0020h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0025h vpsubq xmm0,xmm0,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f9 fb c1}
0029h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0031h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0032h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0033h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
0035h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003fh vpaddq xmm0,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 c1}
0043h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0047h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
004fh mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 73 b0 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 73 b0 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 0c c3 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 f6 aa 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 9d 71 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 c8 00 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 47 ff fe}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 fa 01 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 bf a7 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> eval<long>(BinaryArithmeticKind:byte kind, Vector128<long> x, Vector128<long> y)
; eval_g8u_v128x64i_v128x64i[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fb c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 d4 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 52 6e b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 3c 6e b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 25 07 c3 5e 48 8b d8 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 53 f1 aa 5e 48 8b c8 e8 8b 98 71 ff 8b c8 e8 c4 c3 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 7e 42 ff fe 48 8b d0 48 8b ce e8 a3 f5 01 ff 48 8b ce e8 33 ba a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0035h                          ; JE rel8 || 74 cb || encoded[2]{74 20}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 004fh                         ; JNE rel8 || 75 cb || encoded[2]{75 34}
001bh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0020h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0025h vpsubq xmm0,xmm0,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f9 fb c1}
0029h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0031h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0032h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0033h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
0035h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003fh vpaddq xmm0,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 c1}
0043h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0047h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
004fh mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 6e b0 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 6e b0 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 07 c3 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 f1 aa 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 98 71 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 c3 00 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 42 ff fe}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 f5 01 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 ba a7 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> eval<float>(BinaryArithmeticKind:byte kind, Vector128<float> x, Vector128<float> y)
; eval_g8u_v128x32f_v128x32f[201] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 2f c4 c1 79 10 00 c4 c1 79 10 09 c5 f8 5c c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f8 58 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 67 6d b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 51 6d b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 3a 06 c3 5e 48 8b d8 48 b9 58 af 36 c6 f7 7f 00 00 e8 68 f0 aa 5e 48 8b c8 e8 a0 97 71 ff 8b c8 e8 d9 c2 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 93 41 ff fe 48 8b d0 48 8b ce e8 b8 f4 01 ff 48 8b ce e8 48 b9 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0035h                          ; JE rel8 || 74 cb || encoded[2]{74 20}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 004ah                         ; JNE rel8 || 75 cb || encoded[2]{75 2f}
001bh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0020h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0025h vsubps xmm0,xmm0,xmm1                   ; VSUBPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 5C /r || encoded[4]{c5 f8 5c c1}
0029h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0031h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0032h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0033h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
0035h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ah vaddps xmm0,xmm0,xmm0                   ; VADDPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 58 /r || encoded[4]{c5 f8 58 c0}
003eh vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0042h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0046h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
004ah mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
0054h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 6d b0 5e}
0059h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
005ch mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0060h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
006ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 6d b0 5e}
006fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0072h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0077h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0081h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 06 c3 5e}
0086h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0089h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
0093h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 f0 aa 5e}
0098h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
009bh call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 97 71 ff}
00a0h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a2h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 c2 00 ff}
00a7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00aah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00adh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b0h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 41 ff fe}
00b5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00b8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00bbh call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f4 01 ff}
00c0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 b9 a7 5e}
00c8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> eval<double>(BinaryArithmeticKind:byte kind, Vector128<double> x, Vector128<double> y)
; eval_g8u_v128x64f_v128x64f[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 5c c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 58 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 72 6c b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 5c 6c b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 45 05 c3 5e 48 8b d8 48 b9 38 b8 36 c6 f7 7f 00 00 e8 73 ef aa 5e 48 8b c8 e8 ab 96 71 ff 8b c8 e8 e4 c1 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 9e 40 ff fe 48 8b d0 48 8b ce e8 c3 f3 01 ff 48 8b ce e8 53 b8 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0035h                          ; JE rel8 || 74 cb || encoded[2]{74 20}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 004fh                         ; JNE rel8 || 75 cb || encoded[2]{75 34}
001bh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0020h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
0025h vsubpd xmm0,xmm0,xmm1                   ; VSUBPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 5C /r || encoded[4]{c5 f9 5c c1}
0029h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
002dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0031h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0032h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0033h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
0035h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
003ah vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003fh vaddpd xmm0,xmm0,xmm1                   ; VADDPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 58 /r || encoded[4]{c5 f9 58 c1}
0043h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0047h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
004bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
004fh mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 6c b0 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 6c b0 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 05 c3 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 ef aa 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 96 71 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 c1 00 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 40 ff fe}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 f3 01 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 b8 a7 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> eval<byte>(BinaryArithmeticKind:byte kind, Vector256<byte> x, Vector256<byte> y)
; eval_g8u_v256x8u_v256x8u[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f8 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fc c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 7c 6b b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 66 6b b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 4f 04 c3 5e 48 8b d8 48 b9 58 77 36 c6 f7 7f 00 00 e8 7d ee aa 5e 48 8b c8 e8 b5 95 71 ff 8b c8 e8 ee c0 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 a8 3f ff fe 48 8b d0 48 8b ce e8 cd f2 01 ff 48 8b ce e8 5d b7 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0038h                          ; JE rel8 || 74 cb || encoded[2]{74 23}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 0055h                         ; JNE rel8 || 75 cb || encoded[2]{75 3a}
001bh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0020h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0025h vpsubb ymm0,ymm0,ymm1                   ; VPSUBB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F8 /r || encoded[4]{c5 fd f8 c1}
0029h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0034h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0035h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0036h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
0038h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003dh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0042h vpaddb ymm0,ymm0,ymm1                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 fd fc c1}
0046h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
0055h mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 6b b0 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 6b b0 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 04 c3 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d ee aa 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 95 71 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee c0 00 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 3f ff fe}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd f2 01 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d b7 a7 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> eval<sbyte>(BinaryArithmeticKind:byte kind, Vector256<sbyte> x, Vector256<sbyte> y)
; eval_g8u_v256x8i_v256x8i[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f8 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fc c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 8c 6a b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 76 6a b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 5f 03 c3 5e 48 8b d8 48 b9 68 6f 36 c6 f7 7f 00 00 e8 8d ed aa 5e 48 8b c8 e8 c5 94 71 ff 8b c8 e8 fe bf 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 b8 3e ff fe 48 8b d0 48 8b ce e8 dd f1 01 ff 48 8b ce e8 6d b6 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0038h                          ; JE rel8 || 74 cb || encoded[2]{74 23}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 0055h                         ; JNE rel8 || 75 cb || encoded[2]{75 3a}
001bh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0020h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0025h vpsubb ymm0,ymm0,ymm1                   ; VPSUBB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F8 /r || encoded[4]{c5 fd f8 c1}
0029h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0034h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0035h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0036h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
0038h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003dh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0042h vpaddb ymm0,ymm0,ymm1                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 fd fc c1}
0046h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
0055h mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 6a b0 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 6a b0 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 03 c3 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d ed aa 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 94 71 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe bf 00 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 3e ff fe}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd f1 01 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d b6 a7 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> eval<ushort>(BinaryArithmeticKind:byte kind, Vector256<ushort> x, Vector256<ushort> y)
; eval_g8u_v256x16u_v256x16u[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f9 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fd c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 9c 69 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 86 69 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 6f 02 c3 5e 48 8b d8 48 b9 38 87 36 c6 f7 7f 00 00 e8 9d ec aa 5e 48 8b c8 e8 d5 93 71 ff 8b c8 e8 0e bf 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 c8 3d ff fe 48 8b d0 48 8b ce e8 ed f0 01 ff 48 8b ce e8 7d b5 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0038h                          ; JE rel8 || 74 cb || encoded[2]{74 23}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 0055h                         ; JNE rel8 || 75 cb || encoded[2]{75 3a}
001bh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0020h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0025h vpsubw ymm0,ymm0,ymm1                   ; VPSUBW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F9 /r || encoded[4]{c5 fd f9 c1}
0029h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0034h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0035h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0036h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
0038h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003dh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0042h vpaddw ymm0,ymm0,ymm1                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[4]{c5 fd fd c1}
0046h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
0055h mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 69 b0 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 69 b0 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 02 c3 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d ec aa 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 93 71 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e bf 00 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 3d ff fe}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f0 01 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d b5 a7 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> eval<short>(BinaryArithmeticKind:byte kind, Vector256<short> x, Vector256<short> y)
; eval_g8u_v256x16i_v256x16i[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f9 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fd c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 ac 68 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 96 68 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 7f 01 c3 5e 48 8b d8 48 b9 48 7f 36 c6 f7 7f 00 00 e8 ad eb aa 5e 48 8b c8 e8 e5 92 71 ff 8b c8 e8 1e be 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 d8 3c ff fe 48 8b d0 48 8b ce e8 fd ef 01 ff 48 8b ce e8 8d b4 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0038h                          ; JE rel8 || 74 cb || encoded[2]{74 23}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 0055h                         ; JNE rel8 || 75 cb || encoded[2]{75 3a}
001bh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0020h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0025h vpsubw ymm0,ymm0,ymm1                   ; VPSUBW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F9 /r || encoded[4]{c5 fd f9 c1}
0029h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0034h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0035h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0036h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
0038h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003dh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0042h vpaddw ymm0,ymm0,ymm1                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[4]{c5 fd fd c1}
0046h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
0055h mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 68 b0 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 68 b0 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 01 c3 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad eb aa 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 92 71 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e be 00 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 3c ff fe}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd ef 01 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d b4 a7 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> eval<uint>(BinaryArithmeticKind:byte kind, Vector256<uint> x, Vector256<uint> y)
; eval_g8u_v256x32u_v256x32u[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fa c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fe c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 bc 67 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 a6 67 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 8f 00 c3 5e 48 8b d8 48 b9 d8 96 36 c6 f7 7f 00 00 e8 bd ea aa 5e 48 8b c8 e8 f5 91 71 ff 8b c8 e8 2e bd 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 e8 3b ff fe 48 8b d0 48 8b ce e8 0d ef 01 ff 48 8b ce e8 9d b3 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0038h                          ; JE rel8 || 74 cb || encoded[2]{74 23}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 0055h                         ; JNE rel8 || 75 cb || encoded[2]{75 3a}
001bh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0020h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0025h vpsubd ymm0,ymm0,ymm1                   ; VPSUBD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FA /r || encoded[4]{c5 fd fa c1}
0029h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0034h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0035h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0036h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
0038h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003dh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0042h vpaddd ymm0,ymm0,ymm1                   ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[4]{c5 fd fe c1}
0046h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
0055h mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 67 b0 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 67 b0 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 00 c3 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd ea aa 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 91 71 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e bd 00 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 3b ff fe}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d ef 01 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d b3 a7 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> eval<int>(BinaryArithmeticKind:byte kind, Vector256<int> x, Vector256<int> y)
; eval_g8u_v256x32i_v256x32i[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fa c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fe c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 cc 66 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 b6 66 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 9f ff c2 5e 48 8b d8 48 b9 08 8f 36 c6 f7 7f 00 00 e8 cd e9 aa 5e 48 8b c8 e8 05 91 71 ff 8b c8 e8 3e bc 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 f8 3a ff fe 48 8b d0 48 8b ce e8 1d ee 01 ff 48 8b ce e8 ad b2 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0038h                          ; JE rel8 || 74 cb || encoded[2]{74 23}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 0055h                         ; JNE rel8 || 75 cb || encoded[2]{75 3a}
001bh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0020h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0025h vpsubd ymm0,ymm0,ymm1                   ; VPSUBD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FA /r || encoded[4]{c5 fd fa c1}
0029h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0034h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0035h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0036h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
0038h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003dh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0042h vpaddd ymm0,ymm0,ymm1                   ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[4]{c5 fd fe c1}
0046h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
0055h mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 66 b0 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 66 b0 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f ff c2 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd e9 aa 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 91 71 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e bc 00 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 3a ff fe}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d ee 01 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad b2 a7 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> eval<ulong>(BinaryArithmeticKind:byte kind, Vector256<ulong> x, Vector256<ulong> y)
; eval_g8u_v256x64u_v256x64u[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fb c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd d4 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 dc 65 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 c6 65 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 af fe c2 5e 48 8b d8 48 b9 78 a6 36 c6 f7 7f 00 00 e8 dd e8 aa 5e 48 8b c8 e8 15 90 71 ff 8b c8 e8 4e bb 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 08 3a ff fe 48 8b d0 48 8b ce e8 2d ed 01 ff 48 8b ce e8 bd b1 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0038h                          ; JE rel8 || 74 cb || encoded[2]{74 23}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 0055h                         ; JNE rel8 || 75 cb || encoded[2]{75 3a}
001bh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0020h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0025h vpsubq ymm0,ymm0,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 fd fb c1}
0029h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0034h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0035h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0036h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
0038h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003dh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0042h vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
0046h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
0055h mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 65 b0 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 65 b0 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af fe c2 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd e8 aa 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 90 71 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e bb 00 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 3a ff fe}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d ed 01 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd b1 a7 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> eval<long>(BinaryArithmeticKind:byte kind, Vector256<long> x, Vector256<long> y)
; eval_g8u_v256x64i_v256x64i[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fb c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd d4 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 ec 64 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 d6 64 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 bf fd c2 5e 48 8b d8 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 ed e7 aa 5e 48 8b c8 e8 25 8f 71 ff 8b c8 e8 5e ba 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 18 39 ff fe 48 8b d0 48 8b ce e8 3d ec 01 ff 48 8b ce e8 cd b0 a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0038h                          ; JE rel8 || 74 cb || encoded[2]{74 23}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 0055h                         ; JNE rel8 || 75 cb || encoded[2]{75 3a}
001bh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0020h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0025h vpsubq ymm0,ymm0,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 fd fb c1}
0029h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0034h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0035h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0036h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
0038h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003dh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0042h vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
0046h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
0055h mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 64 b0 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 64 b0 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf fd c2 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed e7 aa 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 8f 71 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e ba 00 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 39 ff fe}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d ec 01 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd b0 a7 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> eval<float>(BinaryArithmeticKind:byte kind, Vector256<float> x, Vector256<float> y)
; eval_g8u_v256x32f_v256x32f[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fc 5c c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fc 58 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 fc 63 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 e6 63 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 cf fc c2 5e 48 8b d8 48 b9 58 af 36 c6 f7 7f 00 00 e8 fd e6 aa 5e 48 8b c8 e8 35 8e 71 ff 8b c8 e8 6e b9 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 28 38 ff fe 48 8b d0 48 8b ce e8 4d eb 01 ff 48 8b ce e8 dd af a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0038h                          ; JE rel8 || 74 cb || encoded[2]{74 23}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 0055h                         ; JNE rel8 || 75 cb || encoded[2]{75 3a}
001bh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0020h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0025h vsubps ymm0,ymm0,ymm1                   ; VSUBPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 5C /r || encoded[4]{c5 fc 5c c1}
0029h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0034h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0035h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0036h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
0038h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003dh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0042h vaddps ymm0,ymm0,ymm1                   ; VADDPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 58 /r || encoded[4]{c5 fc 58 c1}
0046h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
0055h mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 63 b0 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 63 b0 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf fc c2 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd e6 aa 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 8e 71 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e b9 00 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 38 ff fe}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d eb 01 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd af a7 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> eval<double>(BinaryArithmeticKind:byte kind, Vector256<double> x, Vector256<double> y)
; eval_g8u_v256x64f_v256x64f[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 5c c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 58 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 28 cb a2 c6 f7 7f 00 00 e8 0c 63 b0 5e 48 8b f8 40 88 77 08 48 b9 00 eb 72 c6 f7 7f 00 00 e8 f6 62 b0 5e 48 8b f0 b9 4c 04 00 00 48 ba c8 d2 5f c6 f7 7f 00 00 e8 df fb c2 5e 48 8b d8 48 b9 38 b8 36 c6 f7 7f 00 00 e8 0d e6 aa 5e 48 8b c8 e8 45 8d 71 ff 8b c8 e8 7e b8 00 ff 4c 8b c0 48 8b cb 48 8b d7 e8 38 37 ff fe 48 8b d0 48 8b ce e8 5d ea 01 ff 48 8b ce e8 ed ae a7 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000dh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000fh cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
0013h je short 0038h                          ; JE rel8 || 74 cb || encoded[2]{74 23}
0015h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0019h jne short 0055h                         ; JNE rel8 || 75 cb || encoded[2]{75 3a}
001bh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0020h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0025h vsubpd ymm0,ymm0,ymm1                   ; VSUBPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 5C /r || encoded[4]{c5 fd 5c c1}
0029h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0034h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0035h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0036h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
0038h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
003dh vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0042h vaddpd ymm0,ymm0,ymm1                   ; VADDPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 58 /r || encoded[4]{c5 fd 58 c1}
0046h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
0055h mov rcx,7ff7c6a2cb28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 cb a2 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 63 b0 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c672eb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb 72 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 62 b0 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c65fd2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba c8 d2 5f c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df fb c2 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d e6 aa 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6ab9730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 8d 71 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c63ac270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e b8 00 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6394138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 37 ff fe}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c63bf468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d ea 01 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed ae a7 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
