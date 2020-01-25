; double clamp(double src, double max)
; clamp_64f[7ff7c719d270h, 7ff7c719d281h][17] = {c5 f8 77 66 90 c5 f9 2e c1 77 01 c3 c5 f8 28 c1 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:56:946
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h ja short 000ch                          ; JA rel8 || 77 cb || encoded[2]{77 01}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
