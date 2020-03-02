------------------------------------------------------------------------------------------------------------------------
; byte bitslice<byte>(in BitSpan src, int offset, int count), hex://bitspan/bitspan?bitslice#bitslice_g[8u](32i,32i)
; bitslice_g[8u](32i,32i)[239] = {0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0xb0,0xbf,0x38,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x08,0x00,0x00,0x00,0xe8,0xb7,0xd2,0xfb,0x5e,0x48,0x83,0xc0,0x10,0x48,0x8b,0xe8,0x41,0xbe,0x08,0x00,0x00,0x00,0x44,0x8b,0x46,0x08,0x44,0x2b,0xc7,0x41,0x3b,0xd8,0x7c,0x02,0xeb,0x03,0x44,0x8b,0xc3,0x48,0x8b,0x16,0x48,0x63,0xcf,0x48,0x8d,0x14,0x8a,0x41,0xc1,0xe0,0x02,0x48,0x8b,0xcd,0xe8,0xf3,0xc4,0xfb,0x5e,0x41,0x8b,0xc6,0x48,0x83,0xf8,0x08,0x0f,0x82,0x80,0x00,0x00,0x00,0xc5,0xff,0xf0,0x45,0x00,0xc4,0xe3,0x7d,0x19,0xc1,0x00,0xc4,0xe3,0x7d,0x19,0xc0,0x01,0xc7,0x44,0x24,0x2c,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x2c,0xc4,0xe2,0x79,0x58,0x54,0x24,0x2c,0xc5,0xf1,0xdb,0xca,0xc5,0xf9,0xdb,0xc2,0xc4,0xe2,0x71,0x2b,0xc0,0xc5,0xf0,0x57,0xc9,0xc7,0x44,0x24,0x28,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x28,0xc4,0xe2,0x79,0x79,0x54,0x24,0x28,0xc5,0xf9,0xdb,0xc2,0xc5,0xf1,0xdb,0xca,0xc5,0xf9,0x67,0xc1,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0xc3,0xe8,0x36,0x60,0x0e,0x5f,0xe8,0x49,0xae,0x4a,0xff}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0012h mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
0015h mov rcx,7ff7c838bfb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bf 38 c8 f7 7f 00 00}
001fh mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0024h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 d2 fb 5e}
0029h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
002dh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0030h mov r14d,8                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 be 08 00 00 00}
0036h mov r8d,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 46 08}
003ah sub r8d,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c7}
003dh cmp ebx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d8}
0040h jl short 0044h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0042h jmp short 0047h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0044h mov r8d,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c3}
0047h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
004ah movsxd rcx,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 cf}
004dh lea rdx,[rdx+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 8a}
0051h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
0055h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0058h call 7ff827266050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 c4 fb 5e}
005dh mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0060h cmp rax,8                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 08}
0064h jb near ptr 00eah                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 80 00 00 00}
006ah vlddqu ymm0,ymmword ptr [rbp]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c5 ff f0 45 00}
006fh vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0075h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
007bh mov dword ptr [rsp+2ch],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c ff ff 00 00}
0083h lea rax,[rsp+2ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 2c}
0088h vpbroadcastd xmm2,dword ptr [rsp+2ch]   ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 2c}
008fh vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0093h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0097h vpackusdw xmm0,xmm1,xmm0                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 71 2b c0}
009ch vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
00a0h mov dword ptr [rsp+28h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 ff 00 00 00}
00a8h lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
00adh vpbroadcastw xmm2,word ptr [rsp+28h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 28}
00b4h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
00b8h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
00bch vpackuswb xmm0,xmm0,xmm1                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f9 67 c1}
00c0h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
00c5h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00c9h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
00cdh vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
00d1h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00d4h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00d7h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00dah add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
00deh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00dfh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00e0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e2h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00e4h ret                                     ; RET || C3 || encoded[1]{c3}
00e5h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 60 0e 5f}
00eah call 7ff7c7754a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 ae 4a ff}
------------------------------------------------------------------------------------------------------------------------
; ushort bitslice<ushort>(in BitSpan src, int offset, int count), hex://bitspan/bitspan?bitslice#bitslice_g[16u](32i,32i)
; bitslice_g[16u](32i,32i)[249] = {0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0xb0,0xbf,0x38,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x10,0x00,0x00,0x00,0xe8,0x97,0xcd,0xfb,0x5e,0x48,0x83,0xc0,0x10,0x48,0x8b,0xe8,0x41,0xbe,0x10,0x00,0x00,0x00,0x44,0x8b,0x46,0x08,0x44,0x2b,0xc7,0x41,0x3b,0xd8,0x7c,0x02,0xeb,0x03,0x44,0x8b,0xc3,0x48,0x8b,0x16,0x48,0x63,0xcf,0x48,0x8d,0x14,0x8a,0x41,0xc1,0xe0,0x02,0x48,0x8b,0xcd,0xe8,0xd3,0xbf,0xfb,0x5e,0x41,0x8b,0xc6,0x48,0x83,0xf8,0x10,0x0f,0x82,0x8a,0x00,0x00,0x00,0x48,0x8b,0xc5,0xc5,0xff,0xf0,0x00,0x48,0x83,0xc5,0x20,0xc5,0xff,0xf0,0x4d,0x00,0xc7,0x44,0x24,0x2c,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x2c,0xc4,0xe2,0x7d,0x58,0x54,0x24,0x2c,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc4,0xe2,0x7d,0x2b,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xc4,0xe3,0x7d,0x19,0xc1,0x00,0xc4,0xe3,0x7d,0x19,0xc0,0x01,0xc7,0x44,0x24,0x28,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x28,0xc4,0xe2,0x79,0x79,0x54,0x24,0x28,0xc5,0xf1,0xdb,0xca,0xc5,0xf9,0xdb,0xc2,0xc5,0xf1,0x67,0xc0,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0xc3,0xe8,0x0c,0x5b,0x0e,0x5f,0xe8,0x1f,0xa9,0x4a,0xff}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0012h mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
0015h mov rcx,7ff7c838bfb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bf 38 c8 f7 7f 00 00}
001fh mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
0024h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 cd fb 5e}
0029h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
002dh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0030h mov r14d,10h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 be 10 00 00 00}
0036h mov r8d,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 46 08}
003ah sub r8d,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c7}
003dh cmp ebx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d8}
0040h jl short 0044h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0042h jmp short 0047h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0044h mov r8d,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c3}
0047h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
004ah movsxd rcx,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 cf}
004dh lea rdx,[rdx+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 8a}
0051h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
0055h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0058h call 7ff827266050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 bf fb 5e}
005dh mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0060h cmp rax,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 10}
0064h jb near ptr 00f4h                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 8a 00 00 00}
006ah mov rax,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c5}
006dh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0071h add rbp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c5 20}
0075h vlddqu ymm1,ymmword ptr [rbp]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c5 ff f0 4d 00}
007ah mov dword ptr [rsp+2ch],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c ff ff 00 00}
0082h lea rax,[rsp+2ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 2c}
0087h vpbroadcastd ymm2,dword ptr [rsp+2ch]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 2c}
008eh vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
0092h vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0096h vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
009bh vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00a1h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
00a7h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
00adh mov dword ptr [rsp+28h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 ff 00 00 00}
00b5h lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
00bah vpbroadcastw xmm2,word ptr [rsp+28h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 28}
00c1h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
00c5h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
00c9h vpackuswb xmm0,xmm1,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f1 67 c0}
00cdh mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
00d2h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00d6h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
00dah vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
00deh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00e1h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00e4h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
00e8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00e9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00eah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00ebh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00ech pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00eeh ret                                     ; RET || C3 || encoded[1]{c3}
00efh call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 5b 0e 5f}
00f4h call 7ff7c7754a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f a9 4a ff}
------------------------------------------------------------------------------------------------------------------------
; uint bitslice<uint>(in BitSpan src, int offset, int count), hex://bitspan/bitspan?bitslice#bitslice_g[32u](32i,32i)
; bitslice_g[32u](32i,32i)[295] = {0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0xb0,0xbf,0x38,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x20,0x00,0x00,0x00,0xe8,0x77,0xcc,0xfb,0x5e,0x48,0x83,0xc0,0x10,0x48,0x8b,0xe8,0x41,0xbe,0x20,0x00,0x00,0x00,0x44,0x8b,0x46,0x08,0x44,0x2b,0xc7,0x41,0x3b,0xd8,0x7c,0x02,0xeb,0x03,0x44,0x8b,0xc3,0x48,0x8b,0x16,0x48,0x63,0xcf,0x48,0x8d,0x14,0x8a,0x41,0xc1,0xe0,0x02,0x48,0x8b,0xcd,0xe8,0xb3,0xbe,0xfb,0x5e,0x41,0x8b,0xc6,0x48,0x83,0xf8,0x20,0x0f,0x82,0xb8,0x00,0x00,0x00,0x48,0x8b,0xc5,0xc5,0xff,0xf0,0x00,0x48,0x8d,0x45,0x20,0xc5,0xff,0xf0,0x08,0xc7,0x44,0x24,0x2c,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x2c,0xc4,0xe2,0x7d,0x58,0x54,0x24,0x2c,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc4,0xe2,0x7d,0x2b,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0x48,0x8d,0x45,0x40,0xc5,0xff,0xf0,0x08,0x48,0x83,0xc5,0x60,0xc5,0xff,0xf0,0x55,0x00,0xc7,0x44,0x24,0x28,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x28,0xc4,0xe2,0x7d,0x58,0x5c,0x24,0x28,0xc5,0xf5,0xdb,0xcb,0xc5,0xed,0xdb,0xd3,0xc4,0xe2,0x75,0x2b,0xca,0xc4,0xe3,0xfd,0x00,0xc9,0xd8,0xc7,0x44,0x24,0x24,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x24,0xc4,0xe2,0x7d,0x79,0x54,0x24,0x24,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc5,0xfd,0x67,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0xc3,0xe8,0xbe,0x59,0x0e,0x5f,0xe8,0xd1,0xa7,0x4a,0xff}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0012h mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
0015h mov rcx,7ff7c838bfb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bf 38 c8 f7 7f 00 00}
001fh mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
0024h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 cc fb 5e}
0029h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
002dh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0030h mov r14d,20h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 be 20 00 00 00}
0036h mov r8d,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 46 08}
003ah sub r8d,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c7}
003dh cmp ebx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d8}
0040h jl short 0044h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0042h jmp short 0047h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0044h mov r8d,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c3}
0047h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
004ah movsxd rcx,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 cf}
004dh lea rdx,[rdx+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 8a}
0051h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
0055h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0058h call 7ff827266050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 be fb 5e}
005dh mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0060h cmp rax,20h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 20}
0064h jb near ptr 0122h                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 b8 00 00 00}
006ah mov rax,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c5}
006dh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0071h lea rax,[rbp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 20}
0075h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0079h mov dword ptr [rsp+2ch],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c ff ff 00 00}
0081h lea rax,[rsp+2ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 2c}
0086h vpbroadcastd ymm2,dword ptr [rsp+2ch]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 2c}
008dh vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
0091h vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0095h vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
009ah vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00a0h lea rax,[rbp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 40}
00a4h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
00a8h add rbp,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c5 60}
00ach vlddqu ymm2,ymmword ptr [rbp]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c5 ff f0 55 00}
00b1h mov dword ptr [rsp+28h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 ff ff 00 00}
00b9h lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
00beh vpbroadcastd ymm3,dword ptr [rsp+28h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 28}
00c5h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00c9h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
00cdh vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
00d2h vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
00d8h mov dword ptr [rsp+24h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 ff 00 00 00}
00e0h lea rax,[rsp+24h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 24}
00e5h vpbroadcastw ymm2,word ptr [rsp+24h]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 24}
00ech vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
00f0h vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
00f4h vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
00f8h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00feh mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
0103h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0107h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
010bh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
010fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0112h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0116h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0117h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0118h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0119h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
011ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
011ch ret                                     ; RET || C3 || encoded[1]{c3}
011dh call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 59 0e 5f}
0122h call 7ff7c7754a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 a7 4a ff}
------------------------------------------------------------------------------------------------------------------------
; ulong bitslice<ulong>(in BitSpan src, int offset, int count), hex://bitspan/bitspan?bitslice#bitslice_g[64u](32i,32i)
; bitslice_g[64u](32i,32i)[483] = {0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x8b,0xfa,0x41,0x8b,0xd8,0x48,0xb9,0xb0,0xbf,0x38,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x40,0x00,0x00,0x00,0xe8,0x17,0xcb,0xfb,0x5e,0x48,0x83,0xc0,0x10,0x48,0x8b,0xe8,0x41,0xbe,0x40,0x00,0x00,0x00,0x44,0x8b,0x46,0x08,0x44,0x2b,0xc7,0x41,0x3b,0xd8,0x7c,0x02,0xeb,0x03,0x44,0x8b,0xc3,0x48,0x8b,0x16,0x48,0x63,0xcf,0x48,0x8d,0x14,0x8a,0x41,0xc1,0xe0,0x02,0x48,0x8b,0xcd,0xe8,0x53,0xbd,0xfb,0x5e,0x41,0x8b,0xc6,0x48,0x83,0xf8,0x40,0x0f,0x82,0x74,0x01,0x00,0x00,0x48,0x8b,0xc5,0xc5,0xff,0xf0,0x00,0x48,0x8d,0x45,0x20,0xc5,0xff,0xf0,0x08,0xc7,0x44,0x24,0x3c,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x3c,0xc4,0xe2,0x7d,0x58,0x54,0x24,0x3c,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc4,0xe2,0x7d,0x2b,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0x48,0x8d,0x45,0x40,0xc5,0xff,0xf0,0x08,0x48,0x8d,0x45,0x60,0xc5,0xff,0xf0,0x10,0xc7,0x44,0x24,0x38,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x38,0xc4,0xe2,0x7d,0x58,0x5c,0x24,0x38,0xc5,0xf5,0xdb,0xcb,0xc5,0xed,0xdb,0xd3,0xc4,0xe2,0x75,0x2b,0xca,0xc4,0xe3,0xfd,0x00,0xc9,0xd8,0xc7,0x44,0x24,0x34,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x34,0xc4,0xe2,0x7d,0x79,0x54,0x24,0x34,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc5,0xfd,0x67,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0x8d,0x95,0x80,0x00,0x00,0x00,0xc5,0xff,0xf0,0x0a,0x48,0x8d,0x95,0xa0,0x00,0x00,0x00,0xc5,0xff,0xf0,0x12,0xc7,0x44,0x24,0x30,0xff,0xff,0x00,0x00,0x48,0x8d,0x54,0x24,0x30,0xc4,0xe2,0x7d,0x58,0x44,0x24,0x30,0xc5,0xf5,0xdb,0xc8,0xc5,0xed,0xdb,0xc0,0xc4,0xe2,0x75,0x2b,0xc0,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0x48,0x8d,0x95,0xc0,0x00,0x00,0x00,0xc5,0xff,0xf0,0x0a,0x48,0x81,0xc5,0xe0,0x00,0x00,0x00,0xc5,0xff,0xf0,0x55,0x00,0xc7,0x44,0x24,0x2c,0xff,0xff,0x00,0x00,0x48,0x8d,0x54,0x24,0x2c,0xc4,0xe2,0x7d,0x58,0x5c,0x24,0x2c,0xc5,0xf5,0xdb,0xcb,0xc5,0xed,0xdb,0xd3,0xc4,0xe2,0x75,0x2b,0xca,0xc4,0xe3,0xfd,0x00,0xc9,0xd8,0xc7,0x44,0x24,0x28,0xff,0x00,0x00,0x00,0x48,0x8d,0x54,0x24,0x28,0xc4,0xe2,0x7d,0x79,0x54,0x24,0x28,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc5,0xfd,0x67,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xba,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xca,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0xc1,0xe2,0x20,0x48,0x0b,0xc2,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x40,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0xc3,0xe8,0xa2,0x57,0x0e,0x5f,0xe8,0xb5,0xa5,0x4a,0xff}
; TermCode = CTC_INTRx2
0000h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0002h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0003h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0004h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0005h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0006h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
000ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0012h mov ebx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d8}
0015h mov rcx,7ff7c838bfb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bf 38 c8 f7 7f 00 00}
001fh mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
0024h call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 cb fb 5e}
0029h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
002dh mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0030h mov r14d,40h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 be 40 00 00 00}
0036h mov r8d,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 46 08}
003ah sub r8d,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c7}
003dh cmp ebx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d8}
0040h jl short 0044h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0042h jmp short 0047h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0044h mov r8d,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c3}
0047h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
004ah movsxd rcx,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 cf}
004dh lea rdx,[rdx+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 8a}
0051h shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
0055h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0058h call 7ff827266050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 bd fb 5e}
005dh mov eax,r14d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c6}
0060h cmp rax,40h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 40}
0064h jb near ptr 01deh                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 74 01 00 00}
006ah mov rax,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c5}
006dh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0071h lea rax,[rbp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 20}
0075h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0079h mov dword ptr [rsp+3ch],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 3c ff ff 00 00}
0081h lea rax,[rsp+3ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 3c}
0086h vpbroadcastd ymm2,dword ptr [rsp+3ch]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 3c}
008dh vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
0091h vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0095h vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
009ah vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00a0h lea rax,[rbp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 40}
00a4h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
00a8h lea rax,[rbp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 60}
00ach vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
00b0h mov dword ptr [rsp+38h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 38 ff ff 00 00}
00b8h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
00bdh vpbroadcastd ymm3,dword ptr [rsp+38h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 38}
00c4h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00c8h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
00cch vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
00d1h vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
00d7h mov dword ptr [rsp+34h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 34 ff 00 00 00}
00dfh lea rax,[rsp+34h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 34}
00e4h vpbroadcastw ymm2,word ptr [rsp+34h]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 34}
00ebh vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
00efh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
00f3h vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
00f7h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00fdh mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
0102h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0106h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
010ah vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
010eh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0110h lea rdx,[rbp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 95 80 00 00 00}
0117h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
011bh lea rdx,[rbp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 95 a0 00 00 00}
0122h vlddqu ymm2,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 12}
0126h mov dword ptr [rsp+30h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 30 ff ff 00 00}
012eh lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
0133h vpbroadcastd ymm0,dword ptr [rsp+30h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 30}
013ah vpand ymm1,ymm1,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db c8}
013eh vpand ymm0,ymm2,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c0}
0142h vpackusdw ymm0,ymm1,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b c0}
0147h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
014dh lea rdx,[rbp+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 95 c0 00 00 00}
0154h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0158h add rbp,0e0h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c5 e0 00 00 00}
015fh vlddqu ymm2,ymmword ptr [rbp]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[5]{c5 ff f0 55 00}
0164h mov dword ptr [rsp+2ch],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c ff ff 00 00}
016ch lea rdx,[rsp+2ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 2c}
0171h vpbroadcastd ymm3,dword ptr [rsp+2ch]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 2c}
0178h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
017ch vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
0180h vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
0185h vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
018bh mov dword ptr [rsp+28h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 ff 00 00 00}
0193h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
0198h vpbroadcastw ymm2,word ptr [rsp+28h]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 28}
019fh vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
01a3h vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
01a7h vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
01abh vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
01b1h mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
01b6h vmovd xmm1,edx                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e ca}
01bah vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
01beh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
01c2h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
01c4h shl rdx,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 20}
01c8h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
01cbh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01ceh add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
01d2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01d3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d6h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
01d8h ret                                     ; RET || C3 || encoded[1]{c3}
01d9h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 57 0e 5f}
01deh call 7ff7c7754a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 a5 4a ff}
------------------------------------------------------------------------------------------------------------------------
; byte bitslice<byte>(in BitSpan src, int offset), hex://bitspan/bitspan?bitslice#bitslice_g[8u](32i)
; bitslice_g[8u](32i)[229] = {0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x8b,0xfa,0x48,0xb9,0xb0,0xbf,0x38,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x08,0x00,0x00,0x00,0xe8,0xfc,0xc8,0xfb,0x5e,0x48,0x83,0xc0,0x10,0x48,0x8b,0xd8,0xbd,0x08,0x00,0x00,0x00,0x44,0x8b,0x46,0x08,0x44,0x2b,0xc7,0x41,0x3b,0xe8,0x7c,0x02,0xeb,0x03,0x44,0x8b,0xc5,0x48,0x8b,0x16,0x48,0x63,0xcf,0x48,0x8d,0x14,0x8a,0x41,0xc1,0xe0,0x02,0x48,0x8b,0xcb,0xe8,0x39,0xbb,0xfb,0x5e,0x8b,0xc5,0x48,0x83,0xf8,0x08,0x0f,0x82,0x7d,0x00,0x00,0x00,0xc5,0xff,0xf0,0x03,0xc4,0xe3,0x7d,0x19,0xc1,0x00,0xc4,0xe3,0x7d,0x19,0xc0,0x01,0xc7,0x44,0x24,0x24,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x24,0xc4,0xe2,0x79,0x58,0x54,0x24,0x24,0xc5,0xf1,0xdb,0xca,0xc5,0xf9,0xdb,0xc2,0xc4,0xe2,0x71,0x2b,0xc0,0xc5,0xf0,0x57,0xc9,0xc7,0x44,0x24,0x20,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x20,0xc4,0xe2,0x79,0x79,0x54,0x24,0x20,0xc5,0xf9,0xdb,0xc2,0xc5,0xf1,0xdb,0xca,0xc5,0xf9,0x67,0xc1,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x28,0x5b,0x5d,0x5e,0x5f,0xc3,0xe8,0x80,0x56,0x0e,0x5f,0xe8,0x93,0xa4,0x4a,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0010h mov rcx,7ff7c838bfb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bf 38 c8 f7 7f 00 00}
001ah mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
001fh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc c8 fb 5e}
0024h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0028h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
002bh mov ebp,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bd 08 00 00 00}
0030h mov r8d,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 46 08}
0034h sub r8d,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c7}
0037h cmp ebp,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b e8}
003ah jl short 003eh                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
003ch jmp short 0041h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
003eh mov r8d,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c5}
0041h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0044h movsxd rcx,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 cf}
0047h lea rdx,[rdx+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 8a}
004bh shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
004fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0052h call 7ff827266050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 bb fb 5e}
0057h mov eax,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c5}
0059h cmp rax,8                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 08}
005dh jb near ptr 00e0h                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 7d 00 00 00}
0063h vlddqu ymm0,ymmword ptr [rbx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 03}
0067h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
006dh vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0073h mov dword ptr [rsp+24h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 ff ff 00 00}
007bh lea rax,[rsp+24h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 24}
0080h vpbroadcastd xmm2,dword ptr [rsp+24h]   ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 24}
0087h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
008bh vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
008fh vpackusdw xmm0,xmm1,xmm0                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 71 2b c0}
0094h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0098h mov dword ptr [rsp+20h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 20 ff 00 00 00}
00a0h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
00a5h vpbroadcastw xmm2,word ptr [rsp+20h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 20}
00ach vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
00b0h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
00b4h vpackuswb xmm0,xmm0,xmm1                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f9 67 c1}
00b8h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
00bdh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00c1h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
00c5h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
00c9h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00cch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00cfh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d2h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00d6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00d7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00d8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00dah ret                                     ; RET || C3 || encoded[1]{c3}
00dbh call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 56 0e 5f}
00e0h call 7ff7c7754a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 a4 4a ff}
------------------------------------------------------------------------------------------------------------------------
; ushort bitslice<ushort>(in BitSpan src, int offset), hex://bitspan/bitspan?bitslice#bitslice_g[16u](32i)
; bitslice_g[16u](32i)[239] = {0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x8b,0xfa,0x48,0xb9,0xb0,0xbf,0x38,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x10,0x00,0x00,0x00,0xe8,0xec,0xc7,0xfb,0x5e,0x48,0x83,0xc0,0x10,0x48,0x8b,0xd8,0xbd,0x10,0x00,0x00,0x00,0x44,0x8b,0x46,0x08,0x44,0x2b,0xc7,0x41,0x3b,0xe8,0x7c,0x02,0xeb,0x03,0x44,0x8b,0xc5,0x48,0x8b,0x16,0x48,0x63,0xcf,0x48,0x8d,0x14,0x8a,0x41,0xc1,0xe0,0x02,0x48,0x8b,0xcb,0xe8,0x29,0xba,0xfb,0x5e,0x8b,0xc5,0x48,0x83,0xf8,0x10,0x0f,0x82,0x87,0x00,0x00,0x00,0x48,0x8b,0xc3,0xc5,0xff,0xf0,0x00,0x48,0x83,0xc3,0x20,0xc5,0xff,0xf0,0x0b,0xc7,0x44,0x24,0x24,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x24,0xc4,0xe2,0x7d,0x58,0x54,0x24,0x24,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc4,0xe2,0x7d,0x2b,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xc4,0xe3,0x7d,0x19,0xc1,0x00,0xc4,0xe3,0x7d,0x19,0xc0,0x01,0xc7,0x44,0x24,0x20,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x20,0xc4,0xe2,0x79,0x79,0x54,0x24,0x20,0xc5,0xf1,0xdb,0xca,0xc5,0xf9,0xdb,0xc2,0xc5,0xf1,0x67,0xc0,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x28,0x5b,0x5d,0x5e,0x5f,0xc3,0xe8,0x66,0x55,0x0e,0x5f,0xe8,0x79,0xa3,0x4a,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0010h mov rcx,7ff7c838bfb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bf 38 c8 f7 7f 00 00}
001ah mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
001fh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec c7 fb 5e}
0024h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0028h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
002bh mov ebp,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bd 10 00 00 00}
0030h mov r8d,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 46 08}
0034h sub r8d,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c7}
0037h cmp ebp,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b e8}
003ah jl short 003eh                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
003ch jmp short 0041h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
003eh mov r8d,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c5}
0041h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0044h movsxd rcx,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 cf}
0047h lea rdx,[rdx+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 8a}
004bh shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
004fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0052h call 7ff827266050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 ba fb 5e}
0057h mov eax,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c5}
0059h cmp rax,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 10}
005dh jb near ptr 00eah                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 87 00 00 00}
0063h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0066h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
006ah add rbx,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c3 20}
006eh vlddqu ymm1,ymmword ptr [rbx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0b}
0072h mov dword ptr [rsp+24h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 ff ff 00 00}
007ah lea rax,[rsp+24h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 24}
007fh vpbroadcastd ymm2,dword ptr [rsp+24h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 24}
0086h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
008ah vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
008eh vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
0093h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0099h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
009fh vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
00a5h mov dword ptr [rsp+20h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 20 ff 00 00 00}
00adh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
00b2h vpbroadcastw xmm2,word ptr [rsp+20h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 20}
00b9h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
00bdh vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
00c1h vpackuswb xmm0,xmm1,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f1 67 c0}
00c5h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
00cah vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00ceh vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
00d2h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
00d6h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00d9h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00dch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00e0h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00e1h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00e2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00e3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00e4h ret                                     ; RET || C3 || encoded[1]{c3}
00e5h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 55 0e 5f}
00eah call 7ff7c7754a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 a3 4a ff}
------------------------------------------------------------------------------------------------------------------------
; uint bitslice<uint>(in BitSpan src, int offset), hex://bitspan/bitspan?bitslice#bitslice_g[32u](32i)
; bitslice_g[32u](32i)[285] = {0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x8b,0xfa,0x48,0xb9,0xb0,0xbf,0x38,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x20,0x00,0x00,0x00,0xe8,0xcc,0xc6,0xfb,0x5e,0x48,0x83,0xc0,0x10,0x48,0x8b,0xd8,0xbd,0x20,0x00,0x00,0x00,0x44,0x8b,0x46,0x08,0x44,0x2b,0xc7,0x41,0x3b,0xe8,0x7c,0x02,0xeb,0x03,0x44,0x8b,0xc5,0x48,0x8b,0x16,0x48,0x63,0xcf,0x48,0x8d,0x14,0x8a,0x41,0xc1,0xe0,0x02,0x48,0x8b,0xcb,0xe8,0x09,0xb9,0xfb,0x5e,0x8b,0xc5,0x48,0x83,0xf8,0x20,0x0f,0x82,0xb5,0x00,0x00,0x00,0x48,0x8b,0xc3,0xc5,0xff,0xf0,0x00,0x48,0x8d,0x43,0x20,0xc5,0xff,0xf0,0x08,0xc7,0x44,0x24,0x34,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x34,0xc4,0xe2,0x7d,0x58,0x54,0x24,0x34,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc4,0xe2,0x7d,0x2b,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0x48,0x8d,0x43,0x40,0xc5,0xff,0xf0,0x08,0x48,0x83,0xc3,0x60,0xc5,0xff,0xf0,0x13,0xc7,0x44,0x24,0x30,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x30,0xc4,0xe2,0x7d,0x58,0x5c,0x24,0x30,0xc5,0xf5,0xdb,0xcb,0xc5,0xed,0xdb,0xd3,0xc4,0xe2,0x75,0x2b,0xca,0xc4,0xe3,0xfd,0x00,0xc9,0xd8,0xc7,0x44,0x24,0x2c,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x2c,0xc4,0xe2,0x7d,0x79,0x54,0x24,0x2c,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc5,0xfd,0x67,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x38,0x5b,0x5d,0x5e,0x5f,0xc3,0xe8,0x18,0x54,0x0e,0x5f,0xe8,0x2b,0xa2,0x4a,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0010h mov rcx,7ff7c838bfb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bf 38 c8 f7 7f 00 00}
001ah mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
001fh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc c6 fb 5e}
0024h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0028h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
002bh mov ebp,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bd 20 00 00 00}
0030h mov r8d,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 46 08}
0034h sub r8d,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c7}
0037h cmp ebp,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b e8}
003ah jl short 003eh                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
003ch jmp short 0041h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
003eh mov r8d,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c5}
0041h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0044h movsxd rcx,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 cf}
0047h lea rdx,[rdx+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 8a}
004bh shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
004fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0052h call 7ff827266050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 b9 fb 5e}
0057h mov eax,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c5}
0059h cmp rax,20h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 20}
005dh jb near ptr 0118h                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 b5 00 00 00}
0063h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0066h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
006ah lea rax,[rbx+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 43 20}
006eh vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0072h mov dword ptr [rsp+34h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 34 ff ff 00 00}
007ah lea rax,[rsp+34h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 34}
007fh vpbroadcastd ymm2,dword ptr [rsp+34h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 34}
0086h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
008ah vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
008eh vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
0093h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0099h lea rax,[rbx+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 43 40}
009dh vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
00a1h add rbx,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c3 60}
00a5h vlddqu ymm2,ymmword ptr [rbx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 13}
00a9h mov dword ptr [rsp+30h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 30 ff ff 00 00}
00b1h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
00b6h vpbroadcastd ymm3,dword ptr [rsp+30h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 30}
00bdh vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00c1h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
00c5h vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
00cah vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
00d0h mov dword ptr [rsp+2ch],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c ff 00 00 00}
00d8h lea rax,[rsp+2ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 2c}
00ddh vpbroadcastw ymm2,word ptr [rsp+2ch]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 2c}
00e4h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
00e8h vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
00ech vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
00f0h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00f6h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
00fbh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00ffh vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0103h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0107h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
010ah add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
010eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
010fh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0110h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0111h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0112h ret                                     ; RET || C3 || encoded[1]{c3}
0113h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 54 0e 5f}
0118h call 7ff7c7754a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b a2 4a ff}
------------------------------------------------------------------------------------------------------------------------
; ulong bitslice<ulong>(in BitSpan src, int offset), hex://bitspan/bitspan?bitslice#bitslice_g[64u](32i)
; bitslice_g[64u](32i)[473] = {0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x8b,0xfa,0x48,0xb9,0xb0,0xbf,0x38,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x40,0x00,0x00,0x00,0xe8,0x7c,0xc5,0xfb,0x5e,0x48,0x83,0xc0,0x10,0x48,0x8b,0xd8,0xbd,0x40,0x00,0x00,0x00,0x44,0x8b,0x46,0x08,0x44,0x2b,0xc7,0x41,0x3b,0xe8,0x7c,0x02,0xeb,0x03,0x44,0x8b,0xc5,0x48,0x8b,0x16,0x48,0x63,0xcf,0x48,0x8d,0x14,0x8a,0x41,0xc1,0xe0,0x02,0x48,0x8b,0xcb,0xe8,0xb9,0xb7,0xfb,0x5e,0x8b,0xc5,0x48,0x83,0xf8,0x40,0x0f,0x82,0x71,0x01,0x00,0x00,0x48,0x8b,0xc3,0xc5,0xff,0xf0,0x00,0x48,0x8d,0x43,0x20,0xc5,0xff,0xf0,0x08,0xc7,0x44,0x24,0x34,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x34,0xc4,0xe2,0x7d,0x58,0x54,0x24,0x34,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc4,0xe2,0x7d,0x2b,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0x48,0x8d,0x43,0x40,0xc5,0xff,0xf0,0x08,0x48,0x8d,0x43,0x60,0xc5,0xff,0xf0,0x10,0xc7,0x44,0x24,0x30,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x30,0xc4,0xe2,0x7d,0x58,0x5c,0x24,0x30,0xc5,0xf5,0xdb,0xcb,0xc5,0xed,0xdb,0xd3,0xc4,0xe2,0x75,0x2b,0xca,0xc4,0xe3,0xfd,0x00,0xc9,0xd8,0xc7,0x44,0x24,0x2c,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x2c,0xc4,0xe2,0x7d,0x79,0x54,0x24,0x2c,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc5,0xfd,0x67,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0x8d,0x93,0x80,0x00,0x00,0x00,0xc5,0xff,0xf0,0x0a,0x48,0x8d,0x93,0xa0,0x00,0x00,0x00,0xc5,0xff,0xf0,0x12,0xc7,0x44,0x24,0x28,0xff,0xff,0x00,0x00,0x48,0x8d,0x54,0x24,0x28,0xc4,0xe2,0x7d,0x58,0x44,0x24,0x28,0xc5,0xf5,0xdb,0xc8,0xc5,0xed,0xdb,0xc0,0xc4,0xe2,0x75,0x2b,0xc0,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0x48,0x8d,0x93,0xc0,0x00,0x00,0x00,0xc5,0xff,0xf0,0x0a,0x48,0x81,0xc3,0xe0,0x00,0x00,0x00,0xc5,0xff,0xf0,0x13,0xc7,0x44,0x24,0x24,0xff,0xff,0x00,0x00,0x48,0x8d,0x54,0x24,0x24,0xc4,0xe2,0x7d,0x58,0x5c,0x24,0x24,0xc5,0xf5,0xdb,0xcb,0xc5,0xed,0xdb,0xd3,0xc4,0xe2,0x75,0x2b,0xca,0xc4,0xe3,0xfd,0x00,0xc9,0xd8,0xc7,0x44,0x24,0x20,0xff,0x00,0x00,0x00,0x48,0x8d,0x54,0x24,0x20,0xc4,0xe2,0x7d,0x79,0x54,0x24,0x20,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc5,0xfd,0x67,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xba,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xca,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0xc1,0xe2,0x20,0x48,0x0b,0xc2,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x38,0x5b,0x5d,0x5e,0x5f,0xc3,0xe8,0x0c,0x52,0x0e,0x5f,0xe8,0x1f,0xa0,0x4a,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000eh mov edi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b fa}
0010h mov rcx,7ff7c838bfb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bf 38 c8 f7 7f 00 00}
001ah mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
001fh call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c c5 fb 5e}
0024h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0028h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
002bh mov ebp,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bd 40 00 00 00}
0030h mov r8d,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 46 08}
0034h sub r8d,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c7}
0037h cmp ebp,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b e8}
003ah jl short 003eh                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
003ch jmp short 0041h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
003eh mov r8d,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c5}
0041h mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
0044h movsxd rcx,edi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 cf}
0047h lea rdx,[rdx+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 8a}
004bh shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
004fh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0052h call 7ff827266050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 b7 fb 5e}
0057h mov eax,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c5}
0059h cmp rax,40h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 40}
005dh jb near ptr 01d4h                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 71 01 00 00}
0063h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0066h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
006ah lea rax,[rbx+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 43 20}
006eh vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0072h mov dword ptr [rsp+34h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 34 ff ff 00 00}
007ah lea rax,[rsp+34h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 34}
007fh vpbroadcastd ymm2,dword ptr [rsp+34h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 34}
0086h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
008ah vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
008eh vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
0093h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0099h lea rax,[rbx+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 43 40}
009dh vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
00a1h lea rax,[rbx+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 43 60}
00a5h vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
00a9h mov dword ptr [rsp+30h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 30 ff ff 00 00}
00b1h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
00b6h vpbroadcastd ymm3,dword ptr [rsp+30h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 30}
00bdh vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00c1h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
00c5h vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
00cah vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
00d0h mov dword ptr [rsp+2ch],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c ff 00 00 00}
00d8h lea rax,[rsp+2ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 2c}
00ddh vpbroadcastw ymm2,word ptr [rsp+2ch]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 2c}
00e4h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
00e8h vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
00ech vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
00f0h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00f6h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
00fbh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00ffh vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0103h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0107h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0109h lea rdx,[rbx+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 93 80 00 00 00}
0110h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0114h lea rdx,[rbx+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 93 a0 00 00 00}
011bh vlddqu ymm2,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 12}
011fh mov dword ptr [rsp+28h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 ff ff 00 00}
0127h lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
012ch vpbroadcastd ymm0,dword ptr [rsp+28h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 28}
0133h vpand ymm1,ymm1,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db c8}
0137h vpand ymm0,ymm2,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c0}
013bh vpackusdw ymm0,ymm1,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b c0}
0140h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0146h lea rdx,[rbx+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 93 c0 00 00 00}
014dh vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0151h add rbx,0e0h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c3 e0 00 00 00}
0158h vlddqu ymm2,ymmword ptr [rbx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 13}
015ch mov dword ptr [rsp+24h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 ff ff 00 00}
0164h lea rdx,[rsp+24h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 24}
0169h vpbroadcastd ymm3,dword ptr [rsp+24h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 24}
0170h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
0174h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
0178h vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
017dh vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
0183h mov dword ptr [rsp+20h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 20 ff 00 00 00}
018bh lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0190h vpbroadcastw ymm2,word ptr [rsp+20h]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 20}
0197h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
019bh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
019fh vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
01a3h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
01a9h mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
01aeh vmovd xmm1,edx                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e ca}
01b2h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
01b6h vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
01bah mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
01bch shl rdx,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 20}
01c0h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
01c3h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01c6h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
01cah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01cbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01cch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01cdh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ceh ret                                     ; RET || C3 || encoded[1]{c3}
01cfh call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 52 0e 5f}
01d4h call 7ff7c7754a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f a0 4a ff}
------------------------------------------------------------------------------------------------------------------------
; byte bitslice<byte>(in BitSpan src), hex://bitspan/bitspan?bitslice#bitslice_g[8u]()
; bitslice_g[8u]()[215] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0xb9,0xb0,0xbf,0x38,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x08,0x00,0x00,0x00,0xe8,0x5f,0xc3,0xfb,0x5e,0x48,0x83,0xc0,0x10,0x48,0x8b,0xf8,0xbb,0x08,0x00,0x00,0x00,0x44,0x8b,0x46,0x08,0x41,0x3b,0xd8,0x7c,0x02,0xeb,0x03,0x44,0x8b,0xc3,0x48,0x8b,0x16,0x41,0xc1,0xe0,0x02,0x48,0x8b,0xcf,0xe8,0xa6,0xb5,0xfb,0x5e,0x8b,0xc3,0x48,0x83,0xf8,0x08,0x0f,0x82,0x7c,0x00,0x00,0x00,0xc5,0xff,0xf0,0x07,0xc4,0xe3,0x7d,0x19,0xc1,0x00,0xc4,0xe3,0x7d,0x19,0xc0,0x01,0xc7,0x44,0x24,0x2c,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x2c,0xc4,0xe2,0x79,0x58,0x54,0x24,0x2c,0xc5,0xf1,0xdb,0xca,0xc5,0xf9,0xdb,0xc2,0xc4,0xe2,0x71,0x2b,0xc0,0xc5,0xf0,0x57,0xc9,0xc7,0x44,0x24,0x28,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x28,0xc4,0xe2,0x79,0x79,0x54,0x24,0x28,0xc5,0xf9,0xdb,0xc2,0xc5,0xf1,0xdb,0xca,0xc5,0xf9,0x67,0xc1,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3,0xe8,0xee,0x50,0x0e,0x5f,0xe8,0x01,0x9f,0x4a,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov rcx,7ff7c838bfb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bf 38 c8 f7 7f 00 00}
0017h mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
001ch call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f c3 fb 5e}
0021h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0025h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0028h mov ebx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 08 00 00 00}
002dh mov r8d,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 46 08}
0031h cmp ebx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d8}
0034h jl short 0038h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0036h jmp short 003bh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0038h mov r8d,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c3}
003bh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
003eh shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
0042h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0045h call 7ff827266050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 b5 fb 5e}
004ah mov eax,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c3}
004ch cmp rax,8                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 08}
0050h jb near ptr 00d2h                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 7c 00 00 00}
0056h vlddqu ymm0,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 07}
005ah vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0060h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0066h mov dword ptr [rsp+2ch],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c ff ff 00 00}
006eh lea rax,[rsp+2ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 2c}
0073h vpbroadcastd xmm2,dword ptr [rsp+2ch]   ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 2c}
007ah vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
007eh vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0082h vpackusdw xmm0,xmm1,xmm0                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 71 2b c0}
0087h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
008bh mov dword ptr [rsp+28h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 ff 00 00 00}
0093h lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
0098h vpbroadcastw xmm2,word ptr [rsp+28h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 28}
009fh vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
00a3h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
00a7h vpackuswb xmm0,xmm0,xmm1                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f9 67 c1}
00abh mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
00b0h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00b4h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
00b8h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
00bch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00bfh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00c2h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c5h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
00c9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00cah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00cbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00cch ret                                     ; RET || C3 || encoded[1]{c3}
00cdh call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 50 0e 5f}
00d2h call 7ff7c7754a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 9f 4a ff}
------------------------------------------------------------------------------------------------------------------------
; ushort bitslice<ushort>(in BitSpan src), hex://bitspan/bitspan?bitslice#bitslice_g[16u]()
; bitslice_g[16u]()[225] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0xb9,0xb0,0xbf,0x38,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x10,0x00,0x00,0x00,0xe8,0x5f,0xc2,0xfb,0x5e,0x48,0x83,0xc0,0x10,0x48,0x8b,0xf8,0xbb,0x10,0x00,0x00,0x00,0x44,0x8b,0x46,0x08,0x41,0x3b,0xd8,0x7c,0x02,0xeb,0x03,0x44,0x8b,0xc3,0x48,0x8b,0x16,0x41,0xc1,0xe0,0x02,0x48,0x8b,0xcf,0xe8,0xa6,0xb4,0xfb,0x5e,0x8b,0xc3,0x48,0x83,0xf8,0x10,0x0f,0x82,0x86,0x00,0x00,0x00,0x48,0x8b,0xc7,0xc5,0xff,0xf0,0x00,0x48,0x83,0xc7,0x20,0xc5,0xff,0xf0,0x0f,0xc7,0x44,0x24,0x2c,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x2c,0xc4,0xe2,0x7d,0x58,0x54,0x24,0x2c,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc4,0xe2,0x7d,0x2b,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xc4,0xe3,0x7d,0x19,0xc1,0x00,0xc4,0xe3,0x7d,0x19,0xc0,0x01,0xc7,0x44,0x24,0x28,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x28,0xc4,0xe2,0x79,0x79,0x54,0x24,0x28,0xc5,0xf1,0xdb,0xca,0xc5,0xf9,0xdb,0xc2,0xc5,0xf1,0x67,0xc0,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3,0xe8,0xe4,0x4f,0x0e,0x5f,0xe8,0xf7,0x9d,0x4a,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov rcx,7ff7c838bfb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bf 38 c8 f7 7f 00 00}
0017h mov edx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 10 00 00 00}
001ch call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f c2 fb 5e}
0021h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0025h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0028h mov ebx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 10 00 00 00}
002dh mov r8d,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 46 08}
0031h cmp ebx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d8}
0034h jl short 0038h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0036h jmp short 003bh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0038h mov r8d,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c3}
003bh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
003eh shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
0042h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0045h call 7ff827266050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 b4 fb 5e}
004ah mov eax,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c3}
004ch cmp rax,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 10}
0050h jb near ptr 00dch                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 86 00 00 00}
0056h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0059h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
005dh add rdi,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c7 20}
0061h vlddqu ymm1,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0f}
0065h mov dword ptr [rsp+2ch],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c ff ff 00 00}
006dh lea rax,[rsp+2ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 2c}
0072h vpbroadcastd ymm2,dword ptr [rsp+2ch]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 2c}
0079h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
007dh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0081h vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
0086h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
008ch vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0092h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0098h mov dword ptr [rsp+28h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 ff 00 00 00}
00a0h lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
00a5h vpbroadcastw xmm2,word ptr [rsp+28h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 28}
00ach vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
00b0h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
00b4h vpackuswb xmm0,xmm1,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f1 67 c0}
00b8h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
00bdh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00c1h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
00c5h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
00c9h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00cch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00cfh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
00d3h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00d4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00d5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00d6h ret                                     ; RET || C3 || encoded[1]{c3}
00d7h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 4f 0e 5f}
00dch call 7ff7c7754a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 9d 4a ff}
------------------------------------------------------------------------------------------------------------------------
; uint bitslice<uint>(in BitSpan src), hex://bitspan/bitspan?bitslice#bitslice_g[32u]()
; bitslice_g[32u]()[271] = {0x57,0x56,0x53,0x48,0x83,0xec,0x30,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0xb9,0xb0,0xbf,0x38,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x20,0x00,0x00,0x00,0xe8,0x4f,0xc1,0xfb,0x5e,0x48,0x83,0xc0,0x10,0x48,0x8b,0xf8,0xbb,0x20,0x00,0x00,0x00,0x44,0x8b,0x46,0x08,0x41,0x3b,0xd8,0x7c,0x02,0xeb,0x03,0x44,0x8b,0xc3,0x48,0x8b,0x16,0x41,0xc1,0xe0,0x02,0x48,0x8b,0xcf,0xe8,0x96,0xb3,0xfb,0x5e,0x8b,0xc3,0x48,0x83,0xf8,0x20,0x0f,0x82,0xb4,0x00,0x00,0x00,0x48,0x8b,0xc7,0xc5,0xff,0xf0,0x00,0x48,0x8d,0x47,0x20,0xc5,0xff,0xf0,0x08,0xc7,0x44,0x24,0x2c,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x2c,0xc4,0xe2,0x7d,0x58,0x54,0x24,0x2c,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc4,0xe2,0x7d,0x2b,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0x48,0x8d,0x47,0x40,0xc5,0xff,0xf0,0x08,0x48,0x83,0xc7,0x60,0xc5,0xff,0xf0,0x17,0xc7,0x44,0x24,0x28,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x28,0xc4,0xe2,0x7d,0x58,0x5c,0x24,0x28,0xc5,0xf5,0xdb,0xcb,0xc5,0xed,0xdb,0xd3,0xc4,0xe2,0x75,0x2b,0xca,0xc4,0xe3,0xfd,0x00,0xc9,0xd8,0xc7,0x44,0x24,0x24,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x24,0xc4,0xe2,0x7d,0x79,0x54,0x24,0x24,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc5,0xfd,0x67,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x30,0x5b,0x5e,0x5f,0xc3,0xe8,0xa6,0x4e,0x0e,0x5f,0xe8,0xb9,0x9c,0x4a,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov rcx,7ff7c838bfb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bf 38 c8 f7 7f 00 00}
0017h mov edx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 20 00 00 00}
001ch call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f c1 fb 5e}
0021h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0025h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0028h mov ebx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 20 00 00 00}
002dh mov r8d,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 46 08}
0031h cmp ebx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d8}
0034h jl short 0038h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0036h jmp short 003bh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0038h mov r8d,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c3}
003bh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
003eh shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
0042h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0045h call 7ff827266050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 b3 fb 5e}
004ah mov eax,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c3}
004ch cmp rax,20h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 20}
0050h jb near ptr 010ah                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 b4 00 00 00}
0056h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0059h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
005dh lea rax,[rdi+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 47 20}
0061h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0065h mov dword ptr [rsp+2ch],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c ff ff 00 00}
006dh lea rax,[rsp+2ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 2c}
0072h vpbroadcastd ymm2,dword ptr [rsp+2ch]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 2c}
0079h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
007dh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0081h vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
0086h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
008ch lea rax,[rdi+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 47 40}
0090h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0094h add rdi,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c7 60}
0098h vlddqu ymm2,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 17}
009ch mov dword ptr [rsp+28h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 ff ff 00 00}
00a4h lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
00a9h vpbroadcastd ymm3,dword ptr [rsp+28h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 28}
00b0h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00b4h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
00b8h vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
00bdh vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
00c3h mov dword ptr [rsp+24h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 ff 00 00 00}
00cbh lea rax,[rsp+24h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 24}
00d0h vpbroadcastw ymm2,word ptr [rsp+24h]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 24}
00d7h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
00dbh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
00dfh vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
00e3h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00e9h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
00eeh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00f2h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
00f6h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
00fah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00fdh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0101h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0102h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0103h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0104h ret                                     ; RET || C3 || encoded[1]{c3}
0105h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 4e 0e 5f}
010ah call 7ff7c7754a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 9c 4a ff}
------------------------------------------------------------------------------------------------------------------------
; ulong bitslice<ulong>(in BitSpan src), hex://bitspan/bitspan?bitslice#bitslice_g[64u]()
; bitslice_g[64u]()[459] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0x48,0xb9,0xb0,0xbf,0x38,0xc8,0xf7,0x7f,0x00,0x00,0xba,0x40,0x00,0x00,0x00,0xe8,0x0f,0xc0,0xfb,0x5e,0x48,0x83,0xc0,0x10,0x48,0x8b,0xf8,0xbb,0x40,0x00,0x00,0x00,0x44,0x8b,0x46,0x08,0x41,0x3b,0xd8,0x7c,0x02,0xeb,0x03,0x44,0x8b,0xc3,0x48,0x8b,0x16,0x41,0xc1,0xe0,0x02,0x48,0x8b,0xcf,0xe8,0x56,0xb2,0xfb,0x5e,0x8b,0xc3,0x48,0x83,0xf8,0x40,0x0f,0x82,0x70,0x01,0x00,0x00,0x48,0x8b,0xc7,0xc5,0xff,0xf0,0x00,0x48,0x8d,0x47,0x20,0xc5,0xff,0xf0,0x08,0xc7,0x44,0x24,0x3c,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x3c,0xc4,0xe2,0x7d,0x58,0x54,0x24,0x3c,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc4,0xe2,0x7d,0x2b,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0x48,0x8d,0x47,0x40,0xc5,0xff,0xf0,0x08,0x48,0x8d,0x47,0x60,0xc5,0xff,0xf0,0x10,0xc7,0x44,0x24,0x38,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x38,0xc4,0xe2,0x7d,0x58,0x5c,0x24,0x38,0xc5,0xf5,0xdb,0xcb,0xc5,0xed,0xdb,0xd3,0xc4,0xe2,0x75,0x2b,0xca,0xc4,0xe3,0xfd,0x00,0xc9,0xd8,0xc7,0x44,0x24,0x34,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x34,0xc4,0xe2,0x7d,0x79,0x54,0x24,0x34,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc5,0xfd,0x67,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0x8d,0x97,0x80,0x00,0x00,0x00,0xc5,0xff,0xf0,0x0a,0x48,0x8d,0x97,0xa0,0x00,0x00,0x00,0xc5,0xff,0xf0,0x12,0xc7,0x44,0x24,0x30,0xff,0xff,0x00,0x00,0x48,0x8d,0x54,0x24,0x30,0xc4,0xe2,0x7d,0x58,0x44,0x24,0x30,0xc5,0xf5,0xdb,0xc8,0xc5,0xed,0xdb,0xc0,0xc4,0xe2,0x75,0x2b,0xc0,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0x48,0x8d,0x97,0xc0,0x00,0x00,0x00,0xc5,0xff,0xf0,0x0a,0x48,0x81,0xc7,0xe0,0x00,0x00,0x00,0xc5,0xff,0xf0,0x17,0xc7,0x44,0x24,0x2c,0xff,0xff,0x00,0x00,0x48,0x8d,0x54,0x24,0x2c,0xc4,0xe2,0x7d,0x58,0x5c,0x24,0x2c,0xc5,0xf5,0xdb,0xcb,0xc5,0xed,0xdb,0xd3,0xc4,0xe2,0x75,0x2b,0xca,0xc4,0xe3,0xfd,0x00,0xc9,0xd8,0xc7,0x44,0x24,0x28,0xff,0x00,0x00,0x00,0x48,0x8d,0x54,0x24,0x28,0xc4,0xe2,0x7d,0x79,0x54,0x24,0x28,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc5,0xfd,0x67,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xba,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xca,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0xc1,0xe2,0x20,0x48,0x0b,0xc2,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3,0xe8,0xaa,0x4c,0x0e,0x5f,0xe8,0xbd,0x9a,0x4a,0xff}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh mov rcx,7ff7c838bfb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 bf 38 c8 f7 7f 00 00}
0017h mov edx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 40 00 00 00}
001ch call 7ff827266de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f c0 fb 5e}
0021h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0025h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0028h mov ebx,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 40 00 00 00}
002dh mov r8d,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 46 08}
0031h cmp ebx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d8}
0034h jl short 0038h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0036h jmp short 003bh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0038h mov r8d,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c3}
003bh mov rdx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 16}
003eh shl r8d,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 02}
0042h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0045h call 7ff827266050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 b2 fb 5e}
004ah mov eax,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c3}
004ch cmp rax,40h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 40}
0050h jb near ptr 01c6h                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 70 01 00 00}
0056h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0059h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
005dh lea rax,[rdi+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 47 20}
0061h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0065h mov dword ptr [rsp+3ch],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 3c ff ff 00 00}
006dh lea rax,[rsp+3ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 3c}
0072h vpbroadcastd ymm2,dword ptr [rsp+3ch]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 3c}
0079h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
007dh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0081h vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
0086h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
008ch lea rax,[rdi+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 47 40}
0090h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0094h lea rax,[rdi+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 47 60}
0098h vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
009ch mov dword ptr [rsp+38h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 38 ff ff 00 00}
00a4h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
00a9h vpbroadcastd ymm3,dword ptr [rsp+38h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 38}
00b0h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00b4h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
00b8h vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
00bdh vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
00c3h mov dword ptr [rsp+34h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 34 ff 00 00 00}
00cbh lea rax,[rsp+34h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 34}
00d0h vpbroadcastw ymm2,word ptr [rsp+34h]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 34}
00d7h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
00dbh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
00dfh vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
00e3h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00e9h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
00eeh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00f2h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
00f6h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
00fah mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
00fch lea rdx,[rdi+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 97 80 00 00 00}
0103h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0107h lea rdx,[rdi+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 97 a0 00 00 00}
010eh vlddqu ymm2,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 12}
0112h mov dword ptr [rsp+30h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 30 ff ff 00 00}
011ah lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
011fh vpbroadcastd ymm0,dword ptr [rsp+30h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 30}
0126h vpand ymm1,ymm1,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db c8}
012ah vpand ymm0,ymm2,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c0}
012eh vpackusdw ymm0,ymm1,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b c0}
0133h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0139h lea rdx,[rdi+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 97 c0 00 00 00}
0140h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0144h add rdi,0e0h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c7 e0 00 00 00}
014bh vlddqu ymm2,ymmword ptr [rdi]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 17}
014fh mov dword ptr [rsp+2ch],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c ff ff 00 00}
0157h lea rdx,[rsp+2ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 2c}
015ch vpbroadcastd ymm3,dword ptr [rsp+2ch]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 2c}
0163h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
0167h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
016bh vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
0170h vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
0176h mov dword ptr [rsp+28h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 ff 00 00 00}
017eh lea rdx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 28}
0183h vpbroadcastw ymm2,word ptr [rsp+28h]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 28}
018ah vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
018eh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0192h vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
0196h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
019ch mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
01a1h vmovd xmm1,edx                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e ca}
01a5h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
01a9h vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
01adh mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
01afh shl rdx,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 20}
01b3h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
01b6h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b9h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
01bdh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01beh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bfh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01c0h ret                                     ; RET || C3 || encoded[1]{c3}
01c1h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 4c 0e 5f}
01c6h call 7ff7c7754a38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 9a 4a ff}
