; Vector128<uint> vlo(Vector256<uint> src)
; vlo__256x32u[7ff7c71de970h, 7ff7c71de98ah][26] = {c5 f8 77 66 90 c5 fd 10 02 c4 e3 7d 19 c0 00 c5 f9 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:04:256
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
