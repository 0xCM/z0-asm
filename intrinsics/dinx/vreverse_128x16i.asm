; Vector128<Int16> vreverse(Vector128<Int16> src)
; vreverse_128x16i[7ff7c6be9180h, 7ff7c6be91a0h][32] = {c5 f8 77 66 90 c5 f9 10 02 c5 fb 70 c0 1b c5 fa 70 c0 1b c5 f9 70 c0 4e c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:01:731
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpshuflw xmm0,xmm0,1bh                  ; VPSHUFLW xmm1, xmm2/m128, imm8 || VEX.128.F2.0F.WIG 70 /r ib || encoded[5]{c5 fb 70 c0 1b}
000eh vpshufhw xmm0,xmm0,1bh                  ; VPSHUFHW xmm1, xmm2/m128, imm8 || VEX.128.F3.0F.WIG 70 /r ib || encoded[5]{c5 fa 70 c0 1b}
0013h vpshufd xmm0,xmm0,4eh                   ; VPSHUFD xmm1, xmm2/m128, imm8 || VEX.128.66.0F.WIG 70 /r ib || encoded[5]{c5 f9 70 c0 4e}
0018h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
