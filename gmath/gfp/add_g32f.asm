; float add<float>(float lhs, float rhs)
; add_g32f[7ff7c71be890h, 7ff7c71be89ah][10] = {c5 f8 77 66 90 c5 fa 58 c1 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:00:424
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddss xmm0,xmm0,xmm1                   ; VADDSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 58 /r || encoded[4]{c5 fa 58 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
