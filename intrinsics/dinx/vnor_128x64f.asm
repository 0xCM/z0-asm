; Vector128<double> vnor(Vector128<double> x, Vector128<double> y)
; vnor_128x64f[7ff7c6be5580h, 7ff7c6be559fh][31] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 56 00 c5 f9 c2 c8 00 c5 f9 57 c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:00:854
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vorpd xmm0,xmm0,[r8]                    ; VORPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 56 /r || encoded[5]{c4 c1 79 56 00}
000eh vcmpeqpd xmm1,xmm0,xmm0                 ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[5]{c5 f9 c2 c8 00}
0013h vxorpd xmm0,xmm0,xmm1                   ; VXORPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 57 /r || encoded[4]{c5 f9 57 c1}
0017h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
