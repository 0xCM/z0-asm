; float one<float>(float t)
; one_g32f[7ff7c71933e0h, 7ff7c71933eeh][14] = {c5 f8 77 66 90 c5 fa 10 05 03 00 00 00 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:39:137
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss xmm0,dword ptr [7ff7c71933f0h]   ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[8]{c5 fa 10 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
