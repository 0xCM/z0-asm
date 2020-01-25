; bit vtestznc(Vector128<double> x, Vector128<double> y)
; vtestznc__128x64f[7ff7c6bd8c90h, 7ff7c6bd8ca5h][21] = {c5 f8 77 66 90 c5 f9 10 01 c4 e2 79 0f 02 0f 97 c0 0f b6 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:59:189
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vtestpd xmm0,[rdx]                      ; VTESTPD xmm1, xmm2/m128 || VEX.128.66.0F38.W0 0F /r || encoded[5]{c4 e2 79 0f 02}
000eh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
