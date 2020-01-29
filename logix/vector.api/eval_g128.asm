------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(UnaryBitLogicKind:byte kind, Vector128<byte> a)
; eval__g8u_128x8u[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 a0 84 3d c7 f7 7f 00 00 e8 6f 36 cb 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 59 36 cb 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 42 cf dd 5e 48 8b d8 48 b9 58 77 35 c6 f7 7f 00 00 e8 70 b9 c5 5e 48 8b c8 e8 58 96 79 ff 8b c8 e8 b1 95 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 9b 0a 19 ff 48 8b d0 48 8b ce e8 70 ab 1b ff 48 8b ce e8 50 82 c2 5e cc}
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
0082h mov rcx,7ff7c73d84a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 84 3d c7 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 36 cb 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 36 cb 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 cf dd 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c6357758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 35 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 b9 c5 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 96 79 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 95 1a ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 0a 19 ff}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 ab 1b ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 82 c2 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(UnaryBitLogicKind:byte kind, Vector128<sbyte> a)
; eval__g8u_128x8i[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 a0 84 3d c7 f7 7f 00 00 e8 2f 31 cb 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 19 31 cb 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 02 ca dd 5e 48 8b d8 48 b9 68 6f 35 c6 f7 7f 00 00 e8 30 b4 c5 5e 48 8b c8 e8 18 91 79 ff 8b c8 e8 71 90 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 5b 05 19 ff 48 8b d0 48 8b ce e8 30 a6 1b ff 48 8b ce e8 10 7d c2 5e cc}
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
0082h mov rcx,7ff7c73d84a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 84 3d c7 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 31 cb 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 31 cb 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 ca dd 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c6356f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 35 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 b4 c5 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 91 79 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 90 1a ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 05 19 ff}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 a6 1b ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 7d c2 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, Vector128<ushort> a)
; eval__g8u_128x16u[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 a0 84 3d c7 f7 7f 00 00 e8 ef 2f cb 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 d9 2f cb 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 c2 c8 dd 5e 48 8b d8 48 b9 38 87 35 c6 f7 7f 00 00 e8 f0 b2 c5 5e 48 8b c8 e8 d8 8f 79 ff 8b c8 e8 31 8f 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 1b 04 19 ff 48 8b d0 48 8b ce e8 f0 a4 1b ff 48 8b ce e8 d0 7b c2 5e cc}
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
0082h mov rcx,7ff7c73d84a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 84 3d c7 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 2f cb 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 2f cb 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 c8 dd 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c6358738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 35 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 b2 c5 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 8f 79 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 8f 1a ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 04 19 ff}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 a4 1b ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 7b c2 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(UnaryBitLogicKind:byte kind, Vector128<short> a)
; eval__g8u_128x16i[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 a0 84 3d c7 f7 7f 00 00 e8 af 2e cb 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 99 2e cb 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 82 c7 dd 5e 48 8b d8 48 b9 48 7f 35 c6 f7 7f 00 00 e8 b0 b1 c5 5e 48 8b c8 e8 98 8e 79 ff 8b c8 e8 f1 8d 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 db 02 19 ff 48 8b d0 48 8b ce e8 b0 a3 1b ff 48 8b ce e8 90 7a c2 5e cc}
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
0082h mov rcx,7ff7c73d84a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 84 3d c7 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 2e cb 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 2e cb 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 c7 dd 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c6357f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 35 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 b1 c5 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 8e 79 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 8d 1a ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 02 19 ff}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 a3 1b ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 7a c2 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(UnaryBitLogicKind:byte kind, Vector128<uint> a)
; eval__g8u_128x32u[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 a0 84 3d c7 f7 7f 00 00 e8 6f 2d cb 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 59 2d cb 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 42 c6 dd 5e 48 8b d8 48 b9 d8 96 35 c6 f7 7f 00 00 e8 70 b0 c5 5e 48 8b c8 e8 58 8d 79 ff 8b c8 e8 b1 8c 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 9b 01 19 ff 48 8b d0 48 8b ce e8 70 a2 1b ff 48 8b ce e8 50 79 c2 5e cc}
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
0082h mov rcx,7ff7c73d84a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 84 3d c7 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 2d cb 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 2d cb 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 c6 dd 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c63596d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 35 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 b0 c5 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 8d 79 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 8c 1a ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 01 19 ff}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 a2 1b ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 79 c2 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(UnaryBitLogicKind:byte kind, Vector128<int> a)
; eval__g8u_128x32i[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 a0 84 3d c7 f7 7f 00 00 e8 2f 2c cb 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 19 2c cb 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 02 c5 dd 5e 48 8b d8 48 b9 08 8f 35 c6 f7 7f 00 00 e8 30 af c5 5e 48 8b c8 e8 18 8c 79 ff 8b c8 e8 71 8b 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 5b 00 19 ff 48 8b d0 48 8b ce e8 30 a1 1b ff 48 8b ce e8 10 78 c2 5e cc}
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
0082h mov rcx,7ff7c73d84a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 84 3d c7 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 2c cb 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 2c cb 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 c5 dd 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c6358f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 35 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 af c5 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 8c 79 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 8b 1a ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 00 19 ff}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 a1 1b ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 78 c2 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, Vector128<ulong> a)
; eval__g8u_128x64u[258] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6b 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 a0 84 3d c7 f7 7f 00 00 e8 ee 2a cb 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 d8 2a cb 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 c1 c3 dd 5e 48 8b d8 48 b9 78 a6 35 c6 f7 7f 00 00 e8 ef ad c5 5e 48 8b c8 e8 d7 8a 79 ff 8b c8 e8 30 8a 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 1a ff 18 ff 48 8b d0 48 8b ce e8 ef 9f 1b ff 48 8b ce e8 cf 76 c2 5e cc}
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
0083h mov rcx,7ff7c73d84a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 84 3d c7 f7 7f 00 00}
008dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 2a cb 5e}
0092h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0095h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0099h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00a3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 2a cb 5e}
00a8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00abh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b0h mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
00bah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 c3 dd 5e}
00bfh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c2h mov rcx,7ff7c635a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 35 c6 f7 7f 00 00}
00cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef ad c5 5e}
00d1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d4h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 8a 79 ff}
00d9h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dbh call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 8a 1a ff}
00e0h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e6h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e9h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a ff 18 ff}
00eeh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f1h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f4h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 9f 1b ff}
00f9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 76 c2 5e}
0101h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> eval<long>(UnaryBitLogicKind:byte kind, Vector128<long> a)
; eval__g8u_128x64i[258] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6b 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 a0 84 3d c7 f7 7f 00 00 e8 ae 29 cb 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 98 29 cb 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 81 c2 dd 5e 48 8b d8 48 b9 a8 9e 35 c6 f7 7f 00 00 e8 af ac c5 5e 48 8b c8 e8 97 89 79 ff 8b c8 e8 f0 88 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 da fd 18 ff 48 8b d0 48 8b ce e8 af 9e 1b ff 48 8b ce e8 8f 75 c2 5e cc}
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
0083h mov rcx,7ff7c73d84a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 84 3d c7 f7 7f 00 00}
008dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 29 cb 5e}
0092h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0095h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0099h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00a3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 29 cb 5e}
00a8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00abh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b0h mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
00bah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 c2 dd 5e}
00bfh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c2h mov rcx,7ff7c6359ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 35 c6 f7 7f 00 00}
00cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af ac c5 5e}
00d1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d4h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 89 79 ff}
00d9h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dbh call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 88 1a ff}
00e0h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e6h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e9h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da fd 18 ff}
00eeh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f1h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f4h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 9e 1b ff}
00f9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 75 c2 5e}
0101h int 3                                   ; INT3 || CC || encoded[1]{cc}
