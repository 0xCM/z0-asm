------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vadd(Vector128<byte> x, Vector128<byte> y)
; vadd_128x8u[22] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 fc 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpaddb xmm0,xmm0,[r8]                   ; VPADDB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FC /r || encoded[5]{c4 c1 79 fc 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vadd(Vector128<sbyte> x, Vector128<sbyte> y)
; vadd_128x8i[22] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 fc 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpaddb xmm0,xmm0,[r8]                   ; VPADDB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FC /r || encoded[5]{c4 c1 79 fc 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<Int16> vadd(Vector128<Int16> x, Vector128<Int16> y)
; vadd_128x16i[22] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 fd 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpaddw xmm0,xmm0,[r8]                   ; VPADDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FD /r || encoded[5]{c4 c1 79 fd 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vadd(Vector128<ushort> x, Vector128<ushort> y)
; vadd_128x16u[22] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 fd 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpaddw xmm0,xmm0,[r8]                   ; VPADDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FD /r || encoded[5]{c4 c1 79 fd 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vadd(Vector128<int> x, Vector128<int> y)
; vadd_128x32i[22] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 fe 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpaddd xmm0,xmm0,[r8]                   ; VPADDD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FE /r || encoded[5]{c4 c1 79 fe 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vadd(Vector128<uint> x, Vector128<uint> y)
; vadd_128x32u[22] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 fe 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpaddd xmm0,xmm0,[r8]                   ; VPADDD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FE /r || encoded[5]{c4 c1 79 fe 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vadd(Vector128<long> x, Vector128<long> y)
; vadd_128x64i[22] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 d4 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpaddq xmm0,xmm0,[r8]                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[5]{c4 c1 79 d4 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vadd(Vector128<ulong> x, Vector128<ulong> y)
; vadd_128x64u[22] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 d4 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpaddq xmm0,xmm0,[r8]                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[5]{c4 c1 79 d4 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vadd(Vector256<byte> x, Vector256<byte> y)
; vadd_256x8u[25] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d fc 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddb ymm0,ymm0,[r8]                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[5]{c4 c1 7d fc 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vadd(Vector256<sbyte> x, Vector256<sbyte> y)
; vadd_256x8i[25] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d fc 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddb ymm0,ymm0,[r8]                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[5]{c4 c1 7d fc 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<Int16> vadd(Vector256<Int16> x, Vector256<Int16> y)
; vadd_256x16i[25] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d fd 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddw ymm0,ymm0,[r8]                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[5]{c4 c1 7d fd 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vadd(Vector256<ushort> x, Vector256<ushort> y)
; vadd_256x16u[25] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d fd 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddw ymm0,ymm0,[r8]                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[5]{c4 c1 7d fd 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vadd(Vector256<int> x, Vector256<int> y)
; vadd_256x32i[25] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d fe 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddd ymm0,ymm0,[r8]                   ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[5]{c4 c1 7d fe 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vadd(Vector256<uint> x, Vector256<uint> y)
; vadd_256x32u[25] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d fe 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddd ymm0,ymm0,[r8]                   ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[5]{c4 c1 7d fe 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vadd(Vector256<long> x, Vector256<long> y)
; vadd_256x64i[25] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d d4 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddq ymm0,ymm0,[r8]                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[5]{c4 c1 7d d4 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vadd(Vector256<ulong> x, Vector256<ulong> y)
; vadd_256x64u[25] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d d4 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddq ymm0,ymm0,[r8]                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[5]{c4 c1 7d d4 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<byte> vadd(in Vector512<byte> x, in Vector512<byte> y)
; vadd_512x8u_512x8u[41] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d fc 00 c5 fd 10 4a 20 c4 c1 75 fc 48 20 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddb ymm0,ymm0,[r8]                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[5]{c4 c1 7d fc 00}
000eh vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0013h vpaddb ymm1,ymm1,[r8+20h]               ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[6]{c4 c1 75 fc 48 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<sbyte> vadd(in Vector512<sbyte> x, in Vector512<sbyte> y)
; vadd_512x8i_512x8i[41] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d fc 00 c5 fd 10 4a 20 c4 c1 75 fc 48 20 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddb ymm0,ymm0,[r8]                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[5]{c4 c1 7d fc 00}
000eh vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0013h vpaddb ymm1,ymm1,[r8+20h]               ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[6]{c4 c1 75 fc 48 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<Int16> vadd(Vector512<Int16> x, in Vector512<Int16> y)
; vadd_512x16i_512x16i[41] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d fd 00 c5 fd 10 4a 20 c4 c1 75 fd 48 20 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddw ymm0,ymm0,[r8]                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[5]{c4 c1 7d fd 00}
000eh vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0013h vpaddw ymm1,ymm1,[r8+20h]               ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[6]{c4 c1 75 fd 48 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ushort> vadd(in Vector512<ushort> x, in Vector512<ushort> y)
; vadd_512x16u_512x16u[41] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d fd 00 c5 fd 10 4a 20 c4 c1 75 fd 48 20 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddw ymm0,ymm0,[r8]                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[5]{c4 c1 7d fd 00}
000eh vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0013h vpaddw ymm1,ymm1,[r8+20h]               ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[6]{c4 c1 75 fd 48 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<int> vadd(in Vector512<int> x, in Vector512<int> y)
; vadd_512x32i_512x32i[41] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d fe 00 c5 fd 10 4a 20 c4 c1 75 fe 48 20 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddd ymm0,ymm0,[r8]                   ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[5]{c4 c1 7d fe 00}
000eh vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0013h vpaddd ymm1,ymm1,[r8+20h]               ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[6]{c4 c1 75 fe 48 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<uint> vadd(in Vector512<uint> x, in Vector512<uint> y)
; vadd_512x32u_512x32u[41] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d fe 00 c5 fd 10 4a 20 c4 c1 75 fe 48 20 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddd ymm0,ymm0,[r8]                   ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[5]{c4 c1 7d fe 00}
000eh vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0013h vpaddd ymm1,ymm1,[r8+20h]               ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[6]{c4 c1 75 fe 48 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<long> vadd(in Vector512<long> x, in Vector512<long> y)
; vadd_512x64i_512x64i[41] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d d4 00 c5 fd 10 4a 20 c4 c1 75 d4 48 20 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddq ymm0,ymm0,[r8]                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[5]{c4 c1 7d d4 00}
000eh vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0013h vpaddq ymm1,ymm1,[r8+20h]               ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[6]{c4 c1 75 d4 48 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ulong> vadd(in Vector512<ulong> x, in Vector512<ulong> y)
; vadd_512x64u_512x64u[41] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d d4 00 c5 fd 10 4a 20 c4 c1 75 d4 48 20 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpaddq ymm0,ymm0,[r8]                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[5]{c4 c1 7d d4 00}
000eh vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0013h vpaddq ymm1,ymm1,[r8+20h]               ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[6]{c4 c1 75 d4 48 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
