------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vmax<byte>(Vector128<byte> x, Vector128<byte> y)
; vmax_g128x8u[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 de c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpmaxub xmm0,xmm0,xmm1                  ; VPMAXUB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DE /r || encoded[4]{c5 f9 de c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vmax<sbyte>(Vector128<sbyte> x, Vector128<sbyte> y)
; vmax_g128x8i[27] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 e2 79 3c c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpmaxsb xmm0,xmm0,xmm1                  ; VPMAXSB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 3C /r || encoded[5]{c4 e2 79 3c c1}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vmax<ushort>(Vector128<ushort> x, Vector128<ushort> y)
; vmax_g128x16u[27] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 e2 79 3e c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpmaxuw xmm0,xmm0,xmm1                  ; VPMAXUW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 3E /r || encoded[5]{c4 e2 79 3e c1}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vmax<short>(Vector128<short> x, Vector128<short> y)
; vmax_g128x16i[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 ee c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpmaxsw xmm0,xmm0,xmm1                  ; VPMAXSW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EE /r || encoded[4]{c5 f9 ee c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vmax<uint>(Vector128<uint> x, Vector128<uint> y)
; vmax_g128x32u[27] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 e2 79 3f c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpmaxud xmm0,xmm0,xmm1                  ; VPMAXUD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 3F /r || encoded[5]{c4 e2 79 3f c1}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vmax<int>(Vector128<int> x, Vector128<int> y)
; vmax_g128x32i[27] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 e2 79 3d c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpmaxsd xmm0,xmm0,xmm1                  ; VPMAXSD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 3D /r || encoded[5]{c4 e2 79 3d c1}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vmax<long>(Vector128<long> x, Vector128<long> y)
; vmax_g128x64i[62] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 ec 57 d2 c4 e3 6d 38 c0 00 c5 ec 57 d2 c4 e3 6d 38 c9 00 c4 e2 7d 37 d1 c4 e3 75 4c c0 20 c4 e3 7d 19 c0 00 c5 f9 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0012h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
0018h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
001ch vinserti128 ymm1,ymm2,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c9 00}
0022h vpcmpgtq ymm2,ymm0,ymm1                 ; VPCMPGTQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 37 /r || encoded[5]{c4 e2 7d 37 d1}
0027h vpblendvb ymm0,ymm1,ymm0,ymm2           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 75 4c c0 20}
002dh vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
0033h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vmax<float>(Vector128<float> x, Vector128<float> y)
; vmax_g128x32f[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f8 5f c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmaxps xmm0,xmm0,xmm1                   ; VMAXPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 5F /r || encoded[4]{c5 f8 5f c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vmax<double>(Vector128<double> x, Vector128<double> y)
; vmax_g128x64f[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 5f c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmaxpd xmm0,xmm0,xmm1                   ; VMAXPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 5F /r || encoded[4]{c5 f9 5f c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}