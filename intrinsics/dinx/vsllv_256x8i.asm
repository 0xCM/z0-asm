; Vector256<sbyte> vsllv(Vector256<sbyte> src, Vector256<sbyte> counts)
; vsllv_256x8i[7ff7c71d6420h, 7ff7c71d64fbh][219] = {c5 f8 77 66 90 c5 fd 10 02 c4 e3 7d 19 c1 00 c4 e2 7d 20 c9 c4 e3 7d 19 c0 01 c4 e2 7d 20 c0 c4 c1 7d 10 10 c4 e3 7d 19 d3 00 c4 e2 7d 20 db c4 e3 7d 19 d2 01 c4 e2 7d 20 d2 c5 fc 28 e3 c4 e3 7d 19 cd 00 c4 e2 7d 23 ed c4 e3 7d 19 c9 01 c4 e2 7d 23 c9 c4 e3 7d 19 db 00 c4 e2 7d 23 db c4 e3 7d 19 e4 01 c4 e2 7d 23 e4 c4 e2 55 47 db c4 e2 75 47 cc c5 e5 6b c9 c4 e3 fd 00 c9 d8 c5 fc 28 d8 c4 e3 7d 19 db 00 c4 e2 7d 23 db c4 e3 7d 19 c0 01 c4 e2 7d 23 c0 c5 fc 28 e2 c4 e3 7d 19 e4 00 c4 e2 7d 23 e4 c4 e3 7d 19 d2 01 c4 e2 7d 23 d2 c4 e2 65 47 dc c4 e2 7d 47 c2 c5 e5 6b c0 c4 e3 fd 00 c0 d8 c5 f5 63 c0 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:02:588
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
000fh vpmovsxbw ymm1,xmm1                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 c9}
0014h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001ah vpmovsxbw ymm0,xmm0                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 c0}
001fh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0024h vextractf128 xmm3,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d3 00}
002ah vpmovsxbw ymm3,xmm3                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 db}
002fh vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
0035h vpmovsxbw ymm2,xmm2                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 d2}
003ah vmovaps ymm4,ymm3                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e3}
003eh vextractf128 xmm5,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 cd 00}
0044h vpmovsxwd ymm5,xmm5                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 ed}
0049h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
004fh vpmovsxwd ymm1,xmm1                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c9}
0054h vextractf128 xmm3,ymm3,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 db 00}
005ah vpmovsxwd ymm3,xmm3                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 db}
005fh vextractf128 xmm4,ymm4,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 e4 01}
0065h vpmovsxwd ymm4,xmm4                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 e4}
006ah vpsllvd ymm3,ymm5,ymm3                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 55 47 db}
006fh vpsllvd ymm1,ymm1,ymm4                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 75 47 cc}
0074h vpackssdw ymm1,ymm3,ymm1                ; VPACKSSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6B /r || encoded[4]{c5 e5 6b c9}
0078h vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
007eh vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
0082h vextractf128 xmm3,ymm3,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 db 00}
0088h vpmovsxwd ymm3,xmm3                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 db}
008dh vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0093h vpmovsxwd ymm0,xmm0                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c0}
0098h vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
009ch vextractf128 xmm4,ymm4,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 e4 00}
00a2h vpmovsxwd ymm4,xmm4                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 e4}
00a7h vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
00adh vpmovsxwd ymm2,xmm2                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 d2}
00b2h vpsllvd ymm3,ymm3,ymm4                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 65 47 dc}
00b7h vpsllvd ymm0,ymm0,ymm2                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 7d 47 c2}
00bch vpackssdw ymm0,ymm3,ymm0                ; VPACKSSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6B /r || encoded[4]{c5 e5 6b c0}
00c0h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00c6h vpacksswb ymm0,ymm1,ymm0                ; VPACKSSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 63 /r || encoded[4]{c5 f5 63 c0}
00cah vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00d0h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00d4h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00d7h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00dah ret                                     ; RET || C3 || encoded[1]{c3}
