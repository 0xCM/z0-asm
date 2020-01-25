; Vector256<ulong> vgather(N256 w, in ulong src, Vector128<uint> vidx)
; vgather__n256_128x32u[7ff7c6bd1770h, 7ff7c6bd178fh][31] = {c5 f8 77 66 90 c4 c1 79 10 01 c5 f5 76 c9 c4 c2 f5 90 14 c0 c5 fd 11 11 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:58:896
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
000ah vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
000eh vpgatherdq ymm2,[r8+xmm0*8],ymm1        ; VPGATHERDQ ymm1, vm32x, ymm2 || VEX.256.66.0F38.W1 90 /r || encoded[6]{c4 c2 f5 90 14 c0}
0014h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
