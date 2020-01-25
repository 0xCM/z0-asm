; Vector256<byte> vsrlr<byte>(Vector256<byte> x, Vector256<byte> count)
; vsrlr_g256x8u[7ff7c6c13fc0h, 7ff7c6c14027h][103] = {50 c5 f8 77 90 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 19 c9 00 c4 e3 7d 19 c2 00 c4 e2 7d 30 d2 c5 ed d1 d1 c4 e3 7d 19 c0 01 c4 e2 7d 30 c0 c5 fd d1 c1 c7 44 24 04 ff 00 00 00 48 8d 44 24 04 c4 e2 7d 79 4c 24 04 c5 ed db d1 c5 fd db c1 c5 ed 67 c0 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:06:229
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
0014h vextractf128 xmm2,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c2 00}
001ah vpmovzxbw ymm2,xmm2                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 d2}
001fh vpsrlw ymm2,ymm2,xmm1                   ; VPSRLW ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D1 /r || encoded[4]{c5 ed d1 d1}
0023h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0029h vpmovzxbw ymm0,xmm0                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c0}
002eh vpsrlw ymm0,ymm0,xmm1                   ; VPSRLW ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D1 /r || encoded[4]{c5 fd d1 c1}
0032h mov dword ptr [rsp+4],0ffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff 00 00 00}
003ah lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
003fh vpbroadcastw ymm1,word ptr [rsp+4]      ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 4c 24 04}
0046h vpand ymm2,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d1}
004ah vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
004eh vpackuswb ymm0,ymm2,ymm0                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 ed 67 c0}
0052h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0058h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
005ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0062h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
