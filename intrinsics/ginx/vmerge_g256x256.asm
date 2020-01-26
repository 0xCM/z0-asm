------------------------------------------------------------------------------------------------------------------------
; Vector512<byte> vmerge<byte>(Vector256<byte> x, Vector256<byte> y)
; vmerge__g256x8u_256x8u[50] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd 60 d1 c5 fd 68 c1 c4 e3 6d 46 c8 20 c4 e3 6d 46 c0 31 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpunpcklbw ymm2,ymm0,ymm1               ; VPUNPCKLBW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 60 /r || encoded[4]{c5 fd 60 d1}
0012h vpunpckhbw ymm0,ymm0,ymm1               ; VPUNPCKHBW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 68 /r || encoded[4]{c5 fd 68 c1}
0016h vperm2i128 ymm1,ymm2,ymm0,20h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c8 20}
001ch vperm2i128 ymm0,ymm2,ymm0,31h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c0 31}
0022h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0026h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<sbyte> vmerge<sbyte>(Vector256<sbyte> x, Vector256<sbyte> y)
; vmerge__g256x8i_256x8i[50] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd 60 d1 c5 fd 68 c1 c4 e3 6d 46 c8 20 c4 e3 6d 46 c0 31 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpunpcklbw ymm2,ymm0,ymm1               ; VPUNPCKLBW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 60 /r || encoded[4]{c5 fd 60 d1}
0012h vpunpckhbw ymm0,ymm0,ymm1               ; VPUNPCKHBW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 68 /r || encoded[4]{c5 fd 68 c1}
0016h vperm2i128 ymm1,ymm2,ymm0,20h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c8 20}
001ch vperm2i128 ymm0,ymm2,ymm0,31h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c0 31}
0022h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0026h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ushort> vmerge<ushort>(Vector256<ushort> x, Vector256<ushort> y)
; vmerge__g256x16u_256x16u[50] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd 61 d1 c5 fd 69 c1 c4 e3 6d 46 c8 20 c4 e3 6d 46 c0 31 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpunpcklwd ymm2,ymm0,ymm1               ; VPUNPCKLWD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 61 /r || encoded[4]{c5 fd 61 d1}
0012h vpunpckhwd ymm0,ymm0,ymm1               ; VPUNPCKHWD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 69 /r || encoded[4]{c5 fd 69 c1}
0016h vperm2i128 ymm1,ymm2,ymm0,20h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c8 20}
001ch vperm2i128 ymm0,ymm2,ymm0,31h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c0 31}
0022h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0026h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<short> vmerge<short>(Vector256<short> x, Vector256<short> y)
; vmerge__g256x16i_256x16i[50] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd 61 d1 c5 fd 69 c1 c4 e3 6d 46 c8 20 c4 e3 6d 46 c0 31 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpunpcklwd ymm2,ymm0,ymm1               ; VPUNPCKLWD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 61 /r || encoded[4]{c5 fd 61 d1}
0012h vpunpckhwd ymm0,ymm0,ymm1               ; VPUNPCKHWD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 69 /r || encoded[4]{c5 fd 69 c1}
0016h vperm2i128 ymm1,ymm2,ymm0,20h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c8 20}
001ch vperm2i128 ymm0,ymm2,ymm0,31h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c0 31}
0022h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0026h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<uint> vmerge<uint>(Vector256<uint> x, Vector256<uint> y)
; vmerge__g256x32u_256x32u[50] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd 62 d1 c5 fd 6a c1 c4 e3 6d 46 c8 20 c4 e3 6d 46 c0 31 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpunpckldq ymm2,ymm0,ymm1               ; VPUNPCKLDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 62 /r || encoded[4]{c5 fd 62 d1}
0012h vpunpckhdq ymm0,ymm0,ymm1               ; VPUNPCKHDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6A /r || encoded[4]{c5 fd 6a c1}
0016h vperm2i128 ymm1,ymm2,ymm0,20h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c8 20}
001ch vperm2i128 ymm0,ymm2,ymm0,31h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c0 31}
0022h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0026h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<int> vmerge<int>(Vector256<int> x, Vector256<int> y)
; vmerge__g256x32i_256x32i[50] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd 62 d1 c5 fd 6a c1 c4 e3 6d 46 c8 20 c4 e3 6d 46 c0 31 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpunpckldq ymm2,ymm0,ymm1               ; VPUNPCKLDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 62 /r || encoded[4]{c5 fd 62 d1}
0012h vpunpckhdq ymm0,ymm0,ymm1               ; VPUNPCKHDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6A /r || encoded[4]{c5 fd 6a c1}
0016h vperm2i128 ymm1,ymm2,ymm0,20h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c8 20}
001ch vperm2i128 ymm0,ymm2,ymm0,31h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c0 31}
0022h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0026h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ulong> vmerge<ulong>(Vector256<ulong> x, Vector256<ulong> y)
; vmerge__g256x64u_256x64u[50] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd 6c d1 c5 fd 6d c1 c4 e3 6d 46 c8 20 c4 e3 6d 46 c0 31 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpunpcklqdq ymm2,ymm0,ymm1              ; VPUNPCKLQDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6C /r || encoded[4]{c5 fd 6c d1}
0012h vpunpckhqdq ymm0,ymm0,ymm1              ; VPUNPCKHQDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6D /r || encoded[4]{c5 fd 6d c1}
0016h vperm2i128 ymm1,ymm2,ymm0,20h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c8 20}
001ch vperm2i128 ymm0,ymm2,ymm0,31h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c0 31}
0022h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0026h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<long> vmerge<long>(Vector256<long> x, Vector256<long> y)
; vmerge__g256x64i_256x64i[50] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd 6c d1 c5 fd 6d c1 c4 e3 6d 46 c8 20 c4 e3 6d 46 c0 31 c5 fd 11 09 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpunpcklqdq ymm2,ymm0,ymm1              ; VPUNPCKLQDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6C /r || encoded[4]{c5 fd 6c d1}
0012h vpunpckhqdq ymm0,ymm0,ymm1              ; VPUNPCKHQDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6D /r || encoded[4]{c5 fd 6d c1}
0016h vperm2i128 ymm1,ymm2,ymm0,20h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c8 20}
001ch vperm2i128 ymm0,ymm2,ymm0,31h           ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 6d 46 c0 31}
0022h vmovupd [rcx],ymm1                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 09}
0026h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
