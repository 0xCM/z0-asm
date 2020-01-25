; double maxval<double>(double t)
; maxval_g64f[7ff7c7193bc0h, 7ff7c7193bceh][14] = {c5 f8 77 66 90 c5 fb 10 05 03 00 00 00 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:39:173
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd xmm0,qword ptr [7ff7c7193bd0h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
