; bit vtestznc<Int16>(Vector128<Int16> src, Vector128<Int16> mask)
; vtestznc__128x16i[7ff7c6c03af0h, 7ff7c6c03b09h][25] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 10 0a c4 e2 79 17 c1 0f 97 c0 0f b6 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:05:305
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0012h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
