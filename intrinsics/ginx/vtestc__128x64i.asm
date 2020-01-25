; bit vtestc<long>(Vector128<long> src)
; vtestc__128x64i[7ff7c6c01b60h, 7ff7c6c01b82h][34] = {c5 f8 77 66 90 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 10 09 c4 e2 79 17 c8 0f 92 c0 0f b6 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:05:208
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000dh vpcmpeqq xmm0,xmm0,xmm1                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 79 29 c1}
0012h vmovupd xmm1,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 09}
0016h vptest xmm1,xmm0                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c8}
001bh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
