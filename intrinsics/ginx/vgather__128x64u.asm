; Vector128<ulong> vgather<ulong>(ReadOnlySpan<ulong> src, Vector128<ulong> vidx)
; vgather__128x64u[7ff7c6c05e10h, 7ff7c6c05e2fh][31] = {c5 f8 77 66 90 48 8b 02 c4 c1 79 10 00 c5 f1 76 c9 c4 e2 f1 91 14 c0 c5 f9 11 11 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:05:421
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000dh vpcmpeqd xmm1,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 c9}
0011h vpgatherqq xmm2,[rax+xmm0*8],xmm1       ; VPGATHERQQ xmm1, vm64x, xmm2 || VEX.128.66.0F38.W1 91 /r || encoded[6]{c4 e2 f1 91 14 c0}
0017h vmovupd [rcx],xmm2                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 11}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
