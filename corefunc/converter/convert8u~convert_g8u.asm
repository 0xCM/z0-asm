; double convert<double>(byte src)
; convert8u~convert_g8u[7ff7c7180e00h, 7ff7c7180e11h][17] = {c5 f8 77 66 90 0f b6 c1 c5 f8 57 c0 c5 fb 2a c0 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:34:659
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000ch vcvtsi2sd xmm0,xmm0,eax                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
