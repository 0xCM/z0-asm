; Vector256<ushort> vreverse<ushort>(Vector256<ushort> x)
; vreverse_g256x16u[7ff7c6dd4490h, 7ff7c6dd44deh][78] = {c5 f8 77 66 90 c5 fd 10 02 c4 e3 7d 19 c1 01 c5 fb 70 c9 1b c5 fa 70 c9 1b c5 f9 70 c9 4e c4 e3 7d 19 c0 00 c5 fb 70 c0 1b c5 fa 70 c0 1b c5 f9 70 c0 4e c5 ec 57 d2 c4 e3 6d 38 c9 00 c4 e3 75 38 c0 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:12:080
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm1,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 01}
000fh vpshuflw xmm1,xmm1,1bh                  ; VPSHUFLW xmm1, xmm2/m128, imm8 || VEX.128.F2.0F.WIG 70 /r ib || encoded[5]{c5 fb 70 c9 1b}
0014h vpshufhw xmm1,xmm1,1bh                  ; VPSHUFHW xmm1, xmm2/m128, imm8 || VEX.128.F3.0F.WIG 70 /r ib || encoded[5]{c5 fa 70 c9 1b}
0019h vpshufd xmm1,xmm1,4eh                   ; VPSHUFD xmm1, xmm2/m128, imm8 || VEX.128.66.0F.WIG 70 /r ib || encoded[5]{c5 f9 70 c9 4e}
001eh vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
0024h vpshuflw xmm0,xmm0,1bh                  ; VPSHUFLW xmm1, xmm2/m128, imm8 || VEX.128.F2.0F.WIG 70 /r ib || encoded[5]{c5 fb 70 c0 1b}
0029h vpshufhw xmm0,xmm0,1bh                  ; VPSHUFHW xmm1, xmm2/m128, imm8 || VEX.128.F3.0F.WIG 70 /r ib || encoded[5]{c5 fa 70 c0 1b}
002eh vpshufd xmm0,xmm0,4eh                   ; VPSHUFD xmm1, xmm2/m128, imm8 || VEX.128.66.0F.WIG 70 /r ib || encoded[5]{c5 f9 70 c0 4e}
0033h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0037h vinserti128 ymm1,ymm2,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c9 00}
003dh vinserti128 ymm0,ymm1,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 c0 01}
0043h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0047h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh ret                                     ; RET || C3 || encoded[1]{c3}
