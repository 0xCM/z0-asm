; Vector128<uint> vsrlr<uint>(Vector128<uint> x, uint count)
; vsrlr__128x32u[7ff7c6c14bf0h, 7ff7c6c14c0ah][26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 6e c8 c5 f9 d2 c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:06:257
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovd xmm1,r8d                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[5]{c4 c1 79 6e c8}
000eh vpsrld xmm0,xmm0,xmm1                   ; VPSRLD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D2 /r || encoded[4]{c5 f9 d2 c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
