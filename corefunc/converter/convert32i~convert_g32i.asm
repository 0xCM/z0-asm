; double convert<double>(int src)
; convert32i~convert_g32i[7ff7c6ea1c70h, 7ff7c6ea1c7eh][14] = {c5 f8 77 66 90 c5 f8 57 c0 c5 fb 2a c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:34:542
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2sd xmm0,xmm0,ecx                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
