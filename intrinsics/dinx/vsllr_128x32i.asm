; Vector128<int> vsllr(Vector128<int> src, Vector128<int> count)
; vsllr_128x32i[7ff7c71d9840h, 7ff7c71d9856h][22] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 f2 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:03:222
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpslld xmm0,xmm0,[r8]                   ; VPSLLD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F2 /r || encoded[5]{c4 c1 79 f2 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
