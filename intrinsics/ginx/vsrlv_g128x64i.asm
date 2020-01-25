; Vector128<long> vsrlv<long>(Vector128<long> x, Vector128<long> counts)
; vsrlv_g128x64i[7ff7c71fa500h, 7ff7c71fa51bh][27] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 e2 f9 45 c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:09:916
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpsrlvq xmm0,xmm0,xmm1                  ; VPSRLVQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W1 45 /r || encoded[5]{c4 e2 f9 45 c1}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
