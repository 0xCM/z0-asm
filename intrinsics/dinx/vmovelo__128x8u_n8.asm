; byte vmovelo(Vector128<byte> src, N8 w)
; vmovelo__128x8u_n8[7ff7c71e19d0h, 7ff7c71e19e1h][17] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 7e c0 0f b6 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:04:505
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovd eax,xmm0                          ; VMOVD r/m32, xmm1 || VEX.128.66.0F.W0 7E /r || encoded[4]{c5 f9 7e c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
