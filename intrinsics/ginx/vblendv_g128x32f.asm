; Vector128<float> vblendv<float>(Vector128<float> x, Vector128<float> y, Vector128<float> spec)
; vblendv_g128x32f[7ff7c71f1780h, 7ff7c71f17a1h][33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4a c1 20 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:09:235
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vblendvps xmm0,xmm0,xmm1,xmm2           ; VBLENDVPS xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4A /r /is4 || encoded[6]{c4 e3 79 4a c1 20}
0019h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
