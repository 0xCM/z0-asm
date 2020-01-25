; Vector256<ulong> vgather(N256 w, in ulong src, Vector256<ulong> vidx)
; vgather__n256_256x64u[7ff7c71cf5f0h, 7ff7c71cf60fh][31] = {c5 f8 77 66 90 c4 c1 7d 10 01 c5 f5 76 c9 c4 c2 f5 91 14 c0 c5 fd 11 11 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:01:875
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ah vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
000eh vpgatherqq ymm2,[r8+ymm0*8],ymm1        ; VPGATHERQQ ymm1, vm64y, ymm2 || VEX.256.66.0F38.W1 91 /r || encoded[6]{c4 c2 f5 91 14 c0}
0014h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
