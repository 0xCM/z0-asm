; double fma<double>(double x, double y, double z)
; fma_g64f[7ff7c71ac070h, 7ff7c71ac07bh][11] = {c5 f8 77 66 90 c4 e2 f1 a9 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:40:482
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vfmadd213sd xmm0,xmm1,xmm2              ; VFMADD213SD xmm1, xmm2, xmm3/m64 || VEX.LIG.66.0F38.W1 A9 /r || encoded[5]{c4 e2 f1 a9 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
