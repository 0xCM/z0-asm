; 2020-01-24 20:46:47:973
; Vector256<Int16> add_d256x16i(Vector256<Int16> x, Vector256<Int16> y)
; add_d256x16i_256x16i[7ff7c6a94330h, 7ff7c6a9434dh][29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd fd c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddw ymm0,ymm0,ymm1                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[4]{c5 fd fd c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Vector256<Int16> add_g256x16i(Vector256<Int16> x, Vector256<Int16> y)
; add_g256x16i_256x16i[7ff7c6a94770h, 7ff7c6a9478dh][29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd fd c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddw ymm0,ymm0,ymm1                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[4]{c5 fd fd c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Vector256<Int16> add_o256x16i(Vector256<Int16> x, Vector256<Int16> y)
; add_o256x16i_256x16i[7ff7c6a95390h, 7ff7c6a953adh][29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd fd c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddw ymm0,ymm0,ymm1                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[4]{c5 fd fd c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Vector256<Int16> abs_d256x16i(Vector256<Int16> src)
; abs_d256x16i_256x16i[7ff7c6a953c0h, 7ff7c6a953d9h][25] = {c5 f8 77 66 90 c5 fd 10 02 c4 e2 7d 1d c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpabsw ymm0,ymm0                        ; VPABSW ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 1D /r || encoded[5]{c4 e2 7d 1d c0}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Vector256<Int16> abs_g256x16i(Vector256<Int16> src)
; abs_g256x16i_256x16i[7ff7c6a953f0h, 7ff7c6a95409h][25] = {c5 f8 77 66 90 c5 fd 10 02 c4 e2 7d 1d c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpabsw ymm0,ymm0                        ; VPABSW ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 1D /r || encoded[5]{c4 e2 7d 1d c0}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Vector256<Int16> abs_o256x16i(Vector256<Int16> src)
; abs_o256x16i_256x16i[7ff7c6a95830h, 7ff7c6a95849h][25] = {c5 f8 77 66 90 c5 fd 10 02 c4 e2 7d 1d c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpabsw ymm0,ymm0                        ; VPABSW ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 1D /r || encoded[5]{c4 e2 7d 1d c0}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Vector256<Int16> sub_d256x16i(Vector256<Int16> x, Vector256<Int16> y)
; sub_d256x16i_256x16i[7ff7c6a95860h, 7ff7c6a9587dh][29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd f9 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpsubw ymm0,ymm0,ymm1                   ; VPSUBW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F9 /r || encoded[4]{c5 fd f9 c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Vector256<Int16> sub_g256x16i(Vector256<Int16> x, Vector256<Int16> y)
; sub_g256x16i_256x16i[7ff7c6a95890h, 7ff7c6a958adh][29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd f9 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpsubw ymm0,ymm0,ymm1                   ; VPSUBW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG F9 /r || encoded[4]{c5 fd f9 c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong vcell_0_256x64u(Vector256<ulong> src)
; vcell_0_256x64u__256x64u[7ff7c6a958c0h, 7ff7c6a958d2h][18] = {c5 f8 77 66 90 c5 fd 10 01 c4 e1 f9 7e c0 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
000eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong vcell_1_256x64u(Vector256<ulong> src)
; vcell_1_256x64u__256x64u[7ff7c6a958f0h, 7ff7c6a95903h][19] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 f9 16 c0 01 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
000fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong vcell_1_128x8u(Vector128<byte> src)
; vcell_1_128x8u__128x8u[7ff7c6a95920h, 7ff7c6a95932h][18] = {c5 f8 77 66 90 c5 f9 10 01 c4 e3 79 14 c0 01 8b c0 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpextrb eax,xmm0,1                      ; VPEXTRB r32/m8, xmm2, imm8 || VEX.128.66.0F3A.W0 14 /r ib || encoded[6]{c4 e3 79 14 c0 01}
000fh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong vcell_2_256x64u(Vector256<ulong> src)
; vcell_2_256x64u__256x64u[7ff7c6a95950h, 7ff7c6a95968h][24] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 7d 19 c0 01 c4 e1 f9 7e c0 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; byte vcell_3_256x64u(Vector256<byte> src)
; vcell_3_256x64u__256x8u[7ff7c6a95980h, 7ff7c6a95993h][19] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 79 14 c0 03 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vpextrb eax,xmm0,3                      ; VPEXTRB r32/m8, xmm2, imm8 || VEX.128.66.0F3A.W0 14 /r ib || encoded[6]{c4 e3 79 14 c0 03}
000fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint vcell_256x32u_1(Vector256<uint> src)
; vcell_256x32u_1__256x32u[7ff7c6a95db0h, 7ff7c6a95dc3h][19] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 79 16 c0 01 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vpextrd eax,xmm0,1                      ; VPEXTRD r/m32, xmm2, imm8 || VEX.128.66.0F3A.W0 16 /r ib || encoded[6]{c4 e3 79 16 c0 01}
000fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint vcell_256x32u_2(Vector256<uint> src)
; vcell_256x32u_2__256x32u[7ff7c6a95de0h, 7ff7c6a95df3h][19] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 79 16 c0 02 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vpextrd eax,xmm0,2                      ; VPEXTRD r/m32, xmm2, imm8 || VEX.128.66.0F3A.W0 16 /r ib || encoded[6]{c4 e3 79 16 c0 02}
000fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> swap_hl(Vector128<byte> src)
; swap_hl_128x8u[7ff7c6a95e10h, 7ff7c6a95e26h][22] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 70 c0 4e c5 f9 11 01 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpshufd xmm0,xmm0,4eh                   ; VPSHUFD xmm1, xmm2/m128, imm8 || VEX.128.66.0F.WIG 70 /r ib || encoded[5]{c5 f9 70 c0 4e}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> hi_128x64u(Vector128<ulong> src)
; hi_128x64u_128x64u[7ff7c6a95e40h, 7ff7c6a95e5ch][28] = {c5 f8 77 66 90 c5 f9 10 02 c4 e3 f9 16 c0 01 c4 e1 f9 6e c0 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
000fh vmovq xmm0,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c0}
0014h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> hi_128x8u(Vector128<byte> src)
; hi_128x8u_128x8u[7ff7c6a95e70h, 7ff7c6a95e8ch][28] = {c5 f8 77 66 90 c5 f9 10 02 c4 e3 f9 16 c0 01 c4 e1 f9 6e c0 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
000fh vmovq xmm0,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c0}
0014h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> lo_128x64u(Vector128<ulong> src)
; lo_128x64u_128x64u[7ff7c6a95ea0h, 7ff7c6a95eb5h][21] = {c5 f8 77 66 90 c5 f9 10 02 c5 fa 7e c0 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovq xmm0,xmm0                         ; VMOVQ xmm1, xmm2/m64 || VEX.128.F3.0F.WIG 7E /r || encoded[4]{c5 fa 7e c0}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> lo_128x8u(Vector128<byte> src)
; lo_128x8u_128x8u[7ff7c6a95ed0h, 7ff7c6a95ee5h][21] = {c5 f8 77 66 90 c5 f9 10 02 c5 fa 7e c0 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovq xmm0,xmm0                         ; VMOVQ xmm1, xmm2/m64 || VEX.128.F3.0F.WIG 7E /r || encoded[4]{c5 fa 7e c0}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void vlo_256x8u_out(Vector256<byte> src, out ulong x0, out ulong x1)
; vlo_256x8u_out__256x8u[7ff7c6a95f00h, 7ff7c6a95f22h][34] = {c5 f8 77 66 90 c5 fd 10 01 c5 fc 28 c8 c4 e1 f9 7e c8 48 89 02 c4 e3 f9 16 c0 01 49 89 00 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vmovq rax,xmm1                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c8}
0012h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0015h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001bh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
001eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ref Pair<ulong> vlo_256x8u_pair(Vector256<byte> src, ref Pair<ulong> dst)
; vlo_256x8u_pair__256x8u[7ff7c6a95f40h, 7ff7c6a95f66h][38] = {c5 f8 77 66 90 c5 fd 10 01 c5 fc 28 c8 c4 e1 f9 7e c8 48 89 02 c4 e3 f9 16 c0 01 48 89 42 08 48 8b c2 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vmovq rax,xmm1                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c8}
0012h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0015h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001bh mov [rdx+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 42 08}
001fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0022h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void vlo_256x64u_out(Vector256<ulong> src, out ulong x0, out ulong x1)
; vlo_256x64u_out__256x64u[7ff7c6a95f80h, 7ff7c6a95fa2h][34] = {c5 f8 77 66 90 c5 fd 10 01 c5 fc 28 c8 c4 e1 f9 7e c8 48 89 02 c4 e3 f9 16 c0 01 49 89 00 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vmovq rax,xmm1                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c8}
0012h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0015h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001bh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
001eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ref Pair<ulong> vlo_256x64u_pair(Vector256<ulong> src, ref Pair<ulong> dst)
; vlo_256x64u_pair__256x64u[7ff7c6a95fc0h, 7ff7c6a95fe6h][38] = {c5 f8 77 66 90 c5 fd 10 01 c5 fc 28 c8 c4 e1 f9 7e c8 48 89 02 c4 e3 f9 16 c0 01 48 89 42 08 48 8b c2 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vmovq rax,xmm1                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c8}
0012h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0015h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001bh mov [rdx+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 42 08}
001fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0022h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void vhi_256x64u_out(Vector256<ulong> src, out ulong x0, out ulong x1)
; vhi_256x64u_out__256x64u[7ff7c6a96000h, 7ff7c6a96024h][36] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 7d 19 c0 01 c4 e1 f9 7e c0 48 89 02 c4 e3 f9 16 c0 01 49 89 00 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0014h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0017h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001dh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ref Pair<ulong> vhi_256x64u_pair(Vector256<ulong> src, ref Pair<ulong> dst)
; vhi_256x64u_pair__256x64u[7ff7c6a96040h, 7ff7c6a96068h][40] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 7d 19 c0 01 c4 e1 f9 7e c0 48 89 02 c4 e3 f9 16 c0 01 48 89 42 08 48 8b c2 c5 f8 77 c3}
; Capture completion code, MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0014h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0017h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001dh mov [rdx+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 42 08}
0021h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0024h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
