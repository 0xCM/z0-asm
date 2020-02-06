------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vblendv<byte>(Vector128<byte> x, Vector128<byte> y, Vector128<byte> spec)
; vblendv_gv128x8u_v128x8u_v128x8u[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vpblendvb xmm0,xmm0,xmm1,xmm2           ; VPBLENDVB xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 79 4c c1 20}
0019h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vblendv<sbyte>(Vector128<sbyte> x, Vector128<sbyte> y, Vector128<sbyte> spec)
; vblendv_gv128x8i_v128x8i_v128x8i[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vpblendvb xmm0,xmm0,xmm1,xmm2           ; VPBLENDVB xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 79 4c c1 20}
0019h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vblendv<ushort>(Vector128<ushort> x, Vector128<ushort> y, Vector128<ushort> spec)
; vblendv_gv128x16u_v128x16u_v128x16u[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vpblendvb xmm0,xmm0,xmm1,xmm2           ; VPBLENDVB xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 79 4c c1 20}
0019h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vblendv<short>(Vector128<short> x, Vector128<short> y, Vector128<short> spec)
; vblendv_gv128x16i_v128x16i_v128x16i[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vpblendvb xmm0,xmm0,xmm1,xmm2           ; VPBLENDVB xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 79 4c c1 20}
0019h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vblendv<uint>(Vector128<uint> x, Vector128<uint> y, Vector128<uint> spec)
; vblendv_gv128x32u_v128x32u_v128x32u[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vpblendvb xmm0,xmm0,xmm1,xmm2           ; VPBLENDVB xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 79 4c c1 20}
0019h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vblendv<int>(Vector128<int> x, Vector128<int> y, Vector128<int> spec)
; vblendv_gv128x32i_v128x32i_v128x32i[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vpblendvb xmm0,xmm0,xmm1,xmm2           ; VPBLENDVB xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 79 4c c1 20}
0019h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vblendv<ulong>(Vector128<ulong> x, Vector128<ulong> y, Vector128<ulong> spec)
; vblendv_gv128x64u_v128x64u_v128x64u[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vpblendvb xmm0,xmm0,xmm1,xmm2           ; VPBLENDVB xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 79 4c c1 20}
0019h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vblendv<long>(Vector128<long> x, Vector128<long> y, Vector128<long> spec)
; vblendv_gv128x64i_v128x64i_v128x64i[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vpblendvb xmm0,xmm0,xmm1,xmm2           ; VPBLENDVB xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 79 4c c1 20}
0019h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vblendv<float>(Vector128<float> x, Vector128<float> y, Vector128<float> spec)
; vblendv_gv128x32f_v128x32f_v128x32f[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4a c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vblendvps xmm0,xmm0,xmm1,xmm2           ; VBLENDVPS xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4A /r /is4 || encoded[6]{c4 e3 79 4a c1 20}
0019h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vblendv<double>(Vector128<double> x, Vector128<double> y, Vector128<double> spec)
; vblendv_gv128x64f_v128x64f_v128x64f[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4b c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vblendvpd xmm0,xmm0,xmm1,xmm2           ; VBLENDVPD xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4B /r /is4 || encoded[6]{c4 e3 79 4b c1 20}
0019h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vblendv<byte>(Vector256<byte> x, Vector256<byte> y, Vector256<byte> spec)
; vblendv_gv256x8u_v256x8u_v256x8u[36] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c4 c1 7d 10 11 c4 e3 7d 4c c1 20 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vmovupd ymm2,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 11}
0013h vpblendvb ymm0,ymm0,ymm1,ymm2           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vblendv<sbyte>(Vector256<sbyte> x, Vector256<sbyte> y, Vector256<sbyte> spec)
; vblendv_gv256x8i_v256x8i_v256x8i[36] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c4 c1 7d 10 11 c4 e3 7d 4c c1 20 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vmovupd ymm2,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 11}
0013h vpblendvb ymm0,ymm0,ymm1,ymm2           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vblendv<ushort>(Vector256<ushort> x, Vector256<ushort> y, Vector256<ushort> spec)
; vblendv_gv256x16u_v256x16u_v256x16u[36] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c4 c1 7d 10 11 c4 e3 7d 4c c1 20 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vmovupd ymm2,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 11}
0013h vpblendvb ymm0,ymm0,ymm1,ymm2           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vblendv<short>(Vector256<short> x, Vector256<short> y, Vector256<short> spec)
; vblendv_gv256x16i_v256x16i_v256x16i[36] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c4 c1 7d 10 11 c4 e3 7d 4c c1 20 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vmovupd ymm2,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 11}
0013h vpblendvb ymm0,ymm0,ymm1,ymm2           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vblendv<uint>(Vector256<uint> x, Vector256<uint> y, Vector256<uint> spec)
; vblendv_gv256x32u_v256x32u_v256x32u[36] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c4 c1 7d 10 11 c4 e3 7d 4c c1 20 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vmovupd ymm2,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 11}
0013h vpblendvb ymm0,ymm0,ymm1,ymm2           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vblendv<int>(Vector256<int> x, Vector256<int> y, Vector256<int> spec)
; vblendv_gv256x32i_v256x32i_v256x32i[36] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c4 c1 7d 10 11 c4 e3 7d 4c c1 20 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vmovupd ymm2,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 11}
0013h vpblendvb ymm0,ymm0,ymm1,ymm2           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vblendv<ulong>(Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> spec)
; vblendv_gv256x64u_v256x64u_v256x64u[36] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c4 c1 7d 10 11 c4 e3 7d 4c c1 20 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vmovupd ymm2,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 11}
0013h vpblendvb ymm0,ymm0,ymm1,ymm2           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vblendv<long>(Vector256<long> x, Vector256<long> y, Vector256<long> spec)
; vblendv_gv256x64i_v256x64i_v256x64i[36] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c4 c1 7d 10 11 c4 e3 7d 4c c1 20 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vmovupd ymm2,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 11}
0013h vpblendvb ymm0,ymm0,ymm1,ymm2           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vblendv<float>(Vector256<float> x, Vector256<float> y, Vector256<float> spec)
; vblendv_gv256x32f_v256x32f_v256x32f[36] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c4 c1 7d 10 11 c4 e3 7d 4a c1 20 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vmovupd ymm2,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 11}
0013h vblendvps ymm0,ymm0,ymm1,ymm2           ; VBLENDVPS ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4A /r /is4 || encoded[6]{c4 e3 7d 4a c1 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vblendv<double>(Vector256<double> x, Vector256<double> y, Vector256<double> spec)
; vblendv_gv256x64f_v256x64f_v256x64f[36] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c4 c1 7d 10 11 c4 e3 7d 4b c1 20 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vmovupd ymm2,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 11}
0013h vblendvpd ymm0,ymm0,ymm1,ymm2           ; VBLENDVPD ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4B /r /is4 || encoded[6]{c4 e3 7d 4b c1 20}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
