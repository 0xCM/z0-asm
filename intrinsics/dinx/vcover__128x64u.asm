; Vector128<byte> vcover(Vector128<ulong> src, out Vector128<byte> dst)
; vcover__128x64u[7ff7c6beca10h, 7ff7c6beca4fh][63] = {c5 f8 77 66 90 c5 f9 10 02 c5 f8 28 c8 c5 f1 73 f1 20 c5 f1 ef c0 c5 f1 72 f0 10 c5 f1 ef c0 c5 f1 71 f0 08 c5 f1 eb c0 c4 c1 79 11 00 c4 c1 79 11 00 c4 c1 79 11 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:02:125
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000dh vpsllq xmm1,xmm1,20h                    ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f1 20}
0012h vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
0016h vpslld xmm1,xmm0,10h                    ; VPSLLD xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 72 /6 ib || encoded[5]{c5 f1 72 f0 10}
001bh vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
001fh vpsllw xmm1,xmm0,8                      ; VPSLLW xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 71 /6 ib || encoded[5]{c5 f1 71 f0 08}
0024h vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0028h vmovupd [r8],xmm0                       ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c4 c1 79 11 00}
002dh vmovupd [r8],xmm0                       ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c4 c1 79 11 00}
0032h vmovupd [r8],xmm0                       ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c4 c1 79 11 00}
0037h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
003bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
