; Vector128<float> vnand(Vector128<float> x, Vector128<float> y)
; vnand_128x32f[7ff7c71ddb60h, 7ff7c71ddb7fh][31] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 78 54 00 c5 f8 c2 c8 00 c5 f8 57 c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:03:980
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vandps xmm0,xmm0,[r8]                   ; VANDPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 54 /r || encoded[5]{c4 c1 78 54 00}
000eh vcmpeqps xmm1,xmm0,xmm0                 ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[5]{c5 f8 c2 c8 00}
0013h vxorps xmm0,xmm0,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c1}
0017h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
