; Vector128<ulong> vnonimpl(Vector128<ulong> x, Vector128<ulong> y)
; vnonimpl_128x64u[7ff7c6be5190h, 7ff7c6be51a6h][22] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 df 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:00:830
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpandn xmm0,xmm0,[r8]                   ; VPANDN xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DF /r || encoded[5]{c4 c1 79 df 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
