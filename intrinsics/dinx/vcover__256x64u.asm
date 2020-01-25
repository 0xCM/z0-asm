; Vector256<byte> vcover(Vector256<ulong> src, out Vector256<byte> dst)
; vcover__256x64u[7ff7c6beca70h, 7ff7c6becab2h][66] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c5 f5 73 f1 20 c5 f5 ef c0 c5 f5 72 f0 10 c5 f5 ef c0 c5 f5 71 f0 08 c5 f5 eb c0 c4 c1 7d 11 00 c4 c1 7d 11 00 c4 c1 7d 11 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:02:126
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vpsllq ymm1,ymm1,20h                    ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f1 20}
0012h vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
0016h vpslld ymm1,ymm0,10h                    ; VPSLLD ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 72 /6 ib || encoded[5]{c5 f5 72 f0 10}
001bh vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
001fh vpsllw ymm1,ymm0,8                      ; VPSLLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /6 ib || encoded[5]{c5 f5 71 f0 08}
0024h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0028h vmovupd [r8],ymm0                       ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c4 c1 7d 11 00}
002dh vmovupd [r8],ymm0                       ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c4 c1 7d 11 00}
0032h vmovupd [r8],ymm0                       ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c4 c1 7d 11 00}
0037h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
003bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
