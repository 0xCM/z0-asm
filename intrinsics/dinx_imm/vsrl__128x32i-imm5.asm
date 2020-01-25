; vsrl__128x32i-imm5
; vsrl__128x32i-imm5[7ff7c6ca1ad0h, 7ff7c6ca1ae4h][20] = {c5 f8 77 c5 f9 10 02 c5 f9 72 d0 05 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:59:460
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpsrld xmm0,xmm0,5                      ; VPSRLD xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 72 /2 ib || encoded[5]{c5 f9 72 d0 05}
000ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
