; double sqrt<double>(double src)
; sqrt_g64f[7ff7c71acd00h, 7ff7c71acd0ah][10] = {c5 f8 77 66 90 c5 fb 51 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:40:680
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsqrtsd xmm0,xmm0,xmm0                  ; VSQRTSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 51 /r || encoded[4]{c5 fb 51 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
