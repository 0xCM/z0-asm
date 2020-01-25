; Vector128<float> vblendv(Vector128<float> x, Vector128<float> y, Vector128<float> spec)
; vblendv_128x32f[7ff7c6bdac80h, 7ff7c6bdac9ch][28] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 09 c4 c3 79 4a 00 10 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:59:270
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
000eh vblendvps xmm0,xmm0,[r8],xmm1           ; VBLENDVPS xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4A /r /is4 || encoded[6]{c4 c3 79 4a 00 10}
0014h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
