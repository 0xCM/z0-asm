; Vector256<byte> vcover(Vector256<uint> src, out Vector256<byte> dst)
; vcover__256x32u[7ff7c6bec9c0h, 7ff7c6bec9f4h][52] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c5 f5 72 f1 10 c5 f5 ef c0 c5 f5 71 f0 08 c5 f5 eb c0 c4 c1 7d 11 00 c4 c1 7d 11 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:02:123
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vpslld ymm1,ymm1,10h                    ; VPSLLD ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 72 /6 ib || encoded[5]{c5 f5 72 f1 10}
0012h vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
0016h vpsllw ymm1,ymm0,8                      ; VPSLLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /6 ib || encoded[5]{c5 f5 71 f0 08}
001bh vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
001fh vmovupd [r8],ymm0                       ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c4 c1 7d 11 00}
0024h vmovupd [r8],ymm0                       ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c4 c1 7d 11 00}
0029h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0030h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
