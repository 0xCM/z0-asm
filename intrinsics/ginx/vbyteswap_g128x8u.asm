; Vector128<byte> vbyteswap<byte>(Vector128<byte> x)
; vbyteswap_g128x8u[7ff7c7211ef0h, 7ff7c7211f01h][17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:11:848
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
