; Vector128<ulong> vgather(N128 w, in ulong src, Vector128<ulong> vidx)
; vgather__n128_128x64u[7ff7c6a27910h, 7ff7c6a2792ch][28] = {c5 f8 77 66 90 c4 c1 79 10 01 c5 f1 76 c9 c4 c2 f1 91 14 c0 c5 f9 11 11 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:58:850
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
000ah vpcmpeqd xmm1,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 c9}
000eh vpgatherqq xmm2,[r8+xmm0*8],xmm1        ; VPGATHERQQ xmm1, vm64x, xmm2 || VEX.128.66.0F38.W1 91 /r || encoded[6]{c4 c2 f1 91 14 c0}
0014h vmovupd [rcx],xmm2                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 11}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
