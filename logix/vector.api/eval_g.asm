------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(UnaryBitLogicKind:byte kind, Vector128<byte> a)
; eval_g8u_v128x8u[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 3f dc b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 29 dc b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 12 75 c7 5e 48 8b d8 48 b9 58 77 33 c6 f7 7f 00 00 e8 40 5f af 5e 48 8b c8 e8 48 32 73 ff 8b c8 e8 a1 42 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 6b b0 00 ff 48 8b d0 48 8b ce e8 28 73 03 ff 48 8b ce e8 20 28 ac 5e cc}
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
0082h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f dc b4 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 dc b4 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 75 c7 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c6337758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 33 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 5f af 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 32 73 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 42 02 ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b b0 00 ff}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 73 03 ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 28 ac 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(UnaryBitLogicKind:byte kind, Vector128<sbyte> a)
; eval_g8u_v128x8i[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 ff da b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 e9 da b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 d2 73 c7 5e 48 8b d8 48 b9 68 6f 33 c6 f7 7f 00 00 e8 00 5e af 5e 48 8b c8 e8 08 31 73 ff 8b c8 e8 61 41 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 2b af 00 ff 48 8b d0 48 8b ce e8 e8 71 03 ff 48 8b ce e8 e0 26 ac 5e cc}
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
0082h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff da b4 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 da b4 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 73 c7 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c6336f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 33 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 5e af 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 31 73 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 41 02 ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b af 00 ff}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 71 03 ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 26 ac 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, Vector128<ushort> a)
; eval_g8u_v128x16u[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 bf d9 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 a9 d9 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 92 72 c7 5e 48 8b d8 48 b9 38 87 33 c6 f7 7f 00 00 e8 c0 5c af 5e 48 8b c8 e8 c8 2f 73 ff 8b c8 e8 21 40 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 eb ad 00 ff 48 8b d0 48 8b ce e8 a8 70 03 ff 48 8b ce e8 a0 25 ac 5e cc}
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
0082h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf d9 b4 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 d9 b4 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 72 c7 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c6338738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 33 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 5c af 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 2f 73 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 40 02 ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb ad 00 ff}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 70 03 ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 25 ac 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(UnaryBitLogicKind:byte kind, Vector128<short> a)
; eval_g8u_v128x16i[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 7f d8 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 69 d8 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 52 71 c7 5e 48 8b d8 48 b9 48 7f 33 c6 f7 7f 00 00 e8 80 5b af 5e 48 8b c8 e8 88 2e 73 ff 8b c8 e8 e1 3e 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 ab ac 00 ff 48 8b d0 48 8b ce e8 68 6f 03 ff 48 8b ce e8 60 24 ac 5e cc}
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
0082h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f d8 b4 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 d8 b4 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 71 c7 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c6337f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 33 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 5b af 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 2e 73 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 3e 02 ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab ac 00 ff}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 6f 03 ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 24 ac 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(UnaryBitLogicKind:byte kind, Vector128<uint> a)
; eval_g8u_v128x32u[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 3f d3 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 29 d3 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 12 6c c7 5e 48 8b d8 48 b9 d8 96 33 c6 f7 7f 00 00 e8 40 56 af 5e 48 8b c8 e8 48 29 73 ff 8b c8 e8 a1 39 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 6b a7 00 ff 48 8b d0 48 8b ce e8 28 6a 03 ff 48 8b ce e8 20 1f ac 5e cc}
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
0082h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f d3 b4 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 d3 b4 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 6c c7 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c63396d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 33 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 56 af 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 29 73 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 39 02 ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b a7 00 ff}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 6a 03 ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 1f ac 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(UnaryBitLogicKind:byte kind, Vector128<int> a)
; eval_g8u_v128x32i[257] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6a 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 ff d1 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 e9 d1 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 d2 6a c7 5e 48 8b d8 48 b9 08 8f 33 c6 f7 7f 00 00 e8 00 55 af 5e 48 8b c8 e8 08 28 73 ff 8b c8 e8 61 38 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 2b a6 00 ff 48 8b d0 48 8b ce e8 e8 68 03 ff 48 8b ce e8 e0 1d ac 5e cc}
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
0082h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
008ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff d1 b4 5e}
0091h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0094h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0098h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 d1 b4 5e}
00a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00aah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00afh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00b9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 6a c7 5e}
00beh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c1h mov rcx,7ff7c6338f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 33 c6 f7 7f 00 00}
00cbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 55 af 5e}
00d0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d3h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 28 73 ff}
00d8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dah call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 38 02 ff}
00dfh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e8h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b a6 00 ff}
00edh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f3h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 68 03 ff}
00f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fbh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 1d ac 5e}
0100h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, Vector128<ulong> a)
; eval_g8u_v128x64u[258] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6b 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 be d0 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 a8 d0 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 91 69 c7 5e 48 8b d8 48 b9 78 a6 33 c6 f7 7f 00 00 e8 bf 53 af 5e 48 8b c8 e8 c7 26 73 ff 8b c8 e8 20 37 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 ea a4 00 ff 48 8b d0 48 8b ce e8 a7 67 03 ff 48 8b ce e8 9f 1c ac 5e cc}
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
0083h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
008dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be d0 b4 5e}
0092h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0095h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0099h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00a3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 d0 b4 5e}
00a8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00abh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b0h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00bah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 69 c7 5e}
00bfh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c2h mov rcx,7ff7c633a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 33 c6 f7 7f 00 00}
00cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 53 af 5e}
00d1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d4h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 26 73 ff}
00d9h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dbh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 37 02 ff}
00e0h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e6h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e9h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea a4 00 ff}
00eeh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f1h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f4h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 67 03 ff}
00f9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 1c ac 5e}
0101h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> eval<long>(UnaryBitLogicKind:byte kind, Vector128<long> a)
; eval_g8u_v128x64i[258] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 77 6b 8b c9 48 8d 15 ef 00 00 00 8b 14 8a 4c 8d 0d e4 ff ff ff 49 03 d1 ff e2 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 7e cf b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 68 cf b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 51 68 c7 5e 48 8b d8 48 b9 a8 9e 33 c6 f7 7f 00 00 e8 7f 52 af 5e 48 8b c8 e8 87 25 73 ff 8b c8 e8 e0 35 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 aa a3 00 ff 48 8b d0 48 8b ce e8 67 66 03 ff 48 8b ce e8 5f 1b ac 5e cc}
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
0083h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
008dh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e cf b4 5e}
0092h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0095h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0099h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00a3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 cf b4 5e}
00a8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00abh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b0h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00bah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 68 c7 5e}
00bfh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c2h mov rcx,7ff7c6339ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 33 c6 f7 7f 00 00}
00cch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 52 af 5e}
00d1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d4h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 25 73 ff}
00d9h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00dbh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 35 02 ff}
00e0h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e6h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e9h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa a3 00 ff}
00eeh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f1h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f4h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 66 03 ff}
00f9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 1b ac 5e}
0101h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> eval<byte>(UnaryBitLogicKind:byte kind, Vector256<byte> a)
; eval_g8u_v256x8u[273] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 76 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 74 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 2f ce b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 19 ce b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 02 67 c7 5e 48 8b d8 48 b9 58 77 33 c6 f7 7f 00 00 e8 30 51 af 5e 48 8b c8 e8 38 24 73 ff 8b c8 e8 91 34 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 5b a2 00 ff 48 8b d0 48 8b ce e8 18 65 03 ff 48 8b ce e8 10 1a ac 5e cc}
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
0092h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
009ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f ce b4 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a8h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 ce b4 5e}
00b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00bfh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00c9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 67 c7 5e}
00ceh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d1h mov rcx,7ff7c6337758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 33 c6 f7 7f 00 00}
00dbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 51 af 5e}
00e0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e3h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 24 73 ff}
00e8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00eah call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 34 02 ff}
00efh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f8h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b a2 00 ff}
00fdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0100h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0103h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 65 03 ff}
0108h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 1a ac 5e}
0110h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> eval<sbyte>(UnaryBitLogicKind:byte kind, Vector256<sbyte> a)
; eval_g8u_v256x8i[273] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 76 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 74 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 df cc b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 c9 cc b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 b2 65 c7 5e 48 8b d8 48 b9 68 6f 33 c6 f7 7f 00 00 e8 e0 4f af 5e 48 8b c8 e8 e8 22 73 ff 8b c8 e8 41 33 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 0b a1 00 ff 48 8b d0 48 8b ce e8 c8 63 03 ff 48 8b ce e8 c0 18 ac 5e cc}
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
0092h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
009ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df cc b4 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a8h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 cc b4 5e}
00b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00bfh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00c9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 65 c7 5e}
00ceh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d1h mov rcx,7ff7c6336f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 33 c6 f7 7f 00 00}
00dbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 4f af 5e}
00e0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e3h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 22 73 ff}
00e8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00eah call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 33 02 ff}
00efh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f8h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b a1 00 ff}
00fdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0100h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0103h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 63 03 ff}
0108h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 18 ac 5e}
0110h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, Vector256<ushort> a)
; eval_g8u_v256x16u[273] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 76 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 75 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 8f cb b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 79 cb b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 62 64 c7 5e 48 8b d8 48 b9 38 87 33 c6 f7 7f 00 00 e8 90 4e af 5e 48 8b c8 e8 98 21 73 ff 8b c8 e8 f1 31 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 bb 9f 00 ff 48 8b d0 48 8b ce e8 78 62 03 ff 48 8b ce e8 70 17 ac 5e cc}
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
0092h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
009ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f cb b4 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a8h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 cb b4 5e}
00b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00bfh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00c9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 64 c7 5e}
00ceh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d1h mov rcx,7ff7c6338738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 33 c6 f7 7f 00 00}
00dbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 4e af 5e}
00e0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e3h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 21 73 ff}
00e8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00eah call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 31 02 ff}
00efh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f8h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 9f 00 ff}
00fdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0100h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0103h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 62 03 ff}
0108h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 17 ac 5e}
0110h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> eval<short>(UnaryBitLogicKind:byte kind, Vector256<short> a)
; eval_g8u_v256x16i[273] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 76 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 75 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 3f ca b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 29 ca b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 12 63 c7 5e 48 8b d8 48 b9 48 7f 33 c6 f7 7f 00 00 e8 40 4d af 5e 48 8b c8 e8 48 20 73 ff 8b c8 e8 a1 30 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 6b 9e 00 ff 48 8b d0 48 8b ce e8 28 61 03 ff 48 8b ce e8 20 16 ac 5e cc}
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
0092h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
009ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f ca b4 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a8h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 ca b4 5e}
00b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00bfh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00c9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 63 c7 5e}
00ceh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d1h mov rcx,7ff7c6337f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 33 c6 f7 7f 00 00}
00dbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 4d af 5e}
00e0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e3h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 20 73 ff}
00e8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00eah call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 30 02 ff}
00efh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f8h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 9e 00 ff}
00fdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0100h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0103h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 61 03 ff}
0108h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 16 ac 5e}
0110h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> eval<uint>(UnaryBitLogicKind:byte kind, Vector256<uint> a)
; eval_g8u_v256x32u[273] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 76 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 76 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 ef c8 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 d9 c8 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 c2 61 c7 5e 48 8b d8 48 b9 d8 96 33 c6 f7 7f 00 00 e8 f0 4b af 5e 48 8b c8 e8 f8 1e 73 ff 8b c8 e8 51 2f 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 1b 9d 00 ff 48 8b d0 48 8b ce e8 d8 5f 03 ff 48 8b ce e8 d0 14 ac 5e cc}
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
0092h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
009ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef c8 b4 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a8h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 c8 b4 5e}
00b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00bfh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00c9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 61 c7 5e}
00ceh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d1h mov rcx,7ff7c63396d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 33 c6 f7 7f 00 00}
00dbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 4b af 5e}
00e0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e3h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 1e 73 ff}
00e8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00eah call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 2f 02 ff}
00efh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f8h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 9d 00 ff}
00fdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0100h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0103h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 5f 03 ff}
0108h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 14 ac 5e}
0110h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> eval<int>(UnaryBitLogicKind:byte kind, Vector256<int> a)
; eval_g8u_v256x32i[273] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 76 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c5 fd 76 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 9f c7 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 89 c7 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 72 60 c7 5e 48 8b d8 48 b9 08 8f 33 c6 f7 7f 00 00 e8 a0 4a af 5e 48 8b c8 e8 a8 1d 73 ff 8b c8 e8 01 2e 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 cb 9b 00 ff 48 8b d0 48 8b ce e8 88 5e 03 ff 48 8b ce e8 80 13 ac 5e cc}
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
0092h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
009ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c7 b4 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a8h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00b2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 c7 b4 5e}
00b7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00bfh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00c9h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 60 c7 5e}
00ceh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d1h mov rcx,7ff7c6338f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 33 c6 f7 7f 00 00}
00dbh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 4a af 5e}
00e0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e3h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 1d 73 ff}
00e8h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00eah call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 2e 02 ff}
00efh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f5h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f8h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 9b 00 ff}
00fdh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0100h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0103h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 5e 03 ff}
0108h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 13 ac 5e}
0110h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, Vector256<ulong> a)
; eval_g8u_v256x64u[275] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 78 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c4 e2 7d 29 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 4d c2 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 37 c2 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 20 5b c7 5e 48 8b d8 48 b9 78 a6 33 c6 f7 7f 00 00 e8 4e 45 af 5e 48 8b c8 e8 56 18 73 ff 8b c8 e8 af 28 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 79 96 00 ff 48 8b d0 48 8b ce e8 36 59 03 ff 48 8b ce e8 2e 0e ac 5e cc}
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
0094h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
009eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d c2 b4 5e}
00a3h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a6h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00aah mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 c2 b4 5e}
00b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bch mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00c1h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00cbh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 5b c7 5e}
00d0h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d3h mov rcx,7ff7c633a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 33 c6 f7 7f 00 00}
00ddh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 45 af 5e}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 18 73 ff}
00eah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00ech call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 28 02 ff}
00f1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f4h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00fah call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 96 00 ff}
00ffh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0102h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0105h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 59 03 ff}
010ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010dh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 0e ac 5e}
0112h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> eval<long>(UnaryBitLogicKind:byte kind, Vector256<long> a)
; eval_g8u_v256x64i[275] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce 83 f9 03 0f 87 78 00 00 00 8b c9 48 8d 15 fb 00 00 00 8b 14 8a 4c 8d 0d e0 ff ff ff 49 03 d1 ff e2 c4 c1 7d 10 00 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c5 fc 57 c0 c5 f4 57 c9 c4 e2 7d 29 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 50 a9 a4 c6 f7 7f 00 00 e8 fd c0 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 e7 c0 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 d0 59 c7 5e 48 8b d8 48 b9 a8 9e 33 c6 f7 7f 00 00 e8 fe 43 af 5e 48 8b c8 e8 06 17 73 ff 8b c8 e8 5f 27 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 29 95 00 ff 48 8b d0 48 8b ce e8 e6 57 03 ff 48 8b ce e8 de 0c ac 5e cc}
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
0094h mov rcx,7ff7c6a4a950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a9 a4 c6 f7 7f 00 00}
009eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd c0 b4 5e}
00a3h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a6h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00aah mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00b4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 c0 b4 5e}
00b9h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00bch mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00c1h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00cbh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 59 c7 5e}
00d0h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00d3h mov rcx,7ff7c6339ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 33 c6 f7 7f 00 00}
00ddh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 43 af 5e}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 17 73 ff}
00eah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00ech call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 27 02 ff}
00f1h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00f4h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f7h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00fah call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 95 00 ff}
00ffh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0102h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0105h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 57 03 ff}
010ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
010dh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 0c ac 5e}
0112h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(ComparisonKind:byte kind, Vector128<byte> a, Vector128<byte> b)
; eval_g8u_v128x8u_v128x8u[315] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 9e 00 00 00 8b c9 48 8d 15 21 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 74 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 2c 80 00 00 00 4c 8d 44 24 2c c4 e2 79 78 54 24 2c c5 f9 ef c2 c5 f1 ef ca c5 f1 64 c0 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 28 80 00 00 00 48 8d 4c 24 28 c4 e2 79 78 54 24 28 c5 f9 ef c2 c5 f1 ef ca c5 f9 64 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 85 bf b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 6f bf b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 58 58 c7 5e 48 8b d8 48 b9 58 77 33 c6 f7 7f 00 00 e8 86 42 af 5e 48 8b c8 e8 8e 15 73 ff 8b c8 e8 e7 25 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 b1 93 00 ff 48 8b d0 48 8b ce e8 6e 56 03 ff 48 8b ce e8 66 0b ac 5e cc}
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
00bch mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
00c6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 bf b4 5e}
00cbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00ceh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d2h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f bf b4 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00e9h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00f3h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 58 c7 5e}
00f8h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00fbh mov rcx,7ff7c6337758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 33 c6 f7 7f 00 00}
0105h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 42 af 5e}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 15 73 ff}
0112h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0114h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 25 02 ff}
0119h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
011ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011fh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0122h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 93 00 ff}
0127h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
012ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
012dh call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 56 03 ff}
0132h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0135h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 0b ac 5e}
013ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(ComparisonKind:byte kind, Vector128<sbyte> a, Vector128<sbyte> b)
; eval_g8u_v128x8i_v128x8i[255] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 66 8b c9 48 8d 15 e5 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 74 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 64 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 64 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 51 be b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 3b be b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 24 57 c7 5e 48 8b d8 48 b9 68 6f 33 c6 f7 7f 00 00 e8 52 41 af 5e 48 8b c8 e8 5a 14 73 ff 8b c8 e8 b3 24 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 7d 92 00 ff 48 8b d0 48 8b ce e8 3a 55 03 ff 48 8b ce e8 32 0a ac 5e cc}
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
0080h mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
008ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 be b4 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0096h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00a0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b be b4 5e}
00a5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00a8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00adh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00b7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 57 c7 5e}
00bch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bfh mov rcx,7ff7c6336f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 33 c6 f7 7f 00 00}
00c9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 41 af 5e}
00ceh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d1h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 14 73 ff}
00d6h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d8h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 24 02 ff}
00ddh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e3h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e6h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 92 00 ff}
00ebh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00eeh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f1h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 55 03 ff}
00f6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f9h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 0a ac 5e}
00feh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(ComparisonKind:byte kind, Vector128<ushort> a, Vector128<ushort> b)
; eval_g8u_v128x16u_v128x16u[315] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 9e 00 00 00 8b c9 48 8d 15 21 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 75 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 2c 00 80 00 00 4c 8d 44 24 2c c4 e2 79 79 54 24 2c c5 f9 ef c2 c5 f1 ef ca c5 f1 65 c0 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 28 00 80 00 00 48 8d 4c 24 28 c4 e2 79 79 54 24 28 c5 f9 ef c2 c5 f1 ef ca c5 f9 65 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 e5 bc b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 cf bc b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 b8 55 c7 5e 48 8b d8 48 b9 38 87 33 c6 f7 7f 00 00 e8 e6 3f af 5e 48 8b c8 e8 ee 12 73 ff 8b c8 e8 47 23 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 11 91 00 ff 48 8b d0 48 8b ce e8 ce 53 03 ff 48 8b ce e8 c6 08 ac 5e cc}
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
00bch mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
00c6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 bc b4 5e}
00cbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00ceh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d2h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf bc b4 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00e9h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00f3h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 55 c7 5e}
00f8h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00fbh mov rcx,7ff7c6338738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 33 c6 f7 7f 00 00}
0105h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 3f af 5e}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 12 73 ff}
0112h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0114h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 23 02 ff}
0119h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
011ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011fh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0122h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 91 00 ff}
0127h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
012ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
012dh call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 53 03 ff}
0132h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0135h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 08 ac 5e}
013ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(ComparisonKind:byte kind, Vector128<short> a, Vector128<short> b)
; eval_g8u_v128x16i_v128x16i[255] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 66 8b c9 48 8d 15 e5 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 75 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 65 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 65 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 b1 bb b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 9b bb b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 84 54 c7 5e 48 8b d8 48 b9 48 7f 33 c6 f7 7f 00 00 e8 b2 3e af 5e 48 8b c8 e8 ba 11 73 ff 8b c8 e8 13 22 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 dd 8f 00 ff 48 8b d0 48 8b ce e8 9a 52 03 ff 48 8b ce e8 92 07 ac 5e cc}
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
0080h mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
008ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 bb b4 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0096h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00a0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b bb b4 5e}
00a5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00a8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00adh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00b7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 54 c7 5e}
00bch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bfh mov rcx,7ff7c6337f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 33 c6 f7 7f 00 00}
00c9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 3e af 5e}
00ceh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d1h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 11 73 ff}
00d6h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d8h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 22 02 ff}
00ddh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e3h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e6h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 8f 00 ff}
00ebh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00eeh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f1h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 52 03 ff}
00f6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f9h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 07 ac 5e}
00feh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(ComparisonKind:byte kind, Vector128<uint> a, Vector128<uint> b)
; eval_g8u_v128x32u_v128x32u[315] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 9e 00 00 00 8b c9 48 8d 15 21 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 2c 00 00 00 80 4c 8d 44 24 2c c4 e2 79 58 54 24 2c c5 f9 ef c2 c5 f1 ef ca c5 f1 66 c0 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 28 00 00 00 80 48 8d 4c 24 28 c4 e2 79 58 54 24 28 c5 f9 ef c2 c5 f1 ef ca c5 f9 66 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 45 ba b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 2f ba b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 18 53 c7 5e 48 8b d8 48 b9 d8 96 33 c6 f7 7f 00 00 e8 46 3d af 5e 48 8b c8 e8 4e 10 73 ff 8b c8 e8 a7 20 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 71 8e 00 ff 48 8b d0 48 8b ce e8 2e 51 03 ff 48 8b ce e8 26 06 ac 5e cc}
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
00bch mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
00c6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 ba b4 5e}
00cbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00ceh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d2h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f ba b4 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00e9h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00f3h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 53 c7 5e}
00f8h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00fbh mov rcx,7ff7c63396d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 33 c6 f7 7f 00 00}
0105h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 3d af 5e}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 10 73 ff}
0112h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0114h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 20 02 ff}
0119h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
011ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011fh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0122h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 8e 00 ff}
0127h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
012ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
012dh call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 51 03 ff}
0132h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0135h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 06 ac 5e}
013ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(ComparisonKind:byte kind, Vector128<int> a, Vector128<int> b)
; eval_g8u_v128x32i_v128x32i[255] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 66 8b c9 48 8d 15 e5 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 66 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 66 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 11 b9 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 fb b8 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 e4 51 c7 5e 48 8b d8 48 b9 08 8f 33 c6 f7 7f 00 00 e8 12 3c af 5e 48 8b c8 e8 1a 0f 73 ff 8b c8 e8 73 1f 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 3d 8d 00 ff 48 8b d0 48 8b ce e8 fa 4f 03 ff 48 8b ce e8 f2 04 ac 5e cc}
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
0080h mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
008ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 b9 b4 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0096h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00a0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb b8 b4 5e}
00a5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00a8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00adh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00b7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 51 c7 5e}
00bch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bfh mov rcx,7ff7c6338f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 33 c6 f7 7f 00 00}
00c9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 3c af 5e}
00ceh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d1h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 0f 73 ff}
00d6h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d8h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 1f 02 ff}
00ddh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e3h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e6h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 8d 00 ff}
00ebh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00eeh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f1h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 4f 03 ff}
00f6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f9h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 04 ac 5e}
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
; eval_g8u_v128x64i_v128x64i[325] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 a8 00 00 00 8b c9 48 8d 15 29 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c4 e2 79 29 c1 c5 f9 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c4 e3 7d 46 c8 03 c4 e2 75 37 c0 c4 e3 7d 19 c0 00 c5 f9 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 ec 57 d2 c4 e3 6d 38 c0 00 c5 ec 57 d2 c4 e3 6d 38 c9 00 c4 e2 7d 37 c1 c4 e3 7d 19 c0 00 c5 f9 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 db b5 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 c5 b5 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 ae 4e c7 5e 48 8b d8 48 b9 a8 9e 33 c6 f7 7f 00 00 e8 dc 38 af 5e 48 8b c8 e8 e4 0b 73 ff 8b c8 e8 3d 1c 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 07 8a 00 ff 48 8b d0 48 8b ce e8 c4 4c 03 ff 48 8b ce e8 bc 01 ac 5e cc}
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
00c6h mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
00d0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db b5 b4 5e}
00d5h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d8h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00dch mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00e6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 b5 b4 5e}
00ebh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00eeh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00f3h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00fdh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 4e c7 5e}
0102h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0105h mov rcx,7ff7c6339ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 33 c6 f7 7f 00 00}
010fh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 38 af 5e}
0114h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0117h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 0b 73 ff}
011ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
011eh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 1c 02 ff}
0123h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0126h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0129h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
012ch call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 8a 00 ff}
0131h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0134h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0137h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 4c 03 ff}
013ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
013fh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 01 ac 5e}
0144h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> eval<float>(ComparisonKind:byte kind, Vector128<float> a, Vector128<float> b)
; eval_g8u_v128x32f_v128x32f[337] = {57 56 53 48 83 ec 60 c5 f8 77 48 8b f1 8b fa 40 0f b6 c7 ff c8 83 f8 03 0f 87 b4 00 00 00 8b c0 48 8d 0d 39 01 00 00 8b 0c 81 48 8d 15 de ff ff ff 48 03 ca ff e1 c4 c1 79 10 00 c4 c1 79 10 09 c5 f8 c2 c1 00 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 50 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 ba fb ff ff c5 f9 28 44 24 50 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 40 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 ab fb ff ff c5 f9 28 44 24 40 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 4f b0 b4 5e 48 8b f0 40 88 7e 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 39 b0 b4 5e 48 8b f8 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 22 49 c7 5e 48 8b d8 48 b9 58 af 33 c6 f7 7f 00 00 e8 50 33 af 5e 48 8b c8 e8 58 06 73 ff 8b c8 e8 b1 16 02 ff 4c 8b c0 48 8b cb 48 8b d6 e8 7b 84 00 ff 48 8b d0 48 8b cf e8 38 47 03 ff 48 8b cf e8 30 fc ab 5e cc}
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
0079h call 7ff7c735b7b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fb ff ff}
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
00b8h call 7ff7c735b7e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab fb ff ff}
00bdh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00c3h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
00c7h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00cah add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
00ceh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00cfh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d1h ret                                     ; RET || C3 || encoded[1]{c3}
00d2h mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f b0 b4 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov [rsi+8],dil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 7e 08}
00e8h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 b0 b4 5e}
00f7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00fah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00ffh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0109h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 49 c7 5e}
010eh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0111h mov rcx,7ff7c633af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 33 c6 f7 7f 00 00}
011bh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 33 af 5e}
0120h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0123h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 06 73 ff}
0128h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
012ah call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 16 02 ff}
012fh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0132h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0135h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0138h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 84 00 ff}
013dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0140h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0143h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 47 03 ff}
0148h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
014bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 fc ab 5e}
0150h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> eval<double>(ComparisonKind:byte kind, Vector128<double> a, Vector128<double> b)
; eval_g8u_v128x64f_v128x64f[337] = {57 56 53 48 83 ec 60 c5 f8 77 48 8b f1 8b fa 40 0f b6 c7 ff c8 83 f8 03 0f 87 b4 00 00 00 8b c0 48 8d 0d 39 01 00 00 8b 0c 81 48 8d 15 de ff ff ff 48 03 ca ff e1 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 c2 c1 00 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 50 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 ca fa ff ff c5 f9 28 44 24 50 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 40 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 bb fa ff ff c5 f9 28 44 24 40 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 bf ae b4 5e 48 8b f0 40 88 7e 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 a9 ae b4 5e 48 8b f8 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 92 47 c7 5e 48 8b d8 48 b9 38 b8 33 c6 f7 7f 00 00 e8 c0 31 af 5e 48 8b c8 e8 c8 04 73 ff 8b c8 e8 21 15 02 ff 4c 8b c0 48 8b cb 48 8b d6 e8 eb 82 00 ff 48 8b d0 48 8b cf e8 a8 45 03 ff 48 8b cf e8 a0 fa ab 5e cc}
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
0079h call 7ff7c735b858h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fa ff ff}
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
00b8h call 7ff7c735b888h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb fa ff ff}
00bdh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00c3h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
00c7h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00cah add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
00ceh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00cfh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d1h ret                                     ; RET || C3 || encoded[1]{c3}
00d2h mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf ae b4 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov [rsi+8],dil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 7e 08}
00e8h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 ae b4 5e}
00f7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00fah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00ffh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0109h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 47 c7 5e}
010eh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0111h mov rcx,7ff7c633b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 33 c6 f7 7f 00 00}
011bh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 31 af 5e}
0120h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0123h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 04 73 ff}
0128h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
012ah call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 15 02 ff}
012fh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0132h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0135h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0138h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 82 00 ff}
013dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0140h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0143h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 45 03 ff}
0148h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
014bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 fa ab 5e}
0150h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> eval<byte>(ComparisonKind:byte kind, Vector256<byte> a, Vector256<byte> b)
; eval_g8u_v256x8u_v256x8u[324] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 a7 00 00 00 8b c9 48 8d 15 29 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 74 c1 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 2c 80 00 00 00 4c 8d 44 24 2c c4 e2 7d 78 54 24 2c c5 fd ef c2 c5 f5 ef ca c5 f5 64 c0 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 28 80 00 00 00 48 8d 4c 24 28 c4 e2 7d 78 54 24 28 c5 fd ef c2 c5 f5 ef ca c5 fd 64 c1 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 3c ad b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 26 ad b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 0f 46 c7 5e 48 8b d8 48 b9 58 77 33 c6 f7 7f 00 00 e8 3d 30 af 5e 48 8b c8 e8 45 03 73 ff 8b c8 e8 9e 13 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 68 81 00 ff 48 8b d0 48 8b ce e8 25 44 03 ff 48 8b ce e8 1d f9 ab 5e cc}
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
00c5h mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
00cfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c ad b4 5e}
00d4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d7h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00dbh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 ad b4 5e}
00eah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00edh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00f2h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00fch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 46 c7 5e}
0101h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0104h mov rcx,7ff7c6337758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 33 c6 f7 7f 00 00}
010eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 30 af 5e}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 03 73 ff}
011bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
011dh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 13 02 ff}
0122h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0125h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0128h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
012bh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 81 00 ff}
0130h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0133h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0136h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 44 03 ff}
013bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
013eh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d f9 ab 5e}
0143h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> eval<sbyte>(ComparisonKind:byte kind, Vector256<sbyte> a, Vector256<sbyte> b)
; eval_g8u_v256x8i_v256x8i[264] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 6f 8b c9 48 8d 15 ed 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 74 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 64 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 64 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 f8 ab b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 e2 ab b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 cb 44 c7 5e 48 8b d8 48 b9 68 6f 33 c6 f7 7f 00 00 e8 f9 2e af 5e 48 8b c8 e8 01 02 73 ff 8b c8 e8 5a 12 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 24 80 00 ff 48 8b d0 48 8b ce e8 e1 42 03 ff 48 8b ce e8 d9 f7 ab 5e cc}
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
0089h mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
0093h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 ab b4 5e}
0098h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009bh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009fh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ab b4 5e}
00aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00b1h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b6h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00c0h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 44 c7 5e}
00c5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c8h mov rcx,7ff7c6336f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 33 c6 f7 7f 00 00}
00d2h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 2e af 5e}
00d7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dah call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 02 73 ff}
00dfh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00e1h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 12 02 ff}
00e6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e9h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00ech mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00efh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 80 00 ff}
00f4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fah call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 42 03 ff}
00ffh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0102h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f7 ab 5e}
0107h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> eval<ushort>(ComparisonKind:byte kind, Vector256<ushort> a, Vector256<ushort> b)
; eval_g8u_v256x16u_v256x16u[324] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 a7 00 00 00 8b c9 48 8d 15 29 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 75 c1 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 2c 00 80 00 00 4c 8d 44 24 2c c4 e2 7d 79 54 24 2c c5 fd ef c2 c5 f5 ef ca c5 f5 65 c0 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 28 00 80 00 00 48 8d 4c 24 28 c4 e2 7d 79 54 24 28 c5 fd ef c2 c5 f5 ef ca c5 fd 65 c1 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 7c aa b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 66 aa b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 4f 43 c7 5e 48 8b d8 48 b9 38 87 33 c6 f7 7f 00 00 e8 7d 2d af 5e 48 8b c8 e8 85 00 73 ff 8b c8 e8 de 10 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 a8 7e 00 ff 48 8b d0 48 8b ce e8 65 41 03 ff 48 8b ce e8 5d f6 ab 5e cc}
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
00c5h mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
00cfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c aa b4 5e}
00d4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d7h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00dbh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 aa b4 5e}
00eah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00edh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00f2h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00fch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 43 c7 5e}
0101h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0104h mov rcx,7ff7c6338738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 33 c6 f7 7f 00 00}
010eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 2d af 5e}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 00 73 ff}
011bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
011dh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 10 02 ff}
0122h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0125h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0128h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
012bh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 7e 00 ff}
0130h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0133h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0136h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 41 03 ff}
013bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
013eh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d f6 ab 5e}
0143h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> eval<short>(ComparisonKind:byte kind, Vector256<short> a, Vector256<short> b)
; eval_g8u_v256x16i_v256x16i[264] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 6f 8b c9 48 8d 15 ed 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 75 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 65 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 65 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 38 a9 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 22 a9 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 0b 42 c7 5e 48 8b d8 48 b9 48 7f 33 c6 f7 7f 00 00 e8 39 2c af 5e 48 8b c8 e8 41 ff 72 ff 8b c8 e8 9a 0f 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 64 7d 00 ff 48 8b d0 48 8b ce e8 21 40 03 ff 48 8b ce e8 19 f5 ab 5e cc}
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
0089h mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
0093h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 a9 b4 5e}
0098h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009bh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009fh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 a9 b4 5e}
00aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00b1h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b6h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00c0h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 42 c7 5e}
00c5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c8h mov rcx,7ff7c6337f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 33 c6 f7 7f 00 00}
00d2h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 2c af 5e}
00d7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dah call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 ff 72 ff}
00dfh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00e1h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 0f 02 ff}
00e6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e9h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00ech mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00efh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 7d 00 ff}
00f4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fah call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 40 03 ff}
00ffh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0102h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f5 ab 5e}
0107h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> eval<uint>(ComparisonKind:byte kind, Vector256<uint> a, Vector256<uint> b)
; eval_g8u_v256x32u_v256x32u[324] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 a7 00 00 00 8b c9 48 8d 15 29 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 76 c1 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 2c 00 00 00 80 4c 8d 44 24 2c c4 e2 7d 58 54 24 2c c5 fd ef c2 c5 f5 ef ca c5 f5 66 c0 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c7 44 24 28 00 00 00 80 48 8d 4c 24 28 c4 e2 7d 58 54 24 28 c5 fd ef c2 c5 f5 ef ca c5 fd 66 c1 c5 fd 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 bc a7 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 a6 a7 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 8f 40 c7 5e 48 8b d8 48 b9 d8 96 33 c6 f7 7f 00 00 e8 bd 2a af 5e 48 8b c8 e8 c5 fd 72 ff 8b c8 e8 1e 0e 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 e8 7b 00 ff 48 8b d0 48 8b ce e8 a5 3e 03 ff 48 8b ce e8 9d f3 ab 5e cc}
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
00c5h mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
00cfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc a7 b4 5e}
00d4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d7h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00dbh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 a7 b4 5e}
00eah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00edh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00f2h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00fch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 40 c7 5e}
0101h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0104h mov rcx,7ff7c63396d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 33 c6 f7 7f 00 00}
010eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 2a af 5e}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 fd 72 ff}
011bh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
011dh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 0e 02 ff}
0122h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0125h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0128h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
012bh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 7b 00 ff}
0130h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0133h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0136h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 3e 03 ff}
013bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
013eh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d f3 ab 5e}
0143h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> eval<int>(ComparisonKind:byte kind, Vector256<int> a, Vector256<int> b)
; eval_g8u_v256x32i_v256x32i[264] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 6f 8b c9 48 8d 15 ed 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 76 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 66 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 66 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 78 a6 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 62 a6 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 4b 3f c7 5e 48 8b d8 48 b9 08 8f 33 c6 f7 7f 00 00 e8 79 29 af 5e 48 8b c8 e8 81 fc 72 ff 8b c8 e8 da 0c 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 a4 7a 00 ff 48 8b d0 48 8b ce e8 61 3d 03 ff 48 8b ce e8 59 f2 ab 5e cc}
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
0089h mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
0093h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 a6 b4 5e}
0098h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009bh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009fh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00a9h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 a6 b4 5e}
00aeh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00b1h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b6h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00c0h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 3f c7 5e}
00c5h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c8h mov rcx,7ff7c6338f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 33 c6 f7 7f 00 00}
00d2h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 29 af 5e}
00d7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dah call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 fc 72 ff}
00dfh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00e1h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 0c 02 ff}
00e6h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e9h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00ech mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00efh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 7a 00 ff}
00f4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fah call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 3d 03 ff}
00ffh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0102h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 f2 ab 5e}
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
; eval_g8u_v256x64i_v256x64i[267] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 72 8b c9 48 8d 15 ed 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 7d 29 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 75 37 c0 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 7d 37 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 90 ae a4 c6 f7 7f 00 00 e8 a5 9f b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 8f 9f b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 78 38 c7 5e 48 8b d8 48 b9 a8 9e 33 c6 f7 7f 00 00 e8 a6 22 af 5e 48 8b c8 e8 ae f5 72 ff 8b c8 e8 07 06 02 ff 4c 8b c0 48 8b cb 48 8b d7 e8 d1 73 00 ff 48 8b d0 48 8b ce e8 8e 36 03 ff 48 8b ce e8 86 eb ab 5e cc}
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
008ch mov rcx,7ff7c6a4ae90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ae a4 c6 f7 7f 00 00}
0096h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 9f b4 5e}
009bh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009eh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00a2h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
00ach call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 9f b4 5e}
00b1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00b4h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00b9h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
00c3h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 38 c7 5e}
00c8h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00cbh mov rcx,7ff7c6339ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 33 c6 f7 7f 00 00}
00d5h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 22 af 5e}
00dah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ddh call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae f5 72 ff}
00e2h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00e4h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 06 02 ff}
00e9h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00ech mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00efh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f2h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 73 00 ff}
00f7h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00fah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00fdh call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 36 03 ff}
0102h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0105h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 eb ab 5e}
010ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(BinaryBitLogicKind:byte kind, Vector128<byte> a, Vector128<byte> b)
; eval_g8u_v128x8u_v128x8u[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 74 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 74 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 21 99 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 0b 99 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 f4 31 c7 5e 48 8b d8 48 b9 58 77 33 c6 f7 7f 00 00 e8 22 1c af 5e 48 8b c8 e8 2a ef 72 ff 8b c8 e8 83 ff 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 4d 6d 00 ff 48 8b d0 48 8b ce e8 0a 30 03 ff 48 8b ce e8 02 e5 ab 5e cc}
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
01d0h mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 99 b4 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 99 b4 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 31 c7 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c6337758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 33 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 1c af 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a ef 72 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 ff 01 ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 6d 00 ff}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 30 03 ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 e5 ab 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(BinaryBitLogicKind:byte kind, Vector128<sbyte> a, Vector128<sbyte> b)
; eval_g8u_v128x8i_v128x8i[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 74 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 74 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 41 96 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 2b 96 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 14 2f c7 5e 48 8b d8 48 b9 68 6f 33 c6 f7 7f 00 00 e8 42 19 af 5e 48 8b c8 e8 4a ec 72 ff 8b c8 e8 a3 fc 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 6d 6a 00 ff 48 8b d0 48 8b ce e8 2a 2d 03 ff 48 8b ce e8 22 e2 ab 5e cc}
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
01d0h mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 96 b4 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 96 b4 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 2f c7 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c6336f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 33 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 19 af 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a ec 72 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 fc 01 ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 6a 00 ff}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 2d 03 ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 e2 ab 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, Vector128<ushort> a, Vector128<ushort> b)
; eval_g8u_v128x16u_v128x16u[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 75 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 75 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 61 93 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 4b 93 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 34 2c c7 5e 48 8b d8 48 b9 38 87 33 c6 f7 7f 00 00 e8 62 16 af 5e 48 8b c8 e8 6a e9 72 ff 8b c8 e8 c3 f9 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 8d 67 00 ff 48 8b d0 48 8b ce e8 4a 2a 03 ff 48 8b ce e8 42 df ab 5e cc}
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
01d0h mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 93 b4 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 93 b4 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 2c c7 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c6338738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 33 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 16 af 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a e9 72 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 f9 01 ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 67 00 ff}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 2a 03 ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 df ab 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(BinaryBitLogicKind:byte kind, Vector128<short> a, Vector128<short> b)
; eval_g8u_v128x16i_v128x16i[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 75 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 75 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 81 90 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 6b 90 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 54 29 c7 5e 48 8b d8 48 b9 48 7f 33 c6 f7 7f 00 00 e8 82 13 af 5e 48 8b c8 e8 8a e6 72 ff 8b c8 e8 e3 f6 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 ad 64 00 ff 48 8b d0 48 8b ce e8 6a 27 03 ff 48 8b ce e8 62 dc ab 5e cc}
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
01d0h mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 90 b4 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 90 b4 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 29 c7 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c6337f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 33 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 13 af 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a e6 72 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 f6 01 ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 64 00 ff}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 27 03 ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 dc ab 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(BinaryBitLogicKind:byte kind, Vector128<uint> a, Vector128<uint> b)
; eval_g8u_v128x32u_v128x32u[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 a1 89 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 8b 89 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 74 22 c7 5e 48 8b d8 48 b9 d8 96 33 c6 f7 7f 00 00 e8 a2 0c af 5e 48 8b c8 e8 aa df 72 ff 8b c8 e8 03 f0 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 cd 5d 00 ff 48 8b d0 48 8b ce e8 8a 20 03 ff 48 8b ce e8 82 d5 ab 5e cc}
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
01d0h mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 89 b4 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 89 b4 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 22 c7 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c63396d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 33 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 0c af 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa df 72 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f0 01 ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 5d 00 ff}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 20 03 ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 d5 ab 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(BinaryBitLogicKind:byte kind, Vector128<int> a, Vector128<int> b)
; eval_g8u_v128x32i_v128x32i[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 c1 86 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 ab 86 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 94 1f c7 5e 48 8b d8 48 b9 08 8f 33 c6 f7 7f 00 00 e8 c2 09 af 5e 48 8b c8 e8 ca dc 72 ff 8b c8 e8 23 ed 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 ed 5a 00 ff 48 8b d0 48 8b ce e8 aa 1d 03 ff 48 8b ce e8 a2 d2 ab 5e cc}
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
01d0h mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 86 b4 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 86 b4 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 1f c7 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c6338f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 33 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 09 af 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca dc 72 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 ed 01 ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 5a 00 ff}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 1d 03 ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 d2 ab 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, Vector128<ulong> a, Vector128<ulong> b)
; eval_g8u_v128x64u_v128x64u[592] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b8 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 e0 83 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 ca 83 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 b3 1c c7 5e 48 8b d8 48 b9 78 a6 33 c6 f7 7f 00 00 e8 e1 06 af 5e 48 8b c8 e8 e9 d9 72 ff 8b c8 e8 42 ea 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 0c 58 00 ff 48 8b d0 48 8b ce e8 c9 1a 03 ff 48 8b ce e8 c1 cf ab 5e cc}
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
01d1h mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01dbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 83 b4 5e}
01e0h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e3h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e7h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 83 b4 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01feh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0208h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 1c c7 5e}
020dh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0210h mov rcx,7ff7c633a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 33 c6 f7 7f 00 00}
021ah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 06 af 5e}
021fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0222h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 d9 72 ff}
0227h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0229h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 ea 01 ff}
022eh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0231h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0234h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0237h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 58 00 ff}
023ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0242h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 1a 03 ff}
0247h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 cf ab 5e}
024fh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> eval<long>(BinaryBitLogicKind:byte kind, Vector128<long> a, Vector128<long> b)
; eval_g8u_v128x64i_v128x64i[592] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b8 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 00 81 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 ea 80 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 d3 19 c7 5e 48 8b d8 48 b9 a8 9e 33 c6 f7 7f 00 00 e8 01 04 af 5e 48 8b c8 e8 09 d7 72 ff 8b c8 e8 62 e7 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 2c 55 00 ff 48 8b d0 48 8b ce e8 e9 17 03 ff 48 8b ce e8 e1 cc ab 5e cc}
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
01d1h mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01dbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 81 b4 5e}
01e0h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e3h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e7h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 80 b4 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01feh mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0208h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 19 c7 5e}
020dh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0210h mov rcx,7ff7c6339ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 33 c6 f7 7f 00 00}
021ah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 04 af 5e}
021fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0222h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 d7 72 ff}
0227h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0229h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 e7 01 ff}
022eh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0231h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0234h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0237h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 55 00 ff}
023ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0242h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 17 03 ff}
0247h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 cc ab 5e}
024fh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> eval<byte>(BinaryBitLogicKind:byte kind, Vector256<byte> a, Vector256<byte> b)
; eval_g8u_v256x8u_v256x8u[594] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 ba 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 74 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 74 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 74 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 1e 7a b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 08 7a b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 f1 12 c7 5e 48 8b d8 48 b9 58 77 33 c6 f7 7f 00 00 e8 1f fd ae 5e 48 8b c8 e8 27 d0 72 ff 8b c8 e8 80 e0 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 4a 4e 00 ff 48 8b d0 48 8b ce e8 07 11 03 ff 48 8b ce e8 ff c5 ab 5e cc}
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
01d3h mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01ddh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 7a b4 5e}
01e2h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e5h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e9h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 7a b4 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0200h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
020ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 12 c7 5e}
020fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0212h mov rcx,7ff7c6337758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 33 c6 f7 7f 00 00}
021ch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f fd ae 5e}
0221h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0224h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 d0 72 ff}
0229h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
022bh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 e0 01 ff}
0230h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0233h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0236h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0239h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 4e 00 ff}
023eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0241h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0244h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 11 03 ff}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff c5 ab 5e}
0251h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> eval<sbyte>(BinaryBitLogicKind:byte kind, Vector256<sbyte> a, Vector256<sbyte> b)
; eval_g8u_v256x8i_v256x8i[594] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 ba 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 74 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 74 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 74 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 3e 77 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 28 77 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 11 10 c7 5e 48 8b d8 48 b9 68 6f 33 c6 f7 7f 00 00 e8 3f fa ae 5e 48 8b c8 e8 47 cd 72 ff 8b c8 e8 a0 dd 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 6a 4b 00 ff 48 8b d0 48 8b ce e8 27 0e 03 ff 48 8b ce e8 1f c3 ab 5e cc}
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
01d3h mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01ddh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 77 b4 5e}
01e2h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e5h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e9h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 77 b4 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0200h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
020ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 10 c7 5e}
020fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0212h mov rcx,7ff7c6336f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 33 c6 f7 7f 00 00}
021ch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f fa ae 5e}
0221h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0224h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 cd 72 ff}
0229h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
022bh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 dd 01 ff}
0230h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0233h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0236h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0239h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 4b 00 ff}
023eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0241h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0244h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 0e 03 ff}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f c3 ab 5e}
0251h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, Vector256<ushort> a, Vector256<ushort> b)
; eval_g8u_v256x16u_v256x16u[594] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 ba 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 75 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 75 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 75 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 5e 70 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 48 70 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 31 09 c7 5e 48 8b d8 48 b9 38 87 33 c6 f7 7f 00 00 e8 5f f3 ae 5e 48 8b c8 e8 67 c6 72 ff 8b c8 e8 c0 d6 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 8a 44 00 ff 48 8b d0 48 8b ce e8 47 07 03 ff 48 8b ce e8 3f bc ab 5e cc}
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
01d3h mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01ddh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 70 b4 5e}
01e2h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e5h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e9h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 70 b4 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0200h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
020ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 09 c7 5e}
020fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0212h mov rcx,7ff7c6338738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 33 c6 f7 7f 00 00}
021ch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f3 ae 5e}
0221h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0224h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 c6 72 ff}
0229h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
022bh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 d6 01 ff}
0230h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0233h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0236h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0239h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 44 00 ff}
023eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0241h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0244h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 07 03 ff}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f bc ab 5e}
0251h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> eval<short>(BinaryBitLogicKind:byte kind, Vector256<short> a, Vector256<short> b)
; eval_g8u_v256x16i_v256x16i[594] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 ba 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 75 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 75 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 75 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 7e 6d b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 68 6d b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 51 06 c7 5e 48 8b d8 48 b9 48 7f 33 c6 f7 7f 00 00 e8 7f f0 ae 5e 48 8b c8 e8 87 c3 72 ff 8b c8 e8 e0 d3 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 aa 41 00 ff 48 8b d0 48 8b ce e8 67 04 03 ff 48 8b ce e8 5f b9 ab 5e cc}
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
01d3h mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01ddh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 6d b4 5e}
01e2h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e5h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e9h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 6d b4 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0200h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
020ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 06 c7 5e}
020fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0212h mov rcx,7ff7c6337f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 33 c6 f7 7f 00 00}
021ch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f f0 ae 5e}
0221h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0224h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 c3 72 ff}
0229h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
022bh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 d3 01 ff}
0230h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0233h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0236h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0239h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 41 00 ff}
023eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0241h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0244h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 04 03 ff}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f b9 ab 5e}
0251h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> eval<uint>(BinaryBitLogicKind:byte kind, Vector256<uint> a, Vector256<uint> b)
; eval_g8u_v256x32u_v256x32u[594] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 ba 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 76 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 76 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 76 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 9e 6a b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 88 6a b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 71 03 c7 5e 48 8b d8 48 b9 d8 96 33 c6 f7 7f 00 00 e8 9f ed ae 5e 48 8b c8 e8 a7 c0 72 ff 8b c8 e8 00 d1 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 ca 3e 00 ff 48 8b d0 48 8b ce e8 87 01 03 ff 48 8b ce e8 7f b6 ab 5e cc}
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
01d3h mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01ddh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 6a b4 5e}
01e2h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e5h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e9h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 6a b4 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0200h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
020ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 03 c7 5e}
020fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0212h mov rcx,7ff7c63396d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 33 c6 f7 7f 00 00}
021ch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f ed ae 5e}
0221h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0224h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 c0 72 ff}
0229h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
022bh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 d1 01 ff}
0230h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0233h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0236h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0239h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 3e 00 ff}
023eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0241h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0244h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 01 03 ff}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f b6 ab 5e}
0251h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> eval<int>(BinaryBitLogicKind:byte kind, Vector256<int> a, Vector256<int> b)
; eval_g8u_v256x32i_v256x32i[594] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 ba 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c5 fd 76 c1 c5 fd 11 01 48 8b c1 e9 7f 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 55 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 33 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 19 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 99 00 00 00 c4 c1 7d 10 00 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 80 00 00 00 c4 c1 7d 10 01 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 76 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4b c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 34 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 76 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 be 63 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 a8 63 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 91 fc c6 5e 48 8b d8 48 b9 08 8f 33 c6 f7 7f 00 00 e8 bf e6 ae 5e 48 8b c8 e8 c7 b9 72 ff 8b c8 e8 20 ca 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 ea 37 00 ff 48 8b d0 48 8b ce e8 a7 fa 02 ff 48 8b ce e8 9f af ab 5e cc}
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
01d3h mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01ddh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 63 b4 5e}
01e2h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e5h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e9h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01f3h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 63 b4 5e}
01f8h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01fbh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0200h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
020ah call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 fc c6 5e}
020fh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0212h mov rcx,7ff7c6338f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 33 c6 f7 7f 00 00}
021ch call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf e6 ae 5e}
0221h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0224h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 b9 72 ff}
0229h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
022bh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 ca 01 ff}
0230h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0233h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0236h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0239h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 37 00 ff}
023eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0241h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0244h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 fa 02 ff}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f af ab 5e}
0251h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, Vector256<ulong> a, Vector256<ulong> b)
; eval_g8u_v256x64u_v256x64u[602] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 c2 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c4 e2 7d 29 c1 c5 fd 11 01 48 8b c1 e9 86 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 76 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 5c 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 39 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 1f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 fc 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 e2 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bf 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 ae 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 9d 00 00 00 c4 c1 7d 10 00 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 83 00 00 00 c4 c1 7d 10 01 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6c c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 75 29 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 35 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 7d 29 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 d6 60 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 c0 60 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 a9 f9 c6 5e 48 8b d8 48 b9 78 a6 33 c6 f7 7f 00 00 e8 d7 e3 ae 5e 48 8b c8 e8 df b6 72 ff 8b c8 e8 38 c7 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 02 35 00 ff 48 8b d0 48 8b ce e8 bf f7 02 ff 48 8b ce e8 b7 ac ab 5e cc}
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
01dbh mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 60 b4 5e}
01eah mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01edh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01f1h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01fbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 60 b4 5e}
0200h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0203h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0208h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0212h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 f9 c6 5e}
0217h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
021ah mov rcx,7ff7c633a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 33 c6 f7 7f 00 00}
0224h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 e3 ae 5e}
0229h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
022ch call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df b6 72 ff}
0231h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0233h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 c7 01 ff}
0238h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
023bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
023eh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0241h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 35 00 ff}
0246h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf f7 02 ff}
0251h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0254h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 ac ab 5e}
0259h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> eval<long>(BinaryBitLogicKind:byte kind, Vector256<long> a, Vector256<long> b)
; eval_g8u_v256x64i_v256x64i[602] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 c2 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 fc 57 c0 c5 f4 57 c9 c4 e2 7d 29 c1 c5 fd 11 01 48 8b c1 e9 86 01 00 00 c5 fc 57 c0 c5 fd 11 01 48 8b c1 e9 76 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c5 fd 11 01 48 8b c1 e9 5c 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd db c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 39 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c5 fd 11 01 48 8b c1 e9 1f 01 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd eb c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 fc 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 e2 00 00 00 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd ef c1 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 bf 00 00 00 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 e9 ae 00 00 00 c4 c1 7d 10 01 c5 fd 11 01 48 8b c1 e9 9d 00 00 00 c4 c1 7d 10 00 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 e9 83 00 00 00 c4 c1 7d 10 01 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 01 48 8b c1 eb 6c c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 75 29 d1 c5 f5 ef ca c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 4c c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd df c1 c5 fd 11 01 48 8b c1 eb 35 c4 c1 7d 10 00 c4 c1 7d 10 09 c4 e2 7d 29 d0 c5 fd ef c2 c5 fd eb c1 c5 fd 11 01 48 8b c1 eb 15 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 f5 df c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 a0 aa a4 c6 f7 7f 00 00 e8 f6 5d b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 e0 5d b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 c9 f6 c6 5e 48 8b d8 48 b9 a8 9e 33 c6 f7 7f 00 00 e8 f7 e0 ae 5e 48 8b c8 e8 ff b3 72 ff 8b c8 e8 58 c4 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 22 32 00 ff 48 8b d0 48 8b ce e8 df f4 02 ff 48 8b ce e8 d7 a9 ab 5e cc}
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
01dbh mov rcx,7ff7c6a4aaa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 aa a4 c6 f7 7f 00 00}
01e5h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 5d b4 5e}
01eah mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01edh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01f1h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
01fbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 5d b4 5e}
0200h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0203h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0208h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0212h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f6 c6 5e}
0217h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
021ah mov rcx,7ff7c6339ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 33 c6 f7 7f 00 00}
0224h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 e0 ae 5e}
0229h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
022ch call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff b3 72 ff}
0231h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0233h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 c4 01 ff}
0238h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
023bh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
023eh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0241h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 32 00 ff}
0246h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0249h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ch call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f4 02 ff}
0251h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0254h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 a9 ab 5e}
0259h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(TernaryBitLogicKind:byte kind, Vector128<byte> x, Vector128<byte> y, Vector128<byte> z)
; eval_g8u_v128x8u_v128x8u_v128x8u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 12 f6 ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c73605f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 f6 ff ff}
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
; eval_g8u_v128x8i_v128x8i_v128x8i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 12 f6 ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c7360678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 f6 ff ff}
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
; eval_g8u_v128x16u_v128x16u_v128x16u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 da f5 ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c73606c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da f5 ff ff}
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
; eval_g8u_v128x16i_v128x16i_v128x16i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 c2 fb ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c7361128h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 fb ff ff}
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
; eval_g8u_v128x32u_v128x32u_v128x32u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 8a fb ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c7361170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a fb ff ff}
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
; eval_g8u_v128x32i_v128x32i_v128x32i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 52 fb ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c73611b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 fb ff ff}
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
; eval_g8u_v128x64u_v128x64u_v128x64u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 1a fb ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c7361200h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a fb ff ff}
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
; eval_g8u_v128x64i_v128x64i_v128x64i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 e2 fa ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c7361248h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 fa ff ff}
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
; eval_g8u_v256x8u_v256x8u_v256x8u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 2a fb ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c7361310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a fb ff ff}
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
; eval_g8u_v256x8i_v256x8i_v256x8i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 2a fb ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c7361390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a fb ff ff}
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
; eval_g8u_v256x16u_v256x16u_v256x16u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 f2 fa ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c73613d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 fa ff ff}
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
; eval_g8u_v256x16i_v256x16i_v256x16i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 ba fa ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c7361420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba fa ff ff}
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
; eval_g8u_v256x32u_v256x32u_v256x32u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 82 fa ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c7361468h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 fa ff ff}
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
; eval_g8u_v256x32i_v256x32i_v256x32i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 4a fa ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c73614b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a fa ff ff}
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
; eval_g8u_v256x64u_v256x64u_v256x64u[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 12 f6 ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c73614f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 f6 ff ff}
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
; eval_g8u_v256x64i_v256x64i_v256x64i[87] = {57 56 55 53 48 83 ec 38 48 8b d9 49 8b f0 49 8b f9 48 8b ac 24 80 00 00 00 c6 44 24 28 00 48 0f be 4c 24 28 88 4c 24 30 0f b6 d2 48 0f be 4c 24 30 e8 b2 f5 ff ff 48 89 6c 24 20 48 8b 48 08 48 8b d3 4c 8b c6 4c 8b cf ff 50 18 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
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
0031h call 7ff7c7361518h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 f5 ff ff}
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
; eval_g8u_v128x8u_v128x8u[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f8 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fc c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 a2 4c b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 8c 4c b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 75 e5 c6 5e 48 8b d8 48 b9 58 77 33 c6 f7 7f 00 00 e8 a3 cf ae 5e 48 8b c8 e8 ab a2 72 ff 8b c8 e8 04 b3 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 ce 20 00 ff 48 8b d0 48 8b ce e8 8b e3 02 ff 48 8b ce e8 83 98 ab 5e cc}
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
004fh mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 4c b4 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 4c b4 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 e5 c6 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6337758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 33 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 cf ae 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab a2 72 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 b3 01 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 20 00 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b e3 02 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 98 ab 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(BinaryArithmeticKind:byte kind, Vector128<sbyte> x, Vector128<sbyte> y)
; eval_g8u_v128x8i_v128x8i[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f8 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fc c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 b2 4b b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 9c 4b b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 85 e4 c6 5e 48 8b d8 48 b9 68 6f 33 c6 f7 7f 00 00 e8 b3 ce ae 5e 48 8b c8 e8 bb a1 72 ff 8b c8 e8 14 b2 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 de 1f 00 ff 48 8b d0 48 8b ce e8 9b e2 02 ff 48 8b ce e8 93 97 ab 5e cc}
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
004fh mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 4b b4 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 4b b4 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 e4 c6 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6336f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 33 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 ce ae 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb a1 72 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 b2 01 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 1f 00 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b e2 02 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 97 ab 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(BinaryArithmeticKind:byte kind, Vector128<ushort> x, Vector128<ushort> y)
; eval_g8u_v128x16u_v128x16u[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f9 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fd c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 c2 4a b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 ac 4a b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 95 e3 c6 5e 48 8b d8 48 b9 38 87 33 c6 f7 7f 00 00 e8 c3 cd ae 5e 48 8b c8 e8 cb a0 72 ff 8b c8 e8 24 b1 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 ee 1e 00 ff 48 8b d0 48 8b ce e8 ab e1 02 ff 48 8b ce e8 a3 96 ab 5e cc}
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
004fh mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 4a b4 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 4a b4 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 e3 c6 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6338738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 33 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 cd ae 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb a0 72 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 b1 01 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 1e 00 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab e1 02 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 96 ab 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(BinaryArithmeticKind:byte kind, Vector128<short> x, Vector128<short> y)
; eval_g8u_v128x16i_v128x16i[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f9 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fd c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 d2 49 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 bc 49 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 a5 e2 c6 5e 48 8b d8 48 b9 48 7f 33 c6 f7 7f 00 00 e8 d3 cc ae 5e 48 8b c8 e8 db 9f 72 ff 8b c8 e8 34 b0 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 fe 1d 00 ff 48 8b d0 48 8b ce e8 bb e0 02 ff 48 8b ce e8 b3 95 ab 5e cc}
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
004fh mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 49 b4 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 49 b4 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 e2 c6 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6337f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 33 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 cc ae 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 9f 72 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 b0 01 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 1d 00 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb e0 02 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 95 ab 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(BinaryArithmeticKind:byte kind, Vector128<uint> x, Vector128<uint> y)
; eval_g8u_v128x32u_v128x32u[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fa c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fe c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 e2 48 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 cc 48 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 b5 e1 c6 5e 48 8b d8 48 b9 d8 96 33 c6 f7 7f 00 00 e8 e3 cb ae 5e 48 8b c8 e8 eb 9e 72 ff 8b c8 e8 44 af 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 0e 1d 00 ff 48 8b d0 48 8b ce e8 cb df 02 ff 48 8b ce e8 c3 94 ab 5e cc}
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
004fh mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 48 b4 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 48 b4 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 e1 c6 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c63396d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 33 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 cb ae 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 9e 72 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 af 01 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 1d 00 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb df 02 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 94 ab 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(BinaryArithmeticKind:byte kind, Vector128<int> x, Vector128<int> y)
; eval_g8u_v128x32i_v128x32i[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fa c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fe c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 f2 47 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 dc 47 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 c5 e0 c6 5e 48 8b d8 48 b9 08 8f 33 c6 f7 7f 00 00 e8 f3 ca ae 5e 48 8b c8 e8 fb 9d 72 ff 8b c8 e8 54 ae 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 1e 1c 00 ff 48 8b d0 48 8b ce e8 db de 02 ff 48 8b ce e8 d3 93 ab 5e cc}
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
004fh mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 47 b4 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 47 b4 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 e0 c6 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6338f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 33 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 ca ae 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 9d 72 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 ae 01 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 1c 00 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db de 02 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 93 ab 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(BinaryArithmeticKind:byte kind, Vector128<ulong> x, Vector128<ulong> y)
; eval_g8u_v128x64u_v128x64u[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fb c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 d4 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 02 47 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 ec 46 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 d5 df c6 5e 48 8b d8 48 b9 78 a6 33 c6 f7 7f 00 00 e8 03 ca ae 5e 48 8b c8 e8 0b 9d 72 ff 8b c8 e8 64 ad 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 2e 1b 00 ff 48 8b d0 48 8b ce e8 eb dd 02 ff 48 8b ce e8 e3 92 ab 5e cc}
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
004fh mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 47 b4 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 46 b4 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 df c6 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c633a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 33 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 ca ae 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 9d 72 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 ad 01 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 1b 00 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb dd 02 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 92 ab 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> eval<long>(BinaryArithmeticKind:byte kind, Vector128<long> x, Vector128<long> y)
; eval_g8u_v128x64i_v128x64i[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fb c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 d4 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 02 42 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 ec 41 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 d5 da c6 5e 48 8b d8 48 b9 a8 9e 33 c6 f7 7f 00 00 e8 03 c5 ae 5e 48 8b c8 e8 0b 98 72 ff 8b c8 e8 64 a8 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 2e 16 00 ff 48 8b d0 48 8b ce e8 eb d8 02 ff 48 8b ce e8 e3 8d ab 5e cc}
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
004fh mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 42 b4 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 41 b4 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 da c6 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6339ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 33 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 c5 ae 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 98 72 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 a8 01 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 16 00 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb d8 02 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 8d ab 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> eval<float>(BinaryArithmeticKind:byte kind, Vector128<float> x, Vector128<float> y)
; eval_g8u_v128x32f_v128x32f[201] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 2f c4 c1 79 10 00 c4 c1 79 10 09 c5 f8 5c c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f8 58 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 17 41 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 01 41 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 ea d9 c6 5e 48 8b d8 48 b9 58 af 33 c6 f7 7f 00 00 e8 18 c4 ae 5e 48 8b c8 e8 20 97 72 ff 8b c8 e8 79 a7 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 43 15 00 ff 48 8b d0 48 8b ce e8 00 d8 02 ff 48 8b ce e8 f8 8c ab 5e cc}
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
004ah mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
0054h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 41 b4 5e}
0059h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
005ch mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0060h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
006ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 41 b4 5e}
006fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0072h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0077h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0081h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea d9 c6 5e}
0086h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0089h mov rcx,7ff7c633af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 33 c6 f7 7f 00 00}
0093h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 c4 ae 5e}
0098h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
009bh call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 97 72 ff}
00a0h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a2h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 a7 01 ff}
00a7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00aah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00adh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b0h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 15 00 ff}
00b5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00b8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00bbh call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 d8 02 ff}
00c0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 8c ab 5e}
00c8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> eval<double>(BinaryArithmeticKind:byte kind, Vector128<double> x, Vector128<double> y)
; eval_g8u_v128x64f_v128x64f[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 5c c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 58 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 22 40 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 0c 40 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 f5 d8 c6 5e 48 8b d8 48 b9 38 b8 33 c6 f7 7f 00 00 e8 23 c3 ae 5e 48 8b c8 e8 2b 96 72 ff 8b c8 e8 84 a6 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 4e 14 00 ff 48 8b d0 48 8b ce e8 0b d7 02 ff 48 8b ce e8 03 8c ab 5e cc}
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
004fh mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 40 b4 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 40 b4 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 d8 c6 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c633b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 33 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 c3 ae 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 96 72 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 a6 01 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 14 00 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b d7 02 ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 8c ab 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> eval<byte>(BinaryArithmeticKind:byte kind, Vector256<byte> x, Vector256<byte> y)
; eval_g8u_v256x8u_v256x8u[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f8 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fc c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 2c 3f b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 16 3f b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 ff d7 c6 5e 48 8b d8 48 b9 58 77 33 c6 f7 7f 00 00 e8 2d c2 ae 5e 48 8b c8 e8 35 95 72 ff 8b c8 e8 8e a5 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 58 13 00 ff 48 8b d0 48 8b ce e8 15 d6 02 ff 48 8b ce e8 0d 8b ab 5e cc}
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
0055h mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 3f b4 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 3f b4 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff d7 c6 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c6337758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 33 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d c2 ae 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 95 72 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e a5 01 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 13 00 ff}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 d6 02 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 8b ab 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> eval<sbyte>(BinaryArithmeticKind:byte kind, Vector256<sbyte> x, Vector256<sbyte> y)
; eval_g8u_v256x8i_v256x8i[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f8 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fc c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 3c 3e b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 26 3e b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 0f d7 c6 5e 48 8b d8 48 b9 68 6f 33 c6 f7 7f 00 00 e8 3d c1 ae 5e 48 8b c8 e8 45 94 72 ff 8b c8 e8 9e a4 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 68 12 00 ff 48 8b d0 48 8b ce e8 25 d5 02 ff 48 8b ce e8 1d 8a ab 5e cc}
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
0055h mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 3e b4 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 3e b4 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f d7 c6 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c6336f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 33 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d c1 ae 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 94 72 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e a4 01 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 12 00 ff}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 d5 02 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 8a ab 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> eval<ushort>(BinaryArithmeticKind:byte kind, Vector256<ushort> x, Vector256<ushort> y)
; eval_g8u_v256x16u_v256x16u[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f9 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fd c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 4c 3d b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 36 3d b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 1f d6 c6 5e 48 8b d8 48 b9 38 87 33 c6 f7 7f 00 00 e8 4d c0 ae 5e 48 8b c8 e8 55 93 72 ff 8b c8 e8 ae a3 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 78 11 00 ff 48 8b d0 48 8b ce e8 35 d4 02 ff 48 8b ce e8 2d 89 ab 5e cc}
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
0055h mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 3d b4 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 3d b4 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f d6 c6 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c6338738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 33 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d c0 ae 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 93 72 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae a3 01 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 11 00 ff}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 d4 02 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 89 ab 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> eval<short>(BinaryArithmeticKind:byte kind, Vector256<short> x, Vector256<short> y)
; eval_g8u_v256x16i_v256x16i[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd f9 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fd c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 5c 3c b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 46 3c b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 2f d5 c6 5e 48 8b d8 48 b9 48 7f 33 c6 f7 7f 00 00 e8 5d bf ae 5e 48 8b c8 e8 65 92 72 ff 8b c8 e8 be a2 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 88 10 00 ff 48 8b d0 48 8b ce e8 45 d3 02 ff 48 8b ce e8 3d 88 ab 5e cc}
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
0055h mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 3c b4 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 3c b4 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f d5 c6 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c6337f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 33 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d bf ae 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 92 72 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be a2 01 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 10 00 ff}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 d3 02 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 88 ab 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> eval<uint>(BinaryArithmeticKind:byte kind, Vector256<uint> x, Vector256<uint> y)
; eval_g8u_v256x32u_v256x32u[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fa c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fe c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 6c 3b b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 56 3b b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 3f d4 c6 5e 48 8b d8 48 b9 d8 96 33 c6 f7 7f 00 00 e8 6d be ae 5e 48 8b c8 e8 75 91 72 ff 8b c8 e8 ce a1 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 98 0f 00 ff 48 8b d0 48 8b ce e8 55 d2 02 ff 48 8b ce e8 4d 87 ab 5e cc}
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
0055h mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 3b b4 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 3b b4 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f d4 c6 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c63396d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 33 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d be ae 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 91 72 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce a1 01 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 0f 00 ff}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 d2 02 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 87 ab 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> eval<int>(BinaryArithmeticKind:byte kind, Vector256<int> x, Vector256<int> y)
; eval_g8u_v256x32i_v256x32i[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fa c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fe c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 7c 3a b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 66 3a b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 4f d3 c6 5e 48 8b d8 48 b9 08 8f 33 c6 f7 7f 00 00 e8 7d bd ae 5e 48 8b c8 e8 85 90 72 ff 8b c8 e8 de a0 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 a8 0e 00 ff 48 8b d0 48 8b ce e8 65 d1 02 ff 48 8b ce e8 5d 86 ab 5e cc}
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
0055h mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 3a b4 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 3a b4 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f d3 c6 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c6338f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 33 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d bd ae 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 90 72 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de a0 01 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 0e 00 ff}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 d1 02 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 86 ab 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> eval<ulong>(BinaryArithmeticKind:byte kind, Vector256<ulong> x, Vector256<ulong> y)
; eval_g8u_v256x64u_v256x64u[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fb c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd d4 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 8c 39 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 76 39 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 5f d2 c6 5e 48 8b d8 48 b9 78 a6 33 c6 f7 7f 00 00 e8 8d bc ae 5e 48 8b c8 e8 95 8f 72 ff 8b c8 e8 ee 9f 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 b8 0d 00 ff 48 8b d0 48 8b ce e8 75 d0 02 ff 48 8b ce e8 6d 85 ab 5e cc}
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
0055h mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 39 b4 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 39 b4 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f d2 c6 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c633a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 33 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d bc ae 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 8f 72 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 9f 01 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 0d 00 ff}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 d0 02 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 85 ab 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> eval<long>(BinaryArithmeticKind:byte kind, Vector256<long> x, Vector256<long> y)
; eval_g8u_v256x64i_v256x64i[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd fb c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd d4 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 9c 38 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 86 38 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 6f d1 c6 5e 48 8b d8 48 b9 a8 9e 33 c6 f7 7f 00 00 e8 9d bb ae 5e 48 8b c8 e8 a5 8e 72 ff 8b c8 e8 fe 9e 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 c8 0c 00 ff 48 8b d0 48 8b ce e8 85 cf 02 ff 48 8b ce e8 7d 84 ab 5e cc}
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
0055h mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 38 b4 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 38 b4 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f d1 c6 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c6339ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 33 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d bb ae 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 8e 72 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 9e 01 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 0c 00 ff}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 cf 02 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 84 ab 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> eval<float>(BinaryArithmeticKind:byte kind, Vector256<float> x, Vector256<float> y)
; eval_g8u_v256x32f_v256x32f[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fc 5c c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fc 58 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 ac 37 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 96 37 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 7f d0 c6 5e 48 8b d8 48 b9 58 af 33 c6 f7 7f 00 00 e8 ad ba ae 5e 48 8b c8 e8 b5 8d 72 ff 8b c8 e8 0e 9e 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 d8 0b 00 ff 48 8b d0 48 8b ce e8 95 ce 02 ff 48 8b ce e8 8d 83 ab 5e cc}
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
0055h mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 37 b4 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 37 b4 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f d0 c6 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c633af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 33 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad ba ae 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 8d 72 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 9e 01 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 0b 00 ff}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 ce 02 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 83 ab 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> eval<double>(BinaryArithmeticKind:byte kind, Vector256<double> x, Vector256<double> y)
; eval_g8u_v256x64f_v256x64f[212] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 23 40 80 fe 02 75 3a c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 5c c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 7d 10 00 c4 c1 7d 10 09 c5 fd 58 c1 c5 fd 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 30 b1 a4 c6 f7 7f 00 00 e8 bc 36 b4 5e 48 8b f8 40 88 77 08 48 b9 98 2a 70 c6 f7 7f 00 00 e8 a6 36 b4 5e 48 8b f0 b9 4c 04 00 00 48 ba 08 11 67 c6 f7 7f 00 00 e8 8f cf c6 5e 48 8b d8 48 b9 38 b8 33 c6 f7 7f 00 00 e8 bd b9 ae 5e 48 8b c8 e8 c5 8c 72 ff 8b c8 e8 1e 9d 01 ff 4c 8b c0 48 8b cb 48 8b d7 e8 e8 0a 00 ff 48 8b d0 48 8b ce e8 a5 cd 02 ff 48 8b ce e8 9d 82 ab 5e cc}
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
0055h mov rcx,7ff7c6a4b130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b1 a4 c6 f7 7f 00 00}
005fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 36 b4 5e}
0064h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0067h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
006bh mov rcx,7ff7c6702a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 2a 70 c6 f7 7f 00 00}
0075h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 36 b4 5e}
007ah mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
007dh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0082h mov rdx,7ff7c6671108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 11 67 c6 f7 7f 00 00}
008ch call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f cf c6 5e}
0091h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0094h mov rcx,7ff7c633b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 33 c6 f7 7f 00 00}
009eh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd b9 ae 5e}
00a3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a6h call 7ff7c6a8c300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 8c 72 ff}
00abh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00adh call 7ff7c637d360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 9d 01 ff}
00b2h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00b5h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b8h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00bbh call 7ff7c6364138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 0a 00 ff}
00c0h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00c3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c6h call 7ff7c6390400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 cd 02 ff}
00cbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00ceh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 82 ab 5e}
00d3h int 3                                   ; INT3 || CC || encoded[1]{cc}
