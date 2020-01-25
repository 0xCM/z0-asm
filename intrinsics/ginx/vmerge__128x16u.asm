; Vector256<ushort> vmerge<ushort>(Vector128<ushort> x, Vector128<ushort> y)
; vmerge__128x16u[7ff7c7209410h, 7ff7c7209441h][49] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 61 d1 c5 f9 69 c1 c5 f4 57 c9 c4 e3 75 38 ca 00 c4 e3 75 38 c0 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:11:716
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpunpcklwd xmm2,xmm0,xmm1               ; VPUNPCKLWD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 61 /r || encoded[4]{c5 f9 61 d1}
0012h vpunpckhwd xmm0,xmm0,xmm1               ; VPUNPCKHWD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 69 /r || encoded[4]{c5 f9 69 c1}
0016h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
001ah vinserti128 ymm1,ymm1,xmm2,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 00}
0020h vinserti128 ymm0,ymm1,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 c0 01}
0026h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
