------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vcover(Vector128<ushort> src, out Vector128<byte> dst)
; vcover_128x16u_128x8u[35] = {c5 f8 77 66 90 c5 f9 10 02 c5 f8 28 c8 c5 f1 71 f1 08 c5 f1 eb c0 c4 c1 79 11 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000dh vpsllw xmm1,xmm1,8                      ; VPSLLW xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 71 /6 ib || encoded[5]{c5 f1 71 f1 08}
0012h vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0016h vmovupd [r8],xmm0                       ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c4 c1 79 11 00}
001bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vcover(Vector256<ushort> src, out Vector256<byte> dst)
; vcover_256x16u_256x8u[38] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c5 f5 71 f1 08 c5 f5 eb c0 c4 c1 7d 11 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vpsllw ymm1,ymm1,8                      ; VPSLLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /6 ib || encoded[5]{c5 f5 71 f1 08}
0012h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0016h vmovupd [r8],ymm0                       ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c4 c1 7d 11 00}
001bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vcover(Vector128<uint> src, out Vector128<ushort> dst)
; vcover_128x32u_128x16u[35] = {c5 f8 77 66 90 c5 f9 10 02 c5 f8 28 c8 c5 f1 72 f1 10 c5 f1 eb c0 c4 c1 79 11 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000dh vpslld xmm1,xmm1,10h                    ; VPSLLD xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 72 /6 ib || encoded[5]{c5 f1 72 f1 10}
0012h vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0016h vmovupd [r8],xmm0                       ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c4 c1 79 11 00}
001bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vcover(Vector256<uint> src, out Vector256<ushort> dst)
; vcover_256x32u_256x16u[38] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c5 f5 72 f1 10 c5 f5 eb c0 c4 c1 7d 11 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vpslld ymm1,ymm1,10h                    ; VPSLLD ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 72 /6 ib || encoded[5]{c5 f5 72 f1 10}
0012h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0016h vmovupd [r8],ymm0                       ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c4 c1 7d 11 00}
001bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vcover(Vector128<ulong> src, out Vector128<uint> dst)
; vcover_128x64u_128x32u[35] = {c5 f8 77 66 90 c5 f9 10 02 c5 f8 28 c8 c5 f1 73 f1 20 c5 f1 eb c0 c4 c1 79 11 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000dh vpsllq xmm1,xmm1,20h                    ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f1 20}
0012h vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0016h vmovupd [r8],xmm0                       ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c4 c1 79 11 00}
001bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vcover(Vector256<ulong> src, out Vector256<uint> dst)
; vcover_256x64u_256x32u[38] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c5 f5 73 f1 20 c5 f5 eb c0 c4 c1 7d 11 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vpsllq ymm1,ymm1,20h                    ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f1 20}
0012h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0016h vmovupd [r8],ymm0                       ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c4 c1 7d 11 00}
001bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vcover(Vector128<uint> src, out Vector128<byte> dst)
; vcover_128x32u_128x8u[49] = {c5 f8 77 66 90 c5 f9 10 02 c5 f8 28 c8 c5 f1 72 f1 10 c5 f1 ef c0 c5 f1 71 f0 08 c5 f1 eb c0 c4 c1 79 11 00 c4 c1 79 11 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000dh vpslld xmm1,xmm1,10h                    ; VPSLLD xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 72 /6 ib || encoded[5]{c5 f1 72 f1 10}
0012h vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
0016h vpsllw xmm1,xmm0,8                      ; VPSLLW xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 71 /6 ib || encoded[5]{c5 f1 71 f0 08}
001bh vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
001fh vmovupd [r8],xmm0                       ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c4 c1 79 11 00}
0024h vmovupd [r8],xmm0                       ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c4 c1 79 11 00}
0029h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vcover(Vector256<uint> src, out Vector256<byte> dst)
; vcover_256x32u_256x8u[52] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c5 f5 72 f1 10 c5 f5 ef c0 c5 f5 71 f0 08 c5 f5 eb c0 c4 c1 7d 11 00 c4 c1 7d 11 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
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
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vcover(Vector128<ulong> src, out Vector128<byte> dst)
; vcover_128x64u_128x8u[63] = {c5 f8 77 66 90 c5 f9 10 02 c5 f8 28 c8 c5 f1 73 f1 20 c5 f1 ef c0 c5 f1 72 f0 10 c5 f1 ef c0 c5 f1 71 f0 08 c5 f1 eb c0 c4 c1 79 11 00 c4 c1 79 11 00 c4 c1 79 11 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000dh vpsllq xmm1,xmm1,20h                    ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f1 20}
0012h vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
0016h vpslld xmm1,xmm0,10h                    ; VPSLLD xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 72 /6 ib || encoded[5]{c5 f1 72 f0 10}
001bh vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
001fh vpsllw xmm1,xmm0,8                      ; VPSLLW xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 71 /6 ib || encoded[5]{c5 f1 71 f0 08}
0024h vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0028h vmovupd [r8],xmm0                       ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c4 c1 79 11 00}
002dh vmovupd [r8],xmm0                       ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c4 c1 79 11 00}
0032h vmovupd [r8],xmm0                       ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c4 c1 79 11 00}
0037h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
003bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vcover(Vector256<ulong> src, out Vector256<byte> dst)
; vcover_256x64u_256x8u[66] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c5 f5 73 f1 20 c5 f5 ef c0 c5 f5 72 f0 10 c5 f5 ef c0 c5 f5 71 f0 08 c5 f5 eb c0 c4 c1 7d 11 00 c4 c1 7d 11 00 c4 c1 7d 11 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
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
