; Vector256<Int16> vhadds(Vector256<Int16> x, Vector256<Int16> y)
; vhadds_256x16i[7ff7c6bf06e0h, 7ff7c6bf06f9h][25] = {c5 f8 77 66 90 c5 fd 10 02 c4 c2 7d 03 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:02:294
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vphaddsw ymm0,ymm0,[r8]                 ; VPHADDSW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 03 /r || encoded[5]{c4 c2 7d 03 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
