------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(ComparisonKind:byte kind, Vector128<byte> a, Vector128<byte> b)
; eval__g8u_128x8u_128x8u[315] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 9e 00 00 00 8b c9 48 8d 15 21 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 74 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 2c 80 00 00 00 4c 8d 44 24 2c c4 e2 79 78 54 24 2c c5 f9 ef c2 c5 f1 ef ca c5 f1 64 c0 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 28 80 00 00 00 48 8d 4c 24 28 c4 e2 79 78 54 24 28 c5 f9 ef c2 c5 f1 ef ca c5 f9 64 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 48 b9 e8 ef 3d c7 f7 7f 00 00 e8 b5 19 cb 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 9f 19 cb 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 88 b2 dd 5e 48 8b d8 48 b9 58 77 35 c6 f7 7f 00 00 e8 b6 9c c5 5e 48 8b c8 e8 9e 79 79 ff 8b c8 e8 f7 78 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 e1 ed 18 ff 48 8b d0 48 8b ce e8 b6 8e 1b ff 48 8b ce e8 96 65 c2 5e cc}
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
00bch mov rcx,7ff7c73defe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ef 3d c7 f7 7f 00 00}
00c6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 19 cb 5e}
00cbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00ceh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d2h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 19 cb 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00e9h mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
00f3h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 b2 dd 5e}
00f8h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00fbh mov rcx,7ff7c6357758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 35 c6 f7 7f 00 00}
0105h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 9c c5 5e}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 79 79 ff}
0112h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0114h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 78 1a ff}
0119h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
011ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011fh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0122h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ed 18 ff}
0127h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
012ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
012dh call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 8e 1b ff}
0132h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0135h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 65 c2 5e}
013ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(ComparisonKind:byte kind, Vector128<sbyte> a, Vector128<sbyte> b)
; eval__g8u_128x8i_128x8i[255] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 66 8b c9 48 8d 15 e5 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 74 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 64 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 64 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 e8 ef 3d c7 f7 7f 00 00 e8 81 18 cb 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 6b 18 cb 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 54 b1 dd 5e 48 8b d8 48 b9 68 6f 35 c6 f7 7f 00 00 e8 82 9b c5 5e 48 8b c8 e8 6a 78 79 ff 8b c8 e8 c3 77 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 ad ec 18 ff 48 8b d0 48 8b ce e8 82 8d 1b ff 48 8b ce e8 62 64 c2 5e cc}
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
0080h mov rcx,7ff7c73defe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ef 3d c7 f7 7f 00 00}
008ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 18 cb 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0096h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00a0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 18 cb 5e}
00a5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00a8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00adh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
00b7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 b1 dd 5e}
00bch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bfh mov rcx,7ff7c6356f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 35 c6 f7 7f 00 00}
00c9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 9b c5 5e}
00ceh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d1h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 78 79 ff}
00d6h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d8h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 77 1a ff}
00ddh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e3h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e6h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad ec 18 ff}
00ebh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00eeh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f1h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 8d 1b ff}
00f6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f9h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 64 c2 5e}
00feh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(ComparisonKind:byte kind, Vector128<ushort> a, Vector128<ushort> b)
; eval__g8u_128x16u_128x16u[315] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 9e 00 00 00 8b c9 48 8d 15 21 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 75 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 2c 00 80 00 00 4c 8d 44 24 2c c4 e2 79 79 54 24 2c c5 f9 ef c2 c5 f1 ef ca c5 f1 65 c0 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 28 00 80 00 00 48 8d 4c 24 28 c4 e2 79 79 54 24 28 c5 f9 ef c2 c5 f1 ef ca c5 f9 65 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 48 b9 e8 ef 3d c7 f7 7f 00 00 e8 15 17 cb 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 ff 16 cb 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 e8 af dd 5e 48 8b d8 48 b9 38 87 35 c6 f7 7f 00 00 e8 16 9a c5 5e 48 8b c8 e8 fe 76 79 ff 8b c8 e8 57 76 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 41 eb 18 ff 48 8b d0 48 8b ce e8 16 8c 1b ff 48 8b ce e8 f6 62 c2 5e cc}
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
00bch mov rcx,7ff7c73defe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ef 3d c7 f7 7f 00 00}
00c6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 17 cb 5e}
00cbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00ceh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d2h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 16 cb 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00e9h mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
00f3h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 af dd 5e}
00f8h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00fbh mov rcx,7ff7c6358738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 35 c6 f7 7f 00 00}
0105h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 9a c5 5e}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 76 79 ff}
0112h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0114h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 76 1a ff}
0119h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
011ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011fh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0122h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 eb 18 ff}
0127h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
012ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
012dh call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 8c 1b ff}
0132h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0135h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 62 c2 5e}
013ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(ComparisonKind:byte kind, Vector128<short> a, Vector128<short> b)
; eval__g8u_128x16i_128x16i[255] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 66 8b c9 48 8d 15 e5 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 75 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 65 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 65 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 e8 ef 3d c7 f7 7f 00 00 e8 e1 15 cb 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 cb 15 cb 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 b4 ae dd 5e 48 8b d8 48 b9 48 7f 35 c6 f7 7f 00 00 e8 e2 98 c5 5e 48 8b c8 e8 ca 75 79 ff 8b c8 e8 23 75 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 0d ea 18 ff 48 8b d0 48 8b ce e8 e2 8a 1b ff 48 8b ce e8 c2 61 c2 5e cc}
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
0080h mov rcx,7ff7c73defe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ef 3d c7 f7 7f 00 00}
008ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 15 cb 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0096h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00a0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 15 cb 5e}
00a5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00a8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00adh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
00b7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 ae dd 5e}
00bch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bfh mov rcx,7ff7c6357f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 35 c6 f7 7f 00 00}
00c9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 98 c5 5e}
00ceh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d1h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 75 79 ff}
00d6h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d8h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 75 1a ff}
00ddh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e3h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e6h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d ea 18 ff}
00ebh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00eeh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f1h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 8a 1b ff}
00f6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f9h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 61 c2 5e}
00feh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(ComparisonKind:byte kind, Vector128<uint> a, Vector128<uint> b)
; eval__g8u_128x32u_128x32u[315] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 9e 00 00 00 8b c9 48 8d 15 21 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 2c 00 00 00 80 4c 8d 44 24 2c c4 e2 79 58 54 24 2c c5 f9 ef c2 c5 f1 ef ca c5 f1 66 c0 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c7 44 24 28 00 00 00 80 48 8d 4c 24 28 c4 e2 79 58 54 24 28 c5 f9 ef c2 c5 f1 ef ca c5 f9 66 c1 c5 f9 11 00 48 83 c4 30 5b 5e 5f c3 48 b9 e8 ef 3d c7 f7 7f 00 00 e8 75 14 cb 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 5f 14 cb 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 48 ad dd 5e 48 8b d8 48 b9 d8 96 35 c6 f7 7f 00 00 e8 76 97 c5 5e 48 8b c8 e8 5e 74 79 ff 8b c8 e8 b7 73 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 a1 e8 18 ff 48 8b d0 48 8b ce e8 76 89 1b ff 48 8b ce e8 56 60 c2 5e cc}
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
00bch mov rcx,7ff7c73defe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ef 3d c7 f7 7f 00 00}
00c6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 14 cb 5e}
00cbh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00ceh mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00d2h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 14 cb 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00e9h mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
00f3h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 ad dd 5e}
00f8h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00fbh mov rcx,7ff7c63596d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 35 c6 f7 7f 00 00}
0105h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 97 c5 5e}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 74 79 ff}
0112h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0114h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 73 1a ff}
0119h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
011ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
011fh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0122h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 e8 18 ff}
0127h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
012ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
012dh call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 89 1b ff}
0132h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0135h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 60 c2 5e}
013ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(ComparisonKind:byte kind, Vector128<int> a, Vector128<int> b)
; eval__g8u_128x32i_128x32i[255] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 77 66 8b c9 48 8d 15 e5 00 00 00 8b 14 8a 4c 8d 15 e2 ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 66 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 66 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 e8 ef 3d c7 f7 7f 00 00 e8 41 13 cb 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 2b 13 cb 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 14 ac dd 5e 48 8b d8 48 b9 08 8f 35 c6 f7 7f 00 00 e8 42 96 c5 5e 48 8b c8 e8 2a 73 79 ff 8b c8 e8 83 72 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 6d e7 18 ff 48 8b d0 48 8b ce e8 42 88 1b ff 48 8b ce e8 22 5f c2 5e cc}
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
0080h mov rcx,7ff7c73defe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ef 3d c7 f7 7f 00 00}
008ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 13 cb 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0096h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00a0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 13 cb 5e}
00a5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00a8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00adh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
00b7h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 ac dd 5e}
00bch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
00bfh mov rcx,7ff7c6358f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 35 c6 f7 7f 00 00}
00c9h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 96 c5 5e}
00ceh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d1h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 73 79 ff}
00d6h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00d8h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 72 1a ff}
00ddh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00e0h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00e3h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00e6h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d e7 18 ff}
00ebh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00eeh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f1h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 88 1b ff}
00f6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00f9h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 5f c2 5e}
00feh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(ComparisonKind:byte kind, Vector128<ulong> a, Vector128<ulong> b)
; eval__g8u_128x64u_128x64u[84] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 ee 00 00 00 8b c9 48 8d 15 71 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c4 e2 79 29 c1 c5 f9 11 00 c5 f8 77 48 83 c4 30 5b 5e 5f c3}
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
; eval__g8u_128x64i_128x64i[325] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 0f b6 ce ff c9 83 f9 03 0f 87 a8 00 00 00 8b c9 48 8d 15 29 01 00 00 8b 14 8a 4c 8d 15 de ff ff ff 49 03 d2 ff e2 c4 c1 79 10 00 c4 c1 79 10 09 c4 e2 79 29 c1 c5 f9 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c4 e3 7d 46 c8 03 c4 e2 75 37 c0 c4 e3 7d 19 c0 00 c5 f9 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 ec 57 d2 c4 e3 6d 38 c0 00 c5 ec 57 d2 c4 e3 6d 38 c9 00 c4 e2 7d 37 c1 c4 e3 7d 19 c0 00 c5 f9 11 00 c5 f8 77 48 83 c4 20 5b 5e 5f c3 48 b9 e8 ef 3d c7 f7 7f 00 00 e8 fb 0b cb 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 e5 0b cb 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 ce a4 dd 5e 48 8b d8 48 b9 a8 9e 35 c6 f7 7f 00 00 e8 fc 8e c5 5e 48 8b c8 e8 e4 6b 79 ff 8b c8 e8 3d 6b 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 27 e0 18 ff 48 8b d0 48 8b ce e8 fc 80 1b ff 48 8b ce e8 dc 57 c2 5e cc}
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
00c6h mov rcx,7ff7c73defe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ef 3d c7 f7 7f 00 00}
00d0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 0b cb 5e}
00d5h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00d8h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
00dch mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00e6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 0b cb 5e}
00ebh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00eeh mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00f3h mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
00fdh call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce a4 dd 5e}
0102h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0105h mov rcx,7ff7c6359ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 35 c6 f7 7f 00 00}
010fh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 8e c5 5e}
0114h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0117h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 6b 79 ff}
011ch mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
011eh call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 6b 1a ff}
0123h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0126h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0129h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
012ch call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 e0 18 ff}
0131h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0134h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0137h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 80 1b ff}
013ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
013fh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 57 c2 5e}
0144h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> eval<float>(ComparisonKind:byte kind, Vector128<float> a, Vector128<float> b)
; eval__g8u_128x32f_128x32f[337] = {57 56 53 48 83 ec 60 c5 f8 77 48 8b f1 8b fa 40 0f b6 c7 ff c8 83 f8 03 0f 87 b4 00 00 00 8b c0 48 8d 0d 39 01 00 00 8b 0c 81 48 8d 15 de ff ff ff 48 03 ca ff e1 c4 c1 79 10 00 c4 c1 79 10 09 c5 f8 c2 c1 00 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 50 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 62 f9 ff ff c5 f9 28 44 24 50 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 40 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 53 f9 ff ff c5 f9 28 44 24 40 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 48 b9 e8 ef 3d c7 f7 7f 00 00 e8 6f 0a cb 5e 48 8b f0 40 88 7e 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 59 0a cb 5e 48 8b f8 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 42 a3 dd 5e 48 8b d8 48 b9 58 af 35 c6 f7 7f 00 00 e8 70 8d c5 5e 48 8b c8 e8 58 6a 79 ff 8b c8 e8 b1 69 1a ff 4c 8b c0 48 8b cb 48 8b d6 e8 9b de 18 ff 48 8b d0 48 8b cf e8 70 7f 1b ff 48 8b cf e8 50 56 c2 5e cc}
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
0079h call 7ff7c71f5b40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 f9 ff ff}
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
00b8h call 7ff7c71f5b70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 f9 ff ff}
00bdh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00c3h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
00c7h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00cah add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
00ceh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00cfh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d1h ret                                     ; RET || C3 || encoded[1]{c3}
00d2h mov rcx,7ff7c73defe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ef 3d c7 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 0a cb 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov [rsi+8],dil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 7e 08}
00e8h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 0a cb 5e}
00f7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00fah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00ffh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0109h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 a3 dd 5e}
010eh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0111h mov rcx,7ff7c635af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 35 c6 f7 7f 00 00}
011bh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 8d c5 5e}
0120h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0123h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 6a 79 ff}
0128h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
012ah call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 69 1a ff}
012fh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0132h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0135h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0138h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b de 18 ff}
013dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0140h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0143h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 7f 1b ff}
0148h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
014bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 56 c2 5e}
0150h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> eval<double>(ComparisonKind:byte kind, Vector128<double> a, Vector128<double> b)
; eval__g8u_128x64f_128x64f[337] = {57 56 53 48 83 ec 60 c5 f8 77 48 8b f1 8b fa 40 0f b6 c7 ff c8 83 f8 03 0f 87 b4 00 00 00 8b c0 48 8d 0d 39 01 00 00 8b 0c 81 48 8d 15 de ff ff ff 48 03 ca ff e1 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 c2 c1 00 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 50 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 72 f8 ff ff c5 f9 28 44 24 50 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 48 8d 4c 24 40 c5 f9 29 44 24 30 c5 f9 29 4c 24 20 48 8d 54 24 30 4c 8d 44 24 20 e8 63 f8 ff ff c5 f9 28 44 24 40 c5 f9 11 06 48 8b c6 48 83 c4 60 5b 5e 5f c3 48 b9 e8 ef 3d c7 f7 7f 00 00 e8 df 08 cb 5e 48 8b f0 40 88 7e 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 c9 08 cb 5e 48 8b f8 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 b2 a1 dd 5e 48 8b d8 48 b9 38 b8 35 c6 f7 7f 00 00 e8 e0 8b c5 5e 48 8b c8 e8 c8 68 79 ff 8b c8 e8 21 68 1a ff 4c 8b c0 48 8b cb 48 8b d6 e8 0b dd 18 ff 48 8b d0 48 8b cf e8 e0 7d 1b ff 48 8b cf e8 c0 54 c2 5e cc}
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
0079h call 7ff7c71f5be0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 f8 ff ff}
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
00b8h call 7ff7c71f5c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 f8 ff ff}
00bdh vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
00c3h vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
00c7h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00cah add rsp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 60}
00ceh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00cfh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d0h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d1h ret                                     ; RET || C3 || encoded[1]{c3}
00d2h mov rcx,7ff7c73defe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ef 3d c7 f7 7f 00 00}
00dch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 08 cb 5e}
00e1h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
00e4h mov [rsi+8],dil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 7e 08}
00e8h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
00f2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 08 cb 5e}
00f7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00fah mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
00ffh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0109h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 a1 dd 5e}
010eh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0111h mov rcx,7ff7c635b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 35 c6 f7 7f 00 00}
011bh call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 8b c5 5e}
0120h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0123h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 68 79 ff}
0128h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
012ah call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 68 1a ff}
012fh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0132h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0135h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0138h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b dd 18 ff}
013dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0140h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0143h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 7d 1b ff}
0148h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
014bh call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 54 c2 5e}
0150h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(BinaryBitLogicKind:byte kind, Vector128<byte> a, Vector128<byte> b)
; eval__g8u_128x8u_128x8u[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 74 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 74 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 68 52 3d c7 f7 7f 00 00 e8 41 f3 ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 2b f3 ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 14 8c dd 5e 48 8b d8 48 b9 58 77 35 c6 f7 7f 00 00 e8 42 76 c5 5e 48 8b c8 e8 2a 53 79 ff 8b c8 e8 83 52 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 6d c7 18 ff 48 8b d0 48 8b ce e8 42 68 1b ff 48 8b ce e8 22 3f c2 5e cc}
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
01d0h mov rcx,7ff7c73d5268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 52 3d c7 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 f3 ca 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b f3 ca 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 8c dd 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c6357758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 35 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 76 c5 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 53 79 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 52 1a ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d c7 18 ff}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 68 1b ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 3f c2 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(BinaryBitLogicKind:byte kind, Vector128<sbyte> a, Vector128<sbyte> b)
; eval__g8u_128x8i_128x8i[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 74 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 74 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 74 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 68 52 3d c7 f7 7f 00 00 e8 61 f0 ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 4b f0 ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 34 89 dd 5e 48 8b d8 48 b9 68 6f 35 c6 f7 7f 00 00 e8 62 73 c5 5e 48 8b c8 e8 4a 50 79 ff 8b c8 e8 a3 4f 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 8d c4 18 ff 48 8b d0 48 8b ce e8 62 65 1b ff 48 8b ce e8 42 3c c2 5e cc}
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
01d0h mov rcx,7ff7c73d5268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 52 3d c7 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 f0 ca 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b f0 ca 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 89 dd 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c6356f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 35 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 73 c5 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 50 79 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 4f 1a ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d c4 18 ff}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 65 1b ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 3c c2 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, Vector128<ushort> a, Vector128<ushort> b)
; eval__g8u_128x16u_128x16u[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 75 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 75 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 68 52 3d c7 f7 7f 00 00 e8 81 ed ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 6b ed ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 54 86 dd 5e 48 8b d8 48 b9 38 87 35 c6 f7 7f 00 00 e8 82 70 c5 5e 48 8b c8 e8 6a 4d 79 ff 8b c8 e8 c3 4c 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 ad c1 18 ff 48 8b d0 48 8b ce e8 82 62 1b ff 48 8b ce e8 62 39 c2 5e cc}
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
01d0h mov rcx,7ff7c73d5268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 52 3d c7 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 ed ca 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b ed ca 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 86 dd 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c6358738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 35 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 70 c5 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 4d 79 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 4c 1a ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad c1 18 ff}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 62 1b ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 39 c2 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(BinaryBitLogicKind:byte kind, Vector128<short> a, Vector128<short> b)
; eval__g8u_128x16i_128x16i[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 75 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 75 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 75 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 68 52 3d c7 f7 7f 00 00 e8 a1 e6 ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 8b e6 ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 74 7f dd 5e 48 8b d8 48 b9 48 7f 35 c6 f7 7f 00 00 e8 a2 69 c5 5e 48 8b c8 e8 8a 46 79 ff 8b c8 e8 e3 45 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 cd ba 18 ff 48 8b d0 48 8b ce e8 a2 5b 1b ff 48 8b ce e8 82 32 c2 5e cc}
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
01d0h mov rcx,7ff7c73d5268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 52 3d c7 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 e6 ca 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b e6 ca 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 7f dd 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c6357f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 35 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 69 c5 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 46 79 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 45 1a ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd ba 18 ff}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 5b 1b ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 32 c2 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(BinaryBitLogicKind:byte kind, Vector128<uint> a, Vector128<uint> b)
; eval__g8u_128x32u_128x32u[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 68 52 3d c7 f7 7f 00 00 e8 c1 e3 ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 ab e3 ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 94 7c dd 5e 48 8b d8 48 b9 d8 96 35 c6 f7 7f 00 00 e8 c2 66 c5 5e 48 8b c8 e8 aa 43 79 ff 8b c8 e8 03 43 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 ed b7 18 ff 48 8b d0 48 8b ce e8 c2 58 1b ff 48 8b ce e8 a2 2f c2 5e cc}
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
01d0h mov rcx,7ff7c73d5268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 52 3d c7 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 e3 ca 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab e3 ca 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 7c dd 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c63596d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 35 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 66 c5 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 43 79 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 43 1a ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed b7 18 ff}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 58 1b ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 2f c2 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(BinaryBitLogicKind:byte kind, Vector128<int> a, Vector128<int> b)
; eval__g8u_128x32i_128x32i[591] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b7 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 68 52 3d c7 f7 7f 00 00 e8 e1 e0 ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 cb e0 ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 b4 79 dd 5e 48 8b d8 48 b9 08 8f 35 c6 f7 7f 00 00 e8 e2 63 c5 5e 48 8b c8 e8 ca 40 79 ff 8b c8 e8 23 40 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 0d b5 18 ff 48 8b d0 48 8b ce e8 e2 55 1b ff 48 8b ce e8 c2 2c c2 5e cc}
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
01d0h mov rcx,7ff7c73d5268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 52 3d c7 f7 7f 00 00}
01dah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 e0 ca 5e}
01dfh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e2h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e6h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01f0h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb e0 ca 5e}
01f5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f8h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01fdh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0207h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 79 dd 5e}
020ch mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
020fh mov rcx,7ff7c6358f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 35 c6 f7 7f 00 00}
0219h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 63 c5 5e}
021eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0221h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 40 79 ff}
0226h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0228h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 40 1a ff}
022dh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0230h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0233h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0236h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d b5 18 ff}
023bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0241h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 55 1b ff}
0246h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0249h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 2c c2 5e}
024eh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, Vector128<ulong> a, Vector128<ulong> b)
; eval__g8u_128x64u_128x64u[592] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b8 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 68 52 3d c7 f7 7f 00 00 e8 00 de ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 ea dd ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 d3 76 dd 5e 48 8b d8 48 b9 78 a6 35 c6 f7 7f 00 00 e8 01 61 c5 5e 48 8b c8 e8 e9 3d 79 ff 8b c8 e8 42 3d 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 2c b2 18 ff 48 8b d0 48 8b ce e8 01 53 1b ff 48 8b ce e8 e1 29 c2 5e cc}
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
01d1h mov rcx,7ff7c73d5268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 52 3d c7 f7 7f 00 00}
01dbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 de ca 5e}
01e0h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e3h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e7h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea dd ca 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01feh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0208h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 76 dd 5e}
020dh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0210h mov rcx,7ff7c635a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 35 c6 f7 7f 00 00}
021ah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 61 c5 5e}
021fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0222h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 3d 79 ff}
0227h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0229h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 3d 1a ff}
022eh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0231h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0234h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0237h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c b2 18 ff}
023ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0242h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 53 1b ff}
0247h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 29 c2 5e}
024fh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> eval<long>(BinaryBitLogicKind:byte kind, Vector128<long> a, Vector128<long> b)
; eval__g8u_128x64i_128x64i[592] = {57 56 53 48 83 ec 20 c5 f8 77 8b f2 40 0f b6 c6 83 f8 0f 0f 87 b8 01 00 00 8b c0 48 8d 15 5e 02 00 00 8b 14 82 4c 8d 15 e0 ff ff ff 49 03 d2 ff e2 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 11 01 48 8b c1 e9 7f 01 00 00 c5 f8 57 c0 c5 f9 11 01 48 8b c1 e9 6f 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 11 01 48 8b c1 e9 55 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 db c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 33 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 11 01 48 8b c1 e9 19 01 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 eb c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 f7 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 dd 00 00 00 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 ef c1 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 bb 00 00 00 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 e9 aa 00 00 00 c4 c1 79 10 01 c5 f9 11 01 48 8b c1 e9 99 00 00 00 c4 c1 79 10 00 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 e9 80 00 00 00 c4 c1 79 10 01 c5 f9 76 c8 c5 f9 ef c1 c5 f9 11 01 48 8b c1 eb 6a c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 76 d1 c5 f1 ef ca c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 4b c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 df c1 c5 f9 11 01 48 8b c1 eb 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 76 d0 c5 f9 ef c2 c5 f9 eb c1 c5 f9 11 01 48 8b c1 eb 15 c4 c1 79 10 00 c4 c1 79 10 09 c5 f1 df c0 c5 f9 11 01 48 8b c1 48 83 c4 20 5b 5e 5f c3 48 b9 68 52 3d c7 f7 7f 00 00 e8 20 d7 ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 0a d7 ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 f3 6f dd 5e 48 8b d8 48 b9 a8 9e 35 c6 f7 7f 00 00 e8 21 5a c5 5e 48 8b c8 e8 09 37 79 ff 8b c8 e8 62 36 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 4c ab 18 ff 48 8b d0 48 8b ce e8 21 4c 1b ff 48 8b ce e8 01 23 c2 5e cc}
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
01d1h mov rcx,7ff7c73d5268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 52 3d c7 f7 7f 00 00}
01dbh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 d7 ca 5e}
01e0h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01e3h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
01e7h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01f1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a d7 ca 5e}
01f6h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01f9h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
01feh mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0208h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 6f dd 5e}
020dh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0210h mov rcx,7ff7c6359ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 35 c6 f7 7f 00 00}
021ah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 5a c5 5e}
021fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0222h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 37 79 ff}
0227h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0229h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 36 1a ff}
022eh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0231h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0234h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0237h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c ab 18 ff}
023ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
023fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0242h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 4c 1b ff}
0247h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
024ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 23 c2 5e}
024fh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> eval<byte>(BinaryArithmeticKind:byte kind, Vector128<byte> x, Vector128<byte> y)
; eval__g8u_128x8u_128x8u[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f8 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fc c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 4a 3d c7 f7 7f 00 00 e8 c2 a6 ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 ac a6 ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 95 3f dd 5e 48 8b d8 48 b9 58 77 35 c6 f7 7f 00 00 e8 c3 29 c5 5e 48 8b c8 e8 ab 06 79 ff 8b c8 e8 04 06 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 ee 7a 18 ff 48 8b d0 48 8b ce e8 c3 1b 1b ff 48 8b ce e8 a3 f2 c1 5e cc}
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
004fh mov rcx,7ff7c73d4a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4a 3d c7 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 a6 ca 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac a6 ca 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 3f dd 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6357758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 35 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 29 c5 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 06 79 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 06 1a ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 7a 18 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 1b 1b ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 f2 c1 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> eval<sbyte>(BinaryArithmeticKind:byte kind, Vector128<sbyte> x, Vector128<sbyte> y)
; eval__g8u_128x8i_128x8i[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f8 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fc c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 4a 3d c7 f7 7f 00 00 e8 d2 a5 ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 bc a5 ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 a5 3e dd 5e 48 8b d8 48 b9 68 6f 35 c6 f7 7f 00 00 e8 d3 28 c5 5e 48 8b c8 e8 bb 05 79 ff 8b c8 e8 14 05 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 fe 79 18 ff 48 8b d0 48 8b ce e8 d3 1a 1b ff 48 8b ce e8 b3 f1 c1 5e cc}
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
004fh mov rcx,7ff7c73d4a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4a 3d c7 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 a5 ca 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc a5 ca 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 3e dd 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6356f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 35 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 28 c5 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 05 79 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 05 1a ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 79 18 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 1a 1b ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 f1 c1 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> eval<ushort>(BinaryArithmeticKind:byte kind, Vector128<ushort> x, Vector128<ushort> y)
; eval__g8u_128x16u_128x16u[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f9 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fd c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 4a 3d c7 f7 7f 00 00 e8 e2 a4 ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 cc a4 ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 b5 3d dd 5e 48 8b d8 48 b9 38 87 35 c6 f7 7f 00 00 e8 e3 27 c5 5e 48 8b c8 e8 cb 04 79 ff 8b c8 e8 24 04 1a ff 4c 8b c0 48 8b cb 48 8b d7 e8 0e 79 18 ff 48 8b d0 48 8b ce e8 e3 19 1b ff 48 8b ce e8 c3 f0 c1 5e cc}
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
004fh mov rcx,7ff7c73d4a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4a 3d c7 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 a4 ca 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc a4 ca 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 3d dd 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6358738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 35 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 27 c5 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 04 79 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 04 1a ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 79 18 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 19 1b ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 f0 c1 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> eval<short>(BinaryArithmeticKind:byte kind, Vector128<short> x, Vector128<short> y)
; eval__g8u_128x16i_128x16i[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 f9 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fd c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 4a 3d c7 f7 7f 00 00 e8 e2 9f ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 cc 9f ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 b5 38 dd 5e 48 8b d8 48 b9 48 7f 35 c6 f7 7f 00 00 e8 e3 22 c5 5e 48 8b c8 e8 cb ff 78 ff 8b c8 e8 24 ff 19 ff 4c 8b c0 48 8b cb 48 8b d7 e8 0e 74 18 ff 48 8b d0 48 8b ce e8 e3 14 1b ff 48 8b ce e8 c3 eb c1 5e cc}
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
004fh mov rcx,7ff7c73d4a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4a 3d c7 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 9f ca 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 9f ca 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 38 dd 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6357f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 35 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 22 c5 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb ff 78 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ff 19 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 74 18 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 14 1b ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 eb c1 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> eval<uint>(BinaryArithmeticKind:byte kind, Vector128<uint> x, Vector128<uint> y)
; eval__g8u_128x32u_128x32u[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fa c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fe c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 4a 3d c7 f7 7f 00 00 e8 f2 9e ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 dc 9e ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 c5 37 dd 5e 48 8b d8 48 b9 d8 96 35 c6 f7 7f 00 00 e8 f3 21 c5 5e 48 8b c8 e8 db fe 78 ff 8b c8 e8 34 fe 19 ff 4c 8b c0 48 8b cb 48 8b d7 e8 1e 73 18 ff 48 8b d0 48 8b ce e8 f3 13 1b ff 48 8b ce e8 d3 ea c1 5e cc}
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
004fh mov rcx,7ff7c73d4a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4a 3d c7 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 9e ca 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 9e ca 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 37 dd 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c63596d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 35 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 21 c5 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db fe 78 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 fe 19 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 73 18 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 13 1b ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 ea c1 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> eval<int>(BinaryArithmeticKind:byte kind, Vector128<int> x, Vector128<int> y)
; eval__g8u_128x32i_128x32i[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fa c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fe c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 4a 3d c7 f7 7f 00 00 e8 02 9e ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 ec 9d ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 d5 36 dd 5e 48 8b d8 48 b9 08 8f 35 c6 f7 7f 00 00 e8 03 21 c5 5e 48 8b c8 e8 eb fd 78 ff 8b c8 e8 44 fd 19 ff 4c 8b c0 48 8b cb 48 8b d7 e8 2e 72 18 ff 48 8b d0 48 8b ce e8 03 13 1b ff 48 8b ce e8 e3 e9 c1 5e cc}
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
004fh mov rcx,7ff7c73d4a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4a 3d c7 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 9e ca 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 9d ca 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 36 dd 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6358f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 35 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 21 c5 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb fd 78 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 fd 19 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 72 18 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 13 1b ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 e9 c1 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> eval<ulong>(BinaryArithmeticKind:byte kind, Vector128<ulong> x, Vector128<ulong> y)
; eval__g8u_128x64u_128x64u[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fb c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 d4 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 4a 3d c7 f7 7f 00 00 e8 12 9d ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 fc 9c ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 e5 35 dd 5e 48 8b d8 48 b9 78 a6 35 c6 f7 7f 00 00 e8 13 20 c5 5e 48 8b c8 e8 fb fc 78 ff 8b c8 e8 54 fc 19 ff 4c 8b c0 48 8b cb 48 8b d7 e8 3e 71 18 ff 48 8b d0 48 8b ce e8 13 12 1b ff 48 8b ce e8 f3 e8 c1 5e cc}
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
004fh mov rcx,7ff7c73d4a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4a 3d c7 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 9d ca 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 9c ca 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 35 dd 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c635a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 35 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 20 c5 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb fc 78 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 fc 19 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 71 18 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 12 1b ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 e8 c1 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> eval<long>(BinaryArithmeticKind:byte kind, Vector128<long> x, Vector128<long> y)
; eval__g8u_128x64i_128x64i[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 fb c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 d4 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 4a 3d c7 f7 7f 00 00 e8 22 9c ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 0c 9c ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 f5 34 dd 5e 48 8b d8 48 b9 a8 9e 35 c6 f7 7f 00 00 e8 23 1f c5 5e 48 8b c8 e8 0b fc 78 ff 8b c8 e8 64 fb 19 ff 4c 8b c0 48 8b cb 48 8b d7 e8 4e 70 18 ff 48 8b d0 48 8b ce e8 23 11 1b ff 48 8b ce e8 03 e8 c1 5e cc}
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
004fh mov rcx,7ff7c73d4a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4a 3d c7 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 9c ca 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 9c ca 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 34 dd 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c6359ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 35 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 1f c5 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b fc 78 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 fb 19 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 70 18 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 11 1b ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 e8 c1 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> eval<float>(BinaryArithmeticKind:byte kind, Vector128<float> x, Vector128<float> y)
; eval__g8u_128x32f_128x32f[201] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 2f c4 c1 79 10 00 c4 c1 79 10 09 c5 f8 5c c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c5 f8 58 c0 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 4a 3d c7 f7 7f 00 00 e8 37 9b ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 21 9b ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 0a 34 dd 5e 48 8b d8 48 b9 58 af 35 c6 f7 7f 00 00 e8 38 1e c5 5e 48 8b c8 e8 20 fb 78 ff 8b c8 e8 79 fa 19 ff 4c 8b c0 48 8b cb 48 8b d7 e8 63 6f 18 ff 48 8b d0 48 8b ce e8 38 10 1b ff 48 8b ce e8 18 e7 c1 5e cc}
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
004ah mov rcx,7ff7c73d4a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4a 3d c7 f7 7f 00 00}
0054h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 9b ca 5e}
0059h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
005ch mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0060h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
006ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 9b ca 5e}
006fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0072h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
0077h mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0081h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 34 dd 5e}
0086h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0089h mov rcx,7ff7c635af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 35 c6 f7 7f 00 00}
0093h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 1e c5 5e}
0098h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
009bh call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 fb 78 ff}
00a0h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a2h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 fa 19 ff}
00a7h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00aah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00adh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b0h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 6f 18 ff}
00b5h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00b8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00bbh call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 10 1b ff}
00c0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c3h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 e7 c1 5e}
00c8h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> eval<double>(BinaryArithmeticKind:byte kind, Vector128<double> x, Vector128<double> y)
; eval__g8u_128x64f_128x64f[206] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b c1 8b f2 40 80 fe 01 74 20 40 80 fe 02 75 34 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 5c c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 c4 c1 79 10 00 c4 c1 79 10 09 c5 f9 58 c1 c5 f9 11 00 48 83 c4 20 5b 5e 5f c3 48 b9 28 4a 3d c7 f7 7f 00 00 e8 42 9a ca 5e 48 8b f8 40 88 77 08 48 b9 88 76 71 c6 f7 7f 00 00 e8 2c 9a ca 5e 48 8b f0 b9 4c 04 00 00 48 ba 00 27 68 c6 f7 7f 00 00 e8 15 33 dd 5e 48 8b d8 48 b9 38 b8 35 c6 f7 7f 00 00 e8 43 1d c5 5e 48 8b c8 e8 2b fa 78 ff 8b c8 e8 84 f9 19 ff 4c 8b c0 48 8b cb 48 8b d7 e8 6e 6e 18 ff 48 8b d0 48 8b ce e8 43 0f 1b ff 48 8b ce e8 23 e6 c1 5e cc}
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
004fh mov rcx,7ff7c73d4a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 4a 3d c7 f7 7f 00 00}
0059h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 9a ca 5e}
005eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0061h mov [rdi+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 77 08}
0065h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
006fh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 9a ca 5e}
0074h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0077h mov ecx,44ch                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 4c 04 00 00}
007ch mov rdx,7ff7c6682700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 27 68 c6 f7 7f 00 00}
0086h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 33 dd 5e}
008bh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
008eh mov rcx,7ff7c635b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 35 c6 f7 7f 00 00}
0098h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 1d c5 5e}
009dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00a0h call 7ff7c698cce0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b fa 78 ff}
00a5h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a7h call 7ff7c639cc40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 f9 19 ff}
00ach mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00afh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
00b2h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00b5h call 7ff7c6384138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 6e 18 ff}
00bah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c0h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 0f 1b ff}
00c5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00c8h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 e6 c1 5e}
00cdh int 3                                   ; INT3 || CC || encoded[1]{cc}
