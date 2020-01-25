; double convert<double>(double src)
; convert64f~convert_g64f[7ff7c71804a0h, 7ff7c71804a6h][6] = {c5 f8 77 66 90 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:34:569
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h ret                                     ; RET || C3 || encoded[1]{c3}
