; vrotl__256x16u-imm5
; vrotl__256x16u-imm5[7ff7c6ca3170h, 7ff7c6ca3198h][40] = {c5 f8 77 c5 fd 10 02 c5 f5 71 f0 05 b8 0b 00 00 00 c5 f9 6e d0 c5 fd d1 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:07:644
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpsllw ymm1,ymm0,5                      ; VPSLLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /6 ib || encoded[5]{c5 f5 71 f0 05}
000ch mov eax,0bh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 0b 00 00 00}
0011h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
0015h vpsrlw ymm0,ymm0,xmm2                   ; VPSRLW ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D1 /r || encoded[4]{c5 fd d1 c2}
0019h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
001dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0021h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0024h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
