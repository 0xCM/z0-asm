; float inc<float>(float src)
; inc_g32f[7ff7c71ac090h, 7ff7c71ac09eh][14] = {c5 f8 77 66 90 c5 fa 58 05 03 00 00 00 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:40:501
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddss xmm0,xmm0,dword ptr [7ff7c71ac0a0h]; VADDSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 58 /r || encoded[8]{c5 fa 58 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
