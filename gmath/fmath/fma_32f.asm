; float fma(float x, float y, float z)
; fma_32f[7ff7c719d470h, 7ff7c719d47bh][11] = {c5 f8 77 66 90 c4 e2 71 a9 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:56:957
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vfmadd213ss xmm0,xmm1,xmm2              ; VFMADD213SS xmm1, xmm2, xmm3/m32 || VEX.LIG.66.0F38.W0 A9 /r || encoded[5]{c4 e2 71 a9 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
