; float clamp(float src, float max)
; clamp_32f[7ff7c718a420h, 7ff7c718a431h][17] = {c5 f8 77 66 90 c5 f8 2e c1 77 01 c3 c5 f8 28 c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:37:684
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h ja short 000ch                          ; JA rel8 || 77 cb || encoded[2]{77 01}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
