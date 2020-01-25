; Vector512<ulong> vmul(Vector256<uint> x, Vector256<uint> y)
; vmul__256x32u[7ff7c6bf10d0h, 7ff7c6bf1107h][55] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d f4 00 c5 fd 10 0a c4 e3 75 46 c9 03 c4 c1 7d 10 10 c4 e3 6d 46 d2 03 c5 f5 f4 ca c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:02:349
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpmuludq ymm0,ymm0,[r8]                 ; VPMULUDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F4 /r || encoded[5]{c4 c1 7d f4 00}
000eh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0012h vperm2i128 ymm1,ymm1,ymm1,3             ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 75 46 c9 03}
0018h vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
001dh vperm2i128 ymm2,ymm2,ymm2,3             ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 d2 03}
0023h vpmuludq ymm1,ymm1,ymm2                 ; VPMULUDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F4 /r || encoded[4]{c5 f5 f4 ca}
0027h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002bh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0030h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
