; double convert<double>(ulong src)
; convert64u~convert_g64u[7ff7c71939a0h, 7ff7c71939afh][15] = {c5 f8 77 66 90 c5 f8 57 c0 c4 e1 fb 2a c1 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:54:292
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2sd xmm0,xmm0,rcx                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
