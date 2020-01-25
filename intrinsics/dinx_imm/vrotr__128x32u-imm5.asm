; vrotr__128x32u-imm5
; vrotr__128x32u-imm5[7ff7c6ca6b50h, 7ff7c6ca6b75h][37] = {c5 f8 77 c5 f9 10 02 c5 f1 72 d0 05 b8 1b 00 00 00 c5 f9 6e d0 c5 f9 f2 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:00:631
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpsrld xmm1,xmm0,5                      ; VPSRLD xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 72 /2 ib || encoded[5]{c5 f1 72 d0 05}
000ch mov eax,1bh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 1b 00 00 00}
0011h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
0015h vpslld xmm0,xmm0,xmm2                   ; VPSLLD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F2 /r || encoded[4]{c5 f9 f2 c2}
0019h vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
001dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0021h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
