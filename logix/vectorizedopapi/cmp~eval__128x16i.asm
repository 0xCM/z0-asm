; Vector128<Int16> eval<Int16>(ComparisonKind:byte kind, Vector128<Int16> a, Vector128<Int16> b)
; cmp~eval__128x16i[7ff7c6cab710h, 7ff7c6cab815h][261] = {57 56 55 53 48 83 ec 28 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 69 8b c9 48 8d 15 ec 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 75 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 65 c0 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 65 c1 c5 f9 11 00 48 83 c4 28 5b 5d 5e 5f c3 48 b9 48 d5 88 c6 f7 7f 00 00 e8 0d b5 1f 5f 48 8b f8 40 88 77 08 48 b9 48 7f 34 c6 f7 7f 00 00 e8 37 38 1a 5f 48 8b c8 e8 bf 2f d7 ff 8b f0 48 b9 50 58 58 c6 f7 7f 00 00 e8 de b4 1f 5f 48 8b d8 b9 68 04 00 00 48 ba 00 d2 5a c6 f7 7f 00 00 e8 c7 4d 32 5f 48 8b e8 8b ce e8 9d 07 6f ff 4c 8b c0 48 8b cd 48 8b d7 e8 37 89 6c ff 48 8b d0 48 8b cb e8 04 36 6e ff 48 8b cb e8 ec 00 17 5f cc}
; Capture completion code, INTRx2
; 2020-01-24 02:54:51:675
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
001dh lea rdx,[7ff7c6cab820h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 ec 00 00 00}
0024h mov edx,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 8a}
0027h lea r10,[7ff7c6cab720h]                 ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 e2 ff ff ff}
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
0084h mov rcx,7ff7c688d548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d5 88 c6 f7 7f 00 00}
008eh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d b5 1f 5f}
0093h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0096h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
009ah mov rcx,7ff7c6347f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 34 c6 f7 7f 00 00}
00a4h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 38 1a 5f}
00a9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ach call 7ff7c6a1e780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 2f d7 ff}
00b1h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
00b3h mov rcx,7ff7c6585850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 58 58 c6 f7 7f 00 00}
00bdh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de b4 1f 5f}
00c2h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00c5h mov ecx,468h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 68 04 00 00}
00cah mov rdx,7ff7c65ad200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 d2 5a c6 f7 7f 00 00}
00d4h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 4d 32 5f}
00d9h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
00dch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00deh call 7ff7c639bf90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 07 6f ff}
00e3h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e6h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
00e9h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00ech call 7ff7c6374138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 89 6c ff}
00f1h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00f4h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00f7h call 7ff7c638ee10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 36 6e ff}
00fch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00ffh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 00 17 5f}
0104h int 3                                   ; INT3 || CC || encoded[1]{cc}
