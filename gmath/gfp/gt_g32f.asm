; bit gt<float>(float a, float b)
; gt_g32f[7ff7c71bf7b0h, 7ff7c71bf7c0h][16] = {c5 f8 77 66 90 c5 f8 2e c1 0f 97 c0 0f b6 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:00:508
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
