; Vector256<Int16> vsllr<Int16>(Vector256<Int16> x, Vector256<Int16> offset)
; vsllr_g256x16i[7ff7c6c105e0h, 7ff7c6c10603h][35] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 19 c9 00 c5 fd f1 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:05:924
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
0014h vpsllw ymm0,ymm0,xmm1                   ; VPSLLW ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F1 /r || encoded[4]{c5 fd f1 c1}
0018h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
