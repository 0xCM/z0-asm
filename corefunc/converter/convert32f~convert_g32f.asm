; double convert<double>(float src)
; convert32f~convert_g32f[7ff7c6ea1b30h, 7ff7c6ea1b3ah][10] = {c5 f8 77 66 90 c5 fa 5a c0 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:34:528
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2sd xmm0,xmm0,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 fa 5a c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
