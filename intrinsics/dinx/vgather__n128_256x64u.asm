; Vector128<uint> vgather(N128 w, in uint src, Vector256<ulong> vidx)
; vgather__n128_256x64u[7ff7c6a278a0h, 7ff7c6a278bfh][31] = {c5 f8 77 66 90 c4 c1 7d 10 01 c5 f1 76 c9 c4 c2 75 91 14 80 c5 f9 11 11 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:58:847
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ah vpcmpeqd xmm1,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 c9}
000eh vpgatherqd xmm2,[r8+ymm0*4],xmm1        ; VPGATHERQD xmm1, vm64y, xmm2 || VEX.256.66.0F38.W0 91 /r || encoded[6]{c4 c2 75 91 14 80}
0014h vmovupd [rcx],xmm2                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 11}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
