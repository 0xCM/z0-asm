; double inc<double>(double src)
; inc_g64f[7ff7c71ac0c0h, 7ff7c71ac0ceh][14] = {c5 f8 77 66 90 c5 fb 58 05 03 00 00 00 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:40:502
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddsd xmm0,xmm0,qword ptr [7ff7c71ac0d0h]; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[8]{c5 fb 58 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
