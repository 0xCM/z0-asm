; float square<float>(float src)
; square_g32f[7ff7c71ac250h, 7ff7c71ac25ah][10] = {c5 f8 77 66 90 c5 fa 59 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:40:525
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulss xmm0,xmm0,xmm0                   ; VMULSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 59 /r || encoded[4]{c5 fa 59 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
