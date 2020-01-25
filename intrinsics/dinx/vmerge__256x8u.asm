; Vector512<byte> vmerge(Vector256<byte> x, Vector256<byte> y)
; vmerge__256x8u[7ff7c71df1d0h, 7ff7c71df203h][51] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 60 00 c5 fd 10 0a c4 c1 75 68 08 c4 e3 7d 46 d1 20 c4 e3 7d 46 c1 31 c5 fd 11 11 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:04:275
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpunpcklbw ymm0,ymm0,[r8]               ; VPUNPCKLBW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 60 /r || encoded[5]{c4 c1 7d 60 00}
000eh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0012h vpunpckhbw ymm1,ymm1,[r8]               ; VPUNPCKHBW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 68 /r || encoded[5]{c4 c1 75 68 08}
0017h vperm2i128 ymm2,ymm0,ymm1,20h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 7d 46 d1 20}
001dh vperm2i128 ymm0,ymm0,ymm1,31h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 7d 46 c1 31}
0023h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0027h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
