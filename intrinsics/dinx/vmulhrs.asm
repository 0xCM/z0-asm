------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vmulhrs(Vector128<short> x, Vector128<short> y)
; vmulhrs_v128x16i_v128x16i[22] = {c5 f8 77 66 90 c5 f9 10 02 c4 c2 79 0b 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpmulhrsw xmm0,xmm0,[r8]                ; VPMULHRSW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 0B /r || encoded[5]{c4 c2 79 0b 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vmulhrs(Vector256<short> x, Vector256<short> y)
; vmulhrs_v256x16i_v256x16i[25] = {c5 f8 77 66 90 c5 fd 10 02 c4 c2 7d 0b 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpmulhrsw ymm0,ymm0,[r8]                ; VPMULHRSW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 0B /r || encoded[5]{c4 c2 7d 0b 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
