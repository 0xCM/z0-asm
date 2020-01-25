; Vector256<sbyte> vsrlv<sbyte>(Vector256<sbyte> x, Vector256<sbyte> counts)
; vsrlv_g256x8i[7ff7c71faaa0h, 7ff7c71fab7bh][219] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 19 c2 00 c4 e2 7d 20 d2 c4 e3 7d 19 c0 01 c4 e2 7d 20 c0 c4 e3 7d 19 cb 00 c4 e2 7d 20 db c4 e3 7d 19 c9 01 c4 e2 7d 20 c9 c4 e3 7d 19 d4 00 c4 e2 7d 23 e4 c4 e3 7d 19 d2 01 c4 e2 7d 23 d2 c5 fc 28 eb c4 e3 7d 19 ed 00 c4 e2 7d 23 ed c4 e3 7d 19 db 01 c4 e2 7d 23 db c4 e2 5d 45 e5 c4 e2 6d 45 d3 c5 dd 6b d2 c4 e3 fd 00 d2 d8 c5 fc 28 d8 c4 e3 7d 19 db 00 c4 e2 7d 23 db c4 e3 7d 19 c0 01 c4 e2 7d 23 c0 c5 fc 28 e1 c4 e3 7d 19 e4 00 c4 e2 7d 23 e4 c4 e3 7d 19 c9 01 c4 e2 7d 23 c9 c4 e2 65 45 dc c4 e2 7d 45 c1 c5 e5 6b c0 c4 e3 fd 00 c0 d8 c5 ed 63 c0 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:09:928
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vextractf128 xmm2,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c2 00}
0014h vpmovsxbw ymm2,xmm2                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 d2}
0019h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001fh vpmovsxbw ymm0,xmm0                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 c0}
0024h vextractf128 xmm3,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 cb 00}
002ah vpmovsxbw ymm3,xmm3                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 db}
002fh vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
0035h vpmovsxbw ymm1,xmm1                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 c9}
003ah vextractf128 xmm4,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d4 00}
0040h vpmovsxwd ymm4,xmm4                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 e4}
0045h vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
004bh vpmovsxwd ymm2,xmm2                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 d2}
0050h vmovaps ymm5,ymm3                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 eb}
0054h vextractf128 xmm5,ymm5,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 ed 00}
005ah vpmovsxwd ymm5,xmm5                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 ed}
005fh vextractf128 xmm3,ymm3,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 db 01}
0065h vpmovsxwd ymm3,xmm3                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 db}
006ah vpsrlvd ymm4,ymm4,ymm5                  ; VPSRLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 45 /r || encoded[5]{c4 e2 5d 45 e5}
006fh vpsrlvd ymm2,ymm2,ymm3                  ; VPSRLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 45 /r || encoded[5]{c4 e2 6d 45 d3}
0074h vpackssdw ymm2,ymm4,ymm2                ; VPACKSSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6B /r || encoded[4]{c5 dd 6b d2}
0078h vpermq ymm2,ymm2,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 d2 d8}
007eh vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
0082h vextractf128 xmm3,ymm3,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 db 00}
0088h vpmovsxwd ymm3,xmm3                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 db}
008dh vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0093h vpmovsxwd ymm0,xmm0                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c0}
0098h vmovaps ymm4,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e1}
009ch vextractf128 xmm4,ymm4,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 e4 00}
00a2h vpmovsxwd ymm4,xmm4                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 e4}
00a7h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
00adh vpmovsxwd ymm1,xmm1                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c9}
00b2h vpsrlvd ymm3,ymm3,ymm4                  ; VPSRLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 45 /r || encoded[5]{c4 e2 65 45 dc}
00b7h vpsrlvd ymm0,ymm0,ymm1                  ; VPSRLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 45 /r || encoded[5]{c4 e2 7d 45 c1}
00bch vpackssdw ymm0,ymm3,ymm0                ; VPACKSSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6B /r || encoded[4]{c5 e5 6b c0}
00c0h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00c6h vpacksswb ymm0,ymm2,ymm0                ; VPACKSSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 63 /r || encoded[4]{c5 ed 63 c0}
00cah vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00d0h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00d4h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00d7h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00dah ret                                     ; RET || C3 || encoded[1]{c3}
