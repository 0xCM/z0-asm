; Vector256<long> vgather<long>(ReadOnlySpan<long> src, Vector256<long> vidx)
; vgather__256x64i[7ff7c6c067f0h, 7ff7c6c06812h][34] = {c5 f8 77 66 90 48 8b 02 c4 c1 7d 10 00 c5 f5 76 c9 c4 e2 f5 91 14 c0 c5 fd 11 11 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:05:446
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000dh vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
0011h vpgatherqq ymm2,[rax+ymm0*8],ymm1       ; VPGATHERQQ ymm1, vm64y, ymm2 || VEX.256.66.0F38.W1 91 /r || encoded[6]{c4 e2 f5 91 14 c0}
0017h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
