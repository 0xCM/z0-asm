------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vmerge<byte>(Vector128<byte> x, Vector128<byte> y)
; vmerge__g128x8u_128x8u[49] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 60 d1 c5 f9 68 c1 c5 f4 57 c9 c4 e3 75 38 ca 00 c4 e3 75 38 c0 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpunpcklbw xmm2,xmm0,xmm1               ; VPUNPCKLBW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 60 /r || encoded[4]{c5 f9 60 d1}
0012h vpunpckhbw xmm0,xmm0,xmm1               ; VPUNPCKHBW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 68 /r || encoded[4]{c5 f9 68 c1}
0016h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
001ah vinserti128 ymm1,ymm1,xmm2,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 00}
0020h vinserti128 ymm0,ymm1,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 c0 01}
0026h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vmerge<sbyte>(Vector128<sbyte> x, Vector128<sbyte> y)
; vmerge__g128x8i_128x8i[49] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 60 d1 c5 f9 68 c1 c5 f4 57 c9 c4 e3 75 38 ca 00 c4 e3 75 38 c0 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpunpcklbw xmm2,xmm0,xmm1               ; VPUNPCKLBW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 60 /r || encoded[4]{c5 f9 60 d1}
0012h vpunpckhbw xmm0,xmm0,xmm1               ; VPUNPCKHBW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 68 /r || encoded[4]{c5 f9 68 c1}
0016h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
001ah vinserti128 ymm1,ymm1,xmm2,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 00}
0020h vinserti128 ymm0,ymm1,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 c0 01}
0026h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vmerge<ushort>(Vector128<ushort> x, Vector128<ushort> y)
; vmerge__g128x16u_128x16u[49] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 61 d1 c5 f9 69 c1 c5 f4 57 c9 c4 e3 75 38 ca 00 c4 e3 75 38 c0 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpunpcklwd xmm2,xmm0,xmm1               ; VPUNPCKLWD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 61 /r || encoded[4]{c5 f9 61 d1}
0012h vpunpckhwd xmm0,xmm0,xmm1               ; VPUNPCKHWD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 69 /r || encoded[4]{c5 f9 69 c1}
0016h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
001ah vinserti128 ymm1,ymm1,xmm2,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 00}
0020h vinserti128 ymm0,ymm1,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 c0 01}
0026h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vmerge<short>(Vector128<short> x, Vector128<short> y)
; vmerge__g128x16i_128x16i[49] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 61 d1 c5 f9 69 c1 c5 f4 57 c9 c4 e3 75 38 ca 00 c4 e3 75 38 c0 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpunpcklwd xmm2,xmm0,xmm1               ; VPUNPCKLWD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 61 /r || encoded[4]{c5 f9 61 d1}
0012h vpunpckhwd xmm0,xmm0,xmm1               ; VPUNPCKHWD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 69 /r || encoded[4]{c5 f9 69 c1}
0016h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
001ah vinserti128 ymm1,ymm1,xmm2,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 00}
0020h vinserti128 ymm0,ymm1,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 c0 01}
0026h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vmerge<uint>(Vector128<uint> x, Vector128<uint> y)
; vmerge__g128x32u_128x32u[49] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 62 d1 c5 f9 6a c1 c5 f4 57 c9 c4 e3 75 38 ca 00 c4 e3 75 38 c0 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpunpckldq xmm2,xmm0,xmm1               ; VPUNPCKLDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 62 /r || encoded[4]{c5 f9 62 d1}
0012h vpunpckhdq xmm0,xmm0,xmm1               ; VPUNPCKHDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 6A /r || encoded[4]{c5 f9 6a c1}
0016h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
001ah vinserti128 ymm1,ymm1,xmm2,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 00}
0020h vinserti128 ymm0,ymm1,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 c0 01}
0026h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vmerge<int>(Vector128<int> x, Vector128<int> y)
; vmerge__g128x32i_128x32i[49] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 62 d1 c5 f9 6a c1 c5 f4 57 c9 c4 e3 75 38 ca 00 c4 e3 75 38 c0 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpunpckldq xmm2,xmm0,xmm1               ; VPUNPCKLDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 62 /r || encoded[4]{c5 f9 62 d1}
0012h vpunpckhdq xmm0,xmm0,xmm1               ; VPUNPCKHDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 6A /r || encoded[4]{c5 f9 6a c1}
0016h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
001ah vinserti128 ymm1,ymm1,xmm2,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 00}
0020h vinserti128 ymm0,ymm1,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 c0 01}
0026h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vmerge<ulong>(Vector128<ulong> x, Vector128<ulong> y)
; vmerge__g128x64u_128x64u[49] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 6c d1 c5 f9 6d c1 c5 f4 57 c9 c4 e3 75 38 ca 00 c4 e3 75 38 c0 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpunpcklqdq xmm2,xmm0,xmm1              ; VPUNPCKLQDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 6C /r || encoded[4]{c5 f9 6c d1}
0012h vpunpckhqdq xmm0,xmm0,xmm1              ; VPUNPCKHQDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 6D /r || encoded[4]{c5 f9 6d c1}
0016h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
001ah vinserti128 ymm1,ymm1,xmm2,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 00}
0020h vinserti128 ymm0,ymm1,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 c0 01}
0026h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vmerge<long>(Vector128<long> x, Vector128<long> y)
; vmerge__g128x64i_128x64i[49] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 6c d1 c5 f9 6d c1 c5 f4 57 c9 c4 e3 75 38 ca 00 c4 e3 75 38 c0 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpunpcklqdq xmm2,xmm0,xmm1              ; VPUNPCKLQDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 6C /r || encoded[4]{c5 f9 6c d1}
0012h vpunpckhqdq xmm0,xmm0,xmm1              ; VPUNPCKHQDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 6D /r || encoded[4]{c5 f9 6d c1}
0016h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
001ah vinserti128 ymm1,ymm1,xmm2,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 00}
0020h vinserti128 ymm0,ymm1,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 c0 01}
0026h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
