; Vector128<uint> convert(Vector256<ulong> src, N128 w, uint t)
; convert_v256x64u_n128_32u[24] = {c5 f8 77 66 90 c5 fd 10 02 c5 ff e6 c0 c5 f9 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vcvtpd2dq xmm0,ymm0                     ; VCVTPD2DQ xmm1, ymm2/m256 || VEX.256.F2.0F.WIG E6 /r || encoded[4]{c5 ff e6 c0}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
; sbyte vmovelo_8i(Vector128<sbyte> src, N8 w)
; vmovelo_8i_v128x8i_n8[18] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 7e c0 48 0f be c0 c3}
; TermCode = MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovd eax,xmm0                          ; VMOVD r/m32, xmm1 || VEX.128.66.0F.W0 7E /r || encoded[4]{c5 f9 7e c0}
000dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
; byte vmovelo_8u(Vector128<byte> src, N8 w)
; vmovelo_8u_v128x8u_n8[17] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 7e c0 0f b6 c0 c3}
; TermCode = MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovd eax,xmm0                          ; VMOVD r/m32, xmm1 || VEX.128.66.0F.W0 7E /r || encoded[4]{c5 f9 7e c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
; short vmovelo_16i(Vector128<short> src, N16 w)
; vmovelo_16i_v128x16i_n16[18] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 7e c0 48 0f bf c0 c3}
; TermCode = MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovd eax,xmm0                          ; VMOVD r/m32, xmm1 || VEX.128.66.0F.W0 7E /r || encoded[4]{c5 f9 7e c0}
000dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
; ushort vmovelo_16u(Vector128<ushort> src, N16 w)
; vmovelo_16u_v128x16u_n16[17] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 7e c0 0f b7 c0 c3}
; TermCode = MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovd eax,xmm0                          ; VMOVD r/m32, xmm1 || VEX.128.66.0F.W0 7E /r || encoded[4]{c5 f9 7e c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
; int vmovelo_32i(Vector128<int> src, N32 w)
; vmovelo_32i_v128x32i_n32[14] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 7e c0 c3}
; TermCode = MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovd eax,xmm0                          ; VMOVD r/m32, xmm1 || VEX.128.66.0F.W0 7E /r || encoded[4]{c5 f9 7e c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
; uint vmovelo_32u(Vector128<uint> src, N32 w)
; vmovelo_32u_v128x32u_n32[14] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 7e c0 c3}
; TermCode = MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovd eax,xmm0                          ; VMOVD r/m32, xmm1 || VEX.128.66.0F.W0 7E /r || encoded[4]{c5 f9 7e c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
; long vmovelo_64i(Vector128<long> src, N64 w)
; vmovelo_64i_v128x64i_n64[15] = {c5 f8 77 66 90 c5 f9 10 01 c4 e1 f9 7e c0 c3}
; TermCode = MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
; ulong vmovelo_64u(Vector128<ulong> src, N64 w)
; vmovelo_64u_v128x64u_n64[15] = {c5 f8 77 66 90 c5 f9 10 01 c4 e1 f9 7e c0 c3}
; TermCode = MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
; Vector128<float> vmovelo_32x128x32(int src, Vector128<float> dst)
; vmovelo_32x128x32_32i_v128x32f[22] = {c5 f8 77 66 90 c4 c1 79 10 00 c5 fa 2a c2 c5 f9 11 01 48 8b c1 c3}
; TermCode = MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vcvtsi2ss xmm0,xmm0,edx                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c2}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
; Vector128<double> movelo_32x128x64(int src, Vector128<double> dst)
; movelo_32x128x64_32i_v128x64f[22] = {c5 f8 77 66 90 c4 c1 79 10 00 c5 fb 2a c2 c5 f9 11 01 48 8b c1 c3}
; TermCode = MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vcvtsi2sd xmm0,xmm0,edx                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c2}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
; Vector128<double> movelo_64x128x64(long src, Vector128<double> dst)
; movelo_64x128x64_64i_v128x64f[23] = {c5 f8 77 66 90 c4 c1 79 10 00 c4 e1 fb 2a c2 c5 f9 11 01 48 8b c1 c3}
; TermCode = MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vcvtsi2sd xmm0,xmm0,rdx                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c2}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
; Vector128<ulong> vmovelo_32x128x64u(Vector128<uint> src, Vector128<ulong> dst)
; vmovelo_32x128x64u_v128x32u_v128x64u[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f2 5a c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vcvtss2sd xmm0,xmm1,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 f2 5a c0}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
; Vector128<long> vmovelo_32x128x64i(Vector128<int> src, Vector128<long> dst)
; vmovelo_32x128x64i_v128x32i_v128x64i[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f2 5a c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vcvtss2sd xmm0,xmm1,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 f2 5a c0}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
; Vector128<double> vmovelo_32x128x64f(Vector128<float> src, Vector128<double> dst)
; vmovelo_32x128x64f_v128x32f_v128x64f[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f2 5a c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = MSDIAG
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vcvtss2sd xmm0,xmm1,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 f2 5a c0}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
