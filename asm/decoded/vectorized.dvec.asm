------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vbroadcast(N256 w, byte lo, byte hi), hex://vectorized/dvec?vbroadcast#vbroadcast_(n256,8u,8u)
; vbroadcast_(n256,8u,8u)[73] = {0x50,0xc5,0xf8,0x77,0x90,0x41,0x0f,0xb6,0xc0,0x88,0x44,0x24,0x04,0x48,0x8d,0x44,0x24,0x04,0xc4,0xe2,0x79,0x78,0x44,0x24,0x04,0x41,0x0f,0xb6,0xc1,0x88,0x04,0x24,0x48,0x8d,0x04,0x24,0xc4,0xe2,0x79,0x78,0x0c,0x24,0xc5,0xec,0x57,0xd2,0xc4,0xe3,0x6d,0x38,0xc0,0x00,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h mov [rsp+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 04}
000dh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0012h vpbroadcastb xmm0,byte ptr [rsp+4]      ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 44 24 04}
0019h movzx eax,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c1}
001dh mov [rsp],al                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 04 24}
0020h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0024h vpbroadcastb xmm1,byte ptr [rsp]        ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[6]{c4 e2 79 78 0c 24}
002ah vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
002eh vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
0034h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
003ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0044h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vbroadcast(N256 w, ushort lo, ushort hi), hex://vectorized/dvec?vbroadcast#vbroadcast_(n256,16u,16u)
; vbroadcast_(n256,16u,16u)[75] = {0x50,0xc5,0xf8,0x77,0x90,0x41,0x0f,0xb7,0xc0,0x66,0x89,0x44,0x24,0x04,0x48,0x8d,0x44,0x24,0x04,0xc4,0xe2,0x79,0x79,0x44,0x24,0x04,0x41,0x0f,0xb7,0xc1,0x66,0x89,0x04,0x24,0x48,0x8d,0x04,0x24,0xc4,0xe2,0x79,0x79,0x0c,0x24,0xc5,0xec,0x57,0xd2,0xc4,0xe3,0x6d,0x38,0xc0,0x00,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0009h mov [rsp+4],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 04}
000eh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0013h vpbroadcastw xmm0,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 44 24 04}
001ah movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
001eh mov [rsp],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 04 24}
0022h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0026h vpbroadcastw xmm1,word ptr [rsp]        ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[6]{c4 e2 79 79 0c 24}
002ch vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0030h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
0036h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
003ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0046h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vbroadcast(N256 w, uint lo, uint hi), hex://vectorized/dvec?vbroadcast#vbroadcast_(n256,32u,32u)
; vbroadcast_(n256,32u,32u)[67] = {0x50,0xc5,0xf8,0x77,0x90,0x44,0x89,0x44,0x24,0x04,0x48,0x8d,0x44,0x24,0x04,0xc4,0xe2,0x79,0x58,0x44,0x24,0x04,0x44,0x89,0x0c,0x24,0x48,0x8d,0x04,0x24,0xc4,0xe2,0x79,0x58,0x0c,0x24,0xc5,0xec,0x57,0xd2,0xc4,0xe3,0x6d,0x38,0xc0,0x00,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp+4],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 04}
000ah lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
000fh vpbroadcastd xmm0,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 44 24 04}
0016h mov [rsp],r9d                           ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 0c 24}
001ah lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
001eh vpbroadcastd xmm1,dword ptr [rsp]       ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[6]{c4 e2 79 58 0c 24}
0024h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0028h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
002eh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0034h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0038h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vbroadcast(N256 w, ulong lo, ulong hi), hex://vectorized/dvec?vbroadcast#vbroadcast_(n256,64u,64u)
; vbroadcast_(n256,64u,64u)[72] = {0x48,0x83,0xec,0x18,0xc5,0xf8,0x77,0x4c,0x89,0x44,0x24,0x10,0x48,0x8d,0x44,0x24,0x10,0xc4,0xe2,0x79,0x59,0x44,0x24,0x10,0x4c,0x89,0x4c,0x24,0x08,0x48,0x8d,0x44,0x24,0x08,0xc4,0xe2,0x79,0x59,0x4c,0x24,0x08,0xc5,0xec,0x57,0xd2,0xc4,0xe3,0x6d,0x38,0xc0,0x00,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov [rsp+10h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 10}
000ch lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0011h vpbroadcastq xmm0,qword ptr [rsp+10h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 44 24 10}
0018h mov [rsp+8],r9                          ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 4c 24 08}
001dh lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0022h vpbroadcastq xmm1,qword ptr [rsp+8]     ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 4c 24 08}
0029h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
002dh vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
0033h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0039h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vbroadcast(N128 n, sbyte src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n128,8i)
; vbroadcast_(n128,8i)[30] = {0xc5,0xf8,0x77,0x66,0x90,0x44,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x79,0x78,0x44,0x24,0x18,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastb xmm0,byte ptr [rsp+18h]    ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 44 24 18}
0016h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vbroadcast(N128 n, byte src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n128,8u)
; vbroadcast_(n128,8u)[30] = {0xc5,0xf8,0x77,0x66,0x90,0x44,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x79,0x78,0x44,0x24,0x18,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastb xmm0,byte ptr [rsp+18h]    ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 44 24 18}
0016h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vbroadcast(N128 n, short src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n128,16i)
; vbroadcast_(n128,16i)[30] = {0xc5,0xf8,0x77,0x66,0x90,0x44,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x79,0x79,0x44,0x24,0x18,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastw xmm0,word ptr [rsp+18h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 44 24 18}
0016h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vbroadcast(N128 n, ushort src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n128,16u)
; vbroadcast_(n128,16u)[30] = {0xc5,0xf8,0x77,0x66,0x90,0x44,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x79,0x79,0x44,0x24,0x18,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastw xmm0,word ptr [rsp+18h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 44 24 18}
0016h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vbroadcast(N128 n, int src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n128,32i)
; vbroadcast_(n128,32i)[30] = {0xc5,0xf8,0x77,0x66,0x90,0x44,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x79,0x58,0x44,0x24,0x18,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastd xmm0,dword ptr [rsp+18h]   ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 44 24 18}
0016h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vbroadcast(N128 n, uint src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n128,32u)
; vbroadcast_(n128,32u)[30] = {0xc5,0xf8,0x77,0x66,0x90,0x44,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x79,0x58,0x44,0x24,0x18,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastd xmm0,dword ptr [rsp+18h]   ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 44 24 18}
0016h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vbroadcast(N128 n, long src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n128,64i)
; vbroadcast_(n128,64i)[30] = {0xc5,0xf8,0x77,0x66,0x90,0x4c,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x79,0x59,0x44,0x24,0x18,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastq xmm0,qword ptr [rsp+18h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 44 24 18}
0016h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vbroadcast(N128 n, ulong src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n128,64u)
; vbroadcast_(n128,64u)[30] = {0xc5,0xf8,0x77,0x66,0x90,0x4c,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x79,0x59,0x44,0x24,0x18,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastq xmm0,qword ptr [rsp+18h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 44 24 18}
0016h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vbroadcast(N256 n, sbyte src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n256,8i)
; vbroadcast_(n256,8i)[33] = {0xc5,0xf8,0x77,0x66,0x90,0x44,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x7d,0x78,0x44,0x24,0x18,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastb ymm0,byte ptr [rsp+18h]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 44 24 18}
0016h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vbroadcast(N256 n, byte src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n256,8u)
; vbroadcast_(n256,8u)[33] = {0xc5,0xf8,0x77,0x66,0x90,0x44,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x7d,0x78,0x44,0x24,0x18,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastb ymm0,byte ptr [rsp+18h]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 44 24 18}
0016h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vbroadcast(N256 n, short src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n256,16i)
; vbroadcast_(n256,16i)[33] = {0xc5,0xf8,0x77,0x66,0x90,0x44,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x7d,0x79,0x44,0x24,0x18,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastw ymm0,word ptr [rsp+18h]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 44 24 18}
0016h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vbroadcast(N256 n, ushort src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n256,16u)
; vbroadcast_(n256,16u)[33] = {0xc5,0xf8,0x77,0x66,0x90,0x44,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x7d,0x79,0x44,0x24,0x18,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastw ymm0,word ptr [rsp+18h]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 44 24 18}
0016h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vbroadcast(N256 n, int src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n256,32i)
; vbroadcast_(n256,32i)[33] = {0xc5,0xf8,0x77,0x66,0x90,0x44,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x7d,0x58,0x44,0x24,0x18,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastd ymm0,dword ptr [rsp+18h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 18}
0016h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vbroadcast(N256 n, uint src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n256,32u)
; vbroadcast_(n256,32u)[33] = {0xc5,0xf8,0x77,0x66,0x90,0x44,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x7d,0x58,0x44,0x24,0x18,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastd ymm0,dword ptr [rsp+18h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 18}
0016h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vbroadcast(N256 n, long src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n256,64i)
; vbroadcast_(n256,64i)[33] = {0xc5,0xf8,0x77,0x66,0x90,0x4c,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x7d,0x59,0x44,0x24,0x18,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastq ymm0,qword ptr [rsp+18h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 44 24 18}
0016h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vbroadcast(N256 n, ulong src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n256,64u)
; vbroadcast_(n256,64u)[33] = {0xc5,0xf8,0x77,0x66,0x90,0x4c,0x89,0x44,0x24,0x18,0x48,0x8d,0x44,0x24,0x18,0xc4,0xe2,0x7d,0x59,0x44,0x24,0x18,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastq ymm0,qword ptr [rsp+18h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 44 24 18}
0016h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vbroadcast(N256 n, float src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n256,32f)
; vbroadcast_(n256,32f)[29] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x11,0x54,0x24,0x18,0xc4,0xe2,0x7d,0x18,0x44,0x24,0x18,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss dword ptr [rsp+18h],xmm2         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 54 24 18}
000bh vbroadcastss ymm0,dword ptr [rsp+18h]   ; VBROADCASTSS ymm1, xmm2/m32 || VEX.256.66.0F38.W0 18 /r || encoded[7]{c4 e2 7d 18 44 24 18}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vbroadcast(N256 n, double src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n256,64f)
; vbroadcast_(n256,64f)[29] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x11,0x54,0x24,0x18,0xc4,0xe2,0x7d,0x19,0x44,0x24,0x18,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd qword ptr [rsp+18h],xmm2         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 54 24 18}
000bh vbroadcastsd ymm0,qword ptr [rsp+18h]   ; VBROADCASTSD ymm1, xmm2/m64 || VEX.256.66.0F38.W0 19 /r || encoded[7]{c4 e2 7d 19 44 24 18}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vbroadcast(N128 n128, float src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n128,32f)
; vbroadcast_(n128,32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x11,0x54,0x24,0x18,0xc4,0xe2,0x79,0x18,0x44,0x24,0x18,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss dword ptr [rsp+18h],xmm2         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 54 24 18}
000bh vbroadcastss xmm0,dword ptr [rsp+18h]   ; VBROADCASTSS xmm1, xmm2/m32 || VEX.128.66.0F38.W0 18 /r || encoded[7]{c4 e2 79 18 44 24 18}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vbroadcast(N128 n128, double src), hex://vectorized/dvec?vbroadcast#vbroadcast_(n128,64f)
; vbroadcast_(n128,64f)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x12,0xc2,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovddup xmm0,xmm2                      ; VMOVDDUP xmm1, xmm2/m64 || VEX.128.F2.0F.WIG 12 /r || encoded[4]{c5 fb 12 c2}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vconcat(Vector128<byte> lo, Vector128<byte> hi), hex://vectorized/dvec?vconcat#vconcat_(v128x8u,v128x8u)
; vconcat_(v128x8u,v128x8u)[41] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x57,0xc0,0xc5,0xf9,0x10,0x0a,0xc4,0xe3,0x7d,0x38,0xc1,0x00,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vinserti128 ymm0,ymm0,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 00}
0013h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0018h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
001eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vconcat(Vector128<sbyte> lo, Vector128<sbyte> hi), hex://vectorized/dvec?vconcat#vconcat_(v128x8i,v128x8i)
; vconcat_(v128x8i,v128x8i)[41] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x57,0xc0,0xc5,0xf9,0x10,0x0a,0xc4,0xe3,0x7d,0x38,0xc1,0x00,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vinserti128 ymm0,ymm0,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 00}
0013h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0018h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
001eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vconcat(Vector128<short> lo, Vector128<short> hi), hex://vectorized/dvec?vconcat#vconcat_(v128x16i,v128x16i)
; vconcat_(v128x16i,v128x16i)[41] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x57,0xc0,0xc5,0xf9,0x10,0x0a,0xc4,0xe3,0x7d,0x38,0xc1,0x00,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vinserti128 ymm0,ymm0,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 00}
0013h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0018h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
001eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vconcat(Vector128<ushort> lo, Vector128<ushort> hi), hex://vectorized/dvec?vconcat#vconcat_(v128x16u,v128x16u)
; vconcat_(v128x16u,v128x16u)[41] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x57,0xc0,0xc5,0xf9,0x10,0x0a,0xc4,0xe3,0x7d,0x38,0xc1,0x00,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vinserti128 ymm0,ymm0,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 00}
0013h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0018h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
001eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vconcat(Vector128<int> lo, Vector128<int> hi), hex://vectorized/dvec?vconcat#vconcat_(v128x32i,v128x32i)
; vconcat_(v128x32i,v128x32i)[41] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x57,0xc0,0xc5,0xf9,0x10,0x0a,0xc4,0xe3,0x7d,0x38,0xc1,0x00,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vinserti128 ymm0,ymm0,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 00}
0013h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0018h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
001eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vconcat(Vector128<uint> lo, Vector128<uint> hi), hex://vectorized/dvec?vconcat#vconcat_(v128x32u,v128x32u)
; vconcat_(v128x32u,v128x32u)[41] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x57,0xc0,0xc5,0xf9,0x10,0x0a,0xc4,0xe3,0x7d,0x38,0xc1,0x00,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vinserti128 ymm0,ymm0,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 00}
0013h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0018h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
001eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vconcat(Vector128<long> lo, Vector128<long> hi), hex://vectorized/dvec?vconcat#vconcat_(v128x64i,v128x64i)
; vconcat_(v128x64i,v128x64i)[41] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x57,0xc0,0xc5,0xf9,0x10,0x0a,0xc4,0xe3,0x7d,0x38,0xc1,0x00,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vinserti128 ymm0,ymm0,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 00}
0013h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0018h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
001eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vconcat(Vector128<ulong> lo, Vector128<ulong> hi), hex://vectorized/dvec?vconcat#vconcat_(v128x64u,v128x64u)
; vconcat_(v128x64u,v128x64u)[41] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x57,0xc0,0xc5,0xf9,0x10,0x0a,0xc4,0xe3,0x7d,0x38,0xc1,0x00,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vinserti128 ymm0,ymm0,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 00}
0013h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0018h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
001eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vconcat(Vector128<float> lo, Vector128<float> hi), hex://vectorized/dvec?vconcat#vconcat_(v128x32f,v128x32f)
; vconcat_(v128x32f,v128x32f)[41] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x57,0xc0,0xc5,0xf9,0x10,0x0a,0xc4,0xe3,0x7d,0x18,0xc1,0x00,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xe3,0x7d,0x18,0xc1,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vinsertf128 ymm0,ymm0,xmm1,0            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 7d 18 c1 00}
0013h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0018h vinsertf128 ymm0,ymm0,xmm1,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 7d 18 c1 01}
001eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vconcat(Vector128<double> lo, Vector128<double> hi), hex://vectorized/dvec?vconcat#vconcat_(v128x64f,v128x64f)
; vconcat_(v128x64f,v128x64f)[41] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x57,0xc0,0xc5,0xf9,0x10,0x0a,0xc4,0xe3,0x7d,0x18,0xc1,0x00,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xe3,0x7d,0x18,0xc1,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vinsertf128 ymm0,ymm0,xmm1,0            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 7d 18 c1 00}
0013h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0018h vinsertf128 ymm0,ymm0,xmm1,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 7d 18 c1 01}
001eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vscalar(N128 n, sbyte a), hex://vectorized/dvec?vscalar#vscalar_(n128,8i)
; vscalar_(n128,8i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x0f,0xbe,0xc0,0xc5,0xf9,0x6e,0xc0,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vscalar(N128 n, byte a), hex://vectorized/dvec?vscalar#vscalar_(n128,8u)
; vscalar_(n128,8u)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x41,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc0,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vscalar(N128 n, short a), hex://vectorized/dvec?vscalar#vscalar_(n128,16i)
; vscalar_(n128,16i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x0f,0xbf,0xc0,0xc5,0xf9,0x6e,0xc0,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vscalar(N128 n, ushort a), hex://vectorized/dvec?vscalar#vscalar_(n128,16u)
; vscalar_(n128,16u)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x41,0x0f,0xb7,0xc0,0xc5,0xf9,0x6e,0xc0,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vscalar(N128 n, int a), hex://vectorized/dvec?vscalar#vscalar_(n128,32i)
; vscalar_(n128,32i)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x79,0x6e,0xc0,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovd xmm0,r8d                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[5]{c4 c1 79 6e c0}
000ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vscalar(N128 n, uint a), hex://vectorized/dvec?vscalar#vscalar_(n128,32u)
; vscalar_(n128,32u)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x79,0x6e,0xc0,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovd xmm0,r8d                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[5]{c4 c1 79 6e c0}
000ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vscalar(N128 n, long a), hex://vectorized/dvec?vscalar#vscalar_(n128,64i)
; vscalar_(n128,64i)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0xf9,0x6e,0xc0,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovq xmm0,r8                           ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c0}
000ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vscalar(N128 n, ulong a), hex://vectorized/dvec?vscalar#vscalar_(n128,64u)
; vscalar_(n128,64u)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0xf9,0x6e,0xc0,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovq xmm0,r8                           ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c0}
000ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vscalar(N128 n, float a), hex://vectorized/dvec?vscalar#vscalar_(n128,32f)
; vscalar_(n128,32f)[13] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x11,0x11,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd [rcx],xmm2                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 11}
0009h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vscalar(N128 n, double a), hex://vectorized/dvec?vscalar#vscalar_(n128,64f)
; vscalar_(n128,64f)[13] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x11,0x11,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd [rcx],xmm2                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 11}
0009h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vscalar(N256 n, sbyte a), hex://vectorized/dvec?vscalar#vscalar_(n256,8i)
; vscalar_(n256,8i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x0f,0xbe,0xc0,0xc5,0xf9,0x6e,0xc0,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vscalar(N256 n, byte a), hex://vectorized/dvec?vscalar#vscalar_(n256,8u)
; vscalar_(n256,8u)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x41,0x0f,0xb6,0xc0,0xc5,0xf9,0x6e,0xc0,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vscalar(N256 n, short a), hex://vectorized/dvec?vscalar#vscalar_(n256,16i)
; vscalar_(n256,16i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x0f,0xbf,0xc0,0xc5,0xf9,0x6e,0xc0,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vscalar(N256 n, ushort a), hex://vectorized/dvec?vscalar#vscalar_(n256,16u)
; vscalar_(n256,16u)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x41,0x0f,0xb7,0xc0,0xc5,0xf9,0x6e,0xc0,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0009h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vscalar(N256 n, int a), hex://vectorized/dvec?vscalar#vscalar_(n256,32i)
; vscalar_(n256,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x79,0x6e,0xc0,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovd xmm0,r8d                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[5]{c4 c1 79 6e c0}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vscalar(N256 n, uint a), hex://vectorized/dvec?vscalar#vscalar_(n256,32u)
; vscalar_(n256,32u)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x79,0x6e,0xc0,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovd xmm0,r8d                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[5]{c4 c1 79 6e c0}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vscalar(N256 n, long a), hex://vectorized/dvec?vscalar#vscalar_(n256,64i)
; vscalar_(n256,64i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0xf9,0x6e,0xc0,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovq xmm0,r8                           ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c0}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vscalar(N256 n, ulong a), hex://vectorized/dvec?vscalar#vscalar_(n256,64u)
; vscalar_(n256,64u)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0xf9,0x6e,0xc0,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovq xmm0,r8                           ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c0}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vscalar(N256 n, float a), hex://vectorized/dvec?vscalar#vscalar_(n256,32f)
; vscalar_(n256,32f)[16] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x11,0x11,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0009h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vscalar(N256 n, double a), hex://vectorized/dvec?vscalar#vscalar_(n256,64f)
; vscalar_(n256,64f)[16] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x11,0x11,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0009h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<sbyte> src, ref sbyte dst), hex://vectorized/dvec?vstore#vstore_(v128x8i,8i~ref)
; vstore_(v128x8i,8i~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<byte> src, ref byte dst), hex://vectorized/dvec?vstore#vstore_(v128x8u,8u~ref)
; vstore_(v128x8u,8u~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<short> src, ref short dst), hex://vectorized/dvec?vstore#vstore_(v128x16i,16i~ref)
; vstore_(v128x16i,16i~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<ushort> src, ref ushort dst), hex://vectorized/dvec?vstore#vstore_(v128x16u,16u~ref)
; vstore_(v128x16u,16u~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<int> src, ref int dst), hex://vectorized/dvec?vstore#vstore_(v128x32i,32i~ref)
; vstore_(v128x32i,32i~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<uint> src, ref uint dst), hex://vectorized/dvec?vstore#vstore_(v128x32u,32u~ref)
; vstore_(v128x32u,32u~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<long> src, ref long dst), hex://vectorized/dvec?vstore#vstore_(v128x64i,64i~ref)
; vstore_(v128x64i,64i~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<ulong> src, ref ulong dst), hex://vectorized/dvec?vstore#vstore_(v128x64u,64u~ref)
; vstore_(v128x64u,64u~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<float> src, ref float dst), hex://vectorized/dvec?vstore#vstore_(v128x32f,32f~ref)
; vstore_(v128x32f,32f~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf8,0x11,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovups [rdx],xmm0                      ; VMOVUPS xmm2/m128, xmm1 || VEX.128.0F.WIG 11 /r || encoded[4]{c5 f8 11 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<double> src, ref double dst), hex://vectorized/dvec?vstore#vstore_(v128x64f,64f~ref)
; vstore_(v128x64f,64f~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x11,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd [rdx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<sbyte> src, ref sbyte dst), hex://vectorized/dvec?vstore#vstore_(v256x8i,8i~ref)
; vstore_(v256x8i,8i~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<byte> src, ref byte dst), hex://vectorized/dvec?vstore#vstore_(v256x8u,8u~ref)
; vstore_(v256x8u,8u~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<short> src, ref short dst), hex://vectorized/dvec?vstore#vstore_(v256x16i,16i~ref)
; vstore_(v256x16i,16i~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<ushort> src, ref ushort dst), hex://vectorized/dvec?vstore#vstore_(v256x16u,16u~ref)
; vstore_(v256x16u,16u~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<int> src, ref int dst), hex://vectorized/dvec?vstore#vstore_(v256x32i,32i~ref)
; vstore_(v256x32i,32i~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<uint> src, ref uint dst), hex://vectorized/dvec?vstore#vstore_(v256x32u,32u~ref)
; vstore_(v256x32u,32u~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<long> src, ref long dst), hex://vectorized/dvec?vstore#vstore_(v256x64i,64i~ref)
; vstore_(v256x64i,64i~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<ulong> src, ref ulong dst), hex://vectorized/dvec?vstore#vstore_(v256x64u,64u~ref)
; vstore_(v256x64u,64u~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<float> src, ref float dst), hex://vectorized/dvec?vstore#vstore_(v256x32f,32f~ref)
; vstore_(v256x32f,32f~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfc,0x11,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovups [rdx],ymm0                      ; VMOVUPS ymm2/m256, ymm1 || VEX.256.0F.WIG 11 /r || encoded[4]{c5 fc 11 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<double> src, ref double dst), hex://vectorized/dvec?vstore#vstore_(v256x64f,64f~ref)
; vstore_(v256x64f,64f~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfd,0x11,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<sbyte> src, ref sbyte dst, int offset), hex://vectorized/dvec?vstore#vstore_(v128x8i,8i~ref,32i)
; vstore_(v128x8i,8i~ref,32i)[20] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x03,0xc2,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
000fh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<byte> src, ref byte dst, int offset), hex://vectorized/dvec?vstore#vstore_(v128x8u,8u~ref,32i)
; vstore_(v128x8u,8u~ref,32i)[20] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x03,0xc2,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
000fh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<short> src, ref short dst, int offset), hex://vectorized/dvec?vstore#vstore_(v128x16i,16i~ref,32i)
; vstore_(v128x16i,16i~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x42,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 42}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<ushort> src, ref ushort dst, int offset), hex://vectorized/dvec?vstore#vstore_(v128x16u,16u~ref,32i)
; vstore_(v128x16u,16u~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x42,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 42}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<int> src, ref int dst, int offset), hex://vectorized/dvec?vstore#vstore_(v128x32i,32i~ref,32i)
; vstore_(v128x32i,32i~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x82,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 82}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<uint> src, ref uint dst, int offset), hex://vectorized/dvec?vstore#vstore_(v128x32u,32u~ref,32i)
; vstore_(v128x32u,32u~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x82,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 82}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<long> src, ref long dst, int offset), hex://vectorized/dvec?vstore#vstore_(v128x64i,64i~ref,32i)
; vstore_(v128x64i,64i~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0xc2,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c2}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<ulong> src, ref ulong dst, int offset), hex://vectorized/dvec?vstore#vstore_(v128x64u,64u~ref,32i)
; vstore_(v128x64u,64u~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0xc2,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c2}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<float> src, ref float dst, int offset), hex://vectorized/dvec?vstore#vstore_(v128x32f,32f~ref,32i)
; vstore_(v128x32f,32f~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x82,0xc5,0xf9,0x10,0x01,0xc5,0xf8,0x11,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 82}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovups [rax],xmm0                      ; VMOVUPS xmm2/m128, xmm1 || VEX.128.0F.WIG 11 /r || encoded[4]{c5 f8 11 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<double> src, ref double dst, int offset), hex://vectorized/dvec?vstore#vstore_(v128x64f,64f~ref,32i)
; vstore_(v128x64f,64f~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0xc2,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x11,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c2}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<sbyte> src, ref sbyte dst, int offset), hex://vectorized/dvec?vstore#vstore_(v256x8i,8i~ref,32i)
; vstore_(v256x8i,8i~ref,32i)[23] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x03,0xc2,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
000fh vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<byte> src, ref byte dst, int offset), hex://vectorized/dvec?vstore#vstore_(v256x8u,8u~ref,32i)
; vstore_(v256x8u,8u~ref,32i)[23] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x03,0xc2,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
000fh vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<short> src, ref short dst, int offset), hex://vectorized/dvec?vstore#vstore_(v256x16i,16i~ref,32i)
; vstore_(v256x16i,16i~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x42,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 42}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<ushort> src, ref ushort dst, int offset), hex://vectorized/dvec?vstore#vstore_(v256x16u,16u~ref,32i)
; vstore_(v256x16u,16u~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x42,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 42}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<int> src, ref int dst, int offset), hex://vectorized/dvec?vstore#vstore_(v256x32i,32i~ref,32i)
; vstore_(v256x32i,32i~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x82,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 82}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<uint> src, ref uint dst, int offset), hex://vectorized/dvec?vstore#vstore_(v256x32u,32u~ref,32i)
; vstore_(v256x32u,32u~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x82,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 82}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<long> src, ref long dst, int offset), hex://vectorized/dvec?vstore#vstore_(v256x64i,64i~ref,32i)
; vstore_(v256x64i,64i~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0xc2,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c2}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<ulong> src, ref ulong dst, int offset), hex://vectorized/dvec?vstore#vstore_(v256x64u,64u~ref,32i)
; vstore_(v256x64u,64u~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0xc2,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c2}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<float> src, ref float dst, int offset), hex://vectorized/dvec?vstore#vstore_(v256x32f,32f~ref,32i)
; vstore_(v256x32f,32f~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x82,0xc5,0xfd,0x10,0x01,0xc5,0xfc,0x11,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 82}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovups [rax],ymm0                      ; VMOVUPS ymm2/m256, ymm1 || VEX.256.0F.WIG 11 /r || encoded[4]{c5 fc 11 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<double> src, ref double dst, int offset), hex://vectorized/dvec?vstore#vstore_(v256x64f,64f~ref,32i)
; vstore_(v256x64f,64f~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0xc2,0xc5,0xfd,0x10,0x01,0xc5,0xfd,0x11,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c2}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
