; float floor(float src)
; floor_32f[7ff7c718a610h, 7ff7c718a61ch][12] = {c5 f8 77 66 90 c4 e3 79 0a c0 09 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:37:706
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundss xmm0,xmm0,xmm0,9               ; VROUNDSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.66.0F3A.WIG 0A /r ib || encoded[6]{c4 e3 79 0a c0 09}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
