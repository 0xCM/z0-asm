; double minval<double>(double t)
; minval_g64f[7ff7c7193a70h, 7ff7c7193a7ah][10] = {c5 f8 77 66 90 c5 f8 57 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:39:162
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
