; double convert<double>(sbyte src)
; convert8i~convert_g8i[7ff7c7180ca0h, 7ff7c7180cb6h][22] = {c5 f8 77 66 90 48 0f be c1 48 63 c0 c5 f8 57 c0 c4 e1 fb 2a c0 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:34:637
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0010h vcvtsi2sd xmm0,xmm0,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
