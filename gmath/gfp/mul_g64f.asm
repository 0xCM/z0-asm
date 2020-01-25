; double mul<double>(double lhs, double rhs)
; mul_g64f[7ff7c71ac110h, 7ff7c71ac11ah][10] = {c5 f8 77 66 90 c5 fb 59 c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:40:504
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulsd xmm0,xmm0,xmm1                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 fb 59 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
