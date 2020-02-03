------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vadd<byte>(Vector128<byte> x, Vector128<byte> y)
; vadd_gv128x8u_v128x8u[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 fc c1 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpaddb xmm0,xmm0,xmm1                   ; VPADDB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FC /r || encoded[4]{c5 f9 fc c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vadd<sbyte>(Vector128<sbyte> x, Vector128<sbyte> y)
; vadd_gv128x8i_v128x8i[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 fc c1 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpaddb xmm0,xmm0,xmm1                   ; VPADDB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FC /r || encoded[4]{c5 f9 fc c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vadd<ushort>(Vector128<ushort> x, Vector128<ushort> y)
; vadd_gv128x16u_v128x16u[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 fd c1 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpaddw xmm0,xmm0,xmm1                   ; VPADDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FD /r || encoded[4]{c5 f9 fd c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vadd<short>(Vector128<short> x, Vector128<short> y)
; vadd_gv128x16i_v128x16i[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 fd c1 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpaddw xmm0,xmm0,xmm1                   ; VPADDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FD /r || encoded[4]{c5 f9 fd c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vadd<uint>(Vector128<uint> x, Vector128<uint> y)
; vadd_gv128x32u_v128x32u[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 fe c1 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpaddd xmm0,xmm0,xmm1                   ; VPADDD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FE /r || encoded[4]{c5 f9 fe c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vadd<int>(Vector128<int> x, Vector128<int> y)
; vadd_gv128x32i_v128x32i[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 fe c1 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpaddd xmm0,xmm0,xmm1                   ; VPADDD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FE /r || encoded[4]{c5 f9 fe c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vadd<ulong>(Vector128<ulong> x, Vector128<ulong> y)
; vadd_gv128x64u_v128x64u[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 d4 c1 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpaddq xmm0,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vadd<long>(Vector128<long> x, Vector128<long> y)
; vadd_gv128x64i_v128x64i[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 d4 c1 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpaddq xmm0,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vadd<float>(Vector128<float> x, Vector128<float> y)
; vadd_gv128x32f_v128x32f[21] = {c5 f8 77 66 90 c5 f9 10 02 c5 f8 58 c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vaddps xmm0,xmm0,xmm0                   ; VADDPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 58 /r || encoded[4]{c5 f8 58 c0}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vadd<double>(Vector128<double> x, Vector128<double> y)
; vadd_gv128x64f_v128x64f[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 58 c1 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vaddpd xmm0,xmm0,xmm1                   ; VADDPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 58 /r || encoded[4]{c5 f9 58 c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vadd<byte>(Vector256<byte> x, Vector256<byte> y)
; vadd_gv256x8u_v256x8u[29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd fc c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddb ymm0,ymm0,ymm1                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 fd fc c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vadd<sbyte>(Vector256<sbyte> x, Vector256<sbyte> y)
; vadd_gv256x8i_v256x8i[29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd fc c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddb ymm0,ymm0,ymm1                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 fd fc c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vadd<ushort>(Vector256<ushort> x, Vector256<ushort> y)
; vadd_gv256x16u_v256x16u[29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd fd c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddw ymm0,ymm0,ymm1                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[4]{c5 fd fd c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vadd<short>(Vector256<short> x, Vector256<short> y)
; vadd_gv256x16i_v256x16i[29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd fd c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddw ymm0,ymm0,ymm1                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[4]{c5 fd fd c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vadd<uint>(Vector256<uint> x, Vector256<uint> y)
; vadd_gv256x32u_v256x32u[29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd fe c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddd ymm0,ymm0,ymm1                   ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[4]{c5 fd fe c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vadd<int>(Vector256<int> x, Vector256<int> y)
; vadd_gv256x32i_v256x32i[29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd fe c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddd ymm0,ymm0,ymm1                   ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[4]{c5 fd fe c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vadd<ulong>(Vector256<ulong> x, Vector256<ulong> y)
; vadd_gv256x64u_v256x64u[29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd d4 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vadd<long>(Vector256<long> x, Vector256<long> y)
; vadd_gv256x64i_v256x64i[29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd d4 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vadd<float>(Vector256<float> x, Vector256<float> y)
; vadd_gv256x32f_v256x32f[29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fc 58 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vaddps ymm0,ymm0,ymm1                   ; VADDPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 58 /r || encoded[4]{c5 fc 58 c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vadd<double>(Vector256<double> x, Vector256<double> y)
; vadd_gv256x64f_v256x64f[29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd 58 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vaddpd ymm0,ymm0,ymm1                   ; VADDPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 58 /r || encoded[4]{c5 fd 58 c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<byte> vadd<byte>(in Vector512<byte> x, in Vector512<byte> y)
; vadd_gv512x8u~in_v512x8u~in[49] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd fc c1 c5 fd 10 4a 20 c4 c1 7d 10 50 20 c5 f5 fc ca c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddb ymm0,ymm0,ymm1                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 fd fc c1}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[r8+20h]                   ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c4 c1 7d 10 50 20}
001dh vpaddb ymm1,ymm1,ymm2                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 f5 fc ca}
0021h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0025h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<sbyte> vadd<sbyte>(in Vector512<sbyte> x, in Vector512<sbyte> y)
; vadd_gv512x8i~in_v512x8i~in[49] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd fc c1 c5 fd 10 4a 20 c4 c1 7d 10 50 20 c5 f5 fc ca c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddb ymm0,ymm0,ymm1                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 fd fc c1}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[r8+20h]                   ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c4 c1 7d 10 50 20}
001dh vpaddb ymm1,ymm1,ymm2                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 f5 fc ca}
0021h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0025h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ushort> vadd<ushort>(in Vector512<ushort> x, in Vector512<ushort> y)
; vadd_gv512x16u~in_v512x16u~in[49] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd fd c1 c5 fd 10 4a 20 c4 c1 7d 10 50 20 c5 f5 fd ca c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddw ymm0,ymm0,ymm1                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[4]{c5 fd fd c1}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[r8+20h]                   ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c4 c1 7d 10 50 20}
001dh vpaddw ymm1,ymm1,ymm2                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[4]{c5 f5 fd ca}
0021h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0025h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<short> vadd<short>(in Vector512<short> x, in Vector512<short> y)
; vadd_gv512x16i~in_v512x16i~in[49] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd fd c1 c5 fd 10 4a 20 c4 c1 7d 10 50 20 c5 f5 fd ca c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddw ymm0,ymm0,ymm1                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[4]{c5 fd fd c1}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[r8+20h]                   ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c4 c1 7d 10 50 20}
001dh vpaddw ymm1,ymm1,ymm2                   ; VPADDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FD /r || encoded[4]{c5 f5 fd ca}
0021h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0025h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<uint> vadd<uint>(in Vector512<uint> x, in Vector512<uint> y)
; vadd_gv512x32u~in_v512x32u~in[49] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd fe c1 c5 fd 10 4a 20 c4 c1 7d 10 50 20 c5 f5 fe ca c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddd ymm0,ymm0,ymm1                   ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[4]{c5 fd fe c1}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[r8+20h]                   ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c4 c1 7d 10 50 20}
001dh vpaddd ymm1,ymm1,ymm2                   ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[4]{c5 f5 fe ca}
0021h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0025h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<int> vadd<int>(in Vector512<int> x, in Vector512<int> y)
; vadd_gv512x32i~in_v512x32i~in[49] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd fe c1 c5 fd 10 4a 20 c4 c1 7d 10 50 20 c5 f5 fe ca c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddd ymm0,ymm0,ymm1                   ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[4]{c5 fd fe c1}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[r8+20h]                   ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c4 c1 7d 10 50 20}
001dh vpaddd ymm1,ymm1,ymm2                   ; VPADDD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FE /r || encoded[4]{c5 f5 fe ca}
0021h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0025h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ulong> vadd<ulong>(in Vector512<ulong> x, in Vector512<ulong> y)
; vadd_gv512x64u~in_v512x64u~in[49] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd d4 c1 c5 fd 10 4a 20 c4 c1 7d 10 50 20 c5 f5 d4 ca c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[r8+20h]                   ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c4 c1 7d 10 50 20}
001dh vpaddq ymm1,ymm1,ymm2                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 ca}
0021h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0025h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<long> vadd<long>(in Vector512<long> x, in Vector512<long> y)
; vadd_gv512x64i~in_v512x64i~in[49] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd d4 c1 c5 fd 10 4a 20 c4 c1 7d 10 50 20 c5 f5 d4 ca c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[r8+20h]                   ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c4 c1 7d 10 50 20}
001dh vpaddq ymm1,ymm1,ymm2                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 ca}
0021h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0025h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<float> vadd<float>(in Vector512<float> x, in Vector512<float> y)
; vadd_gv512x32f~in_v512x32f~in[49] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fc 58 c1 c5 fd 10 4a 20 c4 c1 7d 10 50 20 c5 f4 58 ca c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vaddps ymm0,ymm0,ymm1                   ; VADDPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 58 /r || encoded[4]{c5 fc 58 c1}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[r8+20h]                   ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c4 c1 7d 10 50 20}
001dh vaddps ymm1,ymm1,ymm2                   ; VADDPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 58 /r || encoded[4]{c5 f4 58 ca}
0021h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0025h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<double> vadd<double>(in Vector512<double> x, in Vector512<double> y)
; vadd_gv512x64f~in_v512x64f~in[49] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd 58 c1 c5 fd 10 4a 20 c4 c1 7d 10 50 20 c5 f5 58 ca c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vaddpd ymm0,ymm0,ymm1                   ; VADDPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 58 /r || encoded[4]{c5 fd 58 c1}
0012h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0017h vmovupd ymm2,[r8+20h]                   ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c4 c1 7d 10 50 20}
001dh vaddpd ymm1,ymm1,ymm2                   ; VADDPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 58 /r || encoded[4]{c5 f5 58 ca}
0021h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0025h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
