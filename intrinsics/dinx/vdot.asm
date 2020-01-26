------------------------------------------------------------------------------------------------------------------------
; long vdot(Vector256<int> x, Vector256<int> y)
; vdot_256x32i_256x32i[48] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 28 02 c4 e3 7d 19 c1 00 c4 e3 7d 19 c0 01 c5 f1 d4 c0 c4 e1 f9 7e c0 c4 e3 f9 16 c2 01 48 03 c2 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vpmuldq ymm0,ymm0,[rdx]                 ; VPMULDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 28 /r || encoded[5]{c4 e2 7d 28 02}
000eh vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0014h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001ah vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
001eh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0023h vpextrq rdx,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c2 01}
0029h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong vdot(Vector256<uint> x, Vector256<uint> y)
; vdot_256x32u_256x32u[47] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd f4 02 c4 e3 7d 19 c1 00 c4 e3 7d 19 c0 01 c5 f1 d4 c0 c4 e1 f9 7e c0 c4 e3 f9 16 c2 01 48 03 c2 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vpmuludq ymm0,ymm0,[rdx]                ; VPMULUDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F4 /r || encoded[4]{c5 fd f4 02}
000dh vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0013h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0019h vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
001dh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0022h vpextrq rdx,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c2 01}
0028h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
002bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
