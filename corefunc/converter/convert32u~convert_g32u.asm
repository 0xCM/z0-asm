; double convert<double>(uint src)
; convert32u~convert_g32u[7ff7c7193190h, 7ff7c71931a1h][17] = {c5 f8 77 66 90 8b c1 c5 f8 57 c0 c4 e1 fb 2a c0 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:54:249
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000bh vcvtsi2sd xmm0,xmm0,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
