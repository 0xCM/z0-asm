------------------------------------------------------------------------------------------------------------------------
; float sqrt(float src)
; sqrt_32f[10] = {c5 f8 77 66 90 c5 fa 51 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsqrtss xmm0,xmm0,xmm0                  ; VSQRTSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 51 /r || encoded[4]{c5 fa 51 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double sqrt(double src)
; sqrt_64f[10] = {c5 f8 77 66 90 c5 fb 51 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsqrtsd xmm0,xmm0,xmm0                  ; VSQRTSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 51 /r || encoded[4]{c5 fb 51 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
