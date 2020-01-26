------------------------------------------------------------------------------------------------------------------------
; Vector256<Int16> vmul(Vector128<sbyte> x, Vector128<sbyte> y)
; vmul_128x8i_128x8i[103] = {c5 f8 77 66 90 c5 f9 10 02 c4 e2 79 20 c8 c4 e3 f9 16 c0 01 c4 e1 f9 6e c0 c4 e2 79 20 c0 c5 ec 57 d2 c4 e3 6d 38 c9 00 c4 e3 75 38 c0 01 c4 c1 79 10 08 c4 e2 79 20 d1 c4 e3 f9 16 c8 01 c4 e1 f9 6e c8 c4 e2 79 20 c9 c5 e4 57 db c4 e3 65 38 d2 00 c4 e3 6d 38 c9 01 c5 fd d5 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpmovsxbw xmm1,xmm0                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 c8}
000eh vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
0014h vmovq xmm0,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c0}
0019h vpmovsxbw xmm0,xmm0                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 c0}
001eh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0022h vinserti128 ymm1,ymm2,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c9 00}
0028h vinserti128 ymm0,ymm1,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 c0 01}
002eh vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0033h vpmovsxbw xmm2,xmm1                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 d1}
0038h vpextrq rax,xmm1,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c8 01}
003eh vmovq xmm1,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c8}
0043h vpmovsxbw xmm1,xmm1                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 c9}
0048h vxorps ymm3,ymm3,ymm3                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 e4 57 db}
004ch vinserti128 ymm2,ymm3,xmm2,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 65 38 d2 00}
0052h vinserti128 ymm1,ymm2,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c9 01}
0058h vpmullw ymm0,ymm0,ymm1                  ; VPMULLW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D5 /r || encoded[4]{c5 fd d5 c1}
005ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0060h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0063h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vmul(Vector128<byte> x, Vector128<byte> y)
; vmul_128x8u_128x8u[39] = {c5 f8 77 66 90 c5 f9 10 02 c4 e2 7d 30 c0 c4 c1 79 10 08 c4 e2 7d 30 c9 c5 fd d5 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpmovzxbw ymm0,xmm0                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c0}
000eh vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0013h vpmovzxbw ymm1,xmm1                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c9}
0018h vpmullw ymm0,ymm0,ymm1                  ; VPMULLW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D5 /r || encoded[4]{c5 fd d5 c1}
001ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0020h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0023h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vmul(Vector128<Int16> x, Vector128<Int16> y)
; vmul_128x16i_128x16i[40] = {c5 f8 77 66 90 c5 f9 10 02 c4 e2 7d 23 c0 c4 c1 79 10 08 c4 e2 7d 23 c9 c4 e2 7d 40 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpmovsxwd ymm0,xmm0                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c0}
000eh vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0013h vpmovsxwd ymm1,xmm1                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c9}
0018h vpmulld ymm0,ymm0,ymm1                  ; VPMULLD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 40 /r || encoded[5]{c4 e2 7d 40 c1}
001dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0021h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0024h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vmul(Vector128<ushort> x, Vector128<ushort> y)
; vmul_128x16u_128x16u[40] = {c5 f8 77 66 90 c5 f9 10 02 c4 e2 7d 33 c0 c4 c1 79 10 08 c4 e2 7d 33 c9 c4 e2 7d 40 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
000eh vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0013h vpmovzxwd ymm1,xmm1                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c9}
0018h vpmulld ymm0,ymm0,ymm1                  ; VPMULLD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 40 /r || encoded[5]{c4 e2 7d 40 c1}
001dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0021h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0024h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vmul(Vector128<int> x, Vector128<int> y)
; vmul_128x32i_128x32i[65] = {c5 f8 77 66 90 c5 f9 10 02 c4 c2 79 28 00 c5 f9 10 0a c5 f9 70 c9 4e c4 c1 79 10 10 c5 f9 70 d2 4e c4 e2 71 28 ca c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpmuldq xmm0,xmm0,[r8]                  ; VPMULDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 28 /r || encoded[5]{c4 c2 79 28 00}
000eh vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
0012h vpshufd xmm1,xmm1,4eh                   ; VPSHUFD xmm1, xmm2/m128, imm8 || VEX.128.66.0F.WIG 70 /r ib || encoded[5]{c5 f9 70 c9 4e}
0017h vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
001ch vpshufd xmm2,xmm2,4eh                   ; VPSHUFD xmm1, xmm2/m128, imm8 || VEX.128.66.0F.WIG 70 /r ib || encoded[5]{c5 f9 70 d2 4e}
0021h vpmuldq xmm1,xmm1,xmm2                  ; VPMULDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 28 /r || encoded[5]{c4 e2 71 28 ca}
0026h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
002ah vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
0030h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0036h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vmul(Vector128<uint> x, Vector128<uint> y)
; vmul_128x32u_128x32u[64] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 f4 00 c5 f9 10 0a c5 f9 70 c9 4e c4 c1 79 10 10 c5 f9 70 d2 4e c5 f1 f4 ca c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpmuludq xmm0,xmm0,[r8]                 ; VPMULUDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F4 /r || encoded[5]{c4 c1 79 f4 00}
000eh vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
0012h vpshufd xmm1,xmm1,4eh                   ; VPSHUFD xmm1, xmm2/m128, imm8 || VEX.128.66.0F.WIG 70 /r ib || encoded[5]{c5 f9 70 c9 4e}
0017h vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
001ch vpshufd xmm2,xmm2,4eh                   ; VPSHUFD xmm1, xmm2/m128, imm8 || VEX.128.66.0F.WIG 70 /r ib || encoded[5]{c5 f9 70 d2 4e}
0021h vpmuludq xmm1,xmm1,xmm2                 ; VPMULUDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F4 /r || encoded[4]{c5 f1 f4 ca}
0025h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0029h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
002fh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0035h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0039h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<Int16> vmul(Vector256<sbyte> x, Vector256<sbyte> y)
; vmul_256x8i_256x8i[81] = {c5 f8 77 66 90 c5 fd 10 02 c4 e3 7d 19 c1 00 c4 e2 7d 20 c9 c4 e3 7d 19 c0 01 c4 e2 7d 20 c0 c5 fd 10 12 c4 e3 7d 19 d3 00 c4 e2 7d 20 db c4 e3 7d 19 d2 01 c4 e2 7d 20 d2 c5 f5 d5 cb c5 fd d5 c2 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
000fh vpmovsxbw ymm1,xmm1                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 c9}
0014h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001ah vpmovsxbw ymm0,xmm0                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 c0}
001fh vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
0023h vextractf128 xmm3,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d3 00}
0029h vpmovsxbw ymm3,xmm3                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 db}
002eh vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
0034h vpmovsxbw ymm2,xmm2                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 d2}
0039h vpmullw ymm1,ymm1,ymm3                  ; VPMULLW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D5 /r || encoded[4]{c5 f5 d5 cb}
003dh vpmullw ymm0,ymm0,ymm2                  ; VPMULLW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D5 /r || encoded[4]{c5 fd d5 c2}
0041h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0045h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ushort> vmul(Vector256<byte> x, Vector256<byte> y)
; vmul_256x8u_256x8u[82] = {c5 f8 77 66 90 c5 fd 10 02 c4 e3 7d 19 c1 00 c4 e2 7d 30 c9 c4 e3 7d 19 c0 01 c4 e2 7d 30 c0 c4 c1 7d 10 10 c4 e3 7d 19 d3 00 c4 e2 7d 30 db c4 e3 7d 19 d2 01 c4 e2 7d 30 d2 c5 f5 d5 cb c5 fd d5 c2 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
000fh vpmovzxbw ymm1,xmm1                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c9}
0014h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001ah vpmovzxbw ymm0,xmm0                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c0}
001fh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0024h vextractf128 xmm3,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d3 00}
002ah vpmovzxbw ymm3,xmm3                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 db}
002fh vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
0035h vpmovzxbw ymm2,xmm2                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 d2}
003ah vpmullw ymm1,ymm1,ymm3                  ; VPMULLW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D5 /r || encoded[4]{c5 f5 d5 cb}
003eh vpmullw ymm0,ymm0,ymm2                  ; VPMULLW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D5 /r || encoded[4]{c5 fd d5 c2}
0042h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0046h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
004bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<uint> vmul(Vector256<ushort> x, Vector256<ushort> y)
; vmul_256x16u_256x16u[84] = {c5 f8 77 66 90 c5 fd 10 02 c4 e3 7d 19 c1 00 c4 e2 7d 33 c9 c4 e3 7d 19 c0 01 c4 e2 7d 33 c0 c4 c1 7d 10 10 c4 e3 7d 19 d3 00 c4 e2 7d 33 db c4 e3 7d 19 d2 01 c4 e2 7d 33 d2 c4 e2 75 40 cb c4 e2 7d 40 c2 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
000fh vpmovzxwd ymm1,xmm1                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c9}
0014h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001ah vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
001fh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0024h vextractf128 xmm3,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d3 00}
002ah vpmovzxwd ymm3,xmm3                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 db}
002fh vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
0035h vpmovzxwd ymm2,xmm2                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 d2}
003ah vpmulld ymm1,ymm1,ymm3                  ; VPMULLD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 40 /r || encoded[5]{c4 e2 75 40 cb}
003fh vpmulld ymm0,ymm0,ymm2                  ; VPMULLD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 40 /r || encoded[5]{c4 e2 7d 40 c2}
0044h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0048h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
004dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0050h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<int> vmul(Vector256<Int16> x, Vector256<Int16> y)
; vmul_256x16i_256x16i[84] = {c5 f8 77 66 90 c5 fd 10 02 c4 e3 7d 19 c1 00 c4 e2 7d 23 c9 c4 e3 7d 19 c0 01 c4 e2 7d 23 c0 c4 c1 7d 10 10 c4 e3 7d 19 d3 00 c4 e2 7d 23 db c4 e3 7d 19 d2 01 c4 e2 7d 23 d2 c4 e2 75 40 cb c4 e2 7d 40 c2 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
000fh vpmovsxwd ymm1,xmm1                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c9}
0014h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001ah vpmovsxwd ymm0,xmm0                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c0}
001fh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0024h vextractf128 xmm3,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d3 00}
002ah vpmovsxwd ymm3,xmm3                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 db}
002fh vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
0035h vpmovsxwd ymm2,xmm2                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 d2}
003ah vpmulld ymm1,ymm1,ymm3                  ; VPMULLD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 40 /r || encoded[5]{c4 e2 75 40 cb}
003fh vpmulld ymm0,ymm0,ymm2                  ; VPMULLD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 40 /r || encoded[5]{c4 e2 7d 40 c2}
0044h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0048h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
004dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0050h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<long> vmul(Vector256<int> x, Vector256<int> y)
; vmul_256x32i_256x32i[56] = {c5 f8 77 66 90 c5 fd 10 02 c4 c2 7d 28 00 c5 fd 10 0a c4 e3 75 46 c9 03 c4 c1 7d 10 10 c4 e3 6d 46 d2 03 c4 e2 75 28 ca c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpmuldq ymm0,ymm0,[r8]                  ; VPMULDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 28 /r || encoded[5]{c4 c2 7d 28 00}
000eh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0012h vperm2i128 ymm1,ymm1,ymm1,3             ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 75 46 c9 03}
0018h vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
001dh vperm2i128 ymm2,ymm2,ymm2,3             ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 d2 03}
0023h vpmuldq ymm1,ymm1,ymm2                  ; VPMULDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 28 /r || encoded[5]{c4 e2 75 28 ca}
0028h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002ch vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0031h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0034h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ulong> vmul(Vector256<uint> x, Vector256<uint> y)
; vmul_256x32u_256x32u[55] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d f4 00 c5 fd 10 0a c4 e3 75 46 c9 03 c4 c1 7d 10 10 c4 e3 6d 46 d2 03 c5 f5 f4 ca c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
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
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vmul(Vector256<ulong> x, Vector256<ulong> y)
; vmul_256x64u[104] = {50 c5 f8 77 90 b8 ff ff ff ff 48 89 04 24 48 8d 04 24 c4 e2 7d 59 04 24 c5 fd 10 0a c5 fc 28 d1 c5 ed 73 d2 20 c4 c1 7d 10 18 c5 fc 28 e3 c5 dd db e0 c5 f5 db c0 c5 ed f4 cc c5 f5 73 f1 20 c5 e5 73 d3 20 c5 ed f4 d3 c5 ed 73 f2 20 c5 f5 d4 ca c5 fd f4 c4 c5 fd d4 c1 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; Capture completion code = RET_INTRx2
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff ff ff}
000ah mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000eh lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0012h vpbroadcastq ymm0,qword ptr [rsp]       ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[6]{c4 e2 7d 59 04 24}
0018h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
001ch vmovaps ymm2,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d1}
0020h vpsrlq ymm2,ymm2,20h                    ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 ed 73 d2 20}
0025h vmovupd ymm3,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 18}
002ah vmovaps ymm4,ymm3                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e3}
002eh vpand ymm4,ymm4,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db e0}
0032h vpand ymm0,ymm1,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db c0}
0036h vpmuludq ymm1,ymm2,ymm4                 ; VPMULUDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F4 /r || encoded[4]{c5 ed f4 cc}
003ah vpsllq ymm1,ymm1,20h                    ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f1 20}
003fh vpsrlq ymm3,ymm3,20h                    ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 e5 73 d3 20}
0044h vpmuludq ymm2,ymm2,ymm3                 ; VPMULUDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F4 /r || encoded[4]{c5 ed f4 d3}
0048h vpsllq ymm2,ymm2,20h                    ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 ed 73 f2 20}
004dh vpaddq ymm1,ymm1,ymm2                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 ca}
0051h vpmuludq ymm0,ymm0,ymm4                 ; VPMULUDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F4 /r || encoded[4]{c5 fd f4 c4}
0055h vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
0059h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
005dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0060h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0063h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
