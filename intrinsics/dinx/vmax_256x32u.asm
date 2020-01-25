; Vector256<uint> vmax(Vector256<uint> x, Vector256<uint> y)
; vmax_256x32u[7ff7c71d23c0h, 7ff7c71d23d9h][25] = {c5 f8 77 66 90 c5 fd 10 02 c4 c2 7d 3f 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:02:181
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpmaxud ymm0,ymm0,[r8]                  ; VPMAXUD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 3F /r || encoded[5]{c4 c2 7d 3f 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
