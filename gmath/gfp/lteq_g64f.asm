; bit lteq<double>(double lhs, double rhs)
; lteq_g64f[7ff7c71acb50h, 7ff7c71acb60h][16] = {c5 f8 77 66 90 c5 f9 2e c8 0f 93 c0 0f b6 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:40:658
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
0009h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
000ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
