; double div<double>(double a, double b)
; div_g64f[7ff7c71abff0h, 7ff7c71abffah][10] = {c5 f8 77 66 90 c5 fb 5e c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:40:294
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vdivsd xmm0,xmm0,xmm1                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[4]{c5 fb 5e c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
