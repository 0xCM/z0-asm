; Vector512<ulong> vmerge<ulong>(Vector256<ulong> x, Vector256<ulong> y)
; vmerge__256x64u[7ff7c720a7d0h, 7ff7c720a802h][50] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd 6c d1 c5 fd 6d c1 c4 e3 6d 46 c8 20 c4 e3 6d 46 c0 31 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:11:744
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpunpcklqdq ymm2,ymm0,ymm1              ; VPUNPCKLQDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6C /r || encoded[4]{c5 fd 6c d1}
0012h vpunpckhqdq ymm0,ymm0,ymm1              ; VPUNPCKHQDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6D /r || encoded[4]{c5 fd 6d c1}
0016h vperm2i128 ymm1,ymm2,ymm0,20h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c8 20}
001ch vperm2i128 ymm0,ymm2,ymm0,31h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c0 31}
0022h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0026h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
