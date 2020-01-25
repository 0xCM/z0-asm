; Vector1024<int> vconvert(Vector256<sbyte> src, N1024 w, int t)
; vconvert__256x8i_n1024[7ff7c6bd5600h, 7ff7c6bd5665h][101] = {c5 f8 77 66 90 c5 fd 10 02 c4 e3 7d 19 c1 00 c4 e2 7d 20 c9 c4 e3 7d 19 c0 01 c4 e2 7d 20 c0 c4 e3 7d 19 ca 00 c4 e2 7d 23 d2 c4 e3 7d 19 c9 01 c4 e2 7d 23 c9 c4 e3 7d 19 c3 00 c4 e2 7d 23 db c4 e3 7d 19 c0 01 c4 e2 7d 23 c0 c5 fd 11 11 c5 fd 11 49 20 c5 fd 11 59 40 c5 fd 11 41 60 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:59:008
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
000fh vpmovsxbw ymm1,xmm1                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 c9}
0014h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001ah vpmovsxbw ymm0,xmm0                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 c0}
001fh vextractf128 xmm2,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 ca 00}
0025h vpmovsxwd ymm2,xmm2                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 d2}
002ah vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
0030h vpmovsxwd ymm1,xmm1                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c9}
0035h vextractf128 xmm3,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c3 00}
003bh vpmovsxwd ymm3,xmm3                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 db}
0040h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0046h vpmovsxwd ymm0,xmm0                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c0}
004bh vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
004fh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0054h vmovupd [rcx+40h],ymm3                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 59 40}
0059h vmovupd [rcx+60h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 60}
005eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0061h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0064h ret                                     ; RET || C3 || encoded[1]{c3}
