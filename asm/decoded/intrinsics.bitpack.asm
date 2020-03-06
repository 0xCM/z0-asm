------------------------------------------------------------------------------------------------------------------------
; byte pack<byte>(Span<bit> src, byte t), hex://intrinsics/bitpack?pack#pack_g[8u](8u)
; pack_g[8u](8u)[149] = {0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x8b,0x51,0x08,0x48,0x83,0xfa,0x08,0x0f,0x82,0x79,0x00,0x00,0x00,0xc5,0xff,0xf0,0x00,0xc4,0xe3,0x7d,0x19,0xc1,0x00,0xc4,0xe3,0x7d,0x19,0xc0,0x01,0xc7,0x44,0x24,0x24,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x24,0xc4,0xe2,0x79,0x58,0x54,0x24,0x24,0xc5,0xf1,0xdb,0xca,0xc5,0xf9,0xdb,0xc2,0xc4,0xe2,0x71,0x2b,0xc0,0xc5,0xf0,0x57,0xc9,0xc7,0x44,0x24,0x20,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x20,0xc4,0xe2,0x79,0x79,0x54,0x24,0x20,0xc5,0xf9,0xdb,0xc2,0xc5,0xf1,0xdb,0xca,0xc5,0xf9,0x67,0xc1,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x28,0xc3,0xe8,0xb0,0x00,0xfe,0x5e,0xe8,0xeb,0x4e,0x3b,0xff}
; TermCode = CTC_INTRx2
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000dh cmp rdx,8                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 fa 08}
0011h jb near ptr 0090h                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 79 00 00 00}
0017h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
001bh vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0021h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0027h mov dword ptr [rsp+24h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 ff ff 00 00}
002fh lea rax,[rsp+24h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 24}
0034h vpbroadcastd xmm2,dword ptr [rsp+24h]   ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 24}
003bh vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
003fh vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0043h vpackusdw xmm0,xmm1,xmm0                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 71 2b c0}
0048h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
004ch mov dword ptr [rsp+20h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 20 ff 00 00 00}
0054h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0059h vpbroadcastw xmm2,word ptr [rsp+20h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 20}
0060h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0064h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0068h vpackuswb xmm0,xmm0,xmm1                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f9 67 c1}
006ch mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
0071h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0075h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0079h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
007dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0080h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0083h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0086h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
008ah ret                                     ; RET || C3 || encoded[1]{c3}
008bh call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 00 fe 5e}
0090h call 7ff7c7764a60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 4e 3b ff}
------------------------------------------------------------------------------------------------------------------------
; ushort pack<ushort>(Span<bit> src, ushort t), hex://intrinsics/bitpack?pack#pack_g[16u](16u)
; pack_g[16u](16u)[159] = {0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x8b,0x51,0x08,0x48,0x83,0xfa,0x10,0x0f,0x82,0x83,0x00,0x00,0x00,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0x48,0x83,0xc0,0x20,0xc5,0xff,0xf0,0x08,0xc7,0x44,0x24,0x24,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x24,0xc4,0xe2,0x7d,0x58,0x54,0x24,0x24,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc4,0xe2,0x7d,0x2b,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xc4,0xe3,0x7d,0x19,0xc1,0x00,0xc4,0xe3,0x7d,0x19,0xc0,0x01,0xc7,0x44,0x24,0x20,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x20,0xc4,0xe2,0x79,0x79,0x54,0x24,0x20,0xc5,0xf1,0xdb,0xca,0xc5,0xf9,0xdb,0xc2,0xc5,0xf1,0x67,0xc0,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x28,0xc3,0xe8,0xe6,0xff,0xfd,0x5e,0xe8,0x21,0x4e,0x3b,0xff}
; TermCode = CTC_INTRx2
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000dh cmp rdx,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 fa 10}
0011h jb near ptr 009ah                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 83 00 00 00}
0017h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
001ah vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
001eh add rax,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 20}
0022h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0026h mov dword ptr [rsp+24h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 ff ff 00 00}
002eh lea rax,[rsp+24h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 24}
0033h vpbroadcastd ymm2,dword ptr [rsp+24h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 24}
003ah vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
003eh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0042h vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
0047h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
004dh vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0053h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0059h mov dword ptr [rsp+20h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 20 ff 00 00 00}
0061h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0066h vpbroadcastw xmm2,word ptr [rsp+20h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 20}
006dh vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0071h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0075h vpackuswb xmm0,xmm1,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f1 67 c0}
0079h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
007eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0082h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0086h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
008ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
008dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0090h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0094h ret                                     ; RET || C3 || encoded[1]{c3}
0095h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 ff fd 5e}
009ah call 7ff7c7764a60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 4e 3b ff}
------------------------------------------------------------------------------------------------------------------------
; uint pack<uint>(Span<bit> src, uint t), hex://intrinsics/bitpack?pack#pack_g[32u](32u)
; pack_g[32u](32u)[205] = {0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x8b,0x51,0x08,0x48,0x83,0xfa,0x20,0x0f,0x82,0xb1,0x00,0x00,0x00,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0x48,0x8d,0x50,0x20,0xc5,0xff,0xf0,0x0a,0xc7,0x44,0x24,0x34,0xff,0xff,0x00,0x00,0x48,0x8d,0x54,0x24,0x34,0xc4,0xe2,0x7d,0x58,0x54,0x24,0x34,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc4,0xe2,0x7d,0x2b,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0x48,0x8d,0x50,0x40,0xc5,0xff,0xf0,0x0a,0x48,0x83,0xc0,0x60,0xc5,0xff,0xf0,0x10,0xc7,0x44,0x24,0x30,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x30,0xc4,0xe2,0x7d,0x58,0x5c,0x24,0x30,0xc5,0xf5,0xdb,0xcb,0xc5,0xed,0xdb,0xd3,0xc4,0xe2,0x75,0x2b,0xca,0xc4,0xe3,0xfd,0x00,0xc9,0xd8,0xc7,0x44,0x24,0x2c,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x2c,0xc4,0xe2,0x7d,0x79,0x54,0x24,0x2c,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc5,0xfd,0x67,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x38,0xc3,0xe8,0xf8,0xfe,0xfd,0x5e,0xe8,0x33,0x4d,0x3b,0xff}
; TermCode = CTC_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000dh cmp rdx,20h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 fa 20}
0011h jb near ptr 00c8h                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 b1 00 00 00}
0017h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
001ah vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
001eh lea rdx,[rax+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 20}
0022h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0026h mov dword ptr [rsp+34h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 34 ff ff 00 00}
002eh lea rdx,[rsp+34h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 34}
0033h vpbroadcastd ymm2,dword ptr [rsp+34h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 34}
003ah vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
003eh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0042h vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
0047h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
004dh lea rdx,[rax+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 40}
0051h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0055h add rax,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 60}
0059h vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
005dh mov dword ptr [rsp+30h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 30 ff ff 00 00}
0065h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
006ah vpbroadcastd ymm3,dword ptr [rsp+30h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 30}
0071h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
0075h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
0079h vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
007eh vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
0084h mov dword ptr [rsp+2ch],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c ff 00 00 00}
008ch lea rax,[rsp+2ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 2c}
0091h vpbroadcastw ymm2,word ptr [rsp+2ch]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 2c}
0098h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
009ch vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
00a0h vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
00a4h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00aah mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
00afh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00b3h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
00b7h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
00bbh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00beh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
00c2h ret                                     ; RET || C3 || encoded[1]{c3}
00c3h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 fe fd 5e}
00c8h call 7ff7c7764a60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 4d 3b ff}
------------------------------------------------------------------------------------------------------------------------
; ulong pack<ulong>(Span<bit> src, ulong t), hex://intrinsics/bitpack?pack#pack_g[64u](64u)
; pack_g[64u](64u)[395] = {0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x8b,0x51,0x08,0x48,0x83,0xfa,0x40,0x0f,0x82,0x6f,0x01,0x00,0x00,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0x48,0x8d,0x50,0x20,0xc5,0xff,0xf0,0x0a,0xc7,0x44,0x24,0x34,0xff,0xff,0x00,0x00,0x48,0x8d,0x54,0x24,0x34,0xc4,0xe2,0x7d,0x58,0x54,0x24,0x34,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc4,0xe2,0x7d,0x2b,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0x48,0x8d,0x50,0x40,0xc5,0xff,0xf0,0x0a,0x48,0x8d,0x50,0x60,0xc5,0xff,0xf0,0x12,0xc7,0x44,0x24,0x30,0xff,0xff,0x00,0x00,0x48,0x8d,0x54,0x24,0x30,0xc4,0xe2,0x7d,0x58,0x5c,0x24,0x30,0xc5,0xf5,0xdb,0xcb,0xc5,0xed,0xdb,0xd3,0xc4,0xe2,0x75,0x2b,0xca,0xc4,0xe3,0xfd,0x00,0xc9,0xd8,0xc7,0x44,0x24,0x2c,0xff,0x00,0x00,0x00,0x48,0x8d,0x54,0x24,0x2c,0xc4,0xe2,0x7d,0x79,0x54,0x24,0x2c,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc5,0xfd,0x67,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xba,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xca,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x8d,0x88,0x80,0x00,0x00,0x00,0xc5,0xff,0xf0,0x09,0x48,0x8d,0x88,0xa0,0x00,0x00,0x00,0xc5,0xff,0xf0,0x11,0xc7,0x44,0x24,0x28,0xff,0xff,0x00,0x00,0x48,0x8d,0x4c,0x24,0x28,0xc4,0xe2,0x7d,0x58,0x44,0x24,0x28,0xc5,0xf5,0xdb,0xc8,0xc5,0xed,0xdb,0xc0,0xc4,0xe2,0x75,0x2b,0xc0,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0x48,0x8d,0x88,0xc0,0x00,0x00,0x00,0xc5,0xff,0xf0,0x09,0x48,0x05,0xe0,0x00,0x00,0x00,0xc5,0xff,0xf0,0x10,0xc7,0x44,0x24,0x24,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x24,0xc4,0xe2,0x7d,0x58,0x5c,0x24,0x24,0xc5,0xf5,0xdb,0xcb,0xc5,0xed,0xdb,0xd3,0xc4,0xe2,0x75,0x2b,0xca,0xc4,0xe3,0xfd,0x00,0xc9,0xd8,0xc7,0x44,0x24,0x20,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x20,0xc4,0xe2,0x7d,0x79,0x54,0x24,0x20,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc5,0xfd,0x67,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x38,0xc3,0xe8,0x4a,0xfd,0xfd,0x5e,0xe8,0x85,0x4b,0x3b,0xff}
; TermCode = CTC_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah mov edx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 51 08}
000dh cmp rdx,40h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 fa 40}
0011h jb near ptr 0186h                       ; JB rel32 || 0F 82 cd || encoded[6]{0f 82 6f 01 00 00}
0017h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
001ah vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
001eh lea rdx,[rax+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 20}
0022h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0026h mov dword ptr [rsp+34h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 34 ff ff 00 00}
002eh lea rdx,[rsp+34h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 34}
0033h vpbroadcastd ymm2,dword ptr [rsp+34h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 34}
003ah vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
003eh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0042h vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
0047h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
004dh lea rdx,[rax+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 40}
0051h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
0055h lea rdx,[rax+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 60}
0059h vlddqu ymm2,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 12}
005dh mov dword ptr [rsp+30h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 30 ff ff 00 00}
0065h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
006ah vpbroadcastd ymm3,dword ptr [rsp+30h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 30}
0071h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
0075h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
0079h vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
007eh vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
0084h mov dword ptr [rsp+2ch],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 2c ff 00 00 00}
008ch lea rdx,[rsp+2ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 2c}
0091h vpbroadcastw ymm2,word ptr [rsp+2ch]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 2c}
0098h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
009ch vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
00a0h vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
00a4h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00aah mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
00afh vmovd xmm1,edx                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e ca}
00b3h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
00b7h vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
00bbh mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
00bdh lea rcx,[rax+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 88 80 00 00 00}
00c4h vlddqu ymm1,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 09}
00c8h lea rcx,[rax+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 88 a0 00 00 00}
00cfh vlddqu ymm2,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 11}
00d3h mov dword ptr [rsp+28h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 28 ff ff 00 00}
00dbh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
00e0h vpbroadcastd ymm0,dword ptr [rsp+28h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 28}
00e7h vpand ymm1,ymm1,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db c8}
00ebh vpand ymm0,ymm2,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c0}
00efh vpackusdw ymm0,ymm1,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b c0}
00f4h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00fah lea rcx,[rax+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 88 c0 00 00 00}
0101h vlddqu ymm1,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 09}
0105h add rax,0e0h                            ; ADD RAX, imm32 || REX.W 05 id || encoded[6]{48 05 e0 00 00 00}
010bh vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
010fh mov dword ptr [rsp+24h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 ff ff 00 00}
0117h lea rax,[rsp+24h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 24}
011ch vpbroadcastd ymm3,dword ptr [rsp+24h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 24}
0123h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
0127h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
012bh vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
0130h vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
0136h mov dword ptr [rsp+20h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 20 ff 00 00 00}
013eh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0143h vpbroadcastw ymm2,word ptr [rsp+20h]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 20}
014ah vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
014eh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0152h vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
0156h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
015ch mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
0161h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0165h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0169h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
016dh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
016fh shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
0173h or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
0176h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0179h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
017ch add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0180h ret                                     ; RET || C3 || encoded[1]{c3}
0181h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a fd fd 5e}
0186h call 7ff7c7764a60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 4b 3b ff}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<byte>(in Block32<byte> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[8u](b32x8u~in,32i)
; pack8_g[8u](b32x8u~in,32i)[31] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc1,0xe2,0x02,0x48,0x63,0xd2,0x8b,0x04,0x10,0xba,0x01,0x01,0x01,0x01,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh mov eax,[rax+rdx]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 10}
0011h mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
0016h pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<sbyte>(in Block32<sbyte> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[8i](b32x8i~in,32i)
; pack8_g[8i](b32x8i~in,32i)[31] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc1,0xe2,0x02,0x48,0x63,0xd2,0x8b,0x04,0x10,0xba,0x01,0x01,0x01,0x01,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh mov eax,[rax+rdx]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 10}
0011h mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
0016h pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<ushort>(in Block32<ushort> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[16u](b32x16u~in,32i)
; pack8_g[16u](b32x16u~in,32i)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xd1,0xe2,0x48,0x63,0xd2,0x8b,0x04,0x50,0xba,0x01,0x01,0x01,0x01,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
000ah movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000dh mov eax,[rax+rdx*2]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 50}
0010h mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
0015h pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<short>(in Block32<short> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[16i](b32x16i~in,32i)
; pack8_g[16i](b32x16i~in,32i)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xd1,0xe2,0x48,0x63,0xd2,0x8b,0x04,0x50,0xba,0x01,0x01,0x01,0x01,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
000ah movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000dh mov eax,[rax+rdx*2]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 50}
0010h mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
0015h pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<uint>(in Block32<uint> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[32u](b32x32u~in,32i)
; pack8_g[32u](b32x32u~in,32i)[28] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x8b,0x04,0x90,0xba,0x01,0x01,0x01,0x01,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov eax,[rax+rdx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 90}
000eh mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
0013h pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<int>(in Block32<int> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[32i](b32x32i~in,32i)
; pack8_g[32i](b32x32i~in,32i)[28] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x8b,0x04,0x90,0xba,0x01,0x01,0x01,0x01,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov eax,[rax+rdx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 90}
000eh mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
0013h pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<ulong>(in Block32<ulong> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[64u](b32x64u~in,32i)
; pack8_g[64u](b32x64u~in,32i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x8b,0x00,0xba,0x01,0x01,0x01,0x01,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
000ah mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
000fh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<long>(in Block32<long> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[64i](b32x64i~in,32i)
; pack8_g[64i](b32x64i~in,32i)[24] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x8b,0x00,0xba,0x01,0x01,0x01,0x01,0xc4,0xe2,0x7a,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
000ah mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
000fh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<byte>(in Block64<byte> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[8u](b64x8u~in,32i)
; pack8_g[8u](b64x8u~in,32i)[37] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc1,0xe2,0x03,0x48,0x63,0xd2,0x0f,0xb6,0x04,0x10,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh movzx eax,byte ptr [rax+rdx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 04 10}
0012h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
001ch pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
0021h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<sbyte>(in Block64<sbyte> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[8i](b64x8i~in,32i)
; pack8_g[8i](b64x8i~in,32i)[41] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc1,0xe2,0x03,0x48,0x63,0xd2,0x48,0x0f,0xbe,0x04,0x10,0x48,0x63,0xc0,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh movsx rax,byte ptr [rax+rdx]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 04 10}
0013h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
0016h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0020h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
0025h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<ushort>(in Block64<ushort> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[16u](b64x16u~in,32i)
; pack8_g[16u](b64x16u~in,32i)[37] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc1,0xe2,0x02,0x48,0x63,0xd2,0x0f,0xb7,0x04,0x50,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh movzx eax,word ptr [rax+rdx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 04 50}
0012h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
001ch pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
0021h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<short>(in Block64<short> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[16i](b64x16i~in,32i)
; pack8_g[16i](b64x16i~in,32i)[41] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xc1,0xe2,0x02,0x48,0x63,0xd2,0x48,0x0f,0xbf,0x04,0x50,0x48,0x63,0xc0,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh movsx rax,word ptr [rax+rdx*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 04 50}
0013h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
0016h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0020h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
0025h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<uint>(in Block64<uint> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[32u](b64x32u~in,32i)
; pack8_g[32u](b64x32u~in,32i)[35] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xd1,0xe2,0x48,0x63,0xd2,0x8b,0x04,0x90,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
000ah movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000dh mov eax,[rax+rdx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 90}
0010h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
001ah pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
001fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<int>(in Block64<int> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[32i](b64x32i~in,32i)
; pack8_g[32i](b64x32i~in,32i)[38] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0xd1,0xe2,0x48,0x63,0xd2,0x8b,0x04,0x90,0x48,0x63,0xc0,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
000ah movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000dh mov eax,[rax+rdx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 90}
0010h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
0013h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
001dh pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
0022h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<ulong>(in Block64<ulong> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[64u](b64x64u~in,32i)
; pack8_g[64u](b64x64u~in,32i)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8b,0x04,0xd0,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rax,[rax+rdx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 d0}
000fh mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0019h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<long>(in Block64<long> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[64i](b64x64i~in,32i)
; pack8_g[64i](b64x64i~in,32i)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8b,0x04,0xd0,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rax,[rax+rdx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 d0}
000fh mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0019h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<byte>(in Block128<byte> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[8u](b128x8u~in,32i)
; pack8_g[8u](b128x8u~in,32i)[34] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x04,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0011h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0015h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001ah vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<sbyte>(in Block128<sbyte> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[8i](b128x8i~in,32i)
; pack8_g[8i](b128x8i~in,32i)[34] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x04,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0011h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0015h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001ah vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<ushort>(in Block128<ushort> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[16u](b128x16u~in,32i)
; pack8_g[16u](b128x16u~in,32i)[35] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x03,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0012h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0016h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001bh vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<short>(in Block128<short> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[16i](b128x16i~in,32i)
; pack8_g[16i](b128x16i~in,32i)[35] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x03,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0012h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0016h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001bh vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<uint>(in Block128<uint> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[32u](b128x32u~in,32i)
; pack8_g[32u](b128x32u~in,32i)[35] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x02,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0012h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0016h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001bh vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<int>(in Block128<int> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[32i](b128x32i~in,32i)
; pack8_g[32i](b128x32i~in,32i)[35] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x02,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0012h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0016h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001bh vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<ulong>(in Block128<ulong> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[64u](b128x64u~in,32i)
; pack8_g[64u](b128x64u~in,32i)[34] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xd1,0xe2,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
000ah movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000dh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0011h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0015h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001ah vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<long>(in Block128<long> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[64i](b128x64i~in,32i)
; pack8_g[64i](b128x64i~in,32i)[34] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xd1,0xe2,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
000ah movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000dh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0011h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0015h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001ah vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<byte>(in Block256<byte> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[8u](b256x8u~in,32i)
; pack8_g[8u](b256x8u~in,32i)[34] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x05,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0011h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0015h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001ah vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<sbyte>(in Block256<sbyte> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[8i](b256x8i~in,32i)
; pack8_g[8i](b256x8i~in,32i)[34] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x05,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0011h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0015h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001ah vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<ushort>(in Block256<ushort> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[16u](b256x16u~in,32i)
; pack8_g[16u](b256x16u~in,32i)[35] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x04,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0012h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<short>(in Block256<short> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[16i](b256x16i~in,32i)
; pack8_g[16i](b256x16i~in,32i)[35] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x04,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0012h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<uint>(in Block256<uint> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[32u](b256x32u~in,32i)
; pack8_g[32u](b256x32u~in,32i)[35] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x03,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0012h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<int>(in Block256<int> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[32i](b256x32i~in,32i)
; pack8_g[32i](b256x32i~in,32i)[35] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x03,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0012h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<ulong>(in Block256<ulong> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[64u](b256x64u~in,32i)
; pack8_g[64u](b256x64u~in,32i)[35] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x02,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0012h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<long>(in Block256<long> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[64i](b256x64i~in,32i)
; pack8_g[64i](b256x64i~in,32i)[35] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x02,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0012h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<byte>(in Block512<byte> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[8u](b512x8u~in,32i)
; pack8_g[8u](b512x8u~in,32i)[68] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x06,0x48,0x63,0xd2,0x48,0x03,0xc2,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x83,0xc0,0x20,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 06}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0011h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0014h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0018h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001dh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0021h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0023h add rax,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 20}
0027h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002bh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0030h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0034h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0036h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003ah or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<sbyte>(in Block512<sbyte> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[8i](b512x8i~in,32i)
; pack8_g[8i](b512x8i~in,32i)[68] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x06,0x48,0x63,0xd2,0x48,0x03,0xc2,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x83,0xc0,0x20,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 06}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0011h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0014h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0018h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001dh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0021h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0023h add rax,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 20}
0027h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002bh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0030h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0034h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0036h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003ah or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<ushort>(in Block512<ushort> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[16u](b512x16u~in,32i)
; pack8_g[16u](b512x16u~in,32i)[69] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x05,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x83,0xc0,0x40,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0019h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001eh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0022h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0024h add rax,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 40}
0028h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ch vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0031h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0035h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0037h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003bh or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0041h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<short>(in Block512<short> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[16i](b512x16i~in,32i)
; pack8_g[16i](b512x16i~in,32i)[69] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x05,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x83,0xc0,0x40,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0019h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001eh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0022h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0024h add rax,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 40}
0028h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ch vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0031h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0035h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0037h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003bh or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0041h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<uint>(in Block512<uint> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[32u](b512x32u~in,32i)
; pack8_g[32u](b512x32u~in,32i)[71] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x04,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x05,0x80,0x00,0x00,0x00,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0019h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001eh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0022h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0024h add rax,80h                             ; ADD RAX, imm32 || REX.W 05 id || encoded[6]{48 05 80 00 00 00}
002ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002eh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0033h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0037h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0039h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003dh or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
0040h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0043h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<int>(in Block512<int> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[32i](b512x32i~in,32i)
; pack8_g[32i](b512x32i~in,32i)[71] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x04,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x05,0x80,0x00,0x00,0x00,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0019h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001eh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0022h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0024h add rax,80h                             ; ADD RAX, imm32 || REX.W 05 id || encoded[6]{48 05 80 00 00 00}
002ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002eh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0033h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0037h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0039h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003dh or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
0040h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0043h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<ulong>(in Block512<ulong> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[64u](b512x64u~in,32i)
; pack8_g[64u](b512x64u~in,32i)[71] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x03,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x05,0x00,0x01,0x00,0x00,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0019h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001eh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0022h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0024h add rax,100h                            ; ADD RAX, imm32 || REX.W 05 id || encoded[6]{48 05 00 01 00 00}
002ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002eh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0033h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0037h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0039h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003dh or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
0040h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0043h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<long>(in Block512<long> src, int block), hex://intrinsics/bitpack?pack8#pack8_g[64i](b512x64i~in,32i)
; pack8_g[64i](b512x64i~in,32i)[71] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0xc1,0xe2,0x03,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x05,0x00,0x01,0x00,0x00,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0019h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001eh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0022h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0024h add rax,100h                            ; ADD RAX, imm32 || REX.W 05 id || encoded[6]{48 05 00 01 00 00}
002ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002eh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0033h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0037h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0039h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003dh or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
0040h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0043h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8x8<byte>(ReadOnlySpan<byte> src, int offset), hex://intrinsics/bitpack?pack8x8#pack8x8_g[8u](uspan8u,32i)
; pack8x8_g[8u](uspan8u,32i)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8b,0x04,0x10,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rax,[rax+rdx]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 10}
000fh mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0019h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8x8<sbyte>(ReadOnlySpan<sbyte> src, int offset), hex://intrinsics/bitpack?pack8x8#pack8x8_g[8i](uspan8i,32i)
; pack8x8_g[8i](uspan8i,32i)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8b,0x04,0x10,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rax,[rax+rdx]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 10}
000fh mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0019h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8x8<ushort>(ReadOnlySpan<ushort> src, int offset), hex://intrinsics/bitpack?pack8x8#pack8x8_g[16u](uspan16u,32i)
; pack8x8_g[16u](uspan16u,32i)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8b,0x04,0x50,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rax,[rax+rdx*2]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 50}
000fh mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0019h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8x8<short>(ReadOnlySpan<short> src, int offset), hex://intrinsics/bitpack?pack8x8#pack8x8_g[16i](uspan16i,32i)
; pack8x8_g[16i](uspan16i,32i)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8b,0x04,0x50,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rax,[rax+rdx*2]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 50}
000fh mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0019h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8x8<uint>(ReadOnlySpan<uint> src, int offset), hex://intrinsics/bitpack?pack8x8#pack8x8_g[32u](uspan32u,32i)
; pack8x8_g[32u](uspan32u,32i)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8b,0x04,0x90,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rax,[rax+rdx*4]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 90}
000fh mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0019h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8x8<int>(ReadOnlySpan<int> src, int offset), hex://intrinsics/bitpack?pack8x8#pack8x8_g[32i](uspan32i,32i)
; pack8x8_g[32i](uspan32i,32i)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8b,0x04,0x90,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rax,[rax+rdx*4]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 90}
000fh mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0019h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8x8<ulong>(ReadOnlySpan<ulong> src, int offset), hex://intrinsics/bitpack?pack8x8#pack8x8_g[64u](uspan64u,32i)
; pack8x8_g[64u](uspan64u,32i)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8b,0x04,0xd0,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rax,[rax+rdx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 d0}
000fh mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0019h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8x8<long>(ReadOnlySpan<long> src, int offset), hex://intrinsics/bitpack?pack8x8#pack8x8_g[64i](uspan64i,32i)
; pack8x8_g[64i](uspan64i,32i)[34] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8b,0x04,0xd0,0x48,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfa,0xf5,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rax,[rax+rdx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 d0}
000fh mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0019h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack16x8<byte>(ReadOnlySpan<byte> src, int offset), hex://intrinsics/bitpack?pack16x8#pack16x8_g[8u](uspan8u,32i)
; pack16x8_g[8u](uspan8u,32i)[31] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0012h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
0017h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack16x8<sbyte>(ReadOnlySpan<sbyte> src, int offset), hex://intrinsics/bitpack?pack16x8#pack16x8_g[8i](uspan8i,32i)
; pack16x8_g[8i](uspan8i,32i)[31] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0012h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
0017h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack16x8<ushort>(ReadOnlySpan<ushort> src, int offset), hex://intrinsics/bitpack?pack16x8#pack16x8_g[16u](uspan16u,32i)
; pack16x8_g[16u](uspan16u,32i)[32] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
0018h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack16x8<short>(ReadOnlySpan<short> src, int offset), hex://intrinsics/bitpack?pack16x8#pack16x8_g[16i](uspan16i,32i)
; pack16x8_g[16i](uspan16i,32i)[32] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
0018h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack16x8<uint>(ReadOnlySpan<uint> src, int offset), hex://intrinsics/bitpack?pack16x8#pack16x8_g[32u](uspan32u,32i)
; pack16x8_g[32u](uspan32u,32i)[32] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
0018h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack16x8<int>(ReadOnlySpan<int> src, int offset), hex://intrinsics/bitpack?pack16x8#pack16x8_g[32i](uspan32i,32i)
; pack16x8_g[32i](uspan32i,32i)[32] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
0018h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack16x8<ulong>(ReadOnlySpan<ulong> src, int offset), hex://intrinsics/bitpack?pack16x8#pack16x8_g[64u](uspan64u,32i)
; pack16x8_g[64u](uspan64u,32i)[32] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
0018h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack16x8<long>(ReadOnlySpan<long> src, int offset), hex://intrinsics/bitpack?pack16x8#pack16x8_g[64i](uspan64i,32i)
; pack16x8_g[64i](uspan64i,32i)[32] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc5,0xfb,0xf0,0x00,0xc5,0xf9,0x73,0xf0,0x07,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
0018h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack32x8<byte>(ReadOnlySpan<byte> src, int offset), hex://intrinsics/bitpack?pack32x8#pack32x8_g[8u](uspan8u,32i)
; pack32x8_g[8u](uspan8u,32i)[31] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0017h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack32x8<sbyte>(ReadOnlySpan<sbyte> src, int offset), hex://intrinsics/bitpack?pack32x8#pack32x8_g[8i](uspan8i,32i)
; pack32x8_g[8i](uspan8i,32i)[31] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0012h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0017h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack32x8<ushort>(ReadOnlySpan<ushort> src, int offset), hex://intrinsics/bitpack?pack32x8#pack32x8_g[16u](uspan16u,32i)
; pack32x8_g[16u](uspan16u,32i)[32] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0018h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack32x8<short>(ReadOnlySpan<short> src, int offset), hex://intrinsics/bitpack?pack32x8#pack32x8_g[16i](uspan16i,32i)
; pack32x8_g[16i](uspan16i,32i)[32] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0018h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack32x8<uint>(ReadOnlySpan<uint> src, int offset), hex://intrinsics/bitpack?pack32x8#pack32x8_g[32u](uspan32u,32i)
; pack32x8_g[32u](uspan32u,32i)[32] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0018h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack32x8<int>(ReadOnlySpan<int> src, int offset), hex://intrinsics/bitpack?pack32x8#pack32x8_g[32i](uspan32i,32i)
; pack32x8_g[32i](uspan32i,32i)[32] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0018h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack32x8<ulong>(ReadOnlySpan<ulong> src, int offset), hex://intrinsics/bitpack?pack32x8#pack32x8_g[64u](uspan64u,32i)
; pack32x8_g[64u](uspan64u,32i)[32] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0018h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack32x8<long>(ReadOnlySpan<long> src, int offset), hex://intrinsics/bitpack?pack32x8#pack32x8_g[64i](uspan64i,32i)
; pack32x8_g[64i](uspan64i,32i)[32] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0018h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack64x8<byte>(ReadOnlySpan<byte> src, int offset), hex://intrinsics/bitpack?pack64x8#pack64x8_g[8u](uspan8u,32i)
; pack64x8_g[8u](uspan8u,32i)[65] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x83,0xc0,0x20,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0011h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0015h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001ah vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
001eh mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0020h add rax,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 20}
0024h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0028h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
002dh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0031h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0033h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
0037h or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
003dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack64x8<sbyte>(ReadOnlySpan<sbyte> src, int offset), hex://intrinsics/bitpack?pack64x8#pack64x8_g[8i](uspan8i,32i)
; pack64x8_g[8i](uspan8i,32i)[65] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x03,0xc2,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x83,0xc0,0x20,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0011h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0015h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001ah vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
001eh mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0020h add rax,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 20}
0024h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0028h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
002dh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0031h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0033h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
0037h or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
003dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack64x8<ushort>(ReadOnlySpan<ushort> src, int offset), hex://intrinsics/bitpack?pack64x8#pack64x8_g[16u](uspan16u,32i)
; pack64x8_g[16u](uspan16u,32i)[66] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x83,0xc0,0x40,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0012h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
001fh mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0021h add rax,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 40}
0025h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0029h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
002eh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0032h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0034h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
0038h or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
003eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack64x8<short>(ReadOnlySpan<short> src, int offset), hex://intrinsics/bitpack?pack64x8#pack64x8_g[16i](uspan16i,32i)
; pack64x8_g[16i](uspan16i,32i)[66] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x50,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x83,0xc0,0x40,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
000fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0012h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
001fh mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0021h add rax,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 40}
0025h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0029h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
002eh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0032h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0034h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
0038h or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
003eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack64x8<uint>(ReadOnlySpan<uint> src, int offset), hex://intrinsics/bitpack?pack64x8#pack64x8_g[32u](uspan32u,32i)
; pack64x8_g[32u](uspan32u,32i)[68] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x05,0x80,0x00,0x00,0x00,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0012h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
001fh mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0021h add rax,80h                             ; ADD RAX, imm32 || REX.W 05 id || encoded[6]{48 05 80 00 00 00}
0027h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002bh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0030h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0034h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0036h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003ah or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack64x8<int>(ReadOnlySpan<int> src, int offset), hex://intrinsics/bitpack?pack64x8#pack64x8_g[32i](uspan32i,32i)
; pack64x8_g[32i](uspan32i,32i)[68] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0x90,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x05,0x80,0x00,0x00,0x00,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
000fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0012h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
001fh mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0021h add rax,80h                             ; ADD RAX, imm32 || REX.W 05 id || encoded[6]{48 05 80 00 00 00}
0027h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002bh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0030h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0034h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0036h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003ah or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack64x8<ulong>(ReadOnlySpan<ulong> src, int offset), hex://intrinsics/bitpack?pack64x8#pack64x8_g[64u](uspan64u,32i)
; pack64x8_g[64u](uspan64u,32i)[68] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x05,0x00,0x01,0x00,0x00,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0012h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
001fh mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0021h add rax,100h                            ; ADD RAX, imm32 || REX.W 05 id || encoded[6]{48 05 00 01 00 00}
0027h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002bh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0030h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0034h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0036h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003ah or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack64x8<long>(ReadOnlySpan<long> src, int offset), hex://intrinsics/bitpack?pack64x8#pack64x8_g[64i](uspan64i,32i)
; pack64x8_g[64i](uspan64i,32i)[68] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0x8b,0x01,0x48,0x63,0xd2,0x48,0x8d,0x04,0xd0,0x48,0x8b,0xd0,0xc5,0xff,0xf0,0x02,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0x05,0x00,0x01,0x00,0x00,0xc5,0xff,0xf0,0x00,0xc5,0xfd,0x73,0xf0,0x07,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0xc1,0xe0,0x20,0x48,0x0b,0xd0,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
000fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0012h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
001fh mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0021h add rax,100h                            ; ADD RAX, imm32 || REX.W 05 id || encoded[6]{48 05 00 01 00 00}
0027h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002bh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0030h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0034h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0036h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003ah or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<byte>(Vector128<byte> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[8u](v128x8u,8u)
; pack8_g[8u](v128x8u,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
001ch vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0020h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<sbyte>(Vector128<sbyte> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[8i](v128x8i,8u)
; pack8_g[8i](v128x8i,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
001ch vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0020h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<ushort>(Vector128<ushort> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[16u](v128x16u,8u)
; pack8_g[16u](v128x16u,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
001ch vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0020h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<short>(Vector128<short> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[16i](v128x16i,8u)
; pack8_g[16i](v128x16i,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
001ch vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0020h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<uint>(Vector128<uint> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[32u](v128x32u,8u)
; pack8_g[32u](v128x32u,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
001ch vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0020h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<int>(Vector128<int> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[32i](v128x32i,8u)
; pack8_g[32i](v128x32i,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
001ch vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0020h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<ulong>(Vector128<ulong> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[64u](v128x64u,8u)
; pack8_g[64u](v128x64u,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
001ch vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0020h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<long>(Vector128<long> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[64i](v128x64i,8u)
; pack8_g[64i](v128x64i,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
001ch vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0020h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<byte>(Vector256<byte> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[8u](v256x8u,8u)
; pack8_g[8u](v256x8u,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<sbyte>(Vector256<sbyte> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[8i](v256x8i,8u)
; pack8_g[8i](v256x8i,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<ushort>(Vector256<ushort> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[16u](v256x16u,8u)
; pack8_g[16u](v256x16u,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<short>(Vector256<short> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[16i](v256x16i,8u)
; pack8_g[16i](v256x16i,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<uint>(Vector256<uint> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[32u](v256x32u,8u)
; pack8_g[32u](v256x32u,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<int>(Vector256<int> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[32i](v256x32i,8u)
; pack8_g[32i](v256x32i,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<ulong>(Vector256<ulong> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[64u](v256x64u,8u)
; pack8_g[64u](v256x64u,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<long>(Vector256<long> src, byte index), hex://intrinsics/bitpack?pack8#pack8_g[64i](v256x64i,8u)
; pack8_g[64i](v256x64i,8u)[36] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0x0f,0xb6,0xc2,0xf7,0xd8,0x83,0xc0,0x07,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<byte>(Vector128<byte> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[8u](v128x8u)
; packmsb8_g[8u](v128x8u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<sbyte>(Vector128<sbyte> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[8i](v128x8i)
; packmsb8_g[8i](v128x8i)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<ushort>(Vector128<ushort> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[16u](v128x16u)
; packmsb8_g[16u](v128x16u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<short>(Vector128<short> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[16i](v128x16i)
; packmsb8_g[16i](v128x16i)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<uint>(Vector128<uint> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[32u](v128x32u)
; packmsb8_g[32u](v128x32u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<int>(Vector128<int> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[32i](v128x32i)
; packmsb8_g[32i](v128x32i)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<ulong>(Vector128<ulong> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[64u](v128x64u)
; packmsb8_g[64u](v128x64u)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<long>(Vector128<long> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[64i](v128x64i)
; packmsb8_g[64i](v128x64i)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong packmsb8<byte>(Vector256<byte> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[8u](v256x8u)
; packmsb8_g[8u](v256x8u)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
000dh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
000fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong packmsb8<sbyte>(Vector256<sbyte> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[8i](v256x8i)
; packmsb8_g[8i](v256x8i)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
000dh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
000fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong packmsb8<ushort>(Vector256<ushort> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[16u](v256x16u)
; packmsb8_g[16u](v256x16u)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
000dh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
000fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong packmsb8<short>(Vector256<short> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[16i](v256x16i)
; packmsb8_g[16i](v256x16i)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
000dh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
000fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong packmsb8<uint>(Vector256<uint> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[32u](v256x32u)
; packmsb8_g[32u](v256x32u)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
000dh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
000fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong packmsb8<int>(Vector256<int> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[32i](v256x32i)
; packmsb8_g[32i](v256x32i)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
000dh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
000fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong packmsb8<ulong>(Vector256<ulong> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[64u](v256x64u)
; packmsb8_g[64u](v256x64u)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
000dh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
000fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong packmsb8<long>(Vector256<long> src), hex://intrinsics/bitpack?packmsb8#packmsb8_g[64i](v256x64i)
; packmsb8_g[64i](v256x64i)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
000dh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
000fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<byte>(Vector128<byte> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[8u](v128x8u)
; packlsb8_g[8u](v128x8u)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<sbyte>(Vector128<sbyte> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[8i](v128x8i)
; packlsb8_g[8i](v128x8i)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<ushort>(Vector128<ushort> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[16u](v128x16u)
; packlsb8_g[16u](v128x16u)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<short>(Vector128<short> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[16i](v128x16i)
; packlsb8_g[16i](v128x16i)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<uint>(Vector128<uint> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[32u](v128x32u)
; packlsb8_g[32u](v128x32u)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<int>(Vector128<int> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[32i](v128x32i)
; packlsb8_g[32i](v128x32i)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<ulong>(Vector128<ulong> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[64u](v128x64u)
; packlsb8_g[64u](v128x64u)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<long>(Vector128<long> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[64i](v128x64i)
; packlsb8_g[64i](v128x64i)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint packlsb8<byte>(Vector256<byte> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[8u](v256x8u)
; packlsb8_g[8u](v256x8u)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0016h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint packlsb8<sbyte>(Vector256<sbyte> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[8i](v256x8i)
; packlsb8_g[8i](v256x8i)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0016h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint packlsb8<ushort>(Vector256<ushort> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[16u](v256x16u)
; packlsb8_g[16u](v256x16u)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0016h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint packlsb8<short>(Vector256<short> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[16i](v256x16i)
; packlsb8_g[16i](v256x16i)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0016h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint packlsb8<uint>(Vector256<uint> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[32u](v256x32u)
; packlsb8_g[32u](v256x32u)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0016h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint packlsb8<int>(Vector256<int> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[32i](v256x32i)
; packlsb8_g[32i](v256x32i)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0016h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint packlsb8<ulong>(Vector256<ulong> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[64u](v256x64u)
; packlsb8_g[64u](v256x64u)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0016h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint packlsb8<long>(Vector256<long> src), hex://intrinsics/bitpack?packlsb8#packlsb8_g[64i](v256x64i)
; packlsb8_g[64i](v256x64i)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0016h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<uint> unpack32<byte>(ReadOnlySpan<byte> src, in Block256<uint> dst, int block), hex://intrinsics/bitpack?unpack32#unpack32_g[8u](uspan8u,b256x32u~in,32i)
; unpack32_g[8u](uspan8u,b256x32u~in,32i)[113] = {0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x49,0x63,0xc8,0x0f,0xb6,0x04,0x08,0x41,0xc1,0xe0,0x03,0x41,0x8b,0xc8,0x48,0x83,0xc1,0x08,0x44,0x8b,0x4a,0x08,0x49,0x3b,0xc9,0x77,0x47,0x48,0x8b,0x0a,0x4d,0x63,0xc0,0x4a,0x8d,0x0c,0x81,0x0f,0xb6,0xc0,0x45,0x33,0xc0,0x4c,0x89,0x44,0x24,0x20,0x4c,0x89,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x20,0x8b,0xc0,0x49,0xb9,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xc2,0xfb,0xf5,0xc1,0x49,0x89,0x00,0xc4,0xc2,0x7d,0x31,0x00,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x28,0xc3,0xe8,0x3f,0x05,0x3b,0xff}
; TermCode = CTC_INTRx2
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
000dh movzx eax,byte ptr [rax+rcx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 04 08}
0011h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
0015h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0018h add rcx,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 08}
001ch mov r9d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 4a 08}
0020h cmp rcx,r9                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c9}
0023h ja short 006ch                          ; JA rel8 || 77 cb || encoded[2]{77 47}
0025h mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
0028h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
002bh lea rcx,[rcx+r8*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 0c 81}
002fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0032h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0035h mov [rsp+20h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 20}
003ah mov [rsp+20h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 20}
003fh lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0044h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0046h mov r9,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 01 01 01 01 01 01 01 01}
0050h pdep rax,rax,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c1}
0055h mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0058h vpmovzxbd ymm0,qword ptr [r8]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 00}
005dh vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0061h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0064h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0067h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
006ch call 7ff7c7764a60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 05 3b ff}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<uint> unpack32<ushort>(ReadOnlySpan<ushort> src, in Block256<uint> dst, int block), hex://intrinsics/bitpack?unpack32#unpack32_g[16u](uspan16u,b256x32u~in,32i)
; unpack32_g[16u](uspan16u,b256x32u~in,32i)[149] = {0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x49,0x63,0xc8,0x0f,0xb7,0x04,0x48,0x41,0xc1,0xe0,0x03,0x41,0x8b,0xc8,0x48,0x83,0xc1,0x08,0x44,0x8b,0x4a,0x08,0x49,0x3b,0xc9,0x77,0x6b,0x48,0x8b,0x0a,0x4d,0x63,0xc0,0x4a,0x8d,0x0c,0x81,0x0f,0xb7,0xc0,0x45,0x33,0xc0,0x4c,0x89,0x44,0x24,0x20,0x4c,0x89,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x20,0x44,0x0f,0xb6,0xc8,0x49,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4d,0x8b,0xc8,0xc4,0xc2,0x7d,0x31,0x01,0x4c,0x8b,0xc9,0xc4,0xc1,0x7e,0x7f,0x01,0xc1,0xf8,0x08,0x0f,0xb6,0xc0,0xc4,0xc2,0xfb,0xf5,0xc2,0x49,0x89,0x00,0xc4,0xc2,0x7d,0x31,0x00,0x48,0x83,0xc1,0x20,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x28,0xc3,0xe8,0x8b,0x04,0x3b,0xff}
; TermCode = CTC_INTRx2
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
000dh movzx eax,word ptr [rax+rcx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 04 48}
0011h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
0015h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0018h add rcx,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 08}
001ch mov r9d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 4a 08}
0020h cmp rcx,r9                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c9}
0023h ja short 0090h                          ; JA rel8 || 77 cb || encoded[2]{77 6b}
0025h mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
0028h movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
002bh lea rcx,[rcx+r8*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 0c 81}
002fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0032h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0035h mov [rsp+20h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 20}
003ah mov [rsp+20h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 20}
003fh lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0044h movzx r9d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c8}
0048h mov r10,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 01 01 01 01 01 01 01 01}
0052h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
0057h mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
005ah mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
005dh vpmovzxbd ymm0,qword ptr [r9]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 01}
0062h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
0065h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
006ah sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
006dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0070h pdep rax,rax,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c2}
0075h mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0078h vpmovzxbd ymm0,qword ptr [r8]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 00}
007dh add rcx,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 20}
0081h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
0085h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0088h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
008bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
008fh ret                                     ; RET || C3 || encoded[1]{c3}
0090h call 7ff7c7764a60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 04 3b ff}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<uint> unpack32<uint>(ReadOnlySpan<uint> src, in Block256<uint> dst, int block), hex://intrinsics/bitpack?unpack32#unpack32_g[32u](uspan32u,b256x32u~in,32i)
; unpack32_g[32u](uspan32u,b256x32u~in,32i)[221] = {0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x49,0x63,0xc8,0x8b,0x04,0x88,0x41,0xc1,0xe0,0x03,0x41,0x8b,0xc8,0x48,0x83,0xc1,0x08,0x44,0x8b,0x4a,0x08,0x49,0x3b,0xc9,0x0f,0x87,0xb0,0x00,0x00,0x00,0x48,0x8b,0x0a,0x4d,0x63,0xc0,0x4a,0x8d,0x0c,0x81,0x45,0x33,0xc0,0x4c,0x89,0x44,0x24,0x20,0x4c,0x89,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x20,0x44,0x0f,0xb6,0xc8,0x49,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4d,0x8b,0xc8,0xc4,0xc2,0x7d,0x31,0x01,0x4c,0x8b,0xc9,0xc4,0xc1,0x7e,0x7f,0x01,0x44,0x8b,0xc8,0x41,0xc1,0xe9,0x08,0x45,0x0f,0xb6,0xc9,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4d,0x8b,0xc8,0xc4,0xc2,0x7d,0x31,0x01,0x4c,0x8d,0x49,0x20,0xc4,0xc1,0x7e,0x7f,0x01,0x44,0x8b,0xc8,0x41,0xc1,0xe9,0x10,0x45,0x0f,0xb6,0xc9,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4d,0x8b,0xc8,0xc4,0xc2,0x7d,0x31,0x01,0x4c,0x8d,0x49,0x40,0xc4,0xc1,0x7e,0x7f,0x01,0xc1,0xe8,0x18,0x0f,0xb6,0xc0,0xc4,0xc2,0xfb,0xf5,0xc2,0x49,0x89,0x00,0xc4,0xc2,0x7d,0x31,0x00,0x48,0x83,0xc1,0x60,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x28,0xc3,0xe8,0x93,0x03,0x3b,0xff}
; TermCode = CTC_INTRx2
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
000dh mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0010h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
0014h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0017h add rcx,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 08}
001bh mov r9d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 4a 08}
001fh cmp rcx,r9                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c9}
0022h ja near ptr 00d8h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b0 00 00 00}
0028h mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
002bh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
002eh lea rcx,[rcx+r8*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 0c 81}
0032h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0035h mov [rsp+20h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 20}
003ah mov [rsp+20h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 20}
003fh lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0044h movzx r9d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c8}
0048h mov r10,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 01 01 01 01 01 01 01 01}
0052h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
0057h mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
005ah mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
005dh vpmovzxbd ymm0,qword ptr [r9]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 01}
0062h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
0065h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
006ah mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
006dh shr r9d,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 08}
0071h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0075h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
007ah mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
007dh mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
0080h vpmovzxbd ymm0,qword ptr [r9]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 01}
0085h lea r9,[rcx+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 49 20}
0089h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
008eh mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0091h shr r9d,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 10}
0095h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0099h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
009eh mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
00a1h mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
00a4h vpmovzxbd ymm0,qword ptr [r9]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 01}
00a9h lea r9,[rcx+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 49 40}
00adh vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
00b2h shr eax,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 18}
00b5h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b8h pdep rax,rax,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c2}
00bdh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
00c0h vpmovzxbd ymm0,qword ptr [r8]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 00}
00c5h add rcx,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 60}
00c9h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
00cdh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00d0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00d3h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
00d7h ret                                     ; RET || C3 || encoded[1]{c3}
00d8h call 7ff7c7764a60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 03 3b ff}
------------------------------------------------------------------------------------------------------------------------
; ref Block256<uint> unpack32<ulong>(ReadOnlySpan<ulong> src, in Block256<uint> dst, int block), hex://intrinsics/bitpack?unpack32#unpack32_g[64u](uspan64u,b256x32u~in,32i)
; unpack32_g[64u](uspan64u,b256x32u~in,32i)[379] = {0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0x48,0x8b,0x01,0x49,0x63,0xc8,0x48,0x8b,0x04,0xc8,0x41,0xc1,0xe0,0x03,0x41,0x8b,0xc8,0x48,0x83,0xc1,0x08,0x44,0x8b,0x4a,0x08,0x49,0x3b,0xc9,0x0f,0x87,0x4d,0x01,0x00,0x00,0x48,0x8b,0x0a,0x4d,0x63,0xc0,0x4a,0x8d,0x0c,0x81,0x45,0x33,0xc0,0x4c,0x89,0x44,0x24,0x20,0x4c,0x89,0x44,0x24,0x20,0x4c,0x8d,0x44,0x24,0x20,0x44,0x0f,0xb6,0xc8,0x49,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4d,0x8b,0xc8,0xc4,0xc2,0x7d,0x31,0x01,0x4c,0x8b,0xc9,0xc4,0xc1,0x7e,0x7f,0x01,0x4c,0x8b,0xc8,0x49,0xc1,0xe9,0x08,0x45,0x0f,0xb6,0xc9,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4d,0x8b,0xc8,0xc4,0xc2,0x7d,0x31,0x01,0x4c,0x8d,0x49,0x20,0xc4,0xc1,0x7e,0x7f,0x01,0x4c,0x8b,0xc8,0x49,0xc1,0xe9,0x10,0x45,0x0f,0xb6,0xc9,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4d,0x8b,0xc8,0xc4,0xc2,0x7d,0x31,0x01,0x4c,0x8d,0x49,0x40,0xc4,0xc1,0x7e,0x7f,0x01,0x4c,0x8b,0xc8,0x49,0xc1,0xe9,0x18,0x45,0x0f,0xb6,0xc9,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4d,0x8b,0xc8,0xc4,0xc2,0x7d,0x31,0x01,0x4c,0x8d,0x49,0x60,0xc4,0xc1,0x7e,0x7f,0x01,0x4c,0x8b,0xc8,0x49,0xc1,0xe9,0x20,0x45,0x0f,0xb6,0xc9,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4d,0x8b,0xc8,0xc4,0xc2,0x7d,0x31,0x01,0x4c,0x8d,0x89,0x80,0x00,0x00,0x00,0xc4,0xc1,0x7e,0x7f,0x01,0x4c,0x8b,0xc8,0x49,0xc1,0xe9,0x28,0x45,0x0f,0xb6,0xc9,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4d,0x8b,0xc8,0xc4,0xc2,0x7d,0x31,0x01,0x4c,0x8d,0x89,0xa0,0x00,0x00,0x00,0xc4,0xc1,0x7e,0x7f,0x01,0x4c,0x8b,0xc8,0x49,0xc1,0xe9,0x30,0x45,0x0f,0xb6,0xc9,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4d,0x8b,0xc8,0xc4,0xc2,0x7d,0x31,0x01,0x4c,0x8d,0x89,0xc0,0x00,0x00,0x00,0xc4,0xc1,0x7e,0x7f,0x01,0x48,0xc1,0xe8,0x38,0x0f,0xb6,0xc0,0xc4,0xc2,0xfb,0xf5,0xc2,0x49,0x89,0x00,0xc4,0xc2,0x7d,0x31,0x00,0x48,0x81,0xc1,0xe0,0x00,0x00,0x00,0xc5,0xfe,0x7f,0x01,0x48,0x8b,0xc2,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x28,0xc3,0xe8,0xf5,0xfd,0x3a,0xff}
; TermCode = CTC_INTRx2
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
000ah movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
000dh mov rax,[rax+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 c8}
0011h shl r8d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 03}
0015h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0018h add rcx,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 08}
001ch mov r9d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 4a 08}
0020h cmp rcx,r9                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c9}
0023h ja near ptr 0176h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 4d 01 00 00}
0029h mov rcx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0a}
002ch movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
002fh lea rcx,[rcx+r8*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 0c 81}
0033h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0036h mov [rsp+20h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 20}
003bh mov [rsp+20h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 20}
0040h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0045h movzx r9d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c8}
0049h mov r10,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 01 01 01 01 01 01 01 01}
0053h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
0058h mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
005bh mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
005eh vpmovzxbd ymm0,qword ptr [r9]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 01}
0063h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
0066h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
006bh mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
006eh shr r9,8                                ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e9 08}
0072h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0076h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
007bh mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
007eh mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
0081h vpmovzxbd ymm0,qword ptr [r9]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 01}
0086h lea r9,[rcx+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 49 20}
008ah vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
008fh mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
0092h shr r9,10h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e9 10}
0096h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
009ah pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
009fh mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
00a2h mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
00a5h vpmovzxbd ymm0,qword ptr [r9]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 01}
00aah lea r9,[rcx+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 49 40}
00aeh vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
00b3h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
00b6h shr r9,18h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e9 18}
00bah movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
00beh pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
00c3h mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
00c6h mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
00c9h vpmovzxbd ymm0,qword ptr [r9]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 01}
00ceh lea r9,[rcx+60h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 49 60}
00d2h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
00d7h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
00dah shr r9,20h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e9 20}
00deh movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
00e2h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
00e7h mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
00eah mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
00edh vpmovzxbd ymm0,qword ptr [r9]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 01}
00f2h lea r9,[rcx+80h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 89 80 00 00 00}
00f9h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
00feh mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
0101h shr r9,28h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e9 28}
0105h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0109h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
010eh mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
0111h mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
0114h vpmovzxbd ymm0,qword ptr [r9]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 01}
0119h lea r9,[rcx+0a0h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 89 a0 00 00 00}
0120h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
0125h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
0128h shr r9,30h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e9 30}
012ch movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0130h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
0135h mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
0138h mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
013bh vpmovzxbd ymm0,qword ptr [r9]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 01}
0140h lea r9,[rcx+0c0h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 89 c0 00 00 00}
0147h vmovdqu ymmword ptr [r9],ymm0           ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 01}
014ch shr rax,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 38}
0150h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0153h pdep rax,rax,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c2}
0158h mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
015bh vpmovzxbd ymm0,qword ptr [r8]           ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 00}
0160h add rcx,0e0h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c1 e0 00 00 00}
0167h vmovdqu ymmword ptr [rcx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 01}
016bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
016eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0171h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0175h ret                                     ; RET || C3 || encoded[1]{c3}
0176h call 7ff7c7764a60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 fd 3a ff}
------------------------------------------------------------------------------------------------------------------------
; byte pack32(in uint src, N8 n), hex://intrinsics/bitpack?pack32#pack32_(32u~in,n8)
; pack32_(32u~in,n8)[118] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xff,0xf0,0x01,0xc4,0xe3,0x7d,0x19,0xc1,0x00,0xc4,0xe3,0x7d,0x19,0xc0,0x01,0xc7,0x44,0x24,0x04,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x04,0xc4,0xe2,0x79,0x58,0x54,0x24,0x04,0xc5,0xf1,0xdb,0xca,0xc5,0xf9,0xdb,0xc2,0xc4,0xe2,0x71,0x2b,0xc0,0xc5,0xf0,0x57,0xc9,0xc7,0x04,0x24,0xff,0x00,0x00,0x00,0x48,0x8d,0x04,0x24,0xc4,0xe2,0x79,0x79,0x14,0x24,0xc5,0xf9,0xdb,0xc2,0xc5,0xf1,0xdb,0xca,0xc5,0xf9,0x67,0xc1,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vlddqu ymm0,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 01}
0009h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
000fh vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0015h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
001dh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0022h vpbroadcastd xmm2,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 04}
0029h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
002dh vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0031h vpackusdw xmm0,xmm1,xmm0                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 71 2b c0}
0036h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
003ah mov dword ptr [rsp],0ffh                ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff 00 00 00}
0041h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0045h vpbroadcastw xmm2,word ptr [rsp]        ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[6]{c4 e2 79 79 14 24}
004bh vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
004fh vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0053h vpackuswb xmm0,xmm0,xmm1                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f9 67 c1}
0057h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
005ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0060h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0064h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0068h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
006bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0071h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack32(in uint src, N16 n), hex://intrinsics/bitpack?pack32#pack32_(32u~in,n16)
; pack32_(32u~in,n16)[128] = {0x50,0xc5,0xf8,0x77,0x90,0x48,0x8b,0xc1,0xc5,0xff,0xf0,0x00,0x48,0x83,0xc1,0x20,0xc5,0xff,0xf0,0x09,0xc7,0x44,0x24,0x04,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x04,0xc4,0xe2,0x7d,0x58,0x54,0x24,0x04,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc4,0xe2,0x7d,0x2b,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xc4,0xe3,0x7d,0x19,0xc1,0x00,0xc4,0xe3,0x7d,0x19,0xc0,0x01,0xc7,0x04,0x24,0xff,0x00,0x00,0x00,0x48,0x8d,0x04,0x24,0xc4,0xe2,0x79,0x79,0x14,0x24,0xc5,0xf1,0xdb,0xca,0xc5,0xf9,0xdb,0xc2,0xc5,0xf1,0x67,0xc0,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xf9,0xf3,0xc1,0xc5,0xf9,0xd7,0xc0,0x0f,0xb7,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
000ch add rcx,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 20}
0010h vlddqu ymm1,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 09}
0014h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
001ch lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0021h vpbroadcastd ymm2,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 04}
0028h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
002ch vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0030h vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
0035h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
003bh vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0041h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0047h mov dword ptr [rsp],0ffh                ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff 00 00 00}
004eh lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0052h vpbroadcastw xmm2,word ptr [rsp]        ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[6]{c4 e2 79 79 14 24}
0058h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
005ch vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0060h vpackuswb xmm0,xmm1,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f1 67 c0}
0064h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
0069h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
006dh vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0071h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0075h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0078h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
007bh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
007fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack32(in uint src, N32 n), hex://intrinsics/bitpack?pack32#pack32_(32u~in,n32)
; pack32_(32u~in,n32)[179] = {0x48,0x83,0xec,0x18,0xc5,0xf8,0x77,0x48,0x8b,0xc1,0xc5,0xff,0xf0,0x00,0x48,0x8d,0x41,0x20,0xc5,0xff,0xf0,0x08,0xc7,0x44,0x24,0x14,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x14,0xc4,0xe2,0x7d,0x58,0x54,0x24,0x14,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc4,0xe2,0x7d,0x2b,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0x48,0x8d,0x41,0x40,0xc5,0xff,0xf0,0x08,0x48,0x83,0xc1,0x60,0xc5,0xff,0xf0,0x11,0xc7,0x44,0x24,0x10,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x10,0xc4,0xe2,0x7d,0x58,0x5c,0x24,0x10,0xc5,0xf5,0xdb,0xcb,0xc5,0xed,0xdb,0xd3,0xc4,0xe2,0x75,0x2b,0xca,0xc4,0xe3,0xfd,0x00,0xc9,0xd8,0xc7,0x44,0x24,0x0c,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x0c,0xc4,0xe2,0x7d,0x79,0x54,0x24,0x0c,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc5,0xfd,0x67,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
000eh lea rax,[rcx+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 20}
0012h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0016h mov dword ptr [rsp+14h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 ff ff 00 00}
001eh lea rax,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 14}
0023h vpbroadcastd ymm2,dword ptr [rsp+14h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 14}
002ah vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
002eh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0032h vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
0037h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
003dh lea rax,[rcx+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 40}
0041h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0045h add rcx,60h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c1 60}
0049h vlddqu ymm2,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 11}
004dh mov dword ptr [rsp+10h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 ff ff 00 00}
0055h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
005ah vpbroadcastd ymm3,dword ptr [rsp+10h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 10}
0061h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
0065h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
0069h vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
006eh vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
0074h mov dword ptr [rsp+0ch],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c ff 00 00 00}
007ch lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
0081h vpbroadcastw ymm2,word ptr [rsp+0ch]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 0c}
0088h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
008ch vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0090h vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
0094h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
009ah mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
009fh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00a3h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
00a7h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
00abh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00aeh add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
00b2h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack32(in uint src, N64 n), hex://intrinsics/bitpack?pack32#pack32_(32u~in,n64)
; pack32_(32u~in,n64)[364] = {0x48,0x83,0xec,0x18,0xc5,0xf8,0x77,0x48,0x8b,0xc1,0xc5,0xff,0xf0,0x00,0x48,0x8d,0x41,0x20,0xc5,0xff,0xf0,0x08,0xc7,0x44,0x24,0x14,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x14,0xc4,0xe2,0x7d,0x58,0x54,0x24,0x14,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc4,0xe2,0x7d,0x2b,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0x48,0x8d,0x41,0x40,0xc5,0xff,0xf0,0x08,0x48,0x8d,0x41,0x60,0xc5,0xff,0xf0,0x10,0xc7,0x44,0x24,0x10,0xff,0xff,0x00,0x00,0x48,0x8d,0x44,0x24,0x10,0xc4,0xe2,0x7d,0x58,0x5c,0x24,0x10,0xc5,0xf5,0xdb,0xcb,0xc5,0xed,0xdb,0xd3,0xc4,0xe2,0x75,0x2b,0xca,0xc4,0xe3,0xfd,0x00,0xc9,0xd8,0xc7,0x44,0x24,0x0c,0xff,0x00,0x00,0x00,0x48,0x8d,0x44,0x24,0x0c,0xc4,0xe2,0x7d,0x79,0x54,0x24,0x0c,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc5,0xfd,0x67,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xc0,0x8b,0xc0,0x48,0x8d,0x91,0x80,0x00,0x00,0x00,0xc5,0xff,0xf0,0x0a,0x48,0x8d,0x91,0xa0,0x00,0x00,0x00,0xc5,0xff,0xf0,0x12,0xc7,0x44,0x24,0x08,0xff,0xff,0x00,0x00,0x48,0x8d,0x54,0x24,0x08,0xc4,0xe2,0x7d,0x58,0x44,0x24,0x08,0xc5,0xf5,0xdb,0xc8,0xc5,0xed,0xdb,0xc0,0xc4,0xe2,0x75,0x2b,0xc0,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0x48,0x8d,0x91,0xc0,0x00,0x00,0x00,0xc5,0xff,0xf0,0x0a,0x48,0x81,0xc1,0xe0,0x00,0x00,0x00,0xc5,0xff,0xf0,0x11,0xc7,0x44,0x24,0x04,0xff,0xff,0x00,0x00,0x48,0x8d,0x54,0x24,0x04,0xc4,0xe2,0x7d,0x58,0x5c,0x24,0x04,0xc5,0xf5,0xdb,0xcb,0xc5,0xed,0xdb,0xd3,0xc4,0xe2,0x75,0x2b,0xca,0xc4,0xe3,0xfd,0x00,0xc9,0xd8,0xc7,0x04,0x24,0xff,0x00,0x00,0x00,0x48,0x8d,0x14,0x24,0xc4,0xe2,0x7d,0x79,0x14,0x24,0xc5,0xfd,0xdb,0xc2,0xc5,0xf5,0xdb,0xca,0xc5,0xfd,0x67,0xc1,0xc4,0xe3,0xfd,0x00,0xc0,0xd8,0xba,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xca,0xc5,0xfd,0xf3,0xc1,0xc5,0xfd,0xd7,0xd0,0x8b,0xd2,0x48,0xc1,0xe2,0x20,0x48,0x0b,0xc2,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
000eh lea rax,[rcx+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 20}
0012h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0016h mov dword ptr [rsp+14h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 ff ff 00 00}
001eh lea rax,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 14}
0023h vpbroadcastd ymm2,dword ptr [rsp+14h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 14}
002ah vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
002eh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0032h vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
0037h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
003dh lea rax,[rcx+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 40}
0041h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0045h lea rax,[rcx+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 60}
0049h vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
004dh mov dword ptr [rsp+10h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 ff ff 00 00}
0055h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
005ah vpbroadcastd ymm3,dword ptr [rsp+10h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 10}
0061h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
0065h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
0069h vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
006eh vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
0074h mov dword ptr [rsp+0ch],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c ff 00 00 00}
007ch lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
0081h vpbroadcastw ymm2,word ptr [rsp+0ch]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 0c}
0088h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
008ch vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0090h vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
0094h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
009ah mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
009fh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
00a3h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
00a7h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
00abh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
00adh lea rdx,[rcx+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 91 80 00 00 00}
00b4h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
00b8h lea rdx,[rcx+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 91 a0 00 00 00}
00bfh vlddqu ymm2,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 12}
00c3h mov dword ptr [rsp+8],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 08 ff ff 00 00}
00cbh lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
00d0h vpbroadcastd ymm0,dword ptr [rsp+8]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 08}
00d7h vpand ymm1,ymm1,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db c8}
00dbh vpand ymm0,ymm2,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c0}
00dfh vpackusdw ymm0,ymm1,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b c0}
00e4h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00eah lea rdx,[rcx+0c0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 91 c0 00 00 00}
00f1h vlddqu ymm1,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 0a}
00f5h add rcx,0e0h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c1 e0 00 00 00}
00fch vlddqu ymm2,ymmword ptr [rcx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 11}
0100h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
0108h lea rdx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 04}
010dh vpbroadcastd ymm3,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 04}
0114h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
0118h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
011ch vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
0121h vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
0127h mov dword ptr [rsp],0ffh                ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff 00 00 00}
012eh lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
0132h vpbroadcastw ymm2,word ptr [rsp]        ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[6]{c4 e2 7d 79 14 24}
0138h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
013ch vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0140h vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
0144h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
014ah mov edx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 07 00 00 00}
014fh vmovd xmm1,edx                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e ca}
0153h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0157h vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
015bh mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
015dh shl rdx,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 20}
0161h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0164h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0167h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
016bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack32(in byte src, int count, ref uint target), hex://intrinsics/bitpack?unpack32#unpack32_(8u~in,32i,32u~ref)
; unpack32_(8u~in,32i,32u~ref)[96] = {0x50,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x04,0x24,0x33,0xc0,0x48,0x89,0x04,0x24,0x48,0x8d,0x04,0x24,0x45,0x33,0xc9,0x85,0xd2,0x7e,0x3d,0x4d,0x63,0xd1,0x46,0x0f,0xb6,0x14,0x11,0x49,0xbb,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xab,0xf5,0xd3,0x4c,0x89,0x10,0x4c,0x8b,0xd0,0xc4,0xc2,0x7d,0x31,0x02,0x45,0x8b,0xd1,0x41,0xc1,0xe2,0x03,0x4d,0x63,0xd2,0x4f,0x8d,0x14,0x90,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc1,0x44,0x3b,0xca,0x7c,0xc3,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0010h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0014h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0017h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0019h jle short 0058h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3d}
001bh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001eh movzx r10d,byte ptr [rcx+r10]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 14 11}
0023h mov r11,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 01 01 01 01 01 01 01 01}
002dh pdep r10,r10,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 ab f5 d3}
0032h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0035h mov r10,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d0}
0038h vpmovzxbd ymm0,qword ptr [r10]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 02}
003dh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0040h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0044h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0047h lea r10,[r8+r10*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 90}
004bh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0050h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0053h cmp r9d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b ca}
0056h jl short 001bh                          ; JL rel8 || 7C cb || encoded[2]{7c c3}
0058h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005bh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack32(in byte src, int blocks, in Block256<uint> target), hex://intrinsics/bitpack?unpack32#unpack32_(8u~in,32i,b256x32u~in)
; unpack32_(8u~in,32i,b256x32u~in)[99] = {0x50,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x04,0x24,0x33,0xc0,0x48,0x89,0x04,0x24,0x48,0x8d,0x04,0x24,0x45,0x33,0xc9,0x85,0xd2,0x7e,0x40,0x4d,0x63,0xd1,0x46,0x0f,0xb6,0x14,0x11,0x49,0xbb,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xab,0xf5,0xd3,0x4c,0x89,0x10,0x4c,0x8b,0xd0,0xc4,0xc2,0x7d,0x31,0x02,0x4d,0x8b,0x10,0x45,0x8b,0xd9,0x41,0xc1,0xe3,0x03,0x4d,0x63,0xdb,0x4f,0x8d,0x14,0x9a,0xc4,0xc1,0x7e,0x7f,0x02,0x41,0xff,0xc1,0x44,0x3b,0xca,0x7c,0xc0,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0010h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0014h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0017h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0019h jle short 005bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 40}
001bh movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001eh movzx r10d,byte ptr [rcx+r10]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 14 11}
0023h mov r11,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 01 01 01 01 01 01 01 01}
002dh pdep r10,r10,r11                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 ab f5 d3}
0032h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0035h mov r10,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d0}
0038h vpmovzxbd ymm0,qword ptr [r10]          ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 c2 7d 31 02}
003dh mov r10,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 10}
0040h mov r11d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d9}
0043h shl r11d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e3 03}
0047h movsxd r11,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 db}
004ah lea r10,[r10+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 9a}
004eh vmovdqu ymmword ptr [r10],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7e 7f 02}
0053h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0056h cmp r9d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b ca}
0059h jl short 001bh                          ; JL rel8 || 7C cb || encoded[2]{7c c0}
005bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0062h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack8(byte packed, ref byte unpacked), hex://intrinsics/bitpack?unpack8#unpack8_(8u,8u~ref)
; unpack8_(8u,8u~ref)[27] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x48,0xb9,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xfb,0xf5,0xc1,0x48,0x89,0x02,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0012h pdep rax,rax,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 fb f5 c1}
0017h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack8(ushort packed, ref byte unpacked), hex://intrinsics/bitpack?unpack8#unpack8_(16u,8u~ref)
; unpack8_(16u,8u~ref)[48] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0x0f,0xb6,0xc8,0x49,0xb8,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xc2,0xf3,0xf5,0xc8,0x48,0x89,0x0a,0x48,0x83,0xc2,0x08,0xc1,0xf8,0x08,0x0f,0xb6,0xc0,0xc4,0xc2,0xfb,0xf5,0xc0,0x48,0x89,0x02,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c8}
000bh mov r8,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 01 01 01 01 01 01 01 01}
0015h pdep rcx,rcx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 c8}
001ah mov [rdx],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 0a}
001dh add rdx,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 08}
0021h sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
0024h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0027h pdep rax,rax,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c0}
002ch mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack8(uint packed, ref byte unpacked), hex://intrinsics/bitpack?unpack8#unpack8_(32u,8u~ref)
; unpack8_(32u,8u~ref)[101] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x49,0xb8,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xc2,0xfb,0xf5,0xc0,0x48,0x89,0x02,0x48,0x8d,0x42,0x08,0x44,0x8b,0xc1,0x41,0xc1,0xe8,0x08,0x45,0x0f,0xb6,0xc0,0x49,0xb9,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xbb,0xf5,0xc1,0x4c,0x89,0x00,0x48,0x8d,0x42,0x10,0x44,0x8b,0xc1,0x41,0xc1,0xe8,0x10,0x45,0x0f,0xb6,0xc0,0xc4,0x42,0xbb,0xf5,0xc1,0x4c,0x89,0x00,0x48,0x83,0xc2,0x18,0xc1,0xe9,0x18,0x0f,0xb6,0xc1,0xc4,0xc2,0xfb,0xf5,0xc1,0x48,0x89,0x02,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov r8,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 01 01 01 01 01 01 01 01}
0012h pdep rax,rax,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c0}
0017h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
001ah lea rax,[rdx+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 42 08}
001eh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0021h shr r8d,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 08}
0025h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0029h mov r9,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 01 01 01 01 01 01 01 01}
0033h pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
0038h mov [rax],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 00}
003bh lea rax,[rdx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 42 10}
003fh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0042h shr r8d,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 10}
0046h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
004ah pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
004fh mov [rax],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 00}
0052h add rdx,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 18}
0056h shr ecx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 18}
0059h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
005ch pdep rax,rax,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c1}
0061h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0064h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack8(ulong packed, ref byte unpacked), hex://intrinsics/bitpack?unpack8#unpack8_(64u,8u~ref)
; unpack8_(64u,8u~ref)[189] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0xc1,0x44,0x0f,0xb6,0xc0,0x49,0xb9,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xbb,0xf5,0xc1,0x4c,0x89,0x02,0x4c,0x8d,0x42,0x08,0x44,0x8b,0xc8,0x41,0xc1,0xe9,0x08,0x45,0x0f,0xb6,0xc9,0x49,0xba,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4c,0x8d,0x42,0x10,0x44,0x8b,0xc8,0x41,0xc1,0xe9,0x10,0x45,0x0f,0xb6,0xc9,0xc4,0x42,0xb3,0xf5,0xca,0x4d,0x89,0x08,0x4c,0x8d,0x42,0x18,0xc1,0xe8,0x18,0x0f,0xb6,0xc0,0xc4,0xc2,0xfb,0xf5,0xc2,0x49,0x89,0x00,0x48,0xc1,0xe9,0x20,0x8b,0xc1,0x48,0x83,0xc2,0x20,0x0f,0xb6,0xc8,0xc4,0xc2,0xf3,0xf5,0xca,0x48,0x89,0x0a,0x48,0x8d,0x4a,0x08,0x44,0x8b,0xc0,0x41,0xc1,0xe8,0x08,0x45,0x0f,0xb6,0xc0,0xc4,0x42,0xbb,0xf5,0xc2,0x4c,0x89,0x01,0x48,0x8d,0x4a,0x10,0x44,0x8b,0xc0,0x41,0xc1,0xe8,0x10,0x45,0x0f,0xb6,0xc0,0xc4,0x42,0xbb,0xf5,0xc2,0x4c,0x89,0x01,0x48,0x83,0xc2,0x18,0xc1,0xe8,0x18,0x0f,0xb6,0xc0,0xc4,0xc2,0xfb,0xf5,0xc2,0x48,0x89,0x02,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
000bh mov r9,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 01 01 01 01 01 01 01 01}
0015h pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
001ah mov [rdx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 02}
001dh lea r8,[rdx+8]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 42 08}
0021h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0024h shr r9d,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 08}
0028h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
002ch mov r10,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 01 01 01 01 01 01 01 01}
0036h pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
003bh mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
003eh lea r8,[rdx+10h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 42 10}
0042h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0045h shr r9d,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 10}
0049h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
004dh pdep r9,r9,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 b3 f5 ca}
0052h mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
0055h lea r8,[rdx+18h]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 42 18}
0059h shr eax,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 18}
005ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005fh pdep rax,rax,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c2}
0064h mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0067h shr rcx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 20}
006bh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
006dh add rdx,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 20}
0071h movzx ecx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c8}
0074h pdep rcx,rcx,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 ca}
0079h mov [rdx],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 0a}
007ch lea rcx,[rdx+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4a 08}
0080h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0083h shr r8d,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 08}
0087h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
008bh pdep r8,r8,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c2}
0090h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0093h lea rcx,[rdx+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4a 10}
0097h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
009ah shr r8d,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 10}
009eh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00a2h pdep r8,r8,r10                          ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c2}
00a7h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
00aah add rdx,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 18}
00aeh shr eax,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 18}
00b1h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b4h pdep rax,rax,r10                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c2}
00b9h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
00bch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack8(byte packed, Span<byte> unpacked), hex://intrinsics/bitpack?unpack8#unpack8_(8u,span8u)
; unpack8_(8u,span8u)[30] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x0f,0xb6,0xd1,0x48,0xb9,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xe2,0xeb,0xf5,0xd1,0x48,0x89,0x10,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
000bh mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0015h pdep rdx,rdx,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 eb f5 d1}
001ah mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack8(ushort packed, Span<byte> unpacked), hex://intrinsics/bitpack?unpack8#unpack8_(16u,span8u)
; unpack8_(16u,span8u)[51] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x0f,0xb7,0xd1,0x0f,0xb6,0xca,0x49,0xb8,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xc2,0xf3,0xf5,0xc8,0x48,0x89,0x08,0x48,0x83,0xc0,0x08,0xc1,0xfa,0x08,0x0f,0xb6,0xd2,0xc4,0xc2,0xeb,0xf5,0xd0,0x48,0x89,0x10,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000eh mov r8,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 01 01 01 01 01 01 01 01}
0018h pdep rcx,rcx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 c8}
001dh mov [rax],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 08}
0020h add rax,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 08}
0024h sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
0027h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002ah pdep rdx,rdx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d0}
002fh mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void unpack8(uint packed, Span<byte> unpacked), hex://intrinsics/bitpack?unpack8#unpack8_(32u,span8u)
; unpack8_(32u,span8u)[104] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x0f,0xb6,0xd1,0x49,0xb8,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0xc2,0xeb,0xf5,0xd0,0x48,0x89,0x10,0x48,0x8d,0x50,0x08,0x44,0x8b,0xc1,0x41,0xc1,0xe8,0x08,0x45,0x0f,0xb6,0xc0,0x49,0xb9,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0xc4,0x42,0xbb,0xf5,0xc1,0x4c,0x89,0x02,0x48,0x8d,0x50,0x10,0x44,0x8b,0xc1,0x41,0xc1,0xe8,0x10,0x45,0x0f,0xb6,0xc0,0xc4,0x42,0xbb,0xf5,0xc1,0x4c,0x89,0x02,0x48,0x83,0xc0,0x18,0xc1,0xe9,0x18,0x0f,0xb6,0xd1,0xc4,0xc2,0xeb,0xf5,0xd1,0x48,0x89,0x10,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
000bh mov r8,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 01 01 01 01 01 01 01 01}
0015h pdep rdx,rdx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d0}
001ah mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
001dh lea rdx,[rax+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 08}
0021h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0024h shr r8d,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 08}
0028h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
002ch mov r9,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 01 01 01 01 01 01 01 01}
0036h pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
003bh mov [rdx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 02}
003eh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0042h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0045h shr r8d,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 10}
0049h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
004dh pdep r8,r8,r9                           ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 42 bb f5 c1}
0052h mov [rdx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 02}
0055h add rax,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 18}
0059h shr ecx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 18}
005ch movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
005fh pdep rdx,rdx,r9                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d1}
0064h mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
