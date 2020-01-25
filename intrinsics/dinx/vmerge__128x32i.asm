; Vector256<int> vmerge(Vector128<int> x, Vector128<int> y)
; vmerge__128x32i[7ff7c6bea590h, 7ff7c6bea5c9h][57] = {c5 f8 77 66 90 c5 f9 10 02 c5 f8 28 c8 c4 c1 79 10 10 c5 f8 28 da c5 f1 62 cb c5 f9 6a c2 c5 ec 57 d2 c4 e3 6d 38 c9 00 c4 e3 75 38 c0 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:01:887
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000dh vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
0012h vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
0016h vpunpckldq xmm1,xmm1,xmm3               ; VPUNPCKLDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 62 /r || encoded[4]{c5 f1 62 cb}
001ah vpunpckhdq xmm0,xmm0,xmm2               ; VPUNPCKHDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 6A /r || encoded[4]{c5 f9 6a c2}
001eh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0022h vinserti128 ymm1,ymm2,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c9 00}
0028h vinserti128 ymm0,ymm1,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 c0 01}
002eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0032h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0035h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
