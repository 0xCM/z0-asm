; srl__128x16u-imm13
; srl__128x16u-imm13[7ff7c6e308d0h, 7ff7c6e308e4h][20] = {c5 f8 77 c5 f9 10 02 c5 f9 71 d0 0d c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:47:965
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpsrlw xmm0,xmm0,0dh                    ; VPSRLW xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 71 /2 ib || encoded[5]{c5 f9 71 d0 0d}
000ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
